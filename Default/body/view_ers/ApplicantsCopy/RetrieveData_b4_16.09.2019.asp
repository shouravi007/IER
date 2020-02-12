<%
IsAcademic = False
IsPersonal = False
IsPhoto = False
Admin = False 
Search = False
intTrakingNo = trim(request.Form("TrackNo"))

SQLCertificate = "SELECT Photo,id,Signature FROM Personal WHERE id=" & intTrakingNo
arr_Certificate = objERS.RetrieveData(SQLCertificate, errMsg)

	If arr_Certificate(2, 0)=0 Or IsNull(arr_Certificate(2, 0)) Then
		   ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! uploaded signature not found.<br>Please try again.<br></strong></font></center>"&phone)
			DivCreateForAds
			EndOfAllProcess
	End if
	
	If arr_Certificate(0, 0)=0 Or IsNull(arr_Certificate(0, 0)) Then
		   ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! uploaded photo not found.<br>Please try again.<br></strong></font></center>"&phone)
			DivCreateForAds
			EndOfAllProcess
	End if
		
SQLPersonal = "SELECT  (firstname+' '+lastname), FatherName, MotherName, DateOfBirth, MaritalStatus, Nationality, Email, ContactPhone , CellPhone , NationalId, [signatureurl], Gender, [Experience], ContactAddress, PermanentAddress, Declaration, [HomeDistrict], [HomeDistrict2],[postedon],[updatedon],Photo,[72_after_post],[ComputerSkills],[JobID],[BdjobsID],[BdjobsPhoto],[PhotoURL],ThanaForPrmDist,signature FROM Personal WHERE id =" & intTrakingNo
arr_Personal = objERS.RetrieveData(SQLPersonal, errMsg)

If arr_Personal(0, 0) <> "Nothing" Then
	strName = arr_Personal(0, 0)
	strName = GiveReplacedString(strName)
	strFatherName = arr_Personal(1, 0)
	strFatherName = GiveReplacedString(strFatherName)
	strMotherName = arr_Personal(2, 0)
	strMotherName = GiveReplacedString(strMotherName)
	dtmDateOfBirth = arr_Personal(3, 0)
	strMeritalStatus = arr_Personal(4, 0)
	strNationality = arr_Personal(5, 0)
	strEmail = arr_Personal(6, 0)
	strEmail = GiveReplacedString(strEmail)
	strContactPhone = arr_Personal(7, 0)
	strCellPhone = arr_Personal(8, 0)
	intNationalID  = arr_Personal(9, 0)
	strSignatureUrl = arr_Personal(10, 0)
	strGender = arr_Personal(11, 0)
	strReligion = arr_Personal(12, 0)
	strContactAddress = arr_Personal(13, 0)
	strContactAddress = GiveReplacedString(strContactAddress)
	strPermanentAddress = arr_Personal(14, 0)
	strPermanentAddress = GiveReplacedString(strPermanentAddress)
	IsDeclaration = arr_Personal(15, 0)
	strHomeDist = arr_Personal(16, 0)
	
	a1 = split(strContactAddress , " ") 
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
		strContactAddress = strAddress
	End If


	b1 = split(strPermanentAddress , " ") 
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
		strPermanentAddress = strAddress2
	End If

	
	strAge = arr_Personal(17, 0)
	strWriting = arr_Personal(18, 0)
	strSpeaking = arr_Personal(19, 0)
	
	IsPhoto = arr_Personal(20, 0)
	strListening = arr_Personal(21, 0)
	strComputerSkill = arr_Personal(22, 0)
	jobid = arr_Personal(23, 0)	

    if jobid = 1 then 
	  position = "Assistant Officer (TO)"
	elseif jobid = 2 then 
      position = "Assistant Officer (Cash)"
	end if  
	
	bdjID = arr_Personal(24, 0)
	bdjPhoto = arr_Personal(25, 0)
	bdjPhotoUrl = arr_Personal(26, 0)
	strHusband = arr_Personal(27, 0)
	strSignature = arr_Personal(28, 0)
	
'	strExperience = arr_Personal(28, 0)
'	strProfessionalQualification = arr_Personal(29, 0)
'	strAcademicDistinctions = arr_Personal(30, 0)
'	strExtraCurricularActivities = arr_Personal(31, 0)
'	strOtherDisclose = arr_Personal(32, 0)
'	strHomeDistrict = arr_Personal(33, 0)
	IsPersonal = True
