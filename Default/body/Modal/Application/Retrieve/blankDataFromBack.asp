<%
if err.number <> 0 then 
  ValuePrint err.number&err.description , "1144-errdscript"
end if 


'response.Write(Request.ServerVariables("REMOTE_ADDR"))
'response.End()

'If DateDiff("d", DateAdd("h", 18, Now()), "9/15/2013") <= 0 Then

'Sub DateOver()
' If Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141" or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or InStr(Request.ServerVariables("HTTP_REFERER"), "serverbdj") > 0 Then  
' Else 
'	If Date() > "5/17/2016" Then
'		Response.Redirect("Default_Dateover.asp")
'	End If
' End IF 
'End Sub 


	IsBlank = Request.Form("txtBlank")
	AcademicUB=0
	'PERSONAL TABLE VALUE
	'====================
    ersPhotoUrl = trim(request.Form("ersPhoto"))
    ersSignatureUrl = trim(request.Form("ersSignature"))
	
	strFirstName = Request.Form("txtFirstName")
	strLastName = Request.Form("txtLastName") 
	strFatherName = Request.Form("txtFatherName")
	strMotherName = Request.Form("txtMotherName")
	
	strFathersProfession = Request.Form("txtFathersProfession")
	strMothersProfession = Request.Form("txtMothersProfession")
	strApplyingAs = Request.Form("ddlApplyingAs")
		
	dtmDateOfBirth = Request.Form("txtDateOfBirth")
	
	If dtmDateOfBirth <> "" Then
		If IsDate(dtmDateOfBirth) Then
			strDateOfBirthDay = Day(dtmDateOfBirth)
			strDateOfBirthMonth = Month(dtmDateOfBirth)
			strDateOfBirthYear = Year(dtmDateOfBirth)
			
			'response.Write("strDateOfBirthDay"&strDateOfBirthDay)
		else
			'response.Write("dtmDateOfBirth"&dtmDateOfBirth)
			'response.Write("dtmDateOfBirth"&IsDate(dtmDateOfBirth) )
			
			d = split(dtmDateOfBirth,"/")
			if ubound(d) > 1 then 
			strDateOfBirthDay = d(1)
			strDateOfBirthMonth = d(0)
			strDateOfBirthYear = d(2)
			'response.Write("dtmDateOfBirth"&strDateOfBirthDay)
			'response.Write("dtmDateOfBirth"&strDateOfBirthMonth)
			'response.Write("dtmDateOfBirth"&strDateOfBirthYear)
			end if 
			
		End If	
	End If
	
	
	
	
	strMaritalStatus = Request.Form("ddlMaritalStatus")
	
	strSpouseName = Trim(Request.Form("txtSpouseName"))
	strSpouseProfession = Trim(Request.Form("txtSpouseProfession"))
	
	strNationality = Request.Form("txtNationality")
	strEmail = Request.Form("txtEmail")
	strContactPhone = Request.Form("txtContactPhone")
	strCellPhone = Request.Form("txtCellPhone")
	intNationalId = Request.Form("txtNationalId")
	strBloodGroup = Request.Form("ddlBloodGroup")
	strGender = Request.Form("ddlGender")
	strReligion = Request.Form("ddlReligion")
	strContactAddress = Request.Form("txtContactAddress")
	strPermanentAddress = Request.Form("txtPermanentAddress")
	
	strHomeDistrict = Request.Form("ddlHomeDistrict") 
	strHomeDistrict2 = Request.Form("ddlHomeDistrict2")
	strThanaPrmDist = Request.Form("ddlThanaPrmDist")	
	
	strPassword = Request.Form("txtPassword")
	strConfirmPassword = Request.Form("txtConfirmPassword")
	blnDeclaration = Request.Form("chkDeclaration")
	strPreferredLocation = Request.Form("txtPreferedLocation")
	
	If arrPreferedLocation <> "" Then
		arrPreferedLocation = Split(strPreferredLocation, ",")
		strPreferedLocation1 = CStr(Trim(arrPreferedLocation(0)))
			If UBound(arrPreferedLocation) >= 1 Then
				strPreferedLocation2 = CStr(Trim(arrPreferedLocation(1)))
			End If	
			If UBound(arrPreferedLocation) >= 2 Then
				strPreferedLocation3 = CStr(Trim(arrPreferedLocation(2)))
			End If
	End If	
	
	If blnDeclaration = "True" Then
		IsDeclaration = True
	End If
	
	strReading = Request.Form("ddlReading")
	strWriting = Request.Form("ddlWriting")
	strSpeaking = Request.Form("ddlSpeaking")
	
	strExperience = Request.Form("txtExperience")
	strProfessionalQualification = Request.Form("txtProfessionalQualification")
	strTraining = Request.Form("txtTraining")
	strAcademicDistinctions = Request.Form("txtAcademicDistinctions")
	strExtraCurricularActivities = Request.Form("txtExtraCurricularActivities")
	strComputerSkills = Request.Form("txtComputerSkill")
	strOtherDisclose = Request.Form("txtAnyOther")
	
	
	ReDim arrAcademicId(6)
	ReDim arrDegreeName(6)
	ReDim arrInstitute(6)
	ReDim arrAcademicDist(6)
	ReDim arrSubject(6)
	ReDim arrSubject2(6)
	ReDim arrPassingYear(6)
	ReDim arrEducationId(6)
	ReDim arrUniversity(6)
	ReDim arrResult(6)
	ReDim arrResultPoint(6)
	ReDim arrUniversityType(6)
	
	For i=1 To 5
		arrAcademicId(i) = Request.Form("ddlEducationLevel"&i)
		arrDegreeName(i) = Request.Form("ddlDegreeName"&i)
		arrInstitute(i) = Request.Form("txtInstitute"&i)
		arrAcademicDist(i) = Request.Form("ddlAcademicDist"&i)
		arrSubject(i) = Request.Form("ddlSubject"&i)
		arrSubject2(i) = Request.Form("ddlSubject2"&i)
		arrPassingYear(i) = Request.Form("ddlPassingYear"&i)
		arrEducationId(i) = Request.Form("ddlEducationLevel"&i)
		arrUniversity(i) = Request.Form("ddlUniversity"&i)
		arrResult(i) = Request.Form("ddlResult"&i)
		arrResultPoint(i) = Request.Form("txtResultPoint"&i)
		arrUniversityType(i) = Request.Form("txtUniversityType"&i)
	Next
	
    strEduLevel1 = Request.Form("ddlEducationLevel1")	
    strEduLevel2 = Request.Form("ddlEducationLevel2")	
    strEduLevel3 = Request.Form("ddlEducationLevel3")	
    strEduLevel4 = Request.Form("ddlEducationLevel4")	
    strEduLevel5 = Request.Form("ddlEducationLevel5")	
	
	'Response.Write("<br>strEduLevel1:"&strEduLevel1)
	'Response.Write("<br>strEduLevel2:"&strEduLevel2)
	'Response.Write("<br>strEduLevel3:"&strEduLevel3)
	'Response.Write("<br>strEduLevel4:"&strEduLevel4)
	'Response.Write("<br>strEduLevel5:"&strEduLevel5)
	'Response.Write("<br>strEduLevel1:"&strEduLevel1)
	
