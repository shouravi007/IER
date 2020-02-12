
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

'SQLPersonal ="select AppDate As Application_Date, count(personalid) as Total_Cv , Jobid = (case when jobid = 1 then 'Officer' else 'Senior Officer' end) "SQLPersonal = SQLPersonal  & " from jobpos group by AppDate order by AppDate,JobId "  


'SQLPersonal = "SELECT * FROM (SELECT convert( date , postedon) as AppDate , id, JobId  FROM Personal Where postedon >'2018-03-14' and postedon < '2018-04-02' and rejected = 0 and testcv = 0  and ( photo = 1 or bdjobsphoto = 1) ) x PIVOT(Count(id)  FOR JobId IN ([6], [7])) p  order by  AppDate" 

'SQLPersonal = "SELECT convert(date , postedon) as AppDate, COUNT(PERSONALID), COUNT(CASE WHEN JOBID = 6 THEN PERSONALID END) As [JobID-6], COUNT(CASE WHEN JOBID = 1 THEN PERSONALID END) As [JobID-7] FROM roll Where postedon>'04/22/2018' and trycount <> 0 and jobid = 2 GROUP BY convert(date , postedon)"

SQLPersonal = "SELECT convert(date , postedon) as AppDate, COUNT(PERSONALID), COUNT(CASE WHEN JOBID = 2 THEN PERSONALID END) As [JobID-2] FROM roll Where postedon>'12/02/2018' and trycount <> 0 and jobid = 2 GROUP BY convert(date , postedon)"

'SQLPersonal = "Select COUNT(PersonalID) As Total, PostedOn From Personal Group By PostedOn Having PostedOn>='2016-04-10' order by PostedOn desc   "

arrPersonal = objERS.RetrieveData(SQLPersonal, strErr)
ErrorMessage "34", errMsg, 0


If err.number <> "" Then 
  'Response.Write err.number & err.description 
End If

'strMessage1 = "<div class='col-sm-12'><div class='date-wise-resume bg-style'><h1 class='post-name'>Total Admit Downlaod datewise </h1><div class='wrapper'><div class='row job-list-row hidden-xs'><div class='col-sm-1'><h3 class='title'>Day</h3></div><div class='col-sm-4'><h3 class='title'>Application Date</h3></div><div class='col-sm-4'><h3 class='title'><span title='Trainee Senior Officer'>Trainee Senior Officer</span></h3></div><div class='col-sm-3'><h3 class='title'>Total</h3></div></div><hr class='first-hr'>"

strMessage1 = "<div class='col-sm-12'><div class='date-wise-resume bg-style'><h1 class='post-name'>Total Admit Downlaod datewise </h1><div class='wrapper'><div class='row job-list-row hidden-xs'><div class='col-sm-1'><h3 class='title'>Day</h3></div><div class='col-sm-4'><h3 class='title'>Download Date</h3></div><div class='col-sm-4'><h3 class='title'><span title='Trainee Senior Officer'>Trainee Officer (Cash)</span></h3></div></div><hr class='first-hr'>"
 
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
		strMessage1  = strMessage1 & "<div class='col-sm-4'><h4 class='date-Wise-data'>" & FormatDateTime(arrPersonal(0, i), vbLongDate) & "</div><div class='col-sm-4'><h4 class='date-Wise-data'>" & arrPersonal(1, i) 
		
		'strMessage1  = strMessage1 & "</div><div class='col-sm-3'><h4 class='date-Wise-data'>" & arrPersonal(1, i)+ arrPersonal(2, i) & "</div></div><hr>"
		strMessage1  = strMessage1 & "</div></div><hr>"
		
		'Response.Write("<br/>Data: " & strMessage1) 
		varSO = CLng(varSO) + arrPersonal(1, i)
		varO = CLng(varO) + arrPersonal(2, i)
		'varSO2 = CLng(varSO2) + arrPersonal(3, i)
		varTotal = CLng(varTotal)+  arrPersonal(2, i) + arrPersonal(1, i)
	Next
	
	'strMessage1 = strMessage1 & "<div class='row job-list-row hidden-xs'><div class='col-sm-5'><h3 class='title'>Grand Total</h3></div><div class='col-sm-4'><h3 class='title'>" & varSO & "</h3></div><div class='col-sm-3'><h3 class='title'><span title='Trainee Senior Officer'>" & varTotal & "</span></h3></div></div></div></div></div>" 
	strMessage1 = strMessage1 & "<div class='row job-list-row hidden-xs'><div class='col-sm-5'><h3 class='title'>Grand Total</h3></div><div class='col-sm-4'><h3 class='title'>" & varSO & "</h3></div></div></div></div></div>"
	
End If %>

<%=strMessage1%>

  