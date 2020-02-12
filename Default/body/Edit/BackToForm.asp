<form action="Default.asp" method="post" name="frmApplicationInsert" id="frmApplicationInsert">	
	<input name="txtTrackingNo" id="txtTrackingNo" type="hidden" value="<%=TrackNo%>" />	
	<input name="txtFirstName" id="txtFirstName" type="hidden" value="<%=strFirstName%>" />	
	<input name="txtLastName" id="txtLastName" type="hidden" value="<%=strLastName%>" />	
	<input name="txtFatherName" id="txtFatherName" type="hidden" value="<%=strFatherName%>" />
	<input name="txtMotherName" id="txtMotherName" type="hidden" value="<%=strMotherName%>" />
    
   <input name="txtFathersProfession" id="txtFathersProfession" type="hidden"  value="<%=strFathersProfession%>" /> 
      
  <input name="txtMothersProfession" id="txtMothersProfession" type="hidden" value="<%=strMothersProfession%>" />
    
	<input name="txtDateOfBirth" id="txtDateOfBirth" type="hidden" value="<%=dtmDateOfBirth%>" />
	<input name="ddlMaritalStatus" id="ddlMaritalStatus" type="hidden" value="<%=strMeritalStatus%>" />
	<input name="txtNationality" id="txtNationality" type="hidden" value="<%=strNationality%>" />	
	<input name="txtEmail" id="txtEmail" type="hidden" value="<%=strEmail%>" />	
	<input name="txtContactPhone" id="txtContactPhone" type="hidden" value="<%=strContactPhone%>" />	
	<input name="txtCellPhone" id="txtCellPhone" type="hidden" value="<%=strCellPhone%>" />	
    <input name="txtCellPhone2" id="txtCellPhone2" type="hidden" value="<%=strCellPhone2%>" />	
	<input name="txtNationalId" id="txtNationalId" type="hidden" value="<%=intNationalId%>" />	
	<input name="ddlBloodGroup" id="ddlBloodGroup" type="hidden" value="<%=strBloodGroup%>" />	
	<input name="ddlGender" id="ddlGender" type="hidden" value="<%=strGender%>" />	
    <input name="ddlHomeDistrict" id="ddlHomeDistrict" type="hidden" value="<%=strHomeDistrict%>" />
    
    <input name="ddlHomeDistrict2" id="ddlHomeDistrict2" type="hidden" value="<%=strHomeDistrict2%>" />
    
	<input name="ddlReligion" id="ddlReligion" type="hidden" value="<%=strReligion%>" />	
    <input name="ddlNoOfChildren" id="ddlNoOfChildren" type="hidden" value="<%=intNoOfClildren%>" />	
	<input name="txtContactAddress" id="txtContactAddress" type="hidden" value="<%=strContactAddress%>" />	
	<input name="txtPermanentAddress" id="txtPermanentAddress" type="hidden" value="<%=strPermanentAddress%>" />	
	<input name="txtPassword" id="txtPassword" type="hidden" value="<%=strPassword%>" />
	<input name="txtConfirmPassword" id="txtConfirmPassword" type="hidden" value="<%=strConfirmPassword%>" />	
	<input name="chkDeclaration" id="chkDeclaration" type="hidden" value="<%=IsDeclaration%>" />	
	<input name="txtPreferedLocation" id="txtPreferedLocation" type="hidden" value="<%=strPreferedLocation%>" />	
	
	<input name="ddlReading" id="ddlReading" type="hidden" value="<%=strReading%>" />	
	<input name="ddlWriting" id="ddlWriting" type="hidden" value="<%=strWriting%>" />	
	<input name="ddlSpeaking" id="ddlSpeaking" type="hidden" value="<%=strSpeaking%>" />	
	
	<input name="txtExperience" id="txtExperience" type="hidden" value="<%=strExperience%>" />	
	<input name="txtProfessionalQualification" id="txtProfessionalQualification" type="hidden" value="<%=strProfessionalQualification%>" />	
	<input name="txtAcademicDistinctions" id="txtAcademicDistinctions" type="hidden" value="<%=strAcademicDistinctions%>" />
	<input name="txtExtraCurricularActivities" id="txtExtraCurricularActivities" type="hidden" value="<%=strExtraCurricularActivities%>" />	
	<input name="txtComputerSkill" id="txtComputerSkill" type="hidden" value="<%=strComputerSkills%>" />	
	<input name="txtAnyOther" id="txtAnyOther" type="hidden" value="<%=strOtherDisclose%>" />	


