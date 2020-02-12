<%

intTrackingNo = Request.Form("txtTrackingNo") 
'RESPONSE.Write(intTrackingNo)

'response.End()
'************************************************************* update academic database******************************

Sub UpdateEducation() 
End Sub 
				
		ReDim arrEducationSQL(0)
		ReDim arrEducationData(0, 15)
		
		For intEduIndex = 1 To 1
			' Variable Initialization 4 Academic.
			'strResultPoint = 0
			intEduID = Request.Form("hidEducationID" & intEduIndex)
			IF intEduID = "" Then 
			 intEduID = -1 
			End IF 
			
			bytEduLevel = Trim(Request.Form("ddlEducationLevel" & intEduIndex))
			strDegreeName = Trim(Request.Form("ddlDegreeName" & intEduIndex))
			strDegreeName = GiveReplacedString4DB(strDegreeName)
			intPassYear = Trim(Request.Form("ddlPassingYear" & intEduIndex))
			
			
			strInstitute = Trim(Request.Form("txtInstitute" & intEduIndex))
			strAcademicDist = Trim(Request.Form("ddlAcademicDist" & intEduIndex))
			
			'strResult = Trim(Request.Form("ddlResult" & intEduIndex)) 
			
			strSubject2 = Trim(Request.Form("ddlSubject2"))
			
			strUniversity = Trim(Request.Form("ddlUniversity" & intEduIndex)) 
			strUniversityOthers = Trim(Request.Form("txtUniversity" & intEduIndex))
			strCountry = Trim(Request.Form("ddlCountry" & intEduIndex)) 
			
			'strCGPAScale = Trim(Request.Form("ddlCGPAScale" & intEduIndex))	

			If strDegreeName = "" Then			
			 strDegreeName = Trim(Request.Form("ddlDegreeName" & intEduIndex & "hidden"))
			End IF

			If strSubject = "" Then 
			 strSubject = Trim(Request.Form("ddlSubject2hidden"))
			End IF 

			if strUniversity = "" Then
             strUniversity = Trim(Request.Form("ddlUniversity" & intEduIndex & "hidden"))
			end if

			if strUniversityOthers = "" Then
             strUniversityOthers = Trim(Request.Form("txtUniversity" & intEduIndex & "hidden"))
			end if
	
			if strCountry = "" Then
             strCountry = Trim(Request.Form("ddlCountry" & intEduIndex & "hidden"))
			end if

			If strDegreeName = "O Level" or strDegreeName = "A Level" Then
				strResult = 0
			Else
				strResult = Trim(Request.Form("ddlResult"& intEduIndex))
			End If		
			
			'if bytEduLevel > 3 then