End If	



				
			   
				'intRoll =  clng(arrSelect(7,0)) 	
				'intRoll = CStr(clng(arrSelect(7,0))+100000) 
				'response.Write("<br>"&intRoll)
				
				BdjobsId = bdjID
					
					If IsPhoto = True Then
						imgSrc = bdjPhotoUrl
						
					 
					 else 	   
						
						 if bdjPhoto = true then 
							resumeServer="MyBdjobsView"
							strPageName="imp_bdj_to_ers.asp"
							
							Set objResumeServer = New c_data
							objResumeServer.OpenConnection resumeServer,strErr
							intErsId = 10 
							UserId = BdjobsId  'arrPersonal(3,i)
							secPhoto = 9024 '   10025
							strSqlPhoto = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secPhoto 
							'Response.Write(strSqlPhoto)
							
							
							
							arrDataPhoto = objResumeServer.RetrieveData(strSqlPhoto,strErr)
							
							if arrDataPhoto(0, 0) <> "Nothing" Then
							  
							  if ubound(arrDataPhoto, 2) > 0 then 
							
								if isnull(arrDataPhoto(0,1)) or isempty(arrDataPhoto(0,1)) or arrDataPhoto(0,1) = "" then  
								 imgSrc =  "http://my.bdjobs.com/photos/"& bdjPhotoUrl 
								else
								
								imgSrc =  "http://my.bdjobs.com/photos/"&arrDataPhoto(0,1) &".jpg"	
								end if
							
							  else
							  
								 imgSrc =  "http://my.bdjobs.com/photos/"& bdjPhotoUrl 
							  end if 
							end if 					

        					objResumeServer.CloseConnection 
		 					Set objResumeServer = Nothing	
		                      
							
						 else
						  imgSrc = "images/default.gif"
						 end if
					 end if 




  imgSrc2 = 
  
  
SQLAcademic = "SELECT AcademicId, DegreeName, [Award], Subject, PassingYear, EducationId, University, Result, ResultPoint, UniversityType, CGPAScale FROM Academic WHERE PersonalId=" & intTrakingNo &" ORDER BY EducationId DESC, AcademicId DESC"
ValuePrint SQLAcademic, "sqlacademic"	
arrAcademic = objERS.RetrieveData(SQLAcademic, strErr)
ErrorMessage "34", errMsg, 0

If arrAcademic(0, 0) <> "Nothing" Then
	AcademicUB = UBound(arrAcademic, 2)
	ReDim arrAcademicId(AcademicUB)
	ReDim arrDegreeName(AcademicUB)
	
	ReDim arrInstitute(AcademicUB)
	ReDim arrSubject(AcademicUB)
	ReDim arrPassingYear(AcademicUB)
	ReDim arrEducationId(AcademicUB)
	ReDim arrUniversity(AcademicUB)
	ReDim arrResult(AcademicUB)
	ReDim arrResultPoint(AcademicUB)
	ReDim arrUniversityType(AcademicUB)
	ReDim arrCGPAScale(AcademicUB)
	
	For i=0 To AcademicUB
		arrAcademicId(i) = arrAcademic(0, i)
		arrDegreeName(i) = arrAcademic(1, i)		
		arrInstitute(i) = arrAcademic(2, i)
		arrSubject(i) = arrAcademic(3, i)
		arrPassingYear(i) = arrAcademic(4, i)
		arrEducationId(i) = arrAcademic(5, i)
		arrUniversity(i) = arrAcademic(6, i)		
		arrResult(i) = arrAcademic(7, i)
		arrResultPoint(i) = arrAcademic(8, i)
		arrUniversityType(i) = arrAcademic(9, i)
		arrCGPAScale(i) = arrAcademic(10, i)
	Next
	
	IsAcademic = True
End If	

