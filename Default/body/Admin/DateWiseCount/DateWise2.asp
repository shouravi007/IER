
<%

sql = ""
sql = ";WITH Edu_CTE As (SELECT DISTINCT E.personalid, E.educationid, E.RESULT, E.[ResultPoint], CASE WHEN (E.Educationid=1 OR E.Educationid=2) AND ((E.RESULT=0 AND E.ResultPoint >=2 ) OR (E.RESULT=14 AND E.ResultPoint >=45 )) THEN 2 WHEN (E.Educationid=3 OR E.Educationid=4) AND ((E.RESULT=0 AND E.ResultPoint >=2.25 and E.CGPAScale >=4 ) OR (E.RESULT >=14 AND E.ResultPoint >=45 )) THEN 2 END As Divission FROM JobPos JP LEFT JOIN Academic E ON JP.PersonalId=E.PersonalId WHERE JP.JOBID=1)SELECT CONVERT(varchar(10), JP.AppDate, 101) As PostingDate, COUNT(DISTINCT JP.id) As TotalApply FROM Edu_CTE E LEFT JOIN Personal P ON P.id = E.Personalid LEFT JOIN JobPos JP ON P.id=JP.personalid WHERE JP.JOBID=1 and JP.AppDate >'2018-09-26' and JP.AppDate < '2018-10-01' and ( p.photo=1 or p.bdjobsphoto=1 ) and p.testcv = 0 and DATEDIFF(DAY, P.dateofbirth, '09/30/2018')/365 <=30 AND DATEDIFF(DAY, P.dateofbirth, '09/30/2018')/365 >=21 GROUP BY CONVERT(varchar(10), JP.AppDate, 101) ORDER BY CONVERT(varchar(10), JP.AppDate, 101)"

ValuePrint sql , "sql"
'response.Write("<br>"&sql&"<br><br>")
arrPersonal33 = objERS.RetrieveData(sql, strErr)
ErrorMessage "34", errMsg, 0
'ValuePrint strVar , "strVar"

If err.number <> "" Then 
  'Response.Write err.number & err.description 
  'err.clear
End If



sql22 = "" 
sql22 = ";WITH Edu_CTE As (SELECT DISTINCT E.personalid, E.educationid, E.RESULT, E.[ResultPoint], CASE WHEN (E.Educationid=1 OR E.Educationid=2 ) AND ((E.RESULT=0 AND E.ResultPoint >=3 ) OR (E.RESULT=15 AND E.ResultPoint >=60 )) THEN 1 WHEN (E.Educationid=3 OR E.Educationid=4) AND ((E.RESULT=0 AND E.ResultPoint >=3 and E.CGPAScale=4) OR (E.RESULT=15 AND E.ResultPoint >=60 )) THEN 1 WHEN (E.Educationid=3 OR E.Educationid=4) AND ((E.RESULT=0 AND E.ResultPoint >=3.75 and E.CGPAScale=5) OR (E.RESULT=15 AND E.ResultPoint >=60 )) THEN 1 WHEN (E.Educationid=1 OR E.Educationid=2) AND ((E.RESULT=0 AND E.ResultPoint >=2) OR (E.RESULT=14 AND E.ResultPoint >=45)) THEN 2 WHEN (E.Educationid=3 OR E.Educationid=4) AND ((E.RESULT=0 AND E.ResultPoint >=2.25 AND E.ResultPoint < 3 and E.CGPAScale=4) OR (E.RESULT=14 AND E.ResultPoint >=45 )) THEN 2 END As Divission FROM Personal P LEFT JOIN JobPos JP ON P.id=JP.personalid LEFT JOIN Academic E ON P.id=E.PersonalId), Masters_CTE As (SELECT Distinct personalid FROM Edu_CTE WHERE EducationID=4), FinalCTE As ( SELECT personalid FROM Edu_CTE WHERE EducationID IN (1,2,3) And personalid NOT IN (SELECT * FROM Masters_CTE)GROUP BY personalid HAVING SUM(Divission) < 6UNION All SELECT * FROM Masters_CTE )SELECT CONVERT(varchar(10), JP.AppDate, 101) As PostingDate, COUNT(DISTINCT JP.id) As TotalApply FROM FinalCTE E LEFT JOIN Personal P ON P.id=E.Personalid LEFT JOIN JobPos JP ON P.id=JP.personalid WHERE JP.JOBID=2 and JP.AppDate >'2018-09-26' and JP.AppDate < '2018-10-01' and ( p.photo=1 or p.bdjobsphoto=1 )and p.testcv=0and DATEDIFF(DAY, P.dateofbirth, '09/30/2018')/365 <=30 AND DATEDIFF(DAY, P.dateofbirth, '09/30/2018')/365 >=21GROUP BY CONVERT(varchar(10), JP.AppDate, 101)ORDER BY CONVERT(varchar(10), JP.AppDate, 101)"

