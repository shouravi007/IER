<!-- #include virtual = "\Class\c_Data_batch.asp" -->

<%
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
	
	Set objERS = new c_Data
	objERS.OpenConnection "DhakaBankSQL", errMsg
	ErrorMessage "43", errMsg, 0


  SQLPersonal = " SELECT  Shortlisted from personal where personalid = "&TrackingNumber&" and jobid =  "&jobid 
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
		     sql = " update personal set Shortlisted = 1  where personalid = "&TrackingNumber & " and jobid ="&jobid
			 strMsg = strMsg & TrackingNumber&" has shortlisted successfully. please go on.."

		Else
		   sql = ""
		   sql = "select rollno from roll where jobid = "&jobid& " and personalid = "&TrackingNumber
		   arrRoll = objERS.RetrieveData(sql,errMsg) 
	       ErrorMessage "89", errMsg, 0
		   
		   if arrRoll(0, 0) <> "Nothing" Then 		   
		     
				 sql = " update personal set Shortlisted = 0  where personalid = "&TrackingNumber & " and jobid ="&jobid
				 strAction = "Shortlisted"	  
				 strMsg = strMsg & TrackingNumber&" has Un-shortlisted successfully. please go on.."
				 'strMsg = strMsg & TrackingNumber&" has shortlisted successfully."' 
				 strAction = "Un-shortlisted"
			else
			
			
			end if 
			
				 	  
	    end if	
	   ' Response.Write(sql)

	   objERS.ExecuteQuery sql, errMsg 
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
			
		objERS.ExecuteQuery SQLUserLog, strErr
		


	
	
	objERS.CloseConnection()
	Set objERS = Nothing

End If 

	   if errMsg = "" then 
		 Response.Write("<strong style='color:#F00; font-size: 12px;'><br>( "&strMsg&" ) </strong>")
	   end if


%> 