'Response.End()


    strQuata = " SELECT FredomFighter, Tribal, [Disable], [Ansarvdp], [Orphan], [Others]   FROM  Quota  where   Personalid =  "&intTrakingNo
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
		   strFredomFighterQuestion = 0	
		   FF = "Non Freedom Fighter"	   
		   Else 
		   strFredomFighterQuestion = 1
           strQuataFF = " SELECT [id],[QuotaID],[Personalid],[type],[Name],[Relation],[FathersName],[DateOfBirth],[CertificateNo],[CertificateDate],[MuktibartaNo],[MutibartaDate],[GazetteNo],[GazetteDate]   FROM [dbo].[FreedomFightersDetails]   where   Personalid =  "&intTrakingNo

		   arr_QuataFF = objERS.RetrieveData(strQuataFF, errMsg)
		   ErrorMessage "1874", errMsg, 0
		  
		    If arr_QuataFF(0, 0) <> "Nothing" Then 
			 strType = arr_QuataFF(3, 0) 
			 if strType = "C" Then
			  FF = "Freedom Fighter (Child)"
			 ElseIf strType = "GC" Then
			  FF = "Freedom Fighter (Grand Child)"
			 Else
			  FF = "Freedom Fighter"
			 End If
			 strNameFreedomFighters = arr_QuataFF(4, 0) 
			 strRelFF = arr_QuataFF(5, 0) 
			 strFatherNameFF = arr_QuataFF(6, 0) 
			 strDOBFF = arr_QuataFF(7, 0) 
			 strFredomFighterAnswer = arr_QuataFF(3, 0)
				if isnull(strDOBFF) or isempty(strDOBFF) then
				
				else
				  strDayFF = DAY(strDOBFF)
				end if 
				if isnull(strDOBFF) or isempty(strDOBFF) then
				
				else
				  strMonthFF = month(strDOBFF)
				end if 
				
				if isnull(strDOBFF) or isempty(strDOBFF) then
				
				else
				  strYearFF = year(strDOBFF)
				end if 
			 
			 
			 strCertNoFF = arr_QuataFF(8, 0) 
			 strDATECertNoFF = arr_QuataFF(9, 0) 
			 
				if isnull(strDATECertNoFF) or isempty(strDATECertNoFF) then
				
				else
				  strDayCertNoFF = DAY(strDATECertNoFF)
				end if 
				if isnull(strDATECertNoFF) or isempty(strDATECertNoFF) then
				
				else
				  strMonthCertNoFF = month(strDATECertNoFF)
				end if 
				
				if isnull(strDATECertNoFF) or isempty(strDATECertNoFF) then
				
				else
				  strYearCertNoFF = year(strDATECertNoFF)
				end if 
			 
			 
			 strMuktiBartaNo = arr_QuataFF(10, 0) 
			 strDobMuktiBartaNo = arr_QuataFF(11, 0) 
			
				if isnull(strDobMuktiBartaNo) or isempty(strDobMuktiBartaNo) then
				
				else
				  strMuktiBartaDay = DAY(strDobMuktiBartaNo)
				end if 
				if isnull(strDobMuktiBartaNo) or isempty(strDobMuktiBartaNo) then
				
				else
				  strMuktiBartaMonth = month(strDobMuktiBartaNo)
				end if 
				
				if isnull(strDobMuktiBartaNo) or isempty(strDobMuktiBartaNo) then
				
				else
				  strMuktiBartaYear = year(strDobMuktiBartaNo)
				end if 
			
			 strGazetteNo = arr_QuataFF(12, 0) 
			 strDateGazetteNo = arr_QuataFF(13, 0) 
				if isnull(strDateGazetteNo) or isempty(strDateGazetteNo) then
				
				else
				  strGazeteDay = DAY(strDateGazetteNo)
				end if 
				if isnull(strDateGazetteNo) or isempty(strDateGazetteNo) then
				
				else
				  strGazeteMonth = month(strDateGazetteNo)
				end if 
				
				if isnull(strDateGazetteNo) or isempty(strDateGazetteNo) then
				
				else
				  strGazeteYear = year(strDateGazetteNo)
				end if 
			End If  
		  
		  
		  
		   End IF
		   strTribal = arr_Quata(1,0)
		   If IsNull(strTribal) or Isempty(strTribal) or strTribal = 0 Then 
		   strTribal = 0	
		   Tribal = "No"	   
		   Else 
		   strTribal = 1
		   Tribal = "Yes"
		   End IF
  
		   strDisableDetails = arr_Quata(2,0)

