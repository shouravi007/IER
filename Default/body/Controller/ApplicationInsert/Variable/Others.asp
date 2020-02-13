<%	
	strReading = Trim(Request.Form("ddlReading"))
	strWriting = Trim(Request.Form("ddlWriting"))
	strSpeaking = Trim(Request.Form("ddlSpeaking"))
	
	strProfessionalCertification = Trim(Request.Form("chkCertification"))
	strProfessionalCertification_others = Trim(Request.Form("txtCertification"))

	strExperience = Trim(Request.Form("txtExperience"))
	strProfessionalQualification = Trim(Request.Form("txtProfessionalQualification"))
	strAcademicDistinctions = Trim(Request.Form("txtAcademicDistinctions"))
	strExtraCurricularActivities = Trim(Request.Form("txtExtraCurricularActivities"))
	strComputerSkills = Trim(Request.Form("txtComputerSkill"))
	strOtherDisclose = Trim(Request.Form("txtAnyOther"))
    strTraining = Trim(Request.Form("txtTraining"))

	strExperience = GiveReplacedString4DB(strExperience)
	strProfessionalQualification = GiveReplacedString4DB(strProfessionalQualification)
	strAcademicDistinctions = GiveReplacedString4DB(strAcademicDistinctions)
	strExtraCurricularActivities = GiveReplacedString4DB(strExtraCurricularActivities)
	strComputerSkills = GiveReplacedString4DB(strComputerSkills)
	strOtherDisclose = GiveReplacedString4DB(strOtherDisclose)
	strTraining = GiveReplacedString4DB(strTraining)


%>
