<%
	ValuePrint strFirstName, "strFirstName"

	strFirstName = CheckValidation("True",strFirstName,"text","Text","80","Applicant's Name")	
	
	ValuePrint strLastName, "strLastName"

	strLastName = CheckValidation("False",strLastName,"text","Text","40","Last Name")	
	strFatherName = CheckValidation("True",strFatherName,"text","Text","70","Father's Name")	
	strMotherName = CheckValidation("True",strMotherName,"text","Text","70","Mother's Name")
	
	strFathersProfession = CheckValidation("True",strFathersProfession,"text","Text","100","Father's profession ")
	strMothersProfession = CheckValidation("True",strMothersProfession,"text","Text","100","Mother's profession")
	
	ValuePrint strFatherName, "strFatherName"	

    dtmDateDay =  CheckValidation("True",dtmDateDay ,"select","S","2"," Day in Date of Birth")
    dtmDateDay =  CheckValidation("True",dtmDateDay ,"text","Text","2"," Day in Date of Birth")
    dtmDateDay =  CheckValidation("True",dtmDateDay ,"Numeric","Numeric","2"," Day in Date of Birth")
	
    dtmDateMonth = CheckValidation("True",dtmDateMonth ,"select","S","2"," Month in Date of Birth")
    dtmDateMonth = CheckValidation("True",dtmDateMonth ,"text","Text","2"," Month in Date of Birth")
    dtmDateMonth = CheckValidation("True",dtmDateMonth ,"Numeric","Numeric","2"," Month in Date of Birth")
	

    dtmDateYear = CheckValidation("True",dtmDateYear ,"select","S","4"," Year in Date of Birth")
    dtmDateYear = CheckValidation("True",dtmDateYear ,"text","Text","4"," Year in Date of Birth")
    dtmDateYear = CheckValidation("True",dtmDateYear ,"Numeric","Numeric","4"," Year in Date of Birth")
		
	dtmDateOfBirth = CheckValidation("True",dtmDateOfBirth,"DateTime","DateTime","DateTime","Date of Birth")	
	
	'ageCheckValidation  "True",dtmDateOfBirth,"09/01/1988","30","01/09/2018","Age maximum"
	
	
	ValuePrint dtmDateOfBirth, "dtmDateOfBirth"
	ValuePrint dtmBirthEligible, "dtmBirthEligible"
	ValuePrint dtmBirthEligibleMsg, "dtmBirthEligibleMsg"	
	
	
	
	'ageCheckValidation  "True",dtmDateOfBirth,dtmBirthEligible,dtmAge,dtmBirthEligibleMsg,"Age maximum"     ' default\utility.asp
	
	strMeritalStatus = CheckValidation("True",strMeritalStatus,"select","S","10","Marital Status")	
	strMeritalStatus = CheckValidation("True",strMeritalStatus,"text","Text","10","Marital Status")	

    if strMeritalStatus = "Married" then 
	'strSpouseName = CheckValidation("True",strSpouseName,"text","Text","70","Spouse Name")	
	'strSpouseProfession = CheckValidation("True",strSpouseProfession,"text","Text","70","Spouse Profession")	
	end if 

	strNationality = CheckValidation("True",strNationality,"text","Text","20","Nationality")	
	
