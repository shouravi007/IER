
<!--#include File = "CheckSession.asp" -->

<%
	strModuleName = "Datewise Admit Cout" 
	strDescription = "Day wise Admit count view for  : "&strUserName&"##"&strPassword
	strAction = "Total Resume View for  "
%>
<!--#include File = "UserLog.asp" -->


<%
'on error resume next 

' This Procedure is Used by All Class, Function & Procedure. This is an Error Message Displaying Procedure.


SQLPersonal = "SELECT convert(date , postedon) as AppDate, COUNT(CASE WHEN JOBID = 1 THEN PERSONALID END) As [JobID-1], COUNT(CASE WHEN JOBID = 2 THEN PERSONALID END) As [JobID-2] , COUNT(CASE WHEN JOBID = 3 THEN PERSONALID END) As [JobID-3]  FROM roll Where postedon>'03/30/2019' and trycount > 0 GROUP BY convert(date , postedon)"

arrPersonal = objERS.RetrieveData(SQLPersonal, strErr)
ErrorMessage "34", errMsg, 0


If err.number <> "" Then 
  'Response.Write err.number & err.description 
End If


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
		strMessage1  = strMessage1 & "</div><div class='col-sm-2'><h4 class='date-Wise-data'>" & arrPersonal(2, i) &"</div><div class='col-sm-2'><h4 class='date-Wise-data'>" & arrPersonal(3, i) &"</div><div class='col-sm-2'><h4 class='date-Wise-data'>" & arrPersonal(1, i)+ arrPersonal(2, i)+ arrPersonal(3, i)  & "</div></div><hr>"
		'Response.Write("<br/>Data: " & strMessage1) 
		varSO = CLng(varSO) + arrPersonal(1, i)
		varO = CLng(varO) + arrPersonal(2, i)
		varSO2 = CLng(varSO2) + arrPersonal(3, i)
		varTotal = CLng(varTotal) +  arrPersonal(1, i) +  arrPersonal(2, i) + arrPersonal(3, i)
	Next
	strMessage1 = strMessage1 & "<div class='row job-list-row hidden-xs'><div class='col-sm-4'><h3 class='title'>Grand Total</h3></div><div class='col-sm-2'><h3 class='title'>" & varSO & "</h3></div><div class='col-sm-2'><h3 class='title'><span title='Management Trainee Officer'>" & varO & "</span></h3></div><div class='col-sm-2'><h3 class='title'><span title='Management Trainee Officer'>" & varSO2 & "</span></h3></div><div class='col-sm-2'><h3 class='title'><span title='Trainee Officer'>" & varTotal & "</span></h3></div></div></div></div></div>" 

Response.Write(strMessage1)

Else
  
    Response.Write("<div class='col-sm-12'><h1>No Records Found</h1></div>")

End If 

%>



  