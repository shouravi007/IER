<%
	TrackNo=Request.Form("txtTrackingNo")
	strFirstName = Request.Form("txtFirstName")
	strLastName = Request.Form("txtLastName")
	strFatherName = Request.Form("txtFatherName")
	strMotherName = Request.Form("txtMotherName")
	strFathersProfession = Request.Form("txtFathersProfession")
	strMothersProfession = Request.Form("txtMothersProfession")


	dtmDateOfBirth = Request.Form("ddlDateOfBirthMonth") & "/" & Request.Form("ddlDateOfBirthDay") & "/" & Request.Form("ddlDateOfBirthYear") 
	
	strMeritalStatus = Request.Form("ddlMaritalStatus")
	strNationality = Request.Form("txtNationality")
	strEmail = Request.Form("txtEmail")
	strContactPhone = Request.Form("txtContactPhone")
	strCellPhone = Request.Form("txtCellPhone")
	strCellPhone2 = Request.Form("txtCellPhone2")
	intNationalId = Request.Form("txtNationalId")
	strBloodGroup = Request.Form("ddlBloodGroup")
	strGender = Request.Form("ddlGender") 
	strHomeDistrict = Request.Form("ddlHomeDistrict") 
	strHomeDistrict2 = Request.Form("ddlHomeDistrict2") 
	strReligion = Request.Form("ddlReligion")
	intNoOfClildren = Request.Form("ddlNoOfChildren")
	strContactAddress = Request.Form("txtContactAddress")
	strPermanentAddress = Request.Form("txtPermanentAddress")
	
	strPassword = Request.Form("txtPassword")
	strConfirmPassword = Request.Form("txtConfirmPassword")
	blnDeclaration = Request.Form("chkDeclaration")
	strPreferedLocation1 = Request.Form("ddlPreferedLocation1")
	strPreferedLocation2 = Request.Form("ddlPreferedLocation2")
	strPreferedLocation3 = Request.Form("ddlPreferedLocation3")	
	strReading = Request.Form("ddlReading")
	strWriting = Request.Form("ddlWriting")
	strSpeaking = Request.Form("ddlSpeaking")
	
	'ID = Request.Form("ID")
'	PHOTOURL1  = Request.Form("PHOTOURL")
'	IF  PHOTOURL1 <> "" Then 
'	 PHOTOURL2 =  Split(PHOTOURL1,"http://my.bdjobs.com/photos/")
'	 PHOTOURL = PHOTOURL2(1)
'	' Response.Write("PHOTOURL"&PHOTOURL)
'	' Response.End() 
'	Else
'	 PHOTOURL = "" 
'	End If 
	
	
	
	If strPreferedLocation1 = "Any" Or strPreferedLocation2 = "Any" Or strPreferedLocation3 = "Any" Then
		strPreferedLocation = "Any"
	End If
	
	If strPreferedLocation <> "Any" Then
		strPreferedLocation = ""
		strPreferedLocation = strPreferedLocation1 & ", " & strPreferedLocation2
		If strPreferedLocation3 <> "S" Then
			strPreferedLocation = strPreferedLocation & ", " & strPreferedLocation3
		End If
	End If
	
	If blnDeclaration = "on" Then
		IsDeclaration = True
	Else
		IsDeclaration = False
	End If	
	
	strExperience = Request.Form("txtExperience")
	strProfessionalQualification = Request.Form("txtProfessionalQualification")
	strAcademicDistinctions = Request.Form("txtAcademicDistinctions")
	strExtraCurricularActivities = Request.Form("txtExtraCurricularActivities")
	strComputerSkills = Request.Form("txtComputerSkill")
	strOtherDisclose = Request.Form("txtAnyOther")
	
%>