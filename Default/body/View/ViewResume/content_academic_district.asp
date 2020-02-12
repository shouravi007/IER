<%
'response.Write("hellowwwwwwwwwwwwwwww"&arrEducationId(i))	
If arrEducationId(i) < 3 Then
'response.Write("hellowwwwwwwwwwwwwwww"&arrAcademicDist(i))
	If arrAcademicDist(i) <> "" Then
		resumeServer="MyBdjobsView" ' for thana from mybdjobs
		sqlForAcademicDist = "SELECT L_ID, L_Name FROM Locations WHERE L_ID = "&arrAcademicDist(i)
		err.clear 
		arrSqlForAcademicDist = objResumeServer.RetrieveData(sqlForAcademicDist, errMsg)
		ssc_hsc_dist_name = arrSqlForAcademicDist(1,0)
	End If	   
End If

%>