ValuePrint sql22 , "sql22"
'response.Write("<br>"&sql&"<br><br>")
arrPersonal22 = objERS.RetrieveData(sql22, strErr)
ErrorMessage "34", errMsg, 0

If err.number <> "" Then 
 ' Response.Write err.number & err.description 
 ' err.clear
End If

strMessage2 = "<div class='col-sm-12'><div class='date-wise-resume bg-style'><h1 class='post-name'>Total resume (From 26-09-2018  To  30-09-2018)</h1><div class='wrapper'><div class='row job-list-row hidden-xs'><div class='col-sm-1'><h3 class='title'>Day</h3></div><div class='col-sm-3'><h3 class='title'>Application Date</h3></div><div class='col-sm-3'><h3 class='title'><span title='Management Trainee'>Assistant Cash Officer</span></h3></div><div class='col-sm-3'><h3 class='title'><span title='Management Trainee'>Junior Officer</span></h3></div><div class='col-sm-2'><h3 class='title'>Total</h3></div></div><hr class='first-hr'>"
 
If  arrPersonal33(0,0) <> "Nothing" Then
   ' Response.Write("<br/>Array: " & Ubound(arrPersonal,2)) 
	For i = 0  To  Ubound(arrPersonal33,2) 
		'Response.Write("<br/>Value i: " & i) 
		If i mod 2 = 0 Then
			varBGCol = "FFFFFF"
		Else
			varBGCol = "E6FAF0"
		End If
		strMessage2  = strMessage2 & "<div class='row job-list-row'><div class='col-sm-2'><h4 class='date-Wise-data'>"& i+1 & "</div>"
		strMessage2  = strMessage2 & "<div class='col-sm-3'><h4 class='date-Wise-data'>" & FormatDateTime(arrPersonal33(0, i), vbLongDate) & "</div><div class='col-sm-3'><h4 class='date-Wise-data'>" & arrPersonal33(1, i) 
		strMessage2  = strMessage2 & "</div><div class='col-sm-2'><h4 class='date-Wise-data'>" & arrPersonal22(1, i) & "</div><div class='col-sm-2'><h4 class='date-Wise-data'>" & arrPersonal33(1, i)+ arrPersonal22(1, i) & "</div></div><hr>"
		'Response.Write("<br/>Data: " & strMessage1) 
		varSO2 = CLng(varSO2) + arrPersonal33(1, i)
		varO2 = CLng(varO2) + arrPersonal22(1, i)
		'varSO2 = CLng(varSO2) + arrPersonal33(3, i)
		varTotal2 = CLng(varTotal2)+  arrPersonal33(1, i) + arrPersonal22(1, i)
		
		Next
	strMessage2 = strMessage2 & "<div class='row job-list-row hidden-xs'><div class='col-sm-5'><h3 class='title'>Grand Total</h3></div><div class='col-sm-3'><h3 class='title'>" & varSO2 & "</h3></div><div class='col-sm-2'><h3 class='title'>" & varO2 & "</h3></div><div class='col-sm-2'><h3 class='title'><span title='Trainee Officer'>" & varTotal2 & "</span></h3></div></div></div></div></div>" 
End If 

If err.number <> "" Then 
 ' Response.Write err.number & err.description 
End If



%>


<%=strMessage2%>


