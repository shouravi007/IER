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

orderby = request.form("jobid")
intPersonalId = Replace(Request.QueryString("id"), "'", "")

sqlCount = "SELECT COUNT(p.ID) FROM Personal p inner join jobpos j on j.personalid = p.id  WHERE j.change is null and p.SHORTLISTED = 1 and p.jobid = " & orderby
'response.Write("<br>"&sqlCount)
arr_sqlCount = objDhakaBank.RetrieveData(sqlCount, errMsg)
ErrorMessage "56", errMsg, 0

chkRollTableSql = "SELECT COUNT(Personalid) FROM ROLL where ID <> 0 and rollno not in (10000,20000) and  jobid = " & orderby
'response.Write("<br>"&chkRollTableSql)
arr_chkRollTableSql = objDhakaBank.RetrieveData(chkRollTableSql, errMsg)
ErrorMessage "53", errMsg, 0



maxroll = "SELECT max(rollno) + 1  FROM ROLL where ID <> 0 and rollno not in (10000,20000) and  jobid = " & orderby
'response.Write("<br>"&chkRollTableSql)
arrmaxroll = objDhakaBank.RetrieveData(maxroll, errMsg)
ErrorMessage "53", errMsg, 0




		sql = "SELECT distinct P.ID, (p.FirstName + ' ' + p.LastName) AS Name, R.ROLLNO, j.Trackingno FROM PERSONAL P  inner join jobpos j on j.personalid = p.id  Left JOIN ROLL R ON P.ID = R.PERSONALID  where j.change is null and P.shortlisted = 1 and P.jobid = " & orderby & "  order by r.RollNo desc  "
	
'response.Write(sql)
arr_SQL = objDhakaBank.RetrieveData(sql, errMsg)
ErrorMessage "56", errMsg, 0


		If arr_SQL(0,0) <> "Nothing" Then
		  str = "<ol style='padding:1%;'>" 
			For i = 0 to ubound(arr_SQL,2)
		     rollno = arr_SQL(2,i)
			 if rollno <> "" then   
			   rollnobox = ""
			   expectedroll = arr_SQL(2,i)
			 else
			   expectedroll = arrmaxroll(0,0) + i 
			   rollnobox = "&nbsp;&nbsp;&nbsp;<button style='padding-left:1%' type='button' class='btn btn-primary' onclick='RollGen("&arr_SQL(3,i)&","&orderby&","&expectedroll&")'>Generate Roll</button><div id='span_shortlist_"&arr_SQL(3,i)&"'></div>"
			 
			 end if 
             str = str & "<li style='padding:2%'>"&arr_SQL(3,i)&".&nbsp;"&arr_SQL(1,i)&" &nbsp;["&expectedroll&"]" & rollnobox & "</li>"
        
			Next
		Else
			RESPONSE.Write("No Record Found")
		End If
		
	
	response.Write( "<br>Total Shortlisted : "&arr_sqlCount(0, 0)&"<br> Total Roll Created :"&arr_chkRollTableSql(0, 0)&" <br>"&str&"</ol><br><input type='checkbox' id='existing' onclick='RollViewExist("&orderby&")'>View Existing Roll<br><div id='span_viewlist'></div>")	


objDhakaBank.CloseConnection()
Set objDhakaBank = Nothing 
%>