<%	
	' 4 Academic
		
		ReDim arrEducationSQL(4)
		ReDim arrEducationData(4, 14)
		
		For intEduIndex = 1 To 4
			' Variable Initialization 4 Academic.
			strResultPoint = 0
			intEduID = Request.Form("hidEducationID" & intEduIndex)
			IF intEduID = "" Then 
			 intEduID = -1 
			End IF 
			bytEduLevel = Trim(Request.Form("ddlEducationLevel" & intEduIndex))
			strDegreeName = Trim(Request.Form("ddlDegreeName" & intEduIndex))
			strDegreeName = GiveReplacedString4DB(strDegreeName)
			intPassYear = Trim(Request.Form("ddlPassingYear" & intEduIndex))
			
			response.Write(strDegreeName)
			
			'intResultDay = Request.Form("ddlResultDay" & intEduIndex)
			'intResultMonth = Request.Form("ddlResultMonth" & intEduIndex)
			'intResultYear2 = Request.Form("ddlResultYear" & intEduIndex)
			
			'intResultYear = intResultYear2 & "/" & intResultMonth & "/"& 'intResultDay  ' Request.Form("ddlResultYear" & intEduIndex)
			
			strInstitute = Trim(Request.Form("txtInstitute" & intEduIndex))
			strResult = Trim(Request.Form("ddlResult" & intEduIndex)) 
			strSubject = Trim(Request.Form("ddlSubject" & intEduIndex))
			strSubject2 = Trim(Request.Form("ddlSubject2" & intEduIndex))
			strUniversity = Trim(Request.Form("ddlUniversity" & intEduIndex)) 
			strUniversityOthers = Trim(Request.Form("txtUniversity" & intEduIndex))
			strCountry = Trim(Request.Form("ddlCountry" & intEduIndex)) 
			strCGPAScale = Trim(Request.Form("ddlCGPAScale" & intEduIndex))	

			If strDegreeName = "" Then			
			 strDegreeName = Trim(Request.Form("ddlDegreeName" & intEduIndex & "hidden"))
			End IF

	
			If strSubject = "" Then 
			 strSubject = Trim(Request.Form("ddlSubject" & intEduIndex & "hidden"))
			End IF 
			
			If strSubject2 = "" Then 
			 strSubject2 = Trim(Request.Form("ddlSubject2" & intEduIndex & "hidden"))
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

			strCGPAScale = 100
			
			If strResult = 0 Then
				strCGPAScale = Trim(Request.Form("ddlCGPAScale" & intEduIndex))
			End If

			'If strResult > 12 Or strResult = 0 Then
				strResultPoint = Trim(Request.Form("txtResultPoint" & intEduIndex))
			'End If 
		
			if strResultPoint = "" or isnull(strResultPoint) or isempty(strResultPoint) then
			
			strResultPoint = 0 
			end if 
			
												
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
				strOthers2 = Trim(Request.Form("txtOthers2" & intEduIndex))
				strSubject2 = strOthers 
	            subject_others2 = 1		
			Else
			    subject_others2 = 0
			End If	



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
			currentUser = TrackNoNEW 
			strModuleName = "Resume Submit" 
			
			SQLInsertAcademic =  intEduID & "-" & TrackNo & "-" &  bytEduLevel & "-" &  strDegreeName & "-" &  intPassYear & "-" &  strInstitute & "-" &  strResult & "-" &  strSubject & "-" &  strSubject2 & "-" & strUniversity & "-" &  strResultPoint & "-" &strForeign & "-" & strCGPAScale & "-" & Request.ServerVariables("REMOTE_ADDR")& "-" & subject_others & "-" & subject_others2

			strDescription = ReplacedAllTypeOfSpecialChar(SQLInsertAcademic) 
			strAction = "Insert Academic"
			%>
			  <!--#include File = "UserLog.asp" -->
			<%
			If bytEduLevel <> "-1" And strDegreeName <> "S" And intPassYear <> "S" And strInstitute <> "" And strResult <> "-1" And  strUniversity <> "S" And strSubject <> "S" Then
			
			    if intResultDay = "S" then
				  intResultYear = NULL 
				end if 
				
				on error resume next 
				 strResultPoint = cdbl(strResultPoint)
				if err.number <> 0 then 
				 err.clear 
				 strResultPoint = 0 
				end if 
				
				
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
				
				'												0		1			2			3			4			5		6			7		8	
				arrEducationSQL(eduDataCount) = "SELECT PersonalId, EducationId, DegreeName, PassingYear, Institute, Result, Subject, University, ResultPoint, UniversityType,CGPAScale,ip,subject_others,subject2,subject_others2  FROM Academic WHERE id =" & intEduID
			   Response.Write arrEducationSQL(eduDataCount)
			
			
			End If
		Next
		
		objERS.UpdateData arrEducationSQL, arrEducationData, errMsg
		ErrorMessage "1302", errMsg, 0

		
		SQLUpdateUDate = "UPDATE Personal SET ip = '"&Request.ServerVariables("REMOTE_ADDR")&"' , UpdatedOn='"  & now &  "'  WHERE id =" & TrackNo
		objERS.ExecuteQuery SQLUpdateUDate, errMsg
		ErrorMessage "1306", errMsg, 0	
%>