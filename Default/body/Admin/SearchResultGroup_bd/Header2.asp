<%



'Session.Timeout = 360



intTN = Request.Form("txtTrakingNumber")
intRoll = Request.Form("txtRollNumber")

IsWhereEdu = True 

%>
  <%


	
	' Variable Declaration.
'	Dim intTrakingNumber
'	Dim strJobPosting
'	Dim strStartDate,strEndDate
'	Dim strName, strNameType, strSex, strEmail, strPhone, strPhoneType, strPresentAddress, strPermanentAddress, strRejected, strPhoto
'	'Dim strDegreeName, strInstituteName, strCampus, strPercentFrom, strPercentTo, strGrade, strMajorSubject
'	Dim strExperience, strExperienceType, strCompanyName, strEmplymentType, strExperienceErea
'	Dim strProfessionalDegree, strTrainingName, strAwardingBody
'	Dim strComputerGeneralSkill, strComputerAdvancedSkill, strKeySkill, strExpectedTrustGrade, strLocation, strWorkAreaPreference
'	Dim strPreviouslyInterviewedPosition, strRefereeName
'	'Dim intAgeFrom, intAgeTo, intEducationLevel, intPassingYear, intResult, intProfessionalPassingYear, intTrainingDuration, intTrainingPassingYear
'	Dim intPresentSalaryFrom, intPresentSalaryTo, intExpectedSalaryFrom, intExpectedSalaryTo, intNoticePeriodFrom, intNoticePeriodTo
'	Dim intPreviouslyInterviewedMonth, intPreviouslyInterviewedYear
'	Dim strCVType
'	Dim IsDisplay, IsWhere, SQLCV, SQLWhere, UB
'	Dim intTN
	
	strCVType = ""
	'Response.Write("strCVType: " & strCVType)
	'strGrade = ""

	'strPercentFrom = ""
	'strPercentTo = ""
	
	IsDisplay = False
	IsWhere = True
	SQLWhere = ""
	strBrach = ""
	strJoin = ""
	
	'Response.Write(UB)	
	'Response.End()
	
%>

