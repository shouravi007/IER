<%'Response.Write(Request.ServerVariables("HTTP_REFERER"))
	SQLUserLog = "INSERT INTO UserLog (UserId, UserName, ModuleName, [Description], ActionDate, [Action]) values (" 
	SQLUserLog = SQLUserLog & USERID & ", '" & currentUser  & "', '" & strModuleName & "', '" & strDescription & "', '" & Now & "' ,'" & strAction & "')"
	
	ValuePrint SQLUserLog, "2163-SQLUserLog"
	
	objERS.ExecuteQuery SQLUserLog, strErr
%>