'		   If IsNull(strDisableDetails) or Isempty(strDisableDetails)  Then 
'		   strDisable = 0	
'		   strDisableDetails = ""	
'		   Disable = "No"   
'		   Else 
'		   strDisable = 1
'		   Disable = "Yes"
'		   End IF

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



    SQL = ""
	SQL = "SELECT [id],[personalid],[LicenceNo],[IssueAuthority],[DateOfIssue],[Validity],[VehicleType],[DrivingType],[YearsOfDriving],[LastCompnanyName]  FROM [dbo].[DrivingLicence] WHERE   PersonalId=" & intTrakingNo 
	
	ValuePrint SQL,"SQL"
	arrLicence = objERS.RetrieveData(SQL, strErr)
	ErrorMessage "283", errMsg, 0
	


	If  arrLicence(0,0)  <> "Nothing"  Then 
		strLicenceNo = arrLicence(2,0)
		strIssueAuthority = arrLicence(3,0) 
		strDateOfissue =  MonthName(month(arrLicence(4,0))) &" "&day(arrLicence(4,0) )&", "&year(arrLicence(4,0))   
		 
		strValidity = MonthName(month(arrLicence(5,0))) &" "&day(arrLicence(5,0) )&", "&year(arrLicence(5,0))    
		strVehicleType = arrLicence(6,0)
		strDrivingType = arrLicence(7,0)
		strYears = arrLicence(8,0)
		strCompany = arrLicence(9,0)
    End if 
	
	







    SQLTrade = ""
	SQLTrade = "SELECT [personalid],[id],[certificateName],[instituteName],[passingYear],[result]  FROM [dbo].[TradeCertificate] WHERE   PersonalId=" & intTrakingNo 
	ValuePrint SQLTrade,"SQLTrade"
	arrTrade = objERS.RetrieveData(SQLTrade, strErr)
	ErrorMessage "283", errMsg, 0
	


	If  arrTrade(0,0)  <> "Nothing"  Then 
		strTradeID1 = arrTrade(1,0)
		strTradeCourseName1 = arrTrade(2,0) 
		strTradeInstituteName1 = arrTrade(3,0)
		strTradeYearName1 = arrTrade(4,0)
		if isnull(strTradeYearName1) or isempty(strTradeYearName1) then
        
		else
		  strTradeYearName1 = year(strTradeYearName1)
		end if 
		strTradeResult1 = arrTrade(5,0)
	    IsTrade = True
		
		if ubound(arrTrade, 2) > 0 Then 
		strTradeID2 = arrTrade(1,1)
		strTradeCourseName2 = arrTrade(2,1) 
		strTradeInstituteName2 = arrTrade(3,1)
		strTradeYearName2 = arrTrade(4,1)
		strTradeResult2 = arrTrade(5,1)
		if isnull(strTradeYearName2) or isempty(strTradeYearName2) then
        
		else
		  strTradeYearName2 = year(strTradeYearName2)
		end if 
			
		else
			strTradeID2 = -1
			strTradeCourseName2 = ""
			strTradeInstituteName2 = ""
			strTradeYearName2 = ""
			strTradeResult2 = ""
		end if 
		
	
		if ubound(arrTrade, 2) > 1 Then 
		strTradeID3 = arrTrade(1,2)
		strTradeCourseName3 = arrTrade(2,2) 
		strTradeInstituteName3 = arrTrade(3,2)
		strTradeYearName3 = arrTrade(4,2)
		strTradeResult3 = arrTrade(5,2)
		if isnull(strTradeYearName3) or isempty(strTradeYearName3) then
        
		else
		  strTradeYearName3 = year(strTradeYearName3)
		end if 
			
		else
			strTradeID3 = -1
			strTradeCourseName3 = ""
			strTradeInstituteName3 = ""
			strTradeYearName3 = ""
			strTradeResult3 = ""
		end if 	
	
	
	Else 
	    IsTrade = False
		strTradeID1 = -1
		strTradeCourseName1 = ""
		strTradeInstituteName1 = ""
		strTradeYearName1 = ""
		strTradeResult1 = ""
	
		strTradeID2 = -1
		strTradeCourseName2 = ""
		strTradeInstituteName2 = ""
		strTradeYearName2 = ""
		strTradeResult2 = ""


		strTradeID3 = -1
		strTradeCourseName3 = ""
		strTradeInstituteName3 = ""
		strTradeYearName3 = ""
		strTradeResult3 = ""

	
	
	
	End IF 



