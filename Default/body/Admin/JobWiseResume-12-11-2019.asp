
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
sql = "exec USP_Daily_Apply 1, '2019-03-23 23:59:59.000', '2019-03-23', '2019-03-03 14:00:00.000' "
ValuePrint sql , "sql"
arrPersonal = objERS.RetrieveData(sql, strErr)
ErrorMessage "34", errMsg, 0

sql = ""
' USP_Daily_Apply]         @JobID ,    @ToDate,              @Age30on,         @FromDate 
sql = "exec USP_Daily_Apply 2, '2019-03-23 23:59:59.000', '2019-03-23', '2019-03-03 14:00:00.000' "
ValuePrint sql , "sql"
arrPersonal2 = objERS.RetrieveData(sql, strErr)
ErrorMessage "34", errMsg, 0

sql = ""
' USP_Daily_Apply]         @JobID ,    @ToDate,              @Age30on,         @FromDate 
sql = "exec USP_Daily_Apply 3, '2019-03-23 23:59:59.000', '2019-03-23', '2019-03-03 14:00:00.000' "
ValuePrint sql , "sql"
arrPersonal3 = objERS.RetrieveData(sql, strErr)
ErrorMessage "34", errMsg, 0



If err.number <> "" Then 
  'Response.Write err.number & err.description 
End If

ub1 = Ubound(arrPersonal,2) 
ub2 = Ubound(arrPersonal2,2) 
ub3 = Ubound(arrPersonal3,2) 


If  arrPersonal(0,0) <> "Nothing" Then

strMessage1 = "<div class='col-sm-12'><div class='date-wise-resume bg-style'><h1 class='post-name'>Total resume</h1><div class='wrapper'><div class='row job-list-row hidden-xs'><div class='col-sm-2'><h3 class='title'>Day</h3></div><div class='col-sm-2'><h3 class='title'>Application Date</h3></div><div class='col-sm-2'><h3 class='title'><span title='Management Trainee Officer'>Management Trainee Officer</span></h3></div><div class='col-sm-2'><h3 class='title'><span title='Trainee Officer'>Trainee Officer</span></h3></div><div class='col-sm-2'><h3 class='title'><span title='Trainee Officer'>Trainee Assistant Cash Officer</span></h3></div><div class='col-sm-2'><h3 class='title'>Total</h3></div></div><hr class='first-hr'>"
 
' Response.Write("<br/>Array: " & Ubound(arrPersonal,2)) 
	For i = 0  To  Ubound(arrPersonal,2) 
		'Response.Write("<br/>Value i: " & i) 
		If i mod 2 = 0 Then
			varBGCol = "FFFFFF"
		Else
			varBGCol = "E6FAF0"
		End If
		strMessage1  = strMessage1 & "<div class='row job-list-row'><div class='col-sm-2'><h4 class='date-Wise-data'>"& i+1 & "</div>"
		strMessage1  = strMessage1 & "<div class='col-sm-2'><h4 class='date-Wise-data'>" & FormatDateTime(arrPersonal(0, i), vbLongDate) & "</div><div class='col-sm-2'><h4 class='date-Wise-data'>" & arrPersonal(1, i) 
		strMessage1  = strMessage1 & "</div><div class='col-sm-2'><h4 class='date-Wise-data'>" & arrPersonal2(1, i) &"</div><div class='col-sm-2'><h4 class='date-Wise-data'>" & arrPersonal3(1, i) &"</div><div class='col-sm-2'><h4 class='date-Wise-data'>" & arrPersonal(1, i)+ arrPersonal2(1, i)+ arrPersonal3(1, i)  & "</div></div><hr>"
		'Response.Write("<br/>Data: " & strMessage1) 
		varSO = CLng(varSO) + arrPersonal(1, i)
		varO = CLng(varO) + arrPersonal2(1, i)
		varSO2 = CLng(varSO2) + arrPersonal3(1, i)
		varTotal = CLng(varTotal) +  arrPersonal3(1, i) +  arrPersonal2(1, i) + arrPersonal(1, i)
	Next
	strMessage1 = strMessage1 & "<div class='row job-list-row hidden-xs'><div class='col-sm-4'><h3 class='title'>Grand Total</h3></div><div class='col-sm-2'><h3 class='title'>" & varSO & "</h3></div><div class='col-sm-2'><h3 class='title'><span title='Management Trainee Officer'>" & varO & "</span></h3></div><div class='col-sm-2'><h3 class='title'><span title='Management Trainee Officer'>" & varSO2 & "</span></h3></div><div class='col-sm-2'><h3 class='title'><span title='Trainee Officer'>" & varTotal & "</span></h3></div></div></div></div></div>" 

Response.Write(strMessage1)

Else
  
    Response.Write("<div class='col-sm-12'><h1>No Records Found</h1></div>")

End If 

%>




<%
sql = ""
' USP_Daily_Apply_Update       @JobID ,    @ToDate,              @Age30on,         @FromDate 

sql = "exec USP_Daily_Apply_Update 1, '2019-03-23 23:59:59.000', '2019-03-23', '2019-03-03 14:00:00.000' "
ValuePrint sql , "sql"
objERS.ExecuteQuery sql, errMsg
ErrorMessage "34", errMsg, 0

sql = ""
' USP_Daily_Apply_Update       @JobID ,    @ToDate,              @Age30on,         @FromDate 

sql = "exec USP_Daily_Apply_Update 2, '2019-03-23 23:59:59.000', '2019-03-23', '2019-03-03 14:00:00.000' "
ValuePrint sql , "sql"
objERS.ExecuteQuery sql, errMsg
ErrorMessage "34", errMsg, 0

sql = ""
' USP_Daily_Apply_Update       @JobID ,    @ToDate,              @Age30on,         @FromDate 

sql = "exec USP_Daily_Apply_Update 3, '2019-03-23 23:59:59.000', '2019-03-23', '2019-03-03 14:00:00.000' "
ValuePrint sql , "sql"
objERS.ExecuteQuery sql, errMsg
ErrorMessage "34", errMsg, 0
%>

