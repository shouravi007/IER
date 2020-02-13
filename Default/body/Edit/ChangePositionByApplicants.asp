<%
 'If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0  Then  
intMaxID = 0 

on error resume next 


if TrackNo <> "" Then 
	sql = " select jobid from personal where id = "&TrackNo
	'Response.Write("<br>"&sql)
	arr = objERS.RetrieveData(sql, errMsg)
	
	jobid = arr(0, 0 )
	if jobid = 6 then
	newJobid = 7
	strJobPosition = "Trainee Officer"
	elseif jobid = 7 then 
	newJobid = 6
	strJobPosition = "Management Trainee"
	end if 
	
	sql = ""
	sql = "select trackingno from jobpos where jobid ="&newJobid& " and personalid = "&TrackNo
	
	'response.Write("<br>"&sql)
	
	arrJobPos = objERS.RetrieveData(sql, errMsg)
	
	if arrJobPos(0, 0) = "Nothing" Then 
	
    sql = ""
	sql = " update jobpos set  Change = 1  where trackingno = " &TrackNoNEW 
	 'Response.Write("<br>"&sql)
	objERS.ExecuteQuery sql, errMsg 
	ErrorMessage "250", errMsg , 0	  
	
	sql = "" 
	sql = " select max(trackingno) + 1 from jobpos where jobid = "&newJobid
	arrTrackingNumber = objERS.RetrieveData(sql, errMsg)
	 'Response.Write("<br>"&errMsg)
		 if arrTrackingNumber(0, 0) <> "Nothing" Then
		    TrackingNumberNew = clng(arrTrackingNumber(0, 0))  
			sql = ""
			sql = " insert into jobpos ( personalid, jobid, appdate, trackingno ) values ("&TrackNo&","&newJobid&","&"'"&now&"'"&","&TrackingNumberNew&")" 
				
			'Response.Write("<br>"&sql)
			''Response.End()
			objERS.ExecuteQuery sql, errMsg 
			'Response.Write("<br>"&errMsg)
			SQL_ID = "" 
			SQL_ID = "select trackingno from jobpos where [Change] is null and  jobid ="&newJobid& " and personalid = "&TrackNo 
			'Response.Write("<br>"&SQL_ID)
			''Response.End()
			' 'Response.Write("<br>jobid:"&jobid)
			arr_Tracking = objERS.RetrieveData(SQL_ID, errMsg)
			ErrorMessage "163", errMsg, 0	
			
			if arr_Tracking(0, 0) <> "Nothing" then
			TrackNoNEW = arr_Tracking(0, 0)	 
			end if
			
		  sql = " update personal set  jobid = "&newJobid&"  , updatedon = '"&now& "'  where id = " &TrackNo 
		  
		  'Response.Write("<br>"&sql)
		  objERS.ExecuteQuery sql, errMsg 
		  ErrorMessage "250", errMsg , 0 
			  
		 end if    
          sql = "" 
		  sql = "select firstname,lastname,email from personal where id ="&TrackNo 
		 ' Response.Write("<br>"&sql)
          arr = objERS.RetrieveData(sql, errMsg) 
		  ErrorMessage "278", errMsg, 0
		   
		  		  
		  strFirstName = arr(0, 0)
		  strLastName = arr(1, 0)
          strEmail = arr(2, 0) 
				
				 'EMAIL GENERATION 
				'----------------
				strName = strFirstName & " " & strLastName
				strERecruitmentSystemName = "Dhaka Bank"
				BodyText0 = "<DIV align=justify><font size=2 face=Arial><p><strong><strong>Dear "&strName&":</strong></strong><br /><br />Job application Change to <strong>"&strJobPosition&"</strong> is completed. <br> New  Tracking</strong></strong><strong><strong>:</strong></strong><strong><strong> "&TrackNoNEW&"</strong><BR><font color=#003399>Password :</font> "&strPassword&"</strong></font>&nbsp;<font color='#FF0000'></font></strong></p><p>Please do not forget this Tracking Number and password.<br /></p><p><br />If you want to edit/login/update notice then please visit : bdjobs.com/dhakabank <br /><br /></strong></p><p><br /></strong><strong><br /></strong><br /></p><br/><p style='color:#CC0000;'><strong></p><p><br />Thanks and regards,<br /><br /><br /><br /><strong><strong>Customer Care Division</strong></strong><strong><br /><strong><strong>Bdjobs.Com Limited.</strong></strong></strong></p></div>"
				
				fromWho = strERecruitmentSystemName & " Online Application System <dhakabank@bdjobs.com>" 'TRIM( Request.Form( "fromWho")) 
				toWho = strName & "<" & strEmail &">"
				Subject = "Job Application Change To  "&strJobPosition  'TRIM( Request.Form( "Subject" )) 
				Body = BodyText0
				toCC=""
				toBCC="server-ers<serverers00@gmail.com>"
				
				On Error Resume Next
				If toWho <> "" Then 
					sendmail fromWho, strEmail, Subject, Body, toCC, toBCC, replyTo 
					Set ObjCDO = Nothing 
					Set iConf = Nothing 
					Set Flds = Nothing 
				End If
        
	Else
	    TrackNoNEW = arrJobPos(0, 0) 	
		sql = ""
		sql = " update jobpos set  Change = null  where trackingno = " &TrackNoNEW 
		'Response.Write("<br>"&sql)
		objERS.ExecuteQuery sql, errMsg 
		ErrorMessage "250", errMsg , 0	  
 
	
	  sql = " update personal set  jobid = "&newJobid&"  , updatedon = '"&now& "'  where id = " &TrackNo 
	  
	  'Response.Write("<br>"&sql)
	  objERS.ExecuteQuery sql, errMsg 
	  ErrorMessage "250", errMsg , 0 
	
	      sql = "" 
		  sql = "select firstname,lastname,email from personal where id ="&TrackNo 
		 ' Response.Write("<br>"&sql)
          arr = objERS.RetrieveData(sql, errMsg) 
		  ErrorMessage "278", errMsg, 0
		   
		  		  
		  strFirstName = arr(0, 0)
		  strLastName = arr(1, 0)
          strEmail = arr(2, 0) 
				
				 'EMAIL GENERATION 
				'----------------
				strName = strFirstName & " " & strLastName
				strERecruitmentSystemName = "Dhaka Bank"
				BodyText0 = "<DIV align=justify><font size=2 face=Arial><p><strong><strong>Dear "&strName&":</strong></strong><br /><br />Job application Change to <strong>"&strJobPosition&"</strong> is completed. <br> New  Tracking</strong></strong><strong><strong>:</strong></strong><strong><strong> "&TrackNoNEW&"</strong><BR><font color=#003399>Password :</font> "&strPassword&"</strong></font>&nbsp;<font color='#FF0000'></font></strong></p><p>Please do not forget this Tracking Number and password.<br /></p><p><br />If you want to edit/login/update notice then please visit : bdjobs.com/dhakabank <br /><br /></strong></p><p><br /></strong><strong><br /></strong><br /></p><br/><p style='color:#CC0000;'><strong></p><p><br />Thanks and regards,<br /><br /><br /><br /><strong><strong>Customer Care Division</strong></strong><strong><br /><strong><strong>Bdjobs.Com Limited.</strong></strong></strong></p></div>"
				
				fromWho = strERecruitmentSystemName & " Online Application System <dhakabank@bdjobs.com>" 'TRIM( Request.Form( "fromWho")) 
				toWho = strName & "<" & strEmail &">"
				Subject = "Job Application Change To  "&strJobPosition  'TRIM( Request.Form( "Subject" )) 
				Body = BodyText0
				toCC=""
				toBCC="server-ers<serverers00@gmail.com>"
				replyTo = "dhakabank<dhakabank@bdjobs.com>"
				
				On Error Resume Next
				If toWho <> "" Then 
					sendmail fromWho, strEmail, Subject, Body, toCC, toBCC, replyTo 
					Set ObjCDO = Nothing 
					Set iConf = Nothing 
					Set Flds = Nothing 
				End If

	End If 
		
               ' Response.Write("<br>"&Body)
		 ShowValidateMsgOnly("Operation of Change application to "&strJobPosition&" is done . New Tracking Number is  : "&TrackNoNEW)

			  
End if 			  
			  %>
              <br /><br />
        <table><tr>
       <td>&nbsp;</td><td>
                        
                           </td>
       
        </tr> </table>       