'    strInstitute1 = Request.Form("txtInstitute1")	
'    strInstitute2 = Request.Form("txtInstitute2")	
'    strInstitute3 = Request.Form("txtInstitute3")	
'    strInstitute4 = Request.Form("txtInstitute4")	
'    strInstitute5 = Request.Form("txtInstitute5")
	
	strDegreeName1 = Trim(Request.Form("ddlDegreeName1")) 
	strDegreeName2 = Trim(Request.Form("ddlDegreeName2")) 
	strDegreeName3 = Trim(Request.Form("ddlDegreeName3")) 
	strDegreeName4 = Trim(Request.Form("ddlDegreeName4")) 
	strDegreeName5 = Trim(Request.Form("ddlDegreeName5")) 
	
	resultLevel_O1 = Request.Form("txtLevel_O1")
	'response.Write(strDegreeName1)
	resultLevel_O2 = Request.Form("txtLevel_O2")
	resultLevel_O3 = Request.Form("txtLevel_O3")
	resultLevel_O4 = Request.Form("txtLevel_O4")
	resultLevel_O5 = Request.Form("txtLevel_O5")
	strSubject_O1 = Request.Form("txtSubO1")
	strSubject_O2 = Request.Form("txtSubO2")
	strSubject_O3 = Request.Form("txtSubO3")
	strSubject_O4 = Request.Form("txtSubO4")		
	strSubject_O5 = Request.Form("txtSubO5")
	resultLevel_A1 = Request.Form("txtLevel_A1")
	resultLevel_A2 = Request.Form("txtLevel_A2")
	strSubject_A1 = Request.Form("txtSubA1")
	strSubject_A2 = Request.Form("txtSubA2")		
	
	strPassingYear1 = Trim(Request.Form("ddlPassingYear1"))
	strPassingYear2 = Trim(Request.Form("ddlPassingYear2"))
	strPassingYear3 = Trim(Request.Form("ddlPassingYear3"))
	strPassingYear4 = Trim(Request.Form("ddlPassingYear4"))
	strPassingYear5 = Trim(Request.Form("ddlPassingYear5"))
	
	strInstitute1 = Trim(Request.Form("txtInstitute1")) 
	strInstitute2 = Trim(Request.Form("txtInstitute2")) 
	strInstitute3 = Trim(Request.Form("txtInstitute3")) 
	strInstitute4 = Trim(Request.Form("txtInstitute4")) 
	strInstitute5 = Trim(Request.Form("txtInstitute5")) 

	strAcademicDist1 = Trim(Request.Form("ddlAcademicDist1")) 
	strAcademicDist2 = Trim(Request.Form("ddlAcademicDist2")) 
	strAcademicDist3 = Trim(Request.Form("ddlAcademicDist3")) 
	strAcademicDist4 = Trim(Request.Form("ddlAcademicDist4")) 
	strAcademicDist5 = Trim(Request.Form("ddlAcademicDist5")) 
	
	strUniversity1 = Trim(Request.Form("ddlUniversity1")) 
	strUniversity2 = Trim(Request.Form("ddlUniversity2")) 
	strUniversity3 = Trim(Request.Form("ddlUniversity3")) 
	strUniversity4 = Trim(Request.Form("ddlUniversity4")) 
	strUniversity5 = Trim(Request.Form("ddlUniversity5")) 
	
	strUniversityOthers1 = Trim(Request.Form("txtUniversity1"))
	strUniversityOthers2 = Trim(Request.Form("txtUniversity2"))
	strUniversityOthers3 = Trim(Request.Form("txtUniversity3"))
	strUniversityOthers4 = Trim(Request.Form("txtUniversity4"))
	strUniversityOthers5 = Trim(Request.Form("txtUniversity1"))
	
	strCountry1 = Trim(Request.Form("ddlCountry1"))
	strCountry2 = Trim(Request.Form("ddlCountry2"))
	strCountry3 = Trim(Request.Form("ddlCountry3"))
	strCountry4 = Trim(Request.Form("ddlCountry4"))
	strCountry5 = Trim(Request.Form("ddlCountry5"))
	
	strForeign1 = Trim(Request.Form("txtUniversityType1"))
	strForeign2 = Trim(Request.Form("txtUniversityType2"))
	strForeign3 = Trim(Request.Form("txtUniversityType3"))
	strForeign4 = Trim(Request.Form("txtUniversityType4"))
	strForeign5 = Trim(Request.Form("txtUniversityType5"))
	
	strResult1 = Trim(Request.Form("ddlResult1"))
	strResult2 = Trim(Request.Form("ddlResult2"))
	strResult3 = Trim(Request.Form("ddlResult3"))
	strResult4 = Trim(Request.Form("ddlResult4"))
	strResult5 = Trim(Request.Form("ddlResult5"))
	
	strResultPoint1 = Trim(Request.Form("txtResultPoint1"))
	'response.Write("hello"&strResult1)
	strResultPoint2 = Trim(Request.Form("txtResultPoint2"))
	strResultPoint3 = Trim(Request.Form("txtResultPoint3"))
	strResultPoint4 = Trim(Request.Form("txtResultPoint4"))
	strResultPoint5 = Trim(Request.Form("txtResultPoint5"))
	
	strCGPAScale1 = Trim(Request.Form("ddlCGPAScale1"))
	strCGPAScale2 = Trim(Request.Form("ddlCGPAScale2"))
	strCGPAScale3 = Trim(Request.Form("ddlCGPAScale3"))
	strCGPAScale4 = Trim(Request.Form("ddlCGPAScale4"))
	strCGPAScale5 = Trim(Request.Form("ddlCGPAScale5"))
	
	strSubject1 = Trim(Request.Form("ddlSubject1"))
	strSubject2 = Trim(Request.Form("ddlSubject2"))
	strSubject3 = Trim(Request.Form("ddlSubject3"))
	strSubject4 = Trim(Request.Form("ddlSubject4"))
	strSubject5 = Trim(Request.Form("ddlSubject5"))
	
	strOthers1 = Trim(Request.Form("txtOthers1"))
	strOthers2 = Trim(Request.Form("txtOthers2"))
	strOthers3 = Trim(Request.Form("txtOthers3"))
	strOthers4 = Trim(Request.Form("txtOthers4"))
	strOthers5 = Trim(Request.Form("txtOthers5"))
	
	subject_others1 = Trim(Request.Form("subject_others1"))
	subject_others2 = Trim(Request.Form("subject_others2"))
	subject_others3 = Trim(Request.Form("subject_others3"))
	subject_others4 = Trim(Request.Form("subject_others4"))
	subject_others5 = Trim(Request.Form("subject_others5"))
	
	strSubject21 = Trim(Request.Form("ddlSubject21"))
	strSubject22 = Trim(Request.Form("ddlSubject22"))
	strSubject23 = Trim(Request.Form("ddlSubject23"))
	strSubject24 = Trim(Request.Form("ddlSubject24"))
	strSubject25 = Trim(Request.Form("ddlSubject25"))
	
	strOthers21 = Trim(Request.Form("txtOthers21"))
	strOthers22 = Trim(Request.Form("txtOthers22"))
	strOthers23 = Trim(Request.Form("txtOthers23"))
	strOthers24 = Trim(Request.Form("txtOthers24"))
	strOthers25 = Trim(Request.Form("txtOthers25"))
	
	subject_others21 = Trim(Request.Form("subject_others21"))
	subject_others22 = Trim(Request.Form("subject_others22"))
	subject_others23 = Trim(Request.Form("subject_others23"))
	subject_others24 = Trim(Request.Form("subject_others24"))
	subject_others25 = Trim(Request.Form("subject_others25"))
	
	
	
	intRefID = Request.Form("hidReferenceId1")
	strRefName = Request.Form("txtReferenceName1")
	strRefName = GiveReplacedString(strRefName)
	strRefPos = Request.Form("txtReferencePosition1")
	strRefPos = GiveReplacedString(strRefPos)
	strRefAdd = Request.Form("txtReferenceAddress1") 
	strRefAdd = GiveReplacedString(strRefAdd)
	strRefPhone = Request.Form("txtReferencePhone1") 
	strRefCell = Request.Form("txtReferenceCellPhone1") 
	strRefEmail = Request.Form("txtReferenceEmail1") 
	strRefEmail = GiveReplacedString(strRefEmail)
	
	'intRefID2 = Request.Form("hidReferenceId2")
	strRefName2 = Request.Form("txtReferenceName2")
	strRefName2 = GiveReplacedString(strRefName2)
	strRefPos2 = Request.Form("txtReferencePosition2")
	strRefPos2 = GiveReplacedString(strRefPos2)
	strRefAdd2 = Request.Form("txtReferenceAddress2") 
	strRefAdd2 = GiveReplacedString(strRefAdd2)
	strRefPhone2 = Request.Form("txtReferencePhone2") 
	strRefCell2 = Request.Form("txtReferenceCellPhone2") 
	strRefEmail2 = Request.Form("txtReferenceEmail2") 
	strRefEmail2 = GiveReplacedString(strRefEmail2)
	
	
	strProfessionalCertification = Request.Form("chkCertification")
	strProfessionalCertification_others = Request.Form("txtCertification")
	
%>
		<script>
		  $('#myModal_popup').modal('hide'); 
	   </script>
