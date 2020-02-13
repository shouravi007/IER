<%
IsAcademic = False
IsPersonal = False
IsPhoto = False
Admin = False 
Search = False
intTrakingNo = trim(request.Form("TrackNo"))

SQLCertificate = "SELECT PhotoURL,id,SignatureURL FROM Personal WHERE id=" & intTrakingNo
'response.Write(SQLCertificate)
arr_Certificate = objERS.RetrieveData(SQLCertificate, errMsg)

	If arr_Certificate(2, 0)= "" Or IsNull(arr_Certificate(2, 0)) Then
		   ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! uploaded signature not found.<br>Please try again.<br></strong></font></center>"&phone)
			DivCreateForAds
			EndOfAllProcess
	End if
	
	If arr_Certificate(0, 0)="" Or IsNull(arr_Certificate(0, 0)) Then
		   ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! uploaded photo not found.<br>Please try again.<br></strong></font></center>"&phone)
			DivCreateForAds
			EndOfAllProcess
	End if

'User_ID = intTrakingNo
		
SQLPersonal = "SELECT  (firstname+' '+lastname), FatherName, MotherName, DateOfBirth, MaritalStatus, Nationality, Email, ContactPhone , CellPhone , NationalId, [signatureurl], Gender, [Religion] [Experience], ContactAddress, PermanentAddress, Declaration, [HomeDistrict], [HomeDistrict2],[postedon],[updatedon],Photo,[72_after_post],[ComputerSkills],[id],[BdjobsID],[BdjobsPhoto],[PhotoURL],ThanaForPrmDist,signature,experience FROM Personal WHERE id =" & intTrakingNo
arr_Personal = objERS.RetrieveData(SQLPersonal, errMsg)

If arr_Personal(0, 0) <> "Nothing" Then
	ApplicantsName = arr_Personal(0, 0)
	ApplicantsName = GiveReplacedString(ApplicantsName)
	FathersName = arr_Personal(1, 0)
	FathersName = GiveReplacedString(FathersName)
	MothersName = arr_Personal(2, 0)
	MothersName = GiveReplacedString(MothersName)
	DateofBirth = arr_Personal(3, 0)
	MaritalStatus = arr_Personal(4, 0)
	strNationality = arr_Personal(5, 0)
	EMail = arr_Personal(6, 0)
	'response.Write(EMail)
	'EMail = GiveReplacedString(strEmail)
	ContactMobile = arr_Personal(7, 0)
	strCellPhone = arr_Personal(8, 0)
	NationalID  = arr_Personal(9, 0)
	strSignatureUrl = arr_Personal(10, 0)
	Gender = arr_Personal(11, 0)
	Religion = arr_Personal(12, 0)
	PresentAddress = arr_Personal(13, 0)
	PresentAddress = GiveReplacedString(PresentAddress)
	PermanentAddress = arr_Personal(14, 0)
	PermanentAddress = GiveReplacedString(PermanentAddress)
	IsDeclaration = arr_Personal(15, 0)
	strHomeDist = arr_Personal(16, 0)
	strHomeDist2 = arr_Personal(17, 0)
	
	
		If strHomeDist <> "" Then
		
			resumeServer="MyBdjobsView" ' for thana from mybdjobs
			
			sqlForDistrict = "SELECT L_ID, L_Name FROM Locations WHERE L_ID = "&strHomeDist
			err.clear 
			arrSqlForDistrict = objResumeServer.RetrieveData(sqlForDistrict, errMsg)
			
			strHomeDistBDJ = arrSqlForDistrict(1,0)
			'RESPONSE.Write(strHomeDistBDJ)
		
		End If	
	
	a1 = split(PresentAddress , " ") 
	lena = ubound(a1,1)
	intBR = 6
	strAddress = ""
	If lena > intBR Then
		For s = 0 To lena
			If s = intBR Then
				strAddress = strAddress & a1(s) & "<br/>"
			Else
				strAddress = strAddress & a1(s) & " "
			End If
		Next
		PresentAddress = strAddress
	End If


	b1 = split(PermanentAddress , " ") 
	lena2 = ubound(b1,1)
	intBR = 6
	strAddress2 = ""
	If lena2 > intBR Then
		For s2 = 0 To lena2
			If s2 = intBR Then
				strAddress2 = strAddress2 & b1(s2) & "<br/>"
			Else
				strAddress2 = strAddress2 & b1(s2) & " "
			End If
		Next
		PermanentAddress = strAddress2
	End If

	
	strPostedOn = arr_Personal(18, 0)
	strUpdatedOn = arr_Personal(19, 0)
	
	IsPhoto = arr_Personal(20, 0)
	str_72_after_post = arr_Personal(21, 0)
	strComputerSkill = arr_Personal(22, 0)
	id = arr_Personal(23, 0)
	
	sql = ""
	sql = " select jobid, id  from jobpos where personalid = "&id
	err.clear
	arrJob = objERS.RetrieveData(sql,errMsg)
	
	if arrJob(0, 0) <> "Nothing" then
	 jobid = arrJob(0,0)
	 Ref_No = arrJob(1,0)
	 err.clear 
	  sql = ""
	  sql = "select jobtitle from jobposting where jobid = "&jobid 
	  arrPosition = objERS.RetrieveData(sql, errMsg)
	  if arrPosition(0,0) <> "Nothing" then
	     Post_Name = arrPosition(0,0) 
	  end if 
	end if
	
	bdjID = arr_Personal(24, 0)
	bdjPhoto = arr_Personal(25, 0)
	bdjPhotoUrl = arr_Personal(26, 0)
	ThanaForPrmDist = arr_Personal(27, 0)
	strSignature = arr_Personal(28, 0)
	strExp = arr_Personal(29, 0)
	IsPersonal = True
	
