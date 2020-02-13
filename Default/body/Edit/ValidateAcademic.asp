<%
intEduID = Request.Form("hidID1")	
FirstClass = 0 
	
SQLAcademic = "SELECT Personalid, EducationID, DegreeName, PassingYear, INSTITUTE, [RESULT], SUBJECT, University, [UniversityType], [ResultPoint], cgpaScale, [AcademicID], [ResultPublishYear] FROM Academic WHERE Personalid=" & intTrackingNo & " and [Academicid] <> "&intEduID&" Order by EducationID ASC " 
'Response.Write(SQLAcademic)
'Response.End()	
arr_Academic = objDhakaBank.RetrieveData(SQLAcademic, errMsg)
ErrorMessage "454", errMsg, 0 

If arr_Academic(0, 0) <> "Nothing" Then

intUBEdu = UBound(arr_Academic, 2) 

	For intEduIndex = 0 To intUBEdu
			' Variable Initialization.
			intEduID2 = arr_Academic(11, intEduIndex)
			ResultPublishYear = arr_Academic(12, intEduIndex)
			bytEduLevel2 = arr_Academic(1, intEduIndex)
			strEducation2 = arr_Academic(2, intEduIndex)
			strEducation2 = GiveReplacedString(strEducation2)
			intPassYear2 = arr_Academic(3, intEduIndex)
			strPercent2 = arr_Academic(9, intEduIndex)
			
			
			strInstitute2 = arr_Academic(4, intEduIndex)
			strResult2 = arr_Academic(5, intEduIndex)
			strGrade2 = arr_Academic(10, intEduIndex)
	
			if strResult2 = "15" Then
			  FirstClass = FirstClass + 1 
			End If 	
	
			If strResult2 = "0" Then 
				 If cdbl(strPercent2) > 3 Then
				   FirstClass = FirstClass + 1 
				 End IF
			End IF 
	
			strSubject2 = arr_Academic(6, intEduIndex)
			strUniversity2 = arr_Academic(7, intEduIndex)
			strUniversity2 = GiveReplacedString(strUniversity2)
			strForeign2 = arr_Academic(8, intEduIndex)
			
			
			strInstitute2 = GiveReplacedString(strInstitute)
			strSubject2 = GiveReplacedString(strSubject)
						
			intRecordId = intEduID
	Next 




End IF 


   		if strResult = "15" Then
		  FirstClass = FirstClass + 1 
		End If 	

        If strResult = "0" Then 
		     If cdbl(strPercent) > 3 Then
			   FirstClass = FirstClass + 1 
			 End IF
		End IF 



If jobid = 1 Then 
   If FirstClass >= 3 Then 
   
   
   Else
       ShowValidateMsgOnly("Sorry , you are not eligible for Management Trainee Position, because you have not Three (3) first divison/class or equivalent cgpa")
       DivCreateForAds 
	   EndOfAllProcess 
	   
   End IF 
End If



SQLAcademic = ""
SQLAcademic = "SELECT Personalid, EducationID, DegreeName, PassingYear, INSTITUTE, [RESULT], SUBJECT, University, [UniversityType], [ResultPoint], cgpaScale, [AcademicID] FROM Academic WHERE Personalid=" & intTrackingNo & " and [Academicid] = "&intEduID
'Response.Write(SQLAcademic)
'Response.End()	
arr_Academic2 = objDhakaBank.RetrieveData(SQLAcademic, errMsg)
ErrorMessage "454", errMsg, 0 

If arr_Academic2(0, 0) <> "Nothing" Then

			' Variable Initialization.
			intEduID3 = arr_Academic2(11, 0)
			bytEduLevel3 = arr_Academic2(1, 0)
			strEducation3 = arr_Academic2(2, 0)
			
			strEducation3 = GiveReplacedString(strEducation2)
			intPassYear3 = arr_Academic2(3, 0)
			strPercent3 = arr_Academic2(9, 0)
			
			
			strInstitute3 = arr_Academic2(4, 0)
			strResult3 = arr_Academic2(5, 0)
			strGrade3 = arr_Academic2(10, 0)
			strSubject3 = arr_Academic2(6, 0)
			strUniversity3 = arr_Academic2(7, 0)
			strUniversity3 = GiveReplacedString(strUniversity2)
			strForeign3 = arr_Academic2(8, 0)
End If 




%>