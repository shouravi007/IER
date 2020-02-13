<%	
	' 4 Academic
		
		ReDim arrEducationSQL(5)
		ReDim arrEducationData(5, 11)
		
		For intEduIndex = 1 To 5
			' Variable Initialization 4 Academic.
			strResultPoint = 0
			intEduID = Request.Form("hidEducationID" & intEduIndex)
			IF intEduID = "" Then 
			 intEduID = -1 
			End IF 
			bytEduLevel = Request.Form("ddlEducationLevel" & intEduIndex)
			strDegreeName = Request.Form("ddlDegreeName" & intEduIndex)
			strDegreeName = GiveReplacedString4DB(strDegreeName)
			intPassYear = Request.Form("ddlPassingYear" & intEduIndex)
			
			intResultDay = Request.Form("ddlResultDay" & intEduIndex)
			intResultMonth = Request.Form("ddlResultMonth" & intEduIndex)
			intResultYear2 = Request.Form("ddlResultYear" & intEduIndex)
			
			intResultYear = intResultYear2 & "/" & intResultMonth & "/"& intResultDay  ' Request.Form("ddlResultYear" & intEduIndex)
			
			strInstitute = Request.Form("txtInstitute" & intEduIndex)
			strResult = Request.Form("ddlResult" & intEduIndex) 
			strSubject = Request.Form("ddlSubject" & intEduIndex)
			strUniversity = Request.Form("ddlUniversity" & intEduIndex) 
			strCGPAScale = Trim(Request.Form("ddlCGPAScale" & intEduIndex))	

			If strDegreeName = "" Then 
			
			 strDegreeName = Request.Form("ddlDegreeName" & intEduIndex & "hidden")
			End IF

	
			If strSubject = "" Then 
			 strSubject = Request.Form("ddlSubject" & intEduIndex & "hidden")
			End IF 
	

			strCGPAScale = 100
			
			If strResult = 0 Then
				strCGPAScale = Request.Form("ddlCGPAScale" & intEduIndex)
			End If

			If strResult > 12 Or strResult = 0 Then
				strResultPoint = Request.Form("txtResultPoint" & intEduIndex)
			End If 
		
			If strDegreeName = "Others" Then
				strDoctorate = Request.Form("txtDoctorate" & intEduIndex)
				strDegreeName = strDoctorate & "@@@"
			End If		
			
			If strSubject = "Others" Then
				strOthers = Request.Form("txtOthers" & intEduIndex)
				strSubject = strOthers ' & "@@@"
			End If	
									
			If strUniversity = "Foreign" Then
				'strUniversity = Request.Form("txtUniversity" & intEduIndex) & "@***@" & Request.Form("ddlCountry" & intEduIndex)
				
				strUniversity = Request.Form("txtUniversity" & intEduIndex &"hidden") & "@***@" & Request.Form("ddlCountry" & intEduIndex &"hidden")
				
				strForeign = "F"
			ElseIf strUniversity = "Others" Then	
				'strUniversity = Request.Form("txtUniversity" & intEduIndex)
				
				strUniversity = Request.Form("txtUniversity" & intEduIndex &"hidden")
		
				strForeign = "O"
			Else
				strForeign = "N"	
			End If			
			
			strDegreeName = GiveReplacedString4DB(strDegreeName)
			strInstitute = GiveReplacedString4DB(strInstitute)
			strSubject = GiveReplacedString4DB(strSubject)
			strUniversity = GiveReplacedString4DB(strUniversity)
			strResult = GiveReplacedString4DB(strResult)
			
			
			If bytEduLevel <> "-1" And strDegreeName <> "S" And intPassYear <> "S" And strInstitute <> "" And strResult <> "-1" And  strUniversity <> "S" And strSubject <> "S" Then
			
				eduDataCount = intEduIndex - 1
				arrEducationData(eduDataCount, 0) = TrackNo
				arrEducationData(eduDataCount, 1) = bytEduLevel
				arrEducationData(eduDataCount, 2) = strDegreeName
				arrEducationData(eduDataCount, 3) = intPassYear
				arrEducationData(eduDataCount, 4) = strInstitute
				arrEducationData(eduDataCount, 5) = strResult
				arrEducationData(eduDataCount, 6) = strSubject
				arrEducationData(eduDataCount, 7) = strUniversity
				arrEducationData(eduDataCount, 8) = strResultPoint
				arrEducationData(eduDataCount, 9) = strForeign
				arrEducationData(eduDataCount, 10) =strCGPAScale
				arrEducationData(eduDataCount, 11) =intResultYear
				
				'												0		1			2			3			4			5		6			7		8	
				arrEducationSQL(eduDataCount) = "SELECT PersonalId, EducationId, DegreeName, PassingYear, Institute, Result, Subject, University, ResultPoint, UniversityType,CGPAScale,ResultPublishYear  FROM Academic WHERE AcademicId=" & intEduID
			   'Response.Write arrEducationSQL(eduDataCount)
			End If
		Next
		
		objERS.UpdateData arrEducationSQL, arrEducationData, errMsg
		ErrorMessage "1302", errMsg, 0

		
		SQLUpdateUDate = "UPDATE Personal SET UpdatedOn='"  & Date &  "' WHERE id =" & TrackNo
		objERS.ExecuteQuery SQLUpdateUDate, errMsg
		ErrorMessage "1306", errMsg, 0	
%>