End If	


	imgSrc = bdjPhotoUrl
	
	imgSrc2 = strSignatureUrl
	
	SQLAcademic = "SELECT id, DegreeName, [subject2], Subject, PassingYear, EducationId, University, Result, ResultPoint, UniversityType, CGPAScale FROM Academic WHERE personalid = " & intTrakingNo & " ORDER BY EducationId DESC, id DESC "
	arrAcademic = objERS.RetrieveData(SQLAcademic,errMsg)
	
	If arrAcademic(0, 0) <> "Nothing" Then
	
		totalRow = ubound(arrAcademic,2)
		
		if totalRow = 2 then
		
			SSC_Examination = arrAcademic(1, 2)
			SSC_Subject = arrAcademic(3, 2)
			SSC_Year_of_passing = arrAcademic(4, 2)
			SSC_University = arrAcademic(6, 2)		
			SSC_Division_Class = arrAcademic(7, 2)		
			SSC_GPA_CGPA = arrAcademic(8, 2)		
			SSC_Out_of = arrAcademic(10, 2)		
		
			HSC_Examination = arrAcademic(1, 1)
			HSC_Subject = arrAcademic(3, 1)
			HSC_Year_of_passing = arrAcademic(4, 1)		
			HSC_University = arrAcademic(6, 1)
			HSC_Division_Class = arrAcademic(7, 1)
			HSC_GPA_CGPA = arrAcademic(8, 1)
			HSC_Out_of = arrAcademic(10, 1)
			
			Graduation_Examination = arrAcademic(1, 0)
			Graduation_Subject = arrAcademic(3, 0)
			Graduation_Year_of_passing = arrAcademic(4, 0)
			Graduation_University = arrAcademic(6, 0)
			Graduation_Division_Class = arrAcademic(7, 0)
			Graduation_GPA_CGPA = arrAcademic(8, 0)
			Graduation_Out_of = arrAcademic(10, 0)
			
			if Graduation_Out_of = "-1" Then
				Graduation_Out_of = "100"
			end if
		
			PostGraduation_Examination = "-------"
			PostGraduation_Subject = "-------"
			PostGraduation_Year_of_passing = "-------"
			PostGraduation_University = "-------"		
			PostGraduation_Division_Class = "-------"	
			PostGraduation_GPA_CGPA = "-------"
			PostGraduation_Out_of = "-------"	
		
		else
		
			SSC_Examination = arrAcademic(1, 3)
			SSC_Subject = arrAcademic(3, 3)
			SSC_Year_of_passing = arrAcademic(4, 3)
			SSC_University = arrAcademic(6, 3)		
			SSC_Division_Class = arrAcademic(7, 3)		
			SSC_GPA_CGPA = arrAcademic(8, 3)		
			SSC_Out_of = arrAcademic(10, 3)		
		
			HSC_Examination = arrAcademic(1, 2)
			HSC_Subject = arrAcademic(3, 2)
			HSC_Year_of_passing = arrAcademic(4, 2)		
			HSC_University = arrAcademic(6, 2)
			HSC_Division_Class = arrAcademic(7, 2)
			HSC_GPA_CGPA = arrAcademic(8, 2)
			HSC_Out_of = arrAcademic(10, 2)
			
			Graduation_Examination = arrAcademic(1, 1)
			Graduation_Subject = arrAcademic(3, 1)
			Graduation_Year_of_passing = arrAcademic(4, 1)
			Graduation_University = arrAcademic(6, 1)
			Graduation_Division_Class = arrAcademic(7, 1)
			Graduation_GPA_CGPA = arrAcademic(8, 1)
			Graduation_Out_of = arrAcademic(10, 1)
	
			
			PostGraduation_Examination = arrAcademic(1, 0)
			PostGraduation_Subject = arrAcademic(3, 0)
			PostGraduation_Year_of_passing = arrAcademic(4, 0)
			PostGraduation_University = arrAcademic(6, 0)		
			PostGraduation_Division_Class = arrAcademic(7, 0)		
			PostGraduation_GPA_CGPA = arrAcademic(8, 0)
			PostGraduation_Out_of = arrAcademic(10, 0)

			if Graduation_Out_of = "-1" Then
				Graduation_Out_of = "100"
			end if
			
			if PostGraduation_Out_of = "-1" Then
				PostGraduation_Out_of = "100"
			end if
		
		end if
		
		'if SSC_Division_Class = 15 then
	
	
	IsAcademic = True
	End If	

