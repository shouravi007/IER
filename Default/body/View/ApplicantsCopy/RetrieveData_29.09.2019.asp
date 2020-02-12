<%
IsAcademic = False
IsPersonal = False
IsPhoto = False
Admin = False 
Search = False
intTrakingNo = trim(request.Form("TrackNo"))
intAppId = trim(request.Form("appId"))
jobidF= trim(request.Form("jobid"))

'response.Write("r: "& intAppId & " j: "& jobidF &" t: " & intTrakingNo)

sql = ""
	
if intTrakingNo <> "" Then
	
	sql = " select jobid, id, personalid from jobpos where personalid = "&intTrakingNo	
	'response.Write(sql)
	err.clear
	arrJob = objERS.RetrieveData(sql,errMsg)

	if arrJob(0, 0) <> "Nothing" then
		total = UBOUND(arrJob,2)
		
		'response.Write(total)	
		if total >0 then
		
			FOR K = 0 TO UBOUND(arrJob,2)		
			
				jobidDB = arrJob(0,K)
				Ref_NoDB = arrJob(1,K)
				
				if cstr(intAppId) = cstr(Ref_NoDB) and cstr(jobidF) = cstr(jobidDB) Then	
					jobid = jobidDB	
					Ref_No = Ref_NoDB								
				end if
				
			NEXT
		else
			jobidDB = arrJob(0,0)
			Ref_NoDB = arrJob(1,0)
			
			jobid = jobidDB	
			Ref_No = Ref_NoDB								
		
		end if
		
		'RESPONSE.Write(jobid & ":::"& Ref_No)								
		
		sqlN = ""
		sqlN = "select jobtitle from jobposting where jobid = "&jobid 
		arrPosition = objERS.RetrieveData(sqlN, errMsg)
		
		if arrPosition(0,0) <> "Nothing" then
			Post_Name = arrPosition(0,0)
			'response.Write("el:"&Post_Name)	 
		end if 

		
	end if
end if

'RESPONSE.Write(jobid & ":::"& Ref_No)

'RESPONSE.End()
err.clear

SQLCertificate = "SELECT PhotoURL,id,SignatureURL FROM Personal WHERE id=" & intTrakingNo

err.clear
arr_Certificate = objERS.RetrieveData(SQLCertificate, errMsg)
err.clear
'response.Write(errMsg & "r :"& arr_Certificate(2, 0))
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

'response.End()	
User_ID = intTrakingNo
		
SQLPersonal = "SELECT  (firstname+' '+lastname), FatherName, MotherName, DateOfBirth, MaritalStatus, Nationality, Email, ContactPhone , CellPhone , NationalId, [signatureurl], Gender, [Religion] [Experience], ContactAddress, PermanentAddress, Declaration, [HomeDistrict], [HomeDistrict2],[postedon],[updatedon],Photo,[72_after_post],[ComputerSkills],[id],[BdjobsID],[BdjobsPhoto],[PhotoURL],ThanaForPrmDist,signature,experience FROM Personal WHERE id =" & intTrakingNo

