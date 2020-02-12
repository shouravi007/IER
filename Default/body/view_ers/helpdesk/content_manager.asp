<%
    '-------crm user log control-------
    strModuleName = "CRM Login"
	strDescription = "CRM View Summery for the tracking : "&arrUserInfo(9,0)
	strAction = "View"
	SQLUserLog = "INSERT INTO UserLog (UserId, UserName, ModuleName, [Description], ActionDate, [Action]) values (" 
	SQLUserLog = SQLUserLog & Request.form("UserId") & ", '" & Request.form("UserName")  & "', '" & strModuleName & "', '" & strDescription & "', '" & Now & "' ,'" & strAction & "')"
	
	ValuePrint SQLUserLog, "2163-SQLUserLog"
	
	objERS.ExecuteQuery SQLUserLog, strErr
			   
   
   
    intJobid = arrUserInfo(16,0)
   
    rollno = arrUserInfo(17,0)
   
	   if isnull(rollno) or isempty(rollno) then 
		  intRollNo = "N/A" 	
	   else
		  intRollNo = rollno	   
	   end if 		   
   
%>