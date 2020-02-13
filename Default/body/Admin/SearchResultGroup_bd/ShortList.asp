<!-- #include virtual = "\Class\c_Data_batch.asp" -->

<%
' This Procedure is Used by All Class, Function & Procedure. This is an Error Message Displaying Procedure.
Public Sub ErrorMessage(LineNumber, errLog, flag)
	If errLog <> "" Then
	   If flag = 1 Then
			objMeghna.RollBackTransaction errLog
	   End If
	   Set objMeghna = Nothing
		If InStr(Request.ServerVariables("HTTP_REFERER"), "serverbdj") > 0  Or   Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141"  Then
			Response.Write(errLog)
			Response.End()
		End If
	   ShowMessage_ADOErrors errLog, "ShortList.asp", LineNumber, "trustbank_2016"
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
	
	Set objMeghna = new c_Data
	objMeghna.OpenConnection "DhakaBankSQL", errMsg
	ErrorMessage "43", errMsg, 0


  SQLPersonal = " SELECT  Shortlisted from personal where personalid = "&TrackingNumber&" and jobid =  "&jobid 
	'  Response.Write(SQLPersonal)
	 ' ValuePrint SQLPersonal, "sqlpersonal-51"
	'Response.End()
	  arr_Personal = objMeghna.RetrieveData(SQLPersonal, errMsg)
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
		     sql = " update personal set Shortlisted = 1  where personalid = "&TrackingNumber & " and jobid ="&jobid
			 strMsg = strMsg & TrackingNumber&" has shortlisted successfully. please go on.."

		Else
		     sql = " update personal set Shortlisted = 0  where personalid = "&TrackingNumber & " and jobid ="&jobid
             strAction = "Shortlisted"	  
			 strMsg = strMsg & TrackingNumber&" has Un-shortlisted successfully. please go on.."
			 'strMsg = strMsg & TrackingNumber&" has shortlisted successfully."' 
             strAction = "Un-shortlisted"	  
	    end if	
	   ' Response.Write(sql)

	   objMeghna.ExecuteQuery sql, errMsg 
	   ErrorMessage "235", errMsg, 0
	   

		strModuleName = "ShortList"
		
		If CStr(strJobPosting) = "S" Then 
			strJobName = "General"
		End If
		

		
		SQLUserLog = "INSERT INTO UserLog (UserId, UserName, ModuleName, [Description], ActionDate, [Action]) values (" 
		SQLUserLog = SQLUserLog & USERID & ", '" & currentUser  & "', '" & strModuleName & "', '"&strMsg&"', '" & Now & "' ,'" & strAction & "')"
		
	        IF Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0 Then		
	   		Response.Write(SQLUserLog&"<br/>")
			End If
			
		objMeghna.ExecuteQuery SQLUserLog, strErr
		


	
	
	objMeghna.CloseConnection()
	Set objMeghna = Nothing

End If 

	   if errMsg = "" then 
		 Response.Write("<strong style='color:#F00; font-size: 12px;'><br>( "&strMsg&" ) </strong>")
	   end if


%> 