<% 
	For intEduIndex = 1 To 4
		' Variable Initialization 4 Academic.
			intEduID = Request.Form("hidEducationID" & intEduIndex)
			IF intEduID = "" Then 
			 intEduID = -1 
			End IF 
			bytEduLevel = Trim(Request.Form("ddlEducationLevel" & intEduIndex))
			strDegreeName = Trim(Request.Form("ddlDegreeName" & intEduIndex))
			strDegreeName = GiveReplacedString4DB(strDegreeName)
			intPassYear = Trim(Request.Form("ddlPassingYear" & intEduIndex))
			
			'intResultDay = Request.Form("ddlResultDay" & intEduIndex)
			'intResultMonth = Request.Form("ddlResultMonth" & intEduIndex)
			'intResultYear2 = Request.Form("ddlResultYear" & intEduIndex)
			
			'intResultYear = intResultYear2 & "/" & intResultMonth & "/"& 'intResultDay  ' Request.Form("ddlResultYear" & intEduIndex)
			
			strInstitute = Trim(Request.Form("txtInstitute" & intEduIndex))
			strResult = Trim(Request.Form("ddlResult" & intEduIndex)) 
			strSubject = Trim(Request.Form("ddlSubject" & intEduIndex))
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
		

									
			If strUniversity = "Foreign" Then
				 
				'strUniversity = strUniversityOthers & "@***@" & strCountry
				
				strForeign = "F"
			ElseIf strUniversity = "Others" Then	
				
				'strUniversity = strUniversityOthers
		
				strForeign = "O"
			Else
				strForeign = "N"	
			End If			
			
			
			
			If strSubject = "Others" Then
				strOthers = Trim(Request.Form("txtOthers" & intEduIndex))
				'strSubject = strOthers 
	            subject_others = 1		
			Else
			    subject_others = 0
			End If	
%> 
<input name="ddlEducationLevel<%=intEduIndex%>" id="ddlEducationLevel<%=intEduIndex%>" type="hidden" value="<%=bytEduLevel%>" />
<input name="ddlDegreeName<%=intEduIndex%>" id="ddlDegreeName<%=intEduIndex%>" type="hidden" value="<%=strDegreeName%>" />
<input name="ddlPassingYear<%=intEduIndex%>" id="ddlPassingYear<%=intEduIndex%>" type="hidden" value="<%=intPassYear%>" />
<input name="txtInstitute<%=intEduIndex%>" id="txtInstitute<%=intEduIndex%>" type="hidden" value="<%=strInstitute%>" />

<input name="ddlAcademicDist<%=intEduIndex%>" id="ddlAcademicDist<%=intEduIndex%>" type="hidden" value="<%=strAcademicDist%>" />

<input name="ddlUniversity<%=intEduIndex%>" id="ddlUniversity<%=intEduIndex%>" type="hidden" value="<%=strUniversity%>" />
<input name="txtUniversity<%=intEduIndex%>" id="txtUniversity<%=intEduIndex%>" type="hidden" value="<%=strUniversityOthers%>" />
<input name="ddlCountry<%=intEduIndex%>" id="ddlCountry<%=intEduIndex%>" type="hidden" value="<%=strCountry%>" />

