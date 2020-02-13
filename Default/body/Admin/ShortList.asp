<!-- #include virtual = "\Class\c_Data_batch.asp" -->


<%ON ERROR RESUME NEXT%>

		 <FORM name="frmErr" id="frmErr" action="?<%=Encode("Location=Admin&FormAction=Login")%>" method="post">
        
        <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
        
        <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />
         
			<INPUT type="hidden" name="T" value="False">
		 </FORM>


<%
 
if isnull(Session("USERNAME")) or isempty(Session("USERNAME")) then 
	  if isnull(Request.Cookies("USERNAME")) or isempty(Request.Cookies("USERNAME")) or Request.Cookies("USERNAME") = "" then 	
		Session.Abandon()
		
		'Response.Redirect("default.asp")
		%>
		 <SCRIPT language="javascript">
			alert("Sorry unauthorized access.\nPlease click ok to login...");
			document.getElementById('Login').submit();
		 </SCRIPT>		 
        
     <%
	end if 
End if 

MLA = SESSION("MLA")
if MLA = "" Then 
 MLA = Request.Cookies("MLA")
end if


JA = SESSION("JA")
if JA = "" Then 
 JA = Request.Cookies("JA")
end if


 currentUser = Session("FullName")
 if currentUser = "" Then 
  currentUser = Request.Cookies("USERNAME")
 end if 
 
 
 if currentUser = "" Then 
  currentUser = Session("USERNAME")
 end if 
 
 if currentUser = "" Then 
  currentUser = Request.Cookies("USERNAME")
 end if  
 
 currentUserType = Session("UserType")
 if currentUserType = "" then 
 currentUserType = Request.Cookies("UserType")
 end if 



 USERID = Session("UserId")
 If USERID = "" then 
  USERID = Request.Cookies("UserId")
 End If 

	strPassword = Session("PWORD") 
	
	if strPassword = "" then 
	strPassword = Request.Cookies("PWORD") 
    
	end if 

IF ERR.NUMBER <> 0 THEN
'Response.Write(err.description)
ERR.CLEAR
%>
		 <SCRIPT language="javascript">
			//alert("Sorry unauthorized access.\nPlease click ok to login...");
			//document.getElementById('Login').submit();
		 </SCRIPT>		 
<%eND IF







' This Procedure is Used by All Class, Function & Procedure. This is an Error Message Displaying Procedure.
Public Sub ErrorMessage(LineNumber, errLog, flag)
	If errLog <> "" Then
	   If flag = 1 Then
			objERS.RollBackTransaction errLog
	   End If
	   Set objERS = Nothing
		If InStr(Request.ServerVariables("HTTP_REFERER"), "serverbdj") > 0  Or   Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141"  Then
			Response.Write(errLog)
			Response.End()
		End If
	   ShowMessage_ADOErrors errLog, "ShortList.asp", LineNumber, "trustbank"
	End If
End Sub


strMessage = ""
TrackingNumber = Request.Form("TrackingNumber")	
jobid = Request.Form("jobid") 

 currentUser = Session("FullName")
 if currentUser = "" Then 
  currentUser = Request.Cookies("USERNAME")
 end if 
 
 
 if currentUser = "" Then 
  currentUser = Session("USERNAME")
 end if 
 
 if currentUser = "" Then 
  currentUser = Request.Cookies("USERNAME")
 end if  
 
 currentUserType = Session("UserType")
 if currentUserType = "" then 
 currentUserType = Request.Cookies("UserType")
 end if 



 USERID = Session("UserId")
 If USERID = "" then 
  USERID = Request.Cookies("UserId")
 End If 