err.clear
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
	
	If EMail = "" Then
		EMail = "--"
	End If
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

			if SSC_Examination = "O Level" then
				SSC_Division_Class = "--"
				SSC_Out_of = 5
			end if
			
			if HSC_Examination = "A Level" then
				HSC_Division_Class = "--"
				HSC_Out_of = 5
			end if
			
			if SSC_Division_Class = 0 Then
				SSC_Division_Class = "--"
			end if
				
			if HSC_Division_Class = 0 Then 
				HSC_Division_Class = "--"
			end if
			
			Graduation_Examination = arrAcademic(1, 0)
			Graduation_Subject = arrAcademic(3, 0)
			Graduation_Year_of_passing = arrAcademic(4, 0)
			Graduation_University = arrAcademic(6, 0)
			Graduation_Division_Class = arrAcademic(7, 0)
			Graduation_GPA_CGPA = arrAcademic(8, 0)
			Graduation_Out_of = arrAcademic(10, 0)

			
			if Graduation_Division_Class = 0 Then
				Graduation_Division_Class = "--"
			elseif Graduation_Division_Class = 15 Then
				Graduation_Division_Class = "First Division"
				Graduation_GPA_CGPA = "--"
			elseif Graduation_Division_Class = 14 Then 
				Graduation_Division_Class = "Second Division"
				Graduation_GPA_CGPA = "--"
			end if

			if Graduation_GPA_CGPA = "" or Graduation_GPA_CGPA = 0 Then
				Graduation_GPA_CGPA = "--"
			end if
			
			if Graduation_Out_of = "-1" or Graduation_Out_of = "" or Graduation_Out_of = 0 Then
				Graduation_Out_of = "--"
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

			if SSC_Examination = "O Level" then
				SSC_Division_Class = "--"
				SSC_Out_of = 5
			end if
			
			if HSC_Examination = "A Level" then
				HSC_Division_Class = "--"
				HSC_Out_of = 5
			end if

			if SSC_Division_Class = 0 Then
				SSC_Division_Class = "--"
			end if
				
			if HSC_Division_Class = 0 Then 
				HSC_Division_Class = "--"
			end if
			
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

			if SSC_Division_Class = 0 Then
				SSC_Division_Class = "--"
			end if
				
			if HSC_Division_Class = 0 Then 
				HSC_Division_Class = "--"
			end if
			
			if Graduation_Division_Class = 0 Then
				Graduation_Division_Class = "--"
			elseif Graduation_Division_Class = 15 Then
				Graduation_Division_Class = "First Division"
				Graduation_GPA_CGPA = "--"
			elseif Graduation_Division_Class = 14 Then 
				Graduation_Division_Class = "Second Division"
				Graduation_GPA_CGPA = "--"
			end if
			
			if PostGraduation_Division_Class = 0 Then
				PostGraduation_Division_Class = "--"
			elseif PostGraduation_Division_Class = 15 Then
				PostGraduation_Division_Class = "First Division"
				PostGraduation_GPA_CGPA = "--"
			elseif PostGraduation_Division_Class = 14 Then 
				PostGraduation_Division_Class = "Second Division"
				PostGraduation_GPA_CGPA = "--"
			end if
			
			if Graduation_GPA_CGPA = "" or Graduation_GPA_CGPA = 0 Then
				Graduation_GPA_CGPA = "--"
			end if

			if PostGraduation_GPA_CGPA = "" or PostGraduation_GPA_CGPA = 0 Then
				PostGraduation_GPA_CGPA = "--"
			end if
			
			if Graduation_Out_of = "-1" or Graduation_Out_of = "" or Graduation_Out_of = 0 Then
				Graduation_Out_of = "--"
			end if			
			
			if PostGraduation_Out_of = "-1" or PostGraduation_Out_of = "" or PostGraduation_Out_of = 0 Then
				PostGraduation_Out_of = "--"
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
	
If arr_Quata(0, 0) <> "Nothing" Then	
	   
	strFredomFighter = arr_Quata(0,0)
	strTribal = arr_Quata(1,0)
	strDisableDetails = arr_Quata(2,0)
	strAnserVdpQuota = arr_Quata(3,0)		
	strOrphan = arr_Quata(4,0) 

	if strFredomFighter <> "" Then
				
		if strFredomFighter = "C" Then 
			FF_GC = "Yes(Child)"
		elseif strFredomFighter = "GC" Then 
			FF_GC = "Yes(Grand Child)"
		elseif strFredomFighter = "" or strFredomFighter = 0 Then 
			FF_GC = "No"
		end if
		
		FreedomFighterStatus = FF_GC
	else
		FreedomFighterStatus = "No"
	end if	     
		   
   if strTribal = "True" Then
		Tribal = "Yes"
   else
		Tribal = "No"	
   end if
	
	if strDisableDetails = "1" Then
		PhysicallyChallenged = "Yes"
	else
		PhysicallyChallenged = "No"
	end if		
		
	if strAnserVdpQuota = "True" Then
		AnsarVdp = "Yes"
	else
		AnsarVdp = "No"
	end if	
	
	if strOrphan = "True" then
		Orphan = "Yes"
	else
		Orphan = "No"
	end if		
	
Else 
	FreedomFighterStatus = "No"	
	AnsarVdp = "No"
	Orphan = "No"
	PhysicallyChallenged = "No"
	Tribal = "No"
End IF
	
	
'	if FF = 1 Then
'		FreedomFighterStatus = "Yes"
'	else
'		FreedomFighterStatus = "No"
'	end if
	
    'FreedomFighterStatus = 	FF
	
	
	'PhysicallyChallenged = Disable
	
	if strExp = "" then
		Experience_If_any = "N/A"
	else
		Experience_If_any = strExp
	
	end if
		
	ApplicantsSignature = imgSrc2 
		
	WHMDSOisyourID = Ref_No
			

%>
