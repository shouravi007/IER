<%

on error resume next 

TrackNo = trim(request.Form("txtTrackingNo"))
pass = trim(request.Form("txtPassword"))
jobid = trim(request.Form("jobid"))
IsFresh = Request.Form("fresh")
'RESPONSE.Write("TRACK: "& TrackNo & "JOBID: "&jobid & IsFresh)

if IsFresh = "fresh" then
	
	If jobid = 1 then
		newJobId = 2
	ElseIf jobid = 2 then
		newJobId = 1
	End If
	
	jobid = newJobId
Else

end if

'RESPONSE.Write("TRACK: "& TrackNo & "new: "&newJobId & jobid)
'response.End()
if TrackNo <> "" and pass <> "" and jobid <> ""  Then 
			
'******************** START ADDED*************	 			 
			
	SQLInsertJobPosForApply = "USP_ApplyOnline " & TrackNo & ", " & jobid 
	'RESPONSE.Write(SQLInsertJobPosForApply)							
	err.clear
	
	arrAppId = objERS.RetrieveData(SQLInsertJobPosForApply, errMsg)
	'ValuePrint SQLInsertJobPosForApply, "SQLInsertJobPosForApply"
	'RESPONSE.Write("APPLY ARR:"&arrAppId(0, 0))	
	If arrAppId(0, 0) = 3 then 

		ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! unfortunately your application can not receieved.<br>Please try again after some time.<br><a href='#' onclick='javascript:PageSubmit();return false;'>Click here after some time</a></strong></font></center>"&phone)

		USERID = TrackNo
		currentUser = strContactPhone 
 
		strModuleName = "Job Apply Error in Store Proc" 

		strDescription = "jobid:"&jobid

		strAction = "ERROR IN INSERTION JobPos Store Proc"
			
%>
<!--#include File = 'UserLog.asp' -->
			
<%  	
	ElseIf arrAppId(0, 0) = 1 then 
				
		ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>You have already applied for this job position. Please pay your applicant fee if you didn't pay yet.<br />Click <a style='color:#F00;' href='#' onclick='javascript:PageSubmit();return false;'>here</a> to LogIn.</strong></font></center>"&phone)
		
			USERID = TrackNo
			currentUser = jobid 			 
			strModuleName = "Apply FROM LOGIN PANEL" 
			strDescription = "NOT APPLY" 
			strAction = "ERROR IN STORE PROC"
			
%>
<!--#include File = 'UserLog.asp' -->
			
<%  	
	ElseIf arrAppId(0, 0) = 0 then 		
			USERID = TrackNo
			currentUser = jobid 			 
			strModuleName = "Apply FROM LOGIN PANEL" 
			strDescription = "SUCCESSFULLY APPLY" 
			strAction = "insert into Jobpos BY STORE PROC"
	End If															 
%>
<!--#include File = 'UserLog.asp' -->

<%		
' call second stored procedure to apply end

'******************** END ADDED	  
	
		sql = "" 
		sql = "select j.id, jp.[JobTitle] from jobpos j, [JobPosting] jp where j.jobid = jp.jobid and j.personalid = "&TrackNo&" and j.jobid = "&jobid
		
		'RESPONSE.Write(sql)
		
		arrTrackingNumber = objERS.RetrieveData(sql, errMsg)
		'Response.Write("<br>"&errMsg)
		
		if arrTrackingNumber(0, 0) <> "Nothing" Then
		
			TrackingNumberNew = clng(arrTrackingNumber(0, 0)) 
			strJobPosition = arrTrackingNumber(1,0)
			'RESPONSE.Write(strJobPosition)
			
			sql = "" 
			sql = "select firstname,lastname,email from personal where id ="&TrackNo 
			'Response.Write("<br>"&sql)
			arr = objERS.RetrieveData(sql, errMsg) 
			ErrorMessage "278", errMsg, 0
			
				  
			strFirstName = arr(0, 0)
			strLastName = arr(1, 0)
			strEmail = arr(2, 0) 
				
				 'EMAIL GENERATION 
				'----------------
				strName = strFirstName & " " & strLastName
				
				BodyText0 = "<DIV align=justify><font size=2 face=Arial><p><strong><strong>Dear "&strName&": </strong></strong><br /><br />Thank you very much for applied to "&strJobPosition&" position. <strong><font color=#003399> Your Applicant Id : "&TrackingNumberNew&". </p></font><p style='color:#CC0000;'><strong><br/>To update your information please use the following Login ID and Password:<br><br></strong></p><p><br /><font color=#990000><strong><font color=#003399>Login ID :</font> "&TrackNo&" <BR><font color=#003399>Password :</font> "&pass&" </strong></font>&nbsp;<font color='#FF0000'></font></p><p>(Please do not forget this Login ID and Password.)<br /></p><br/><p>If you have any query please call at dial " & help_number & " from any number or e-mail to " &replyto & ".</p><p style='color:#CC0000;'><strong><br/><br />If you want to edit/login/update notice then please visit : " &commonURL & " <br /><br /></strong></p><p><br />Thanks and regards,<br /><br /><br /><br /><strong><strong>Human Resources Division</strong></strong><strong><br /><strong><strong>" & strSystemName & " Online Application System.</strong></strong></strong></p></div>"

				
				toWho = strName & "<" & strEmail &">"
				Subject = "Job Application for "&strJobPosition  'TRIM( Request.Form( "Subject" )) 
				Body = BodyText0
				toCC=""
				toBCC="ersdev-ers<developer.ers@bdjobs.com>"
				
				On Error Resume Next
				If toWho <> "" Then 
					sendmail fromWho, strEmail, Subject, Body, toCC, toBCC, replyTo 
					Set ObjCDO = Nothing 
					Set iConf = Nothing 
					Set Flds = Nothing 
				End If
				
				
	 		    strMsg = "Apply for "&strJobPosition&" is done . Applicant id is  : "&TrackingNumberNew
        
		Else
				strMsg = "Sorry you are not eligible for "&trim(request.Form("position"))
		
		End If 
		
    
End if            ' Response.Write("<br>"&Body)
		  
			  
%>
<br /><br />
<table><tr>
<td>&nbsp;</td><td></td>
</tr> </table>     
        
        
<form action="?<%=Encode("Location=Controller&FormAction=AfterLogin")%>" method="post" name="form1" id="form1">

<input type="hidden"  name="txtTrackingNo" id="txtTrackingNo" class="form-control" value="<%=TrackNo%>"/>
              
<input type="hidden" name="txtPassword" id="txtPassword" class="form-control" value="<%=pass%>" />
  
</form>
    
    <script>
	  alert("<%=strMsg%>");
	  document.getElementById('form1').submit();
	</script>