if TrackingNumber <> ""  and jobid <> "" Then 
	
	Set objERS = new c_Data
	objERS.OpenConnection "NRBbank", errMsg
	ErrorMessage "43", errMsg, 0



	SQL_ID = "" 
	SQL_ID = "select id from jobpos where personalid = " & TrackingNumber 
	
	'Response.Write("<br>"&SQL_ID)
	'Response.End()
	' Response.Write("<br>jobid:"&jobid)
	arr_Tracking = objERS.RetrieveData(SQL_ID, errMsg)
	ErrorMessage "163", errMsg, 0	
	
	if arr_Tracking(0, 0) <> "Nothing" then
	intTrakingNumber_New = arr_Tracking(0, 0)	 
	end if




  SQLPersonal = " SELECT  Shortlisted from jobpos where personalid = "&TrackingNumber&" and jobid =  "&jobid 
	'  Response.Write(SQLPersonal)
	 ' ValuePrint SQLPersonal, "sqlpersonal-51"
	'Response.End()
	  arr_Personal = objERS.RetrieveData(SQLPersonal, errMsg)
      ErrorMessage "235", errMsg, 0 
	  
	  if arr_Personal(0, 0) <> "Nothing" then
	    if isnull(arr_Personal(0, 0))  then
	      short = false 
		else
		   if cint(arr_Personal(0, 0)) = 0 then
		     short = false
		   else
		     short = true 
		   end if 
	    end if 
	  end if 
	  
	  sql = "" 	
	  strMsg = "Tracking Number : " 

		if short = false then 
		     sql = " update  jobpos set Shortlisted = 1 , updatedon = '"&now&"'  where personalid = "&TrackingNumber & " and jobid ="&jobid
			 strMsg = strMsg & TrackingNumber&" has shortlisted successfully. please go on.."
             strAction = "Shortlisted"	
		Else
		   sql = ""
		   sql = "select rollno from roll where jobid = "&jobid& " and personalid = "&TrackingNumber
		   arrRoll = objERS.RetrieveData(sql,errMsg) 
	       ErrorMessage "89", errMsg, 0
		   
		   if arrRoll(0, 0) = "Nothing" Then 		   
		     sql = " update jobpos set Shortlisted = 0 , updatedon = '"&now&"'   where personalid = "&TrackingNumber & " and jobid ="&jobid
               
			 strMsg = strMsg & TrackingNumber&" has Un-shortlisted successfully. please go on.."
			 'strMsg = strMsg & TrackingNumber&" has shortlisted successfully."' 
             strAction = "Un-shortlisted"
			else
			 sql = "" 
			 strMsg = strMsg & TrackingNumber&" has a roll no : "&arrRoll(0, 0)&". <br>So you can not Un-Shrotlist this applicant. <br> Please contact with the number of the footer of the website <br> if you still determined that you must unshortlist this applicant <br> please send a mail about the issue to the email addresses of footer of the website .."
			 'strMsg = strMsg & TrackingNumber&" has shortlisted successfully."' 
             strAction = "Un-shortlisted With Roll "
			end if 		   
		   
		   
	  
	    end if	
	   ' Response.Write(sql)

       if sql <> "" then 
	   objERS.ExecuteQuery sql, errMsg 
	   ErrorMessage "235", errMsg, 0
	   end if 

		strModuleName = "ShortList"
	

		
		SQLUserLog = "INSERT INTO UserLog (UserId, UserName, ModuleName, [Description], ActionDate, [Action]) values (" 
		SQLUserLog = SQLUserLog & USERID & ", '" & currentUser  & "', '" & strModuleName & "', '"&strMsg&"', '" & Now & "' ,'" & strAction & "')"
		
	        IF Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0 Then		
	   		'Response.Write(SQLUserLog&"<br/>")
			End If
			
		objERS.ExecuteQuery SQLUserLog, strErr
		


	
	
	objERS.CloseConnection()
	Set objERS = Nothing

End If 

	   if errMsg = "" then 
		 Response.Write("<strong style='color:#F00; font-size: 12px;'><br>( "&strMsg&" ) </strong><br><a  onclick='javacript:setTimeout(window.location.reload.bind(window.location), 0);' class='btn btn-primary'>Reload/Reset</a>")
	   end if


%> 