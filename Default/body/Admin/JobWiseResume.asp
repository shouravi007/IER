
<!--#include File = "CheckSession.asp" -->

<%
	strModuleName = "Datewise total resume" 
	strDescription = "Day wise resume view for  : "&strUserName&"##"&strPassword
	strAction = "Total Resume View for  "
%>
<!--#include File = "UserLog.asp" -->


<%
sql = ""
' USP_Daily_Apply]         @JobID ,    @ToDate,              @Age30on,         @FromDate 
sql = "exec USP_Daily_Apply 1, '2019-11-27 23:59:59.000', '2019-11-27', '2019-11-12 18:40:59.000' " 
ValuePrint sql , "sql"
arrPersonal = objERS.RetrieveData(sql, strErr)
ErrorMessage "34", errMsg, 0


If err.number <> "" Then 
  'Response.Write err.number & err.description 
End If

strMessage1 = "<div class='col-sm-12'><div class='date-wise-resume bg-style'><h1 class='post-name'>Total resume</h1><div class='wrapper'><div class='row job-list-row hidden-xs'><div class='col-sm-1'><h3 class='title'>Day</h3></div><div class='col-sm-4'><h3 class='title'>Application Date</h3></div><div class='col-sm-5'><h3 class='title'><span title='Management Trainee Officer'>PROBATIONARY OFFICER </span></h3></div><div class='col-sm-2'><h3 class='title'>Total</h3></div></div><hr class='first-hr'>"
 
If  arrPersonal(0,0) <> "Nothing" Then
' Response.Write("<br/>Array: " & Ubound(arrPersonal,2)) 
	For i = 0  To  Ubound(arrPersonal,2) 
		'Response.Write("<br/>Value i: " & i) 
		If i mod 2 = 0 Then
			varBGCol = "FFFFFF"
		Else
			varBGCol = "E6FAF0"
		End If
		strMessage1  = strMessage1 & "<div class='row job-list-row'><div class='col-sm-1'><h4 class='date-Wise-data'>"& i+1 & "</div>"
		strMessage1  = strMessage1 & "<div class='col-sm-4'><h4 class='date-Wise-data'>" & FormatDateTime(arrPersonal(0, i), vbLongDate) & "</div><div class='col-sm-5'><h4 class='date-Wise-data'>" & arrPersonal(1, i) 
		strMessage1  = strMessage1 & "</div><div class='col-sm-2'><h4 class='date-Wise-data'>" & arrPersonal(1, i) & "</div></div><hr>"
		'Response.Write("<br/>Data: " & strMessage1) 
		varSO = CLng(varSO) + arrPersonal(1, i)
		
		varTotal = CLng(varTotal) + arrPersonal(1, i)
	Next
	strMessage1 = strMessage1 & "<div class='row job-list-row hidden-xs'><div class='col-sm-5'><h3 class='title'>Grand Total</h3></div><div class='col-sm-5'><h3 class='title'>" & varSO & "</h3></div><div class='col-sm-2'><h3 class='title'><span title='Trainee Officer'>" & varTotal & "</span></h3></div></div></div></div></div>" 
End If %>

<%=strMessage1%>


<%
sql = ""
' USP_Daily_Apply_Update       @JobID ,    @ToDate,              @Age30on,         @FromDate 

sql = "exec USP_Daily_Apply_Update 1, '2019-11-27 23:59:59.000', '2019-11-27', '2019-11-12 18:40:59.000' " 
ValuePrint sql , "sql"
objERS.ExecuteQuery sql, errMsg
ErrorMessage "34", errMsg, 0

%>

