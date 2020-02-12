<%'Response.Write(Request.ServerVariables("HTTP_REFERER"))
	SQLUserLog = "INSERT INTO UserLog (UserId, UserName, ModuleName, [Description], ActionDate, [Action],[ip]) values (" 
	SQLUserLog = SQLUserLog & USERID & ", '" & currentUser  & "', '" & strModuleName & "', '" & ReplacedAllTypeOfSpecialChar(strDescription) & "', '" & Now & "' ,'" & strAction & "','"&Request.ServerVariables("REMOTE_ADDR")&"')"
	
	ValuePrint SQLUserLog, "2163-SQLUserLog"
	
	objERS.ExecuteQuery SQLUserLog, strErr
	ErrorMessage "34", strErr, 0

%>
