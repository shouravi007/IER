<%
strJobids = Request.Form("jobid")
'response.Write("job id: "&strJobids)
'response.End()

'ValuePrint strJobids , "strJobids-3" 

'	if strJobids = 2 or strJobids = "2" Then ' checking for JO Only

		'sqlCheckElg = "; WITH Personal_CTE As ( SELECT P.ID, COUNT(P.ID) OVER(PARTITION BY P.ID ORDER BY P.ID) As Total FROM Personal P INNER JOIN Academic A ON P.ID=A.PersonalID ) , Academic_CTE1 as (SELECT DISTINCT ID FROM Personal_CTE WHERE Total>=3 ) , Edu_CTE As (SELECT DISTINCT E.personalid, E.educationid, E.RESULT, E.[ResultPoint],CASE WHEN (E.Educationid=1 OR E.Educationid=2) AND ((E.RESULT=0 AND E.ResultPoint>=3 AND E.ResultPoint <=5)) THEN 3 WHEN (E.Educationid=3 OR E.Educationid=4) AND ((E.RESULT=0 AND E.ResultPoint>=3 AND E.ResultPoint <=5) OR (E.RESULT=15 AND E.ResultPoint>=60 AND E.ResultPoint <=100)) THEN 3 WHEN (E.Educationid=1 OR E.Educationid=2) AND ((E.RESULT=0 AND E.ResultPoint>=2 AND E.ResultPoint < 3) OR (E.RESULT=14 AND E.ResultPoint>=45 AND E.ResultPoint < 60)) THEN 2 WHEN (E.Educationid=3 OR E.Educationid=4) AND ((E.RESULT=0 AND E.ResultPoint>=2.25 AND E.ResultPoint < 3) OR (E.RESULT=14 AND E.ResultPoint>=45 AND E.ResultPoint < 60)) THEN 2 END As Divission FROM Personal P inner join Academic_CTE1 a1 on a1.id=p.id LEFT JOIN JobPos JP ON P.id=JP.personalid LEFT JOIN Academic E ON P.id=E.PersonalId WHERE P.JOBID=2), FinalCTE As ( SELECT personalid FROM Edu_CTE WHERE EducationID IN (1,2,3) GROUP BY personalid HAVING SUM(Divission) >= 7 ) SELECT JP.personalid FROM FinalCTE E LEFT JOIN Personal P ON P.id=E.Personalid LEFT JOIN JobPos JP ON P.id=JP.personalid WHERE P.JOBID=2 and JP.PersonalId ="&TrackNo
		
		sqlCheckElg = "WITH Personal_CTE As ( SELECT P.ID, COUNT(P.ID) OVER(PARTITION BY P.ID ORDER BY P.ID) As Total FROM Personal P INNER JOIN Academic A ON P.ID=A.PersonalID ) , Academic_CTE1 as (SELECT DISTINCT ID FROM Personal_CTE WHERE Total>=3 ) , Edu_CTE As (SELECT DISTINCT E.personalid, E.educationid, E.RESULT, E.[ResultPoint],CASE WHEN (E.Educationid=1 OR E.Educationid=2) AND ((E.RESULT=0 AND E.ResultPoint>=3.75 AND E.ResultPoint <=5)) THEN 3 WHEN (E.Educationid=3 OR E.Educationid=4) AND ((E.RESULT=0 AND E.ResultPoint>=3 AND E.ResultPoint <=4) OR E.RESULT=15) THEN 3 WHEN (E.Educationid=1 OR E.Educationid=2) AND ((E.RESULT=0 AND E.ResultPoint>=2.81 AND E.ResultPoint < 3) OR (E.RESULT=14 AND E.ResultPoint>=45 AND E.ResultPoint < 60)) THEN 2 WHEN (E.Educationid=3 OR E.Educationid=4) AND ((E.RESULT=0 AND E.ResultPoint>=2.25 AND E.ResultPoint < 3) OR E.RESULT=14) THEN 2 END As Divission FROM Personal P inner join Academic_CTE1 a1 on a1.id=p.id LEFT JOIN Academic E ON P.id=E.PersonalId ), FinalCTE As ( SELECT personalid FROM Edu_CTE WHERE EducationID IN (1,2,3) GROUP BY personalid HAVING SUM(Divission) >= 7 ) SELECT JP.personalid FROM FinalCTE E LEFT JOIN Personal P ON P.id=E.Personalid LEFT JOIN JobPos JP ON P.id=JP.personalid WHERE JP.PersonalId ="&TrackNo

		arr_sqlCheckElg = objERS.RetrieveData(sqlCheckElg, errMsg)
		ErrorMessage "15", errMsg, 0 
		
		If arr_sqlCheckElg(0,0) = "Nothing" Then
			
			strResultOld = Request.Form("ddlResult1_old")
			strResultPointOld = Request.Form("txtResultPoint1_old")
			
			SQLUpdateMarks = "UPDATE Academic SET [Result] = "&strResultOld&", [ResultPoint] = "&strResultPointOld& ", ip = '"&Request.ServerVariables("REMOTE_ADDR")&"' , [rowUpdatedOn]='"  & now &  "', [rowUpdate]=1  WHERE id =" & intEduID
			'response.Write(SQLUpdateMarks)
			objERS.ExecuteQuery SQLUpdateMarks, errMsg
			ErrorMessage "572", errMsg, 0
			
			ShowValidateMsg("Your Application will be rejected if you change this result.<br />Click <a style='color:#F00;' href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.</strong></font></center>")
			
			ConnectionClose
			
			Response.End()	
		Else
			'response.Write("i am here")		
		End If
		
'	end if ' checking for Junior Officer
 'response.End()
%>