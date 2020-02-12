<!--#include File = "CheckSession.asp" -->

<!-- #include virtual = "\Class\c_Data_batch.asp" -->

<%
Public Sub ErrorMessage(LineNumber, errLog, flag)
	If errLog <> "" Then
		If flag = 1 Then
			objDhakaBank.RollBackTransaction errLog
		End If
		If Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141" Or InStr(Request.ServerVariables("HTTP_REFERER"), "serverbdj") > 0 Then  
				Response.Write("<br/>"&errLog)
				formSubmit = False 
				EndOfAllProcess
		ElseIf Request.ServerVariables("SERVER_NAME") = "serverbdj" Then 
				Response.Write("<br/><br/>"&errLog)
				formSubmit = False 
				EndOfAllProcess
		Else
				formSubmit = False 				
		        ConnectionClose
				ShowMessage_ADOErrors errLog, "Default.asp", LineNumber, "DhakaBank"
		End If
	End If		
End Sub

Set objDhakaBank = New c_data
objDhakaBank.OpenConnection "DhakaBankSQL", strErr
ErrorMessage "30", errMsg, 0

'rollno = request.Form("txtRoll")
'response.Write("another page:: "&rollno)

orderby = request.QueryString("type")
intPersonalId = Replace(Request.QueryString("id"), "'", "")

sqlCount = "SELECT COUNT(p.ID) FROM Personal p inner join jobpos j on j.personalid = p.id  WHERE j.change is null and  p.SHORTLISTED = 1 and p.jobid = " & orderby&" and ID not in (select personalid from roll where  jobid = " & orderby&" and personalid not in (0) )"



arr_sqlCount = objDhakaBank.RetrieveData(sqlCount, errMsg)
ErrorMessage "56", errMsg, 0

chkRollTableSql = "SELECT COUNT(*) FROM ROLL where jobid = " & orderby & " and personalid not in (select personalid from roll where  jobid = " & orderby&" )"

arr_chkRollTableSql = objDhakaBank.RetrieveData(chkRollTableSql, errMsg)
ErrorMessage "53", errMsg, 0


		sql = "SELECT distinct P.ID, (p.FirstName + ' ' + p.LastName) AS Name, R.ROLLNO,j.trackingno FROM PERSONAL P inner join jobpos j on j.personalid = p.id  Left JOIN ROLL R ON P.ID = R.PERSONALID where j.change is null and P.shortlisted = 1 and P.jobid = " & orderby & " and P.ID not in (select personalid from roll where  jobid = " & orderby&" and personalid not in (0) )  order by r.RollNo "
	
'response.Write(sql)
arr_SQL = objDhakaBank.RetrieveData(sql, errMsg)
ErrorMessage "56", errMsg, 0


		If arr_SQL(0,0) <> "Nothing" Then
		  str = "" 
			For i = 0 to ubound(arr_SQL,2)
		
           '  str = str & " <option value="&arr_SQL(0,i)&">"&arr_SQL(0,i)&".&nbsp;"&arr_SQL(1,i)&" &nbsp;["&arr_SQL(2,i)&"]</option> " 
			 
			 str = str & " "&arr_SQL(3,i)&".&nbsp;"&arr_SQL(1,i)&" &nbsp;["&arr_SQL(2,i)&"]<br>" 
        
        
			Next
		Else
			RESPONSE.Write("No Record Found")
		End If
		
	
	response.Write( "<br>Total Shortlisted : "&arr_sqlCount(0, 0)&"<br> Total Roll Created :"&arr_chkRollTableSql(0, 0)&" <br>"&str&"")	


objDhakaBank.CloseConnection()
Set objDhakaBank = Nothing 
%>