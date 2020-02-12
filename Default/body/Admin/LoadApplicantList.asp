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

jobid = request.QueryString("jobid")

sqlCount = "SELECT COUNT(ID) FROM Personal WHERE SHORTLISTED = 1 and jobid =  " & jobid

arr_sqlCount = objDhakaBank.RetrieveData(sqlCount, errMsg)
ErrorMessage "56", errMsg, 0

chkRollTableSql = "SELECT COUNT(*) FROM ROLL where jobid =   " & jobid

arr_chkRollTableSql = objDhakaBank.RetrieveData(chkRollTableSql, errMsg)
ErrorMessage "53", errMsg, 0

If orderby = "id" Then
	strOrderBy = "p.id"
ElseIf orderby = "name" Then
	strOrderBy = "(p.FirstName + ' ' + p.LastName)"
ElseIf orderby = "roll" Then
	if arr_chkRollTableSql(0,0) = 0 then
		strOrderBy = "jp.rollno"
	else
		strOrderBy = "r.rollno"
	end if
ElseIf orderby = "random" Then
		strOrderBy = "p.DateOfBirth, RIGHT(p.CellPhone, 8) Desc, (p.FirstName+ ' '+p.LastName), p.FatherName Desc"
End If

If orderby = "random" Then
	if arr_chkRollTableSql(0,0) = 0 then
		sql = "Select p.id,(p.FirstName + ' ' + p.LastName) AS Name, jp.ROLLNO From PERSONAL p INNER JOIN roll JP ON P.id=JP.PERSONALID where   p.shortlisted = 1 and p.jobid = "&jobid&"  Order By "&strOrderBy
	Else
		sql = "Select p.id,(p.FirstName + ' ' + p.LastName) AS Name, R.ROLLNO From PERSONAL p  INNER JOIN ROLL R ON JP.PERSONALID = R.PERSONALID where  p.shortlisted = 1 and p.jobid  = "&jobid&"  Order By "&strOrderBy
	End If

Else
	If orderby <> "" Then
		
		if arr_chkRollTableSql(0,0) = 0 then
			
			sql = "SELECT distinct P.id, (p.FirstName + ' ' + p.LastName) AS Name, jp.ROLLNO FROM PERSONAL P INNER JOIN Roll JP ON P.id = JP.PERSONALID where p.shortlisted = 1 and p.jobid = "&jobid&" order by "&strOrderBy
		else
			sql = "SELECT distinct P.id, (p.FirstName + ' ' + p.LastName) AS Name, R.ROLLNO FROM PERSONAL P  INNER JOIN ROLL R ON P.id = R.PERSONALID where P.shortlisted = 1 and P.jobid = "&jobid&"  order by "&strOrderBy
		end if
	
	Else
		if arr_chkRollTableSql(0,0) = 0 then
			sql = "SELECT distinct P.id, (p.FirstName + ' ' + p.LastName) AS Name, jp.ROLLNO FROM PERSONAL P INNER JOIN Roll JP ON P.id = JP.PERSONALID where P.shortlisted = 1 and P.Jobid = "&jobid&"  AND P.id="&intPersonalId 
		else
			sql = "SELECT distinct P.PERSONALID, (p.FirstName + ' ' + p.LastName) AS Name, R.ROLLNO FROM PERSONAL P  INNER JOIN ROLL R ON JP.id = R.PERSONALID where P.shortlisted = 1 and P.jobid = "&jobid&"  AND P.id="&intPersonalId 
		end If
	End If			
End If
'response.Write(sql)
arr_SQL = objDhakaBank.RetrieveData(sql, errMsg)
ErrorMessage "56", errMsg, 0

'RESPONSE.Write("<br>HELLOW"&arr_SQL(0,0))

If arr_SQL(0,0) <> "Nothing" Then 'intPersonalId <> "" Then
 	intRoll = arr_SQL(1,0)
	response.Write("&nbsp;&nbsp;<font size='-1' color='green'>"&arr_SQL(1,0)&"</font><br>")	
ElseIf arr_SQL(0,0) = "Nothing" Then
%>
<br />
<form id="form1" name="form1" method="post" action="RollGenerateMultiple.asp">
 &nbsp;&nbsp;&nbsp;<input type="radio" name="rdoGenerate" id="generateRoll" value="0" checked="checked"/>New/ Change/ Clear Selected Applicant's Roll No<br /><br />
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Roll Number: 
 <%
 'If arr_SQL(2,0) = 0 Then
	
	sql_maxRoll = "Select max(RollNo) as MaxRoll from Roll where jobid = "&jobid
	arr_sql_maxRoll = objDhakaBank.RetrieveData(sql_maxRoll, errMsg)
	ErrorMessage "19", errMsg, 0
   
    If IsNull(arr_sql_maxRoll(0,0)) Then
        mMaxRoll = 1
    Else
        mMaxRoll = arr_sql_maxRoll(0,0) + 1
    End If
 	intRoll = mMaxRoll 
 'Else
 'End If
 %>
<input name="txtRollNo" id="txtRollNo" type="text" value="<%=intRoll%>" /><br /><br />
<input name="hiddenPersonalId" id="hiddenPersonalId" type="hidden" value="<%=intPersonalId%>" />
 &nbsp;&nbsp;&nbsp;<input type="radio" name="rdoGenerate" id="generateRoll" value="1"<%If Request.Form("rdoGenerate") = "1" then%> checked="checked"<%End If%> />Generate/ Regenerate/ Clear all Applicant's Roll numbers 
<br /><br />
<div id="descLabel"></div>
<br /> <br />

<input name="clearButton" id="clearButton" type="submit" value="Clear Roll" onclick="return ClearRoll();"/>&nbsp;
<input name="generateButton" id="generateButton" type="submit" value="Generate Roll" onclick="return GenerateRoll();"/> <br /> <br />
<%
ElseIf orderby <> "" Then
%>

<select name="ddlListOfApplicants" id="ddlListOfApplicants" multiple="multiple" size="20" style="width:350px;" onchange="ShowAppName(this.value);">
   	 	<%
		If arr_SQL(0,0) <> "Nothing" Then
			For i = 0 to ubound(arr_SQL,2)
		%>
        <option value="<%=arr_SQL(0,i)%>"><%=arr_SQL(0,i)%>. <%=arr_SQL(1,i)%> &nbsp;[<%=arr_SQL(2,i)%>]</option>
        <%
			Next
		Else
			RESPONSE.Write("No Record Found")
		End If
		%>    
</select>
</form>
<%
End If
%>