'			
'				if strResult = 12 then	
'					strResultPublishYear = "1900/01/01"
'				else	
'					intResultDay = Trim(Request.Form("ddlResultDay" & intEduIndex))
'					intResultMonth = Trim(Request.Form("ddlResultMonth" & intEduIndex))
'					intResultYear = Trim(Request.Form("ddlResultYear" & intEduIndex))
'					
'					strResultPublishYear = intResultYear & "/" & intResultMonth & "/"& intResultDay
'				end if
'			else
'					intResultDay = Trim(Request.Form("ddlResultDay" & intEduIndex))
'					intResultMonth = Trim(Request.Form("ddlResultMonth" & intEduIndex))
'					intResultYear = Trim(Request.Form("ddlResultYear" & intEduIndex))
'					
'					strResultPublishYear = intResultYear & "/" & intResultMonth & "/"& intResultDay
'					
'			end if
							
		If strDegreeName = "O Level" Then
					
			If IsNumeric(resultLevel_O1) and IsNumeric(resultLevel_O2) and IsNumeric(resultLevel_O3) and IsNumeric(resultLevel_O4) and IsNumeric(resultLevel_O5) Then
		
				strResultPoint_new_o = cint(resultLevel_O1) + cint(resultLevel_O2)  + cint(resultLevel_O3) + cint(resultLevel_O4) + cint(resultLevel_O5)
		
				strResultPoint_new_AVG = strResultPoint_new_o/5
				strResultPoint = strResultPoint_new_AVG
				strCGPAScale = 5
				'response.Write("O LEVEL"&strResultPoint)
			End If
				
		ElseIf strDegreeName = "A Level" Then
		
			If IsNumeric(resultLevel_A1) and IsNumeric(resultLevel_A2) Then					
				strResultPoint_new_a = cint(resultLevel_A1) + cint(resultLevel_A2)
				strResultPoint_a_AVG = strResultPoint_new_a/2 
				strResultPoint = strResultPoint_a_AVG	
				'response.Write("A LEVEL"&strResultPoint)
				strCGPAScale = 5		
			End If		
		
		Else
			strResultPoint = Request.Form("txtResultPoint" & intEduIndex)
			strCGPAScale = Trim(Request.Form("ddlCGPAScale" & intEduIndex))	
		End If

			
			If strDegreeName = "O Level" or strDegreeName = "A Level" Then
				strSubject = "NA"
			Else
				strSubject = Trim(Request.Form("ddlSubject" & intEduIndex))
			End If
									
			If strUniversity = "Foreign" Then
				 
				strUniversity = strUniversityOthers & "@***@" & strCountry
				
				strForeign = "F"
			ElseIf strUniversity = "Others" Then	
				
				strUniversity = strUniversityOthers
		
				strForeign = "O"
			Else
				strForeign = "N"	
			End If			
						
			If strSubject = "Others" Then
				strOthers = Trim(Request.Form("txtOthers" & intEduIndex))
				strSubject = strOthers 
	            subject_others = 1		
			Else
			    subject_others = 0
			End If	
			If strSubject2 = "Others" Then
				strOthers2 = Trim(Request.Form("txtOthers2"))
				strSubject2 = strOthers2 
	            subject_others2 = 1		
			Else
			    subject_others2 = 0
			End If	
			
			'Response.Write(strSubject2&strOthers2&subject_others2)
			'Response.End()

			strDegreeName = GiveReplacedString4DB(strDegreeName)
			strInstitute = GiveReplacedString4DB(strInstitute)
			strSubject = GiveReplacedString4DB(strSubject)
			strSubject2 = GiveReplacedString4DB(strSubject2)
			strUniversity = GiveReplacedString4DB(strUniversity)
			strResult = GiveReplacedString4DB(strResult)

			strResult = GetReplaceStringForResultPoint(strResult)
			strResultPoint = GetReplaceStringForResultPoint(strResultPoint)
			strCGPAScale = GetReplaceStringForResultPoint(strCGPAScale)
			intPassYear = GetReplaceStringForResultPoint(intPassYear)
			
			strDegreeName = ReplacedAllTypeOfSpecialChar(strDegreeName)
			strInstitute = ReplacedAllTypeOfSpecialChar(strInstitute)
			strSubject = ReplacedAllTypeOfSpecialChar(strSubject)
			strSubject2 = ReplacedAllTypeOfSpecialChar(strSubject2)
			
			strUniversity = ReplacedAllTypeOfSpecialChar(strUniversity)
			strResult = ReplacedAllTypeOfSpecialChar(strResult)
			
			USERID = TrackNo
			currentUser = TrackNoNew 
			strModuleName = "Resume Update" 
			
			SQLInsertAcademic =  intEduID & "-" & TrackNo & "-" &  bytEduLevel & "-" &  strDegreeName & "-" &  intPassYear & "-" &  strInstitute & "-" &  strResult & "-" &  strSubject & "-" & strUniversity & "-" &  strResultPoint & "-" &strForeign & "-" & strCGPAScale & "-" & Request.ServerVariables("REMOTE_ADDR")& "-" & subject_others & "-" & subject_others & "-" & strResultPublishYear

			strDescription = ReplacedAllTypeOfSpecialChar(SQLInsertAcademic) 
			
			strAction = "Update Academic"
			
		
			If bytEduLevel <> "" And strDegreeName <> "" And intPassYear <> "" And strInstitute <> "" And strResult <> "" And  strUniversity <> "" And strSubject <> "" Then
			
			    if intResultDay = "S" then
				  intResultYear = NULL 
				end if 
				
				'on error resume next 
				strResultPoint = cdbl(strResultPoint)
				'Response.Write("<br>strResultPoint:"&strResultPoint)
				if err.number <> 0 then 
				 err.clear 
				 	strResultPoint = 0 
				end if 
				'Response.Write("<br>strResultPoint:"&strResultPoint)
				
				If bytEduLevel > 2 Then
					strAcademicDist = 0 
				Else
					strAcademicDist = Trim(Request.Form("ddlAcademicDist" & intEduIndex))
				End If
				
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
				arrEducationData(eduDataCount, 11) = Request.ServerVariables("REMOTE_ADDR")
				arrEducationData(eduDataCount, 12) = subject_others
				arrEducationData(eduDataCount, 13) = strSubject2
				arrEducationData(eduDataCount, 14) = subject_others2
				arrEducationData(eduDataCount, 15) = strAcademicDist 'strResultPublishYear
					
				arrEducationSQL(eduDataCount) = "SELECT PersonalId, EducationId, DegreeName, PassingYear, Institute, Result, Subject, University, ResultPoint, UniversityType,CGPAScale,ip,subject_others,subject2,subject_others2, [AcademicDistrict] FROM Academic WHERE id =" & intEduID '[ResultPublishDate]
			  
				'Response.Write("hello "& arrEducationSQL(eduDataCount&"<br>"))						
			End If
		Next		
			
		objERS.UpdateData arrEducationSQL, arrEducationData, errMsg
		'response.Write(errMsg)
		ErrorMessage "229", errMsg, 0
		'response.Write("strDegreeName:"&strDegreeName)
'response.End()
%>