'	if intNoOfChildren = "-1" Then 
'	   intNoOfChildren = 0 
'	else
'	  intNoOfClildren = CheckValidation("True",intNoOfClildren,"text","Text","2","No of Children")
'	  intNoOfClildren = CheckValidation("True",intNoOfClildren,"Numeric","Numeric","2","No of Children")
'	  	
'	end if 

    'strHomeDistrict2 = Trim(Request.Form("ddlHomeDistrict2"))
	
	strHomeDistrict2 = CheckValidation("True",strHomeDistrict2,"select","S","5","Present District")
	strHomeDistrict2 = CheckValidation("True",strHomeDistrict2,"text","Text","5","Present District")	
	
	strHomeDistrict = CheckValidation("True",strHomeDistrict,"select","S","5","Home District")	
	strHomeDistrict = CheckValidation("True",strHomeDistrict,"text","Text","5","Home District")	
	
	strThanaPrmDist = CheckValidation("True",strThanaPrmDist,"select","S","5","Thana for Home District")		
	strThanaPrmDist = CheckValidation("True",strThanaPrmDist,"text","Text","5","Thana for Home District")	
	
	'if strCellPhone = "" or isnull(strCellPhone) or isempty(strCellPhone) then 
	  'strCellPhone = 0 
	'else	
	 strCellPhone = CheckValidation("True",strCellPhone,"text","Text","11","Emergency Contact Number")
	
	 strCellPhone = CheckValidation("True",strCellPhone,"Numeric","Numeric","11","Emergency Contact Number ")
	'end if 
		
	
	strContactPhone = CheckValidation("True",strContactPhone,"Numeric","Numeric","11","Contact Mobile ")	
	strContactPhone = CheckValidation("True",strContactPhone,"text","Text","11","Contact Mobile ")	
	
	If strContactPhone <> "" Then 
	  If Len(strContactPhone) < 11 or Len(strContactPhone) > 11 Then 
	     ShowValidateMsg("Invaild Contact Mobile. \n Contact Mobile Must be 11 digit \n please remove +88 or - if has <br/>Click <a href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	  End IF 
	  
	  if instr(strContactPhone, "+88") > 0 then
	     ShowValidateMsg("Invaild Contact Mobile. \n Contact Mobile Must be 11 digit \n please remove +88 or - if has <br/>Click <a href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	  
	  end if 
	  
    End IF
	
	If strCellPhone <> "" and isnull(strCellPhone) = false and isempty(strCellPhone) = false Then 
	  If Len(strCellPhone) < 11 or Len(strCellPhone) > 11 Then 
	     ShowValidateMsg("Invaild Emergency Contact Number.  Emergency Contact Number Must be 11 digits . please remove +88 or - if has <br/>Click <a href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	  End IF 
    End IF	


	'if strCellPhone = "" or isnull(strCellPhone) or isempty(strCellPhone) then 
'	  strCellPhone = 0 
'    end if 

	if CSTR(strContactPhone) = CSTR(strCellPhone) then 
		ShowValidateMsg("Contact Mobile and Emergency Contact Number Can not be similar. <br/>Click <a href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
    end if 	
	
	'strCellPhone2 = CheckValidation("False",strCellPhone2,"text","Text","50","Cell  Phone 2 ")	
	intNationalId = CheckValidation("False",intNationalId,"text","Text","25","National ID")	
	If intNationalId <> "" Then 
	  If Len(intNationalId) < 5 Then 
	     ShowValidateMsg("National ID can not be less than 5 digit<br/>Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	  End IF 
	Else 
	  intNationalId = 0 
    End IF   
    strBloodGroup =  CheckValidation("False",strBloodGroup,"text","Text","3","Blood Group")	
	if strBloodGroup = "" or isnull(strBloodGroup) or isempty(strBloodGroup) then 
	  strBloodGroup = "S"
	else
	 strBloodGroup = CheckValidation("True",strBloodGroup,"text","Text","3","Blood Group")
	end if 
	
	
	strGender = CheckValidation("True",strGender,"select","S","6","Gender")	
	strGender = CheckValidation("True",strGender,"text","Text","6","Gender")	
	
	strReligion = CheckValidation("True",strReligion,"select","S","25","Religion")
	strReligion = CheckValidation("True",strReligion,"text","Text","25","Religion")
	
	if system = "ksb" then
		reqEmail = "False"
	else
		reqEmail = "True"	
	end if
		
	strEmail = CheckValidation(reqEmail,strEmail,"text","Text","50","Email")	
	strEmail = CheckValidation(reqEmail,strEmail,"email","Text","50","Email")	
		
	strContactAddress = CheckValidation("True",strContactAddress,"text","Text","250","Correspondence  Address")	
	strPermanentAddress = CheckValidation("True",strPermanentAddress,"text","Text","250","Permanent Address")	
			
	strReading = CheckValidation("False",strReading,"select","S","6","Reading")	
	strReading = CheckValidation("False",strReading,"text","Text","6","Reading")	
	strWriting = CheckValidation("False",strWriting,"select","S","6","Writing")	
	strWriting = CheckValidation("False",strWriting,"text","Text","6","Writing")	
	strSpeaking = CheckValidation("False",strSpeaking,"select","S","6","Speaking")	
	strSpeaking = CheckValidation("False",strSpeaking,"text","Text","6","Speaking")	
	
	strExperience = CheckValidation("False",strExperience,"text","Text","2000","Experience (if any) ")	
	
	If system = "ksb" then		
		'response.Write(strFreedomFighter & "<BR>" & strFreedomFighterC_GC)
		
		if strFreedomFighter = "1" or strFreedomFighterC_GC = "C" OR strFreedomFighterC_GC = "GC" Then
			
			ageCheckValidation  "True",dtmDateOfBirth,dtmBirthEligibleQuota,dtmAgeQuota,dtmBirthEligibleMsg,"You have crossed your age limit. Your age can be maximum"
			
		elseif strPhysicallyChallenged = "1" Then			
			'response.Write(strPhysicallyChallenged)
			
			ageCheckValidation  "True",dtmDateOfBirth,dtmBirthEligibleQuota,dtmAgeQuota,dtmBirthEligibleMsg,"You have crossed your age limit. Your age can be maximum"
		
		elseif strAnsarVdp = "1" or strTribal = "1" or strOrphan = "1" Then
			
			'response.Write(strAnsarVdp)			
			ageCheckValidation  "True",dtmDateOfBirth,dtmBirthEligible,dtmAge,dtmBirthEligibleMsg,"You have crossed your age limit. Your age can be maximum"
		
		else			
			ageCheckValidation  "True",dtmDateOfBirth,dtmBirthEligible,dtmAge,dtmBirthEligibleMsg,"You have crossed your age limit. Your age can be maximum"
		end if
	
	else
	
		ageCheckValidation  "True",dtmDateOfBirth,dtmBirthEligible,dtmAge,dtmBirthEligibleMsg,"You have crossed your age limit. Your age can be maximum" 
	
	end if
	
		
	if strFreedomFighter <> "" Then		
		strFreedomFighterC_GC = CheckValidation("True",strFreedomFighterC_GC,"text","Text","2","Freedom Fighter child/grand child field should be selected")
	end if
	
	
	strProfessionalQualification = CheckValidation("False",strProfessionalQualification,"text","Text","2000","Professional Qualification, Training etc (if any)")	
	strAcademicDistinctions = CheckValidation("False",strAcademicDistinctions,"text","Text","2000","Academic Distinctions(if any)")	
	strExtraCurricularActivities = CheckValidation("False",strExtraCurricularActivities,"text","Text","2000","Extra curricular activities(if any) ")	
	strComputerSkills = CheckValidation("False",strComputerSkills,"text","Text","2000","Computer skills (if any) ")	
	strOtherDisclose = CheckValidation("False",strOtherDisclose,"text","Text","2000","Any other thing you want to disclose(if any) ")		


	strPassword =  CheckValidation("True",strPassword,"text","Text","12","Password")
	strConfirmPassword = CheckValidation("True",strConfirmPassword,"text","Text","12","Confirm Password")
	CheckPasswordAndConfirmPassword strPassword,strConfirmPassword,"Password","Confirm password" 


%>