<%
sqlCount = "SELECT COUNT(PERSONALID) FROM Personal WHERE SHORTLISTED = 1  and  jobid  =  "&jobid

arr_sqlCount = objERS.RetrieveData(sqlCount, errMsg)
ErrorMessage "56", errMsg, 0

chkRollTableSql = "SELECT COUNT(*) FROM ROLL where jobid = "&jobid

arr_chkRollTableSql = objERS.RetrieveData(chkRollTableSql, errMsg)
ErrorMessage "222", errMsg, 0

'RESPONSE.Write(arr_chkRollTableSql(0,0))
if arr_chkRollTableSql(0,0) = 0 then
	'Response.Write("<br>IF")
	sql = "SELECT distinct P.PERSONALID, (p.FirstName + ' ' + p.LastName) AS Name, jp.ROLLNO FROM PERSONAL P  where P.shortlisted = 1 and P.jobid =  "&jobid&"   order by p.personalid"
else
	'Response.Write("<br>Else")
	sql = "SELECT distinct P.PERSONALID, (p.FirstName + ' ' + p.LastName) AS Name, R.ROLLNO FROM PERSONAL P  Left JOIN ROLL R ON P.PERSONALID = R.PERSONALID where P.shortlisted = 1 and P.jobid =  "&jobid&"   order by r.RollNo"
end if
 
arr_SQL = objERS.RetrieveData(sql, errMsg)
ErrorMessage "56", errMsg, 0


%>