<%
sql = ""
sql = ";WITH Edu_CTE As (SELECT DISTINCT E.personalid, E.educationid, E.RESULT, E.[ResultPoint], CASE WHEN (E.Educationid=1 OR E.Educationid=2) AND ((E.RESULT=0 AND E.ResultPoint >=2 ) OR (E.RESULT=14 AND E.ResultPoint >=45 )) THEN 2 WHEN (E.Educationid=3 OR E.Educationid=4) AND ((E.RESULT=0 AND E.ResultPoint >=2.25 and E.CGPAScale >=4 ) OR (E.RESULT >=14 AND E.ResultPoint >=45 )) THEN 2 END As Divission FROM JobPos JP LEFT JOIN Academic E ON JP.PersonalId=E.PersonalId WHERE JP.JOBID=1 ) update jobpos set eligible=1 where id in (SELECT DISTINCT JP.ID FROM Edu_CTE E LEFT JOIN Personal P ON P.id=E.Personalid LEFT JOIN JobPos JP ON P.id=JP.personalid WHERE JP.JOBID=1 and JP.AppDate >'2018-09-26' and JP.AppDate < '2018-10-01' and ( p.photo=1 or p.bdjobsphoto=1 )and p.testcv=0and DATEDIFF(DAY, P.dateofbirth, '09/30/2018')/365 <=30 AND DATEDIFF(DAY, P.dateofbirth, '09/30/2018')/365 >=21 ) " 

ValuePrint sql , "sql"
'response.Write("<br><br>"&strVar)
objERS.ExecuteQuery sql,errMsg
ErrorMessage "34", errMsg, 0


sql = ""
sql = ";WITH Edu_CTE As (SELECT DISTINCT E.personalid, E.educationid, E.RESULT, E.[ResultPoint], CASE WHEN (E.Educationid=1 OR E.Educationid=2 ) AND ((E.RESULT=0 AND E.ResultPoint >=3 ) OR (E.RESULT=15 AND E.ResultPoint >=60 )) THEN 1 WHEN (E.Educationid=3 OR E.Educationid=4) AND ((E.RESULT=0 AND E.ResultPoint >=3 and E.CGPAScale=4) OR (E.RESULT=15 AND E.ResultPoint >=60 )) THEN 1 WHEN (E.Educationid=3 OR E.Educationid=4) AND ((E.RESULT=0 AND E.ResultPoint >=3.75 and E.CGPAScale=5) OR (E.RESULT=15 AND E.ResultPoint >=60 )) THEN 1 WHEN (E.Educationid=1 OR E.Educationid=2) AND ((E.RESULT=0 AND E.ResultPoint >=2) OR (E.RESULT=14 AND E.ResultPoint >=45)) THEN 2 WHEN (E.Educationid=3 OR E.Educationid=4) AND ((E.RESULT=0 AND E.ResultPoint >=2.25 AND E.ResultPoint < 3 and E.CGPAScale=4) OR (E.RESULT=14 AND E.ResultPoint >=45 )) THEN 2 END As Divission FROM Personal P LEFT JOIN JobPos JP ON P.id=JP.personalid LEFT JOIN Academic E ON P.id=E.PersonalId), Masters_CTE As (SELECT Distinct personalid FROM Edu_CTE WHERE EducationID=4), FinalCTE As ( SELECT personalid FROM Edu_CTE WHERE EducationID IN (1,2,3) And personalid NOT IN (SELECT * FROM Masters_CTE) GROUP BY personalid HAVING SUM(Divission) < 6 UNION All SELECT * FROM Masters_CTE ) update jobpos set eligible=1 where id in (SELECT DISTINCT JP.ID FROM FinalCTE E LEFT JOIN Personal P ON P.id=E.Personalid LEFT JOIN JobPos JP ON P.id=JP.personalid WHERE JP.JOBID=2 and JP.AppDate >'2018-09-26' and JP.AppDate < '2018-10-01' and ( p.photo=1 or p.bdjobsphoto=1 )and p.testcv=0 and DATEDIFF(DAY, P.dateofbirth, '09/30/2018')/365 <=30 AND DATEDIFF(DAY, P.dateofbirth, '09/30/2018')/365 >=21)" 

ValuePrint sql , "sql"
'response.Write("<br><br>"&strVar)
objERS.ExecuteQuery sql,errMsg
ErrorMessage "34", errMsg, 0
%>