<input name="txtUniversityType<%=intEduIndex%>" id="txtUniversityType<%=intEduIndex%>" type="hidden" value="<%=strForeign%>" />
<input name="ddlResult<%=intEduIndex%>" id="ddlResult<%=intEduIndex%>" type="hidden" value="<%=strResult%>" />
<input name="txtResultPoint<%=intEduIndex%>" id="txtResultPoint<%=intEduIndex%>" type="hidden" value="<%=strResultPoint%>" />

<input name="ddlCGPAScale<%=intEduIndex%>" id="ddlCGPAScale<%=intEduIndex%>" type="hidden" value="<%=strCGPAScale%>" />

<input name="ddlSubject<%=intEduIndex%>" id="ddlSubject<%=intEduIndex%>" type="hidden" value="<%=strSubject%>" />

<input name="txtOthers<%=intEduIndex%>" id="txtOthers<%=intEduIndex%>" type="hidden" value="<%=strOthers%>" />

<input name="subject_others<%=intEduIndex%>" id="subject_others<%=intEduIndex%>" type="hidden" value="<%=subject_others%>" />
        

<%		
	Next	
%>


<%	For intRefIndex = 1 To 2
		' Variable Initialization 4 Reference
		intRefID = Request.Form("hidReferenceId" & intRefIndex)
		strRefName = Request.Form("txtReferenceName" & intRefIndex)
		strRefName = GiveReplacedString4DB(strRefName)
		strRefPos = Request.Form("txtReferencePosition" & intRefIndex)
		strRefPos = GiveReplacedString4DB(strRefPos)
		strRefAdd = Request.Form("txtReferenceAddress" & intRefIndex) 
		strRefAdd = GiveReplacedString4DB(strRefAdd)
		strRefPhone = Request.Form("txtReferencePhone" & intRefIndex) 
		'strRefCell = Request.Form("txtReferenceCellPhone" & intRefIndex) 
		strRefEmail = Request.Form("txtReferenceEmail" & intRefIndex) 
		strRefEmail = GiveReplacedString4DB(strRefEmail)
%> 
		<input name="hidReferenceId<%=intRefIndex%>" id="hidReferenceId<%=intRefIndex%>" type="hidden" value="<%=intRefID%>" />	
		<input name="txtReferenceName<%=intRefIndex%>" id="txtReferenceName<%=intRefIndex%>" type="hidden" value="<%=strRefName%>" />	
		<input name="txtReferencePosition<%=intRefIndex%>" id="txtReferencePosition<%=intRefIndex%>" type="hidden" value="<%=strRefPos%>" />	
		<input name="txtReferenceAddress<%=intRefIndex%>" id="txtReferenceAddress<%=intRefIndex%>" type="hidden" value="<%=strRefAdd%>" />
		<input name="txtReferencePhone<%=intRefIndex%>" id="txtReferencePhone<%=intRefIndex%>" type="hidden" value="<%=strRefPhone%>" />
		<!--<input name="txtReferenceCellPhone<%'=intRefIndex%>" id="txtReferenceCellPhone<%'=intRefIndex%>" type="hidden" value="<%'=strRefCell%>" />-->
		<input name="txtReferenceEmail<%=intRefIndex%>" id="txtReferenceEmail<%=intRefIndex%>" type="hidden" value="<%=strRefEmail%>" />
<%
	Next
%>	
	<input name="txtBlank" id="txtBlank" type="hidden" value="True" />
    
    
 <input type="hidden" id="id_my" name="id_my" value="<%=Trim(Request.Form("id_my"))%>" />
 <input type="hidden" id="bdjPhoto" name="bdjPhoto" value="<%=Trim(Request.Form("bdjPhoto"))%>"  />                                         
 <input type="hidden" id="JOB_ID" name="JOB_ID" value="<%=Trim(Request.Form("JOB_ID"))%>"/>  
 
<input type="hidden" name="APP_TYPE" value="<%=Trim(Request.Form("APP_TYPE"))%>">

</form>