'Response.End()

    err.clear 
	strQuata = " SELECT FreedomFighter, Tribal, [Disable], [Ansarvdp], [Orphan]  FROM  Quota  where   id =  "&intTrakingNo
	arr_Quata = objERS.RetrieveData(strQuata, errMsg)
	ErrorMessage "1874", errMsg, 0	
	
	FF = ""
	Tribal = ""
	Disable = ""
	AnsarVdp = ""
	Orphan = ""
	Others = "" 
	If arr_Quata(0, 0) <> "Nothing" Then	
	   strFredomFighter = arr_Quata(0,0)
	   
	   If IsNull(strFredomFighter) or Isempty(strFredomFighter) or strFredomFighter = 0 Then 
		 FF = "No"	   
	   Else 
		 FF = arr_Quata(0, 0) 
	   End If  
	
	   strTribal = arr_Quata(1,0)
	   If IsNull(strTribal) or Isempty(strTribal) or strTribal = 0 Then 
	   strTribal = 0	
	   Tribal = "No"	   
	   Else 
	   strTribal = 1
	   Tribal = "Yes"
	   End IF
	
	   strDisableDetails = arr_Quata(2,0)
	
	   if strDisableDetails = "0" then 
		strDisableDetails = "" 		   
	   end if 
	
	   If IsNull(strDisableDetails) or Isempty(strDisableDetails) or strDisableDetails = ""  Then 
	   strDisable = 0	
	   strDisableDetails = ""	   
	   Disable = "No"   
	
	   Else 
	   strDisable = 1
	   Disable = "Yes"
	
	   End IF
		
	   strAnserVdpQuota = arr_Quata(3,0)
	
	   If IsNull(strAnserVdpQuota) or Isempty(strAnserVdpQuota) or strAnserVdpQuota = 0 or strAnserVdpQuota = "" Then 
	   	 strAnserVdpQuota = 0	
	  	 AnsarVdp = "No"
	   Else 
	   	 strAnserVdpQuota = 1
	   	 AnsarVdp = "Yes"
	   End IF
	
	   strOrphan = arr_Quata(4,0) 
	   If IsNull(strOrphan) or Isempty(strOrphan) or strOrphan = 0 or strOrphan = "" Then 
	   strOrphan = 0
	   Orphan = "No"	
	   Else 
	   strOrphan = 1
	   Orphan = "Yes"
	   End IF
	   
	   str3YrsRural = arr_Quata(5,0) 
	Else 
	   strFredomFighter = ""
	   strTribal = ""
	   strDisable = "" 
	   str10Yrs = ""
	   str3Yrs = ""
	   str3YrsRural = "" 	
	End IF
	
	
    FreedomFighterStatus = 	FF
	
	PhysicallyChallenged = Disable
	
	Experience_If_any = strExp
		
	ApplicantsSignature = imgSrc2 
		
	WHMDSOisyourID = Ref_No
			

%>
