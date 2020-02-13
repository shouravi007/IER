<%
	If strPreferedLocation1 = "Any" Or strPreferedLocation2 = "Any" Or strPreferedLocation3 = "Any" Then
		strPreferedLocation = "Any"
	End If



		If blnDeclaration = "on" Then
			IsDeclaration = 1
		Else
			IsDeclaration = 0	
		End If	
		'Response.Write(TrackNo & "<br />" )
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
		strExperience = GiveReplacedString4DB(strExperience)
		strProfessionalQualification = GiveReplacedString4DB(strProfessionalQualification)
		strTraining = GiveReplacedString4DB(strTraining)
		strAcademicDistinctions = GiveReplacedString4DB(strAcademicDistinctions)
		strExtraCurricularActivities = GiveReplacedString4DB(strExtraCurricularActivities)
		strComputerSkills = GiveReplacedString4DB(strComputerSkills)
		strOtherDisclose = GiveReplacedString4DB(strOtherDisclose)
		
		If intNoOfClildren = "" Then
			intNoOfClildren = 0
		End If



	bdjID = Request.Form("id_my")
	If bdjID <> "" Then 
	  bdjID = Decode(bdjID)
	Else
	  bdjID = 0			
	End If 
	bdjPHOTOURL = Request.Form("bdjPhoto") 	
	source_of_system = trim(request.Form("source_of_system"))
    onlyPhoto = trim(request.Form("onlyPhoto"))
	
	'Response.Write(bdjPHOTOURL&source_of_system&onlyPhoto)

	
	if bdjPHOTOURL <> "" then
	 bdjphotourl_my = "http://my.bdjobs.com/photos/"&bdjPHOTOURL
	else
	 bdjphotourl_my = "" 
	end if
	'Response.Write(bdjphotourl_my)
	
    if source_of_system = "bdjobs" then 

		bdj_photo_now_save_in_ers =  "http://ers.bdjobs.com/applications/ImageResize/Photos/"&strPhotoFolder&"/bdjobs/"& trim(request.Form("onlyPhoto"))
		
		
		If bdjPHOTOURL <> "" Then 
		  BDJOBSPHOTO = 1 
		 ' bdjPHOTOURL = bdj_photo_now_save_in_ers       ' bdjPHOTOURL  '"http://my.bdjobs.com/photos/"&
		   
		   if onlyPhoto = "" or isnull(onlyPhoto) or isempty(onlyPhoto) then 
			 'bdjPHOTOURL = bdj_photo_now_save_in_ers
			  bdjph = split(bdjPHOTOURL,"/")
			  bdjph22 = bdjph(1) 
			  bdj_photo_now_save_in_ers =  "http://ers.bdjobs.com/applications/ImageResize/Photos/"&strPhotoFolder&"/bdjobs/"& bdjph22
			  bdjPHOTOURL = bdj_photo_now_save_in_ers
			  
		   else
			 bdjPHOTOURL = bdj_photo_now_save_in_ers
		   end if 
		   
		Else
		  BDJOBSPHOTO = 0 
		  bdjPHOTOURL = Request.Form("ersPhoto") 	
		End IF
		
	else
		  BDJOBSPHOTO = 0 
		  bdjPHOTOURL = trim(Request.Form("ersPhoto")) 	

	end if 
		'Response.Write(bdj_photo_now_save_in_ers)
		'Response.Write(bdjPHOTOURL)
	
	
	
	
	
	socialID = Request.Form("socialID") 
	if isempty(socialID) or isnull(socialID) or socialID = "" then 
	  socialID = 0 
	end if 
	
	
	
		
	intRefID = Trim(Request.Form("hidReferenceId1"))
	strReferenceName1 = Trim(Request.Form("txtReferenceName1"))
	strReferenceName1 = GiveReplacedString(strReferenceName1)
	strReferencePosition1 = Trim(Request.Form("txtReferencePosition1"))
	strReferencePosition1 = GiveReplacedString(strReferencePosition1)
	strReferenceAddress1 = Trim(Request.Form("txtReferenceAddress1")) 
	strReferenceAddress1 = GiveReplacedString(strReferenceAddress1)
	strReferencePhone1 = Trim(Request.Form("txtReferencePhone1")) 
	strReferencePhone1 = GiveReplacedString(strReferencePhone1)
	'strRefCell = Trim(Request.Form("txtReferenceCellPhone1")) 
	strReferenceEmail1 = Trim(Request.Form("txtReferenceEmail1")) 
	strReferenceEmail1 = GiveReplacedString(strReferenceEmail1)
	
	intRefID2 = Request.Form("hidReferenceId2")
	strReferenceName2 = Trim(Request.Form("txtReferenceName2"))
	strReferenceName2 = GiveReplacedString(strReferenceName2)
	strReferencePosition2 = Trim(Request.Form("txtReferencePosition2"))
	strReferencePosition2 = GiveReplacedString(strReferencePosition2)
	strReferenceAddress2 = Trim(Request.Form("txtReferenceAddress2")) 
	strReferenceAddress2 = GiveReplacedString(strReferenceAddress2)
	strReferencePhone2 = Trim(Request.Form("txtReferencePhone2")) 
	strReferencePhone2 = GiveReplacedString(strReferencePhone2)
	'strRefCell = Trim(Request.Form("txtReferenceCellPhone1")) 
	strReferenceEmail2 = Trim(Request.Form("txtReferenceEmail2")) 
	strReferenceEmail2 = GiveReplacedString(strReferenceEmail2)
	
    strip = Trim(request.ServerVariables("REMOTE_ADDR"))

	If blnDeclaration = "on" Then
		IsDeclaration = 1
	Else
		IsDeclaration = 0	
	End If	
		
		
		
	strTestCV = Trim(Request.Form("TestCV"))	
	
    If  Session("USERNAME") = "mahbub" and Session("PWORD") = "UvWggXv6" or Request.Cookies("PWORD") = "UvWggXv6"   Then
	'If strTestCV = "on" Then
		strTestCV = 1
		'strTestCV = 1
	Else
		strTestCV = 0
	End If	

    ValuePrint strTestCV,"strTestCV"

	bdjID = Request.Form("id_my")
	If bdjID <> "" Then 
	  bdjID = Decode(bdjID)
	Else
	  bdjID = 0			
	End If 

	
	socialID = Request.Form("socialID") 
	if isempty(socialID) or isnull(socialID) or socialID = "" then 
	  socialID = 0 
	end if 
		
	IF jobid = "" OR ISNULL(jobid) OR ISEMPTY(jobid) THEN
	  jobid = 0
	END IF 
			
	
	
%>