
<!--#include File = "CheckSession.asp" -->

<%
	strModuleName = "Not able download" 
	strDescription = "not able download admit card view for  : "&strUserName&"##"&strPassword
	strAction = "Total Resume View for  "
%>
<!--#include File = "UserLog.asp" -->


<%
'on error resume next 

' This Procedure is Used by All Class, Function & Procedure. This is an Error Message Displaying Procedure.





'SQLPersonal ="select AppDate As Application_Date, count(personalid) as Total_Cv , Jobid = (case when jobid = 1 then 'Officer' else 'Senior Officer' end) "SQLPersonal = SQLPersonal  & " from jobpos group by AppDate order by AppDate,JobId "  


'SQLPersonal = "SELECT * FROM (SELECT convert( date , postedon) as AppDate , id, JobId  FROM Personal Where postedon >'2018-03-14' and postedon < '2018-04-02' and rejected = 0 and testcv = 0  and ( photo = 1 or bdjobsphoto = 1) ) x PIVOT(Count(id)  FOR JobId IN ([6], [7])) p  order by  AppDate" 

SQLPersonal = "SELECT row_number() OVER(Order By r.rollno ) AS [Sl], j.id as [ID] ,(p.FirstName+ ' '+p.LastName) as [Name] , p.contactphone,p.email , r.rollno, r.personalid,r.trycount FROM roll r inner join jobpos j on j.personalid = r.personalid inner join personal p on p.id = j.personalid  Where r.postedon>'04/22/2018' and r.trycount = 0  and r.personalid <> 0 and r.jobid = 2 and j.jobid = 2 "

'SQLPersonal = "Select COUNT(PersonalID) As Total, PostedOn From Personal Group By PostedOn Having PostedOn>='2016-04-10' order by PostedOn desc   "
arrPersonal = objERS.RetrieveData(SQLPersonal, strErr)
ErrorMessage "34", errMsg, 0


If err.number <> "" Then 
  'Response.Write err.number & err.description 
End If

'strMessage1 = "<div class='col-sm-12'><div class='date-wise-resume bg-style'><h1 class='post-name'>Not able download list of applicants  </h1><div class='wrapper'><div class='row job-list-row hidden-xs'><div class='col-sm-1'><h3 class='title'>SL</h3></div><div class='col-sm-1'><h3 class='title'>Tracking</h3></div><div class='col-sm-2'><h3 class='title'><span title='Management Trainee'>Name</span></h3></div><div class='col-sm-2'><h3 class='title'>Contact Phone</h3></div><div class='col-sm-4'><h3 class='title'>Email </h3></div><div class='col-sm-2'><h3 class='title'>Roll no</h3></div></div><hr class='first-hr'>"

strMessage1 = "<table class='table'><thead><tr><th>Not able download list of applicants Junior Officer </th></tr></thead></table><table class='table'><thead><th>SL</th><th>Login ID</th><th>Name</th><th>Contact Phone</th><th>Email</th><th>Roll no</th></thead><tbody>"
 
If  arrPersonal(0,0) <> "Nothing" Then
' Response.Write("<br/>Array: " & Ubound(arrPersonal,2)) 
	For i = 0  To  Ubound(arrPersonal,2) 
		'Response.Write("<br/>Value i: " & i) 
		If i mod 2 = 0 Then
			varBGCol = "FFFFFF"
		Else
			varBGCol = "E6FAF0"
		End If
		strMessage1  = strMessage1 & "<tr><td>"& arrPersonal(0, i) & "</td>"
		strMessage1  = strMessage1 & "<td>" & arrPersonal(1, i) & "</td><td>" & arrPersonal(2, i) 
		strMessage1  = strMessage1 & "</td><td>" & arrPersonal(3, i) & "</td><td>" & arrPersonal(4, i) & "</td><td>" & arrPersonal(5, i) & "</td></tr>"
		varSO = arrPersonal(0, i)
	Next
	strMessage1 = strMessage1 & "<tr><td colspan='4'>Grand Total : " & varSO & "</td><td>" & varTotal & "</td></tr></tbody></table>" 
End If %>

<%=strMessage1%>

  