SQLExp = ""
SQLExp = "SELECT [ID] ,[AUTO],[COMPANY],[EXP_POST],[DUTY],[CLOCATION],[EFROM],[ETO] FROM [dbo].[EXP] WHERE   [ID]=" & intTrakingNo 
	ValuePrint SQLExp,"SQLExp"
	arrExp = objERS.RetrieveData(SQLExp, strErr)
	ErrorMessage "283", errMsg, 0
	


	If  arrExp(0,0)  <> "Nothing"  Then 
		strExpID1 = arrExp(1,0)
		strCompanyName1 = arrExp(2,0) 
		expFrom1 = arrExp(6, 0) 
		if isnull(expFrom1) or isempty(expFrom1) then
        
		else
		  expFromMonth1 = month(expFrom1)
		end if 

		if isnull(expFrom1) or isempty(expFrom1) then
        
		else
		  expFromYear1 = year(expFrom1)
		end if 

		expTo1 = arrExp(7, 0) 
		if isnull(expTo1) or isempty(expTo1) then
        
		else
		  expToMonth1 = month(expTo1)
		end if 

		if isnull(expTo1) or isempty(expTo1) then
        
		else
		  expToYear1 = year(expTo1)
		end if 

		strDuty1 = arrExp(4,0)
		strNameofPosition1 = arrExp(3,0)
	    IsExp = True
		
		if ubound(arrExp, 2) > 0 Then 
		strExpID2 = arrExp(1,1)
		strCompanyName2 = arrExp(2,1) 
		expFrom2 = arrExp(6, 1) 
		if isnull(expFrom2) or isempty(expFrom2) then
        
		else
		  expFromMonth2 = month(expFrom2)
		end if 

		if isnull(expFrom2) or isempty(expFrom2) then
        
		else
		  expFromYear2 = year(expFrom2)
		end if 

		expTo2 = arrExp(7, 1) 
		if isnull(expTo2) or isempty(expTo2) then
        
		else
		  expToMonth2 = month(expTo2)
		end if 

		if isnull(expTo2) or isempty(expTo2) then
        
		else
		  expToYear2 = year(expTo2)
		end if 

		strDuty2 = arrExp(4,1)
		strNameofPosition2 = arrExp(3,1)
		else
			strExpID2 = -1
			strNameofPosition2 = ""
			strDuty2 = ""
			expToYear2 = ""
			expToMonth2 = ""
			expFromYear2 = ""
			expFromMonth2 = ""

		end if 
		
	
		if ubound(arrExp, 2) > 1 Then 
		strExpID3 = arrExp(1,2)
		strCompanyName3 = arrExp(2,2) 
		expFrom3 = arrExp(6, 2) 
		if isnull(expFrom3) or isempty(expFrom3) then
        
		else
		  expFromMonth3 = month(expFrom3)
		end if 

		if isnull(expFrom3) or isempty(expFrom3) then
        
		else
		  expFromYear3 = year(expFrom3)
		end if 

		expTo3 = arrExp(7, 2) 
		if isnull(expTo3) or isempty(expTo3) then
        
		else
		  expToMonth3 = month(expTo3)
		end if 

		if isnull(expTo3) or isempty(expTo3) then
        
		else
		  expToYear3 = year(expTo3)
		end if 

		strDuty3 = arrExp(4,2)
		strNameofPosition3 = arrExp(3,2)
		else
			strExpID3 = -1
			strNameofPosition3 = ""
			strDuty3 = ""
			expToYear3 = ""
			expToMonth3 = ""
			expFromYear3 = ""
			expFromMonth3 = ""
		end if 	
	
	
	Else 
	    IsExp = False
			strExpID1 = -1
			strNameofPosition1 = ""
			strDuty1 = ""
			expToYear1 = ""
			expToMonth1 = ""
			expFromYear1 = ""
			expFromMonth1 = ""

			strExpID2 = -1
			strNameofPosition2 = ""
			strDuty2 = ""
			expToYear2 = ""
			expToMonth2 = ""
			expFromYear2 = ""
			expFromMonth2 = ""


			strExpID3 = -1
			strNameofPosition3 = ""
			strDuty3 = ""
			expToYear3 = ""
			expToMonth3 = ""
			expFromYear3 = ""
			expFromMonth3 = ""

	End IF 


%>
