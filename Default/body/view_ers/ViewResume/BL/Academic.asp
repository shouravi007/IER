<%

SQLAcademic = "SELECT id, DegreeName, Institute, Subject, PassingYear, EducationId, University, Result, ResultPoint, UniversityType,subject2,[AcademicDistrict] FROM Academic WHERE PersonalId=" & intTrakingNo &" ORDER BY EducationId DESC, id ASC"
'Response.Write("<br>"&SQLAcademic)
ValuePrint SQLAcademic, "SQLAcademic"
arrAcademic = objERS.RetrieveData(SQLAcademic, strErr)
ErrorMessage "34", errMsg, 0

If arrAcademic(0, 0) <> "Nothing" Then
	AcademicUB = UBound(arrAcademic, 2)
	ReDim arrAcademicId(AcademicUB)
	ReDim arrDegreeName(AcademicUB)
	ReDim arrInstitute(AcademicUB)
	ReDim arrAcademicDist(AcademicUB)
	ReDim arrSubject(AcademicUB)
	ReDim arrSubject2(AcademicUB)
	ReDim arrPassingYear(AcademicUB)
	ReDim arrEducationId(AcademicUB)
	ReDim arrUniversity(AcademicUB)
	ReDim arrResult(AcademicUB)
	ReDim arrResultPoint(AcademicUB)
	ReDim arrUniversityType(AcademicUB)
	
	For i=0 To AcademicUB
		
		arrAcademicId(i) = arrAcademic(0, i)
		
		arrDegreeName(i) = arrAcademic(1, i)
		
		If arrDegreeName(i) = "O Level" Or arrDegreeName(i) = "A Level" Then
					
			SQLAcademic_OALevel = "SELECT [Subject] FROM [level_Table] WHERE [PersonalId]="& intTrakingNo &" and [Degree_level]='"& arrDegreeName(i)&"' order by [id]" 
			'response.Write(SQLAcademic_Level)								
			arrSQLAcademic_OALevel = objERS.RetrieveData(SQLAcademic_OALevel, strErr)
			ErrorMessage "34", errMsg, 0
			'on error resume next
		End If
					
		arrInstitute(i) = arrAcademic(2, i)
		arrAcademicDist(i) = arrAcademic(11, i)
		'response.Write("aca dist: "&arrAcademicDist(i) &"&nbsp;"&i &"<br>")
		arrSubject(i) = arrAcademic(3, i)
		arrSubject2(i) = arrAcademic(10, i)
		arrPassingYear(i) = arrAcademic(4, i)
		arrEducationId(i) = arrAcademic(5, i)
		'response.Write(arrEducationId(i)&"<br>")
		arrUniversity(i) = arrAcademic(6, i)
		
		arrResult(i) = arrAcademic(7, i)
		arrResultPoint(i) = arrAcademic(8, i)
		arrUniversityType(i) = arrAcademic(9, i)
		
	Next
	
	IsAcademic = True
End If	


%>