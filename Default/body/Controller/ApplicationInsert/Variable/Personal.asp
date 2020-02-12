<%
	strFirstName = Trim(Request.Form("txtFirstName"))
	strLastName = Trim(Request.Form("txtLastName"))
	strFatherName = Trim(Request.Form("txtFatherName"))
	strMotherName = Trim(Request.Form("txtMotherName"))
	strFathersProfession = Trim(Request.Form("txtFathersProfession"))
	strMothersProfession = Trim(Request.Form("txtMothersProfession"))

    dtmDateDay = Trim(Request.Form("ddlDateOfBirthDay"))
	dtmDateMonth = Trim(Request.Form("ddlDateOfBirthMonth"))
	dtmDateYear = Trim(Request.Form("ddlDateOfBirthYear")) 

	dtmDateOfBirth = dtmDateMonth & "/" & dtmDateDay & "/" & dtmDateYear
	
	strMeritalStatus = Trim(Request.Form("ddlMaritalStatus"))
	strSpouseName = Trim(Request.Form("txtSpouseName"))
	strSpouseProfession = Trim(Request.Form("txtSpouseProfession"))
	
	
	strNationality = Trim(Request.Form("txtNationality"))
	strEmail = Trim(Request.Form("txtEmail"))
	
	strContactPhone = Trim(Request.Form("txtContactPhone"))
	strCellPhone = Trim(Request.Form("txtCellPhone"))
	strCellPhone2 = Trim(Request.Form("txtCellPhone2"))
	intNationalId = Trim(Request.Form("txtNationalId"))
	strBloodGroup = Trim(Request.Form("ddlBloodGroup"))
	strGender = Trim(Request.Form("ddlGender"))
	strHomeDistrict = Trim(Request.Form("ddlHomeDistrict"))
	strHomeDistrict2 = Trim(Request.Form("ddlHomeDistrict2"))
	strThanaPrmDist = Trim(Request.Form("ddlThanaPrmDist"))
	 
	strReligion = Trim(Request.Form("ddlReligion"))

	strContactAddress = Trim(Request.Form("txtContactAddress"))
	strPermanentAddress = Trim(Request.Form("txtPermanentAddress"))
	
	
	
	strFirstName = GiveReplacedString4DB(strFirstName)
	strLastName = GiveReplacedString4DB(strLastName)
	strFatherName = GiveReplacedString4DB(strFatherName)
	strMotherName = GiveReplacedString4DB(strMotherName)
	strNationality = GiveReplacedString4DB(strNationality)
	strEmail = GiveReplacedString4DB(strEmail)
	strContactPhone = GiveReplacedString4DB(strContactPhone)
	strCellPhone = GiveReplacedString4DB(strCellPhone)
	strContactAddress = GiveReplacedString4DB(strContactAddress)
	strPermanentAddress = GiveReplacedString4DB(strPermanentAddress)
	strPassword = GiveReplacedString4DB(strPassword)
	
	If intNoOfClildren = "" Then
		intNoOfClildren = 0
	End If

	

%>