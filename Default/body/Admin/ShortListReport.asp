
<!--#include File = "CheckSession.asp" -->

<%
	strModuleName = "Shortlist Total" 
	strDescription = " view shortlist total for  : "&strUserName&"##"&strPassword
	strAction = "Total Resume View for  "
%>
<!--#include File = "UserLog.asp" -->


<%
'on error resume next 

' This Procedure is Used by All Class, Function & Procedure. This is an Error Message Displaying Procedure.





'SQLPersonal ="select AppDate As Application_Date, count(personalid) as Total_Cv , Jobid = (case when jobid = 1 then 'Officer' else 'Senior Officer' end) "SQLPersonal = SQLPersonal  & " from jobpos group by AppDate order by AppDate,JobId "  


'SQLPersonal = "SELECT * FROM (SELECT convert( date , postedon) as AppDate , id, JobId  FROM Personal Where postedon >'2018-03-14' and postedon < '2018-04-02' and rejected = 0 and testcv = 0  and ( photo = 1 or bdjobsphoto = 1) ) x PIVOT(Count(id)  FOR JobId IN ([6], [7])) p  order by  AppDate" 

SQLPersonal = "SELECT * FROM (SELECT id, JobId  FROM Personal Where shortlisted = 1  ) x PIVOT(Count(id)  FOR JobId IN ([6], [7])) p "

'SQLPersonal = "Select COUNT(PersonalID) As Total, PostedOn From Personal Group By PostedOn Having PostedOn>='2016-04-10' order by PostedOn desc   "
arrPersonal = objERS.RetrieveData(SQLPersonal, strErr)
ErrorMessage "34", errMsg, 0


If err.number <> "" Then 
  'Response.Write err.number & err.description 
End If

strMessage1 = "<div class='col-sm-12'><div class='date-wise-resume bg-style'><h1 class='post-name'>Total ShortList</h1><div class='wrapper'><div class='row job-list-row hidden-xs'><div class='col-sm-4'><h3 class='title'><span title='Management Trainee Officer'>Management Trainee Officer</span></h3></div><div class='col-sm-4'><h3 class='title'><span title='Trainee Officer'>Trainee Officer</span></h3></div><div class='col-sm-4'><h3 class='title'>Total</h3></div></div><hr class='first-hr'>"
 
If  arrPersonal(0,0) <> "Nothing" Then
' Response.Write("<br/>Array: " & Ubound(arrPersonal,2)) 
	For i = 0  To  Ubound(arrPersonal,2) 
		'Response.Write("<br/>Value i: " & i) 
		If i mod 2 = 0 Then
			varBGCol = "FFFFFF"
		Else
			varBGCol = "E6FAF0"
		End If
		strMessage1  = strMessage1 & ""
		strMessage1  = strMessage1 & "<div class='col-sm-4'><h4 class='date-Wise-data'>" & arrPersonal(0, i) 
		strMessage1  = strMessage1 & "</div><div class='col-sm-4'><h4 class='date-Wise-data'>" & arrPersonal(1, i) &"</div><div class='col-sm-4'><h4 class='date-Wise-data'>" & arrPersonal(1, i)+ arrPersonal(0, i) & "</div></div><hr>"
		'Response.Write("<br/>Data: " & strMessage1) 
		varSO = CLng(varSO) + arrPersonal(0, i)
		varO = CLng(varO) + arrPersonal(1, i)
		'varSO2 = CLng(varSO2) + arrPersonal(3, i)
		varTotal = CLng(varTotal)+  arrPersonal(1, i) + arrPersonal(0, i)
	Next
	'strMessage1 = strMessage1 & "<div class='row job-list-row hidden-xs'><div class='col-sm-5'><h3 class='title'>Grand Total</h3></div><div class='col-sm-3'><h3 class='title'>" & varSO & "</h3></div><div class='col-sm-2'><h3 class='title'><span title='Management Trainee Officer'>" & varO & "</span></h3></div><div class='col-sm-2'><h3 class='title'><span title='Trainee Officer'>" & varTotal & "</span></h3></div></div></div></div></div>" 
End If %>

<%=strMessage1%>

  