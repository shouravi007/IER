<%
	Dim arrPersonal, arrEducation, arrProEducation, arrTraining, arrExperience, arrComputerSkill
	
	'SQL1 = "SELECT * FROM PERSONAL WHERE ID = " & ID
	'				0		1		2	  3		4	  5		6		7		 8		   9	  10			11			12		13	  14	 15		  16	  17
'18		19		20	   21	 22		23	 24	   25		26			27		   28			29  			30			  31       			32			33 			
' 34			35			    36			37			38			39			40			41				42
	SQL1 = "SELECT (FirstName + ' ' + LastName) AS Name, FatherName, MotherName, DateOfBirth, MaritalStatus, Nationality, Email, ContactPhone, CellPhone, NationalId, BloodGroup, Gender, Religion, ContactAddress, PermanentAddress, Declaration, Declaration, Reading, Writing, Speaking, Photo, Experience, ProfessionalQualification, AcademicDistinctions, ExtraCurricularActivities, ComputerSkills, OtherDisclose, HomeDistrict,photourl,jobid,postedOn,updatedOn,cellphone,cellphone, FathersProfession, MothersProfession,HomeDistrict2,bdjobsphoto,bdjobsid,ProfessionalCertification,[ThanaForPrmDist], [Training],SpouseName,SpouseProfession   FROM Personal WHERE id = " & intTrackingNo

'Response.Write(SQL1)

    SQLRef = "SELECT id, Name, Position, Address, Phone, Email FROM Reference WHERE PersonalId=" & intTrackingNo


    SQLAcademic = "SELECT id, DegreeName, Institute, Subject, PassingYear, EducationId, University, Result, ResultPoint, UniversityType, PassingYear,subject2,subject_others2,[AcademicDistrict],[subject2]  FROM Academic WHERE PersonalId=" & intTrackingNo &" ORDER BY EducationId DESC, id ASC" 'ResultPublishDate

  
	arr_Personal = objERS.RetrieveData(SQL1,errLog)
	ErrorMessage "62", errLog , 0
		
	arrAcademic = objERS.RetrieveData(SQLAcademic,errLog)
	ErrorMessage "64", errLog, 0	
	
	arrReference = objERS.RetrieveData(SQLRef, errLog)
	ErrorMessage "67", errLog, 0



If arr_Personal(0, 0) <> "Nothing" Then
	' Variable Initialization.
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
	strBloodGroup = arr_Personal(10, 0)
	strGender = arr_Personal(11, 0)
	strReligion = arr_Personal(12, 0)
	strContactAddress = arr_Personal(13, 0)
	strContactAddress = GiveReplacedString(strContactAddress)
	strPermanentAddress = arr_Personal(14, 0)
	strPermanentAddress = GiveReplacedString(strPermanentAddress)
	IsDeclaration = arr_Personal(15, 0)
	strPreferredLocation = arr_Personal(16, 0)
	
	'arrPreferedLocation = Split(strPreferredLocation, ",")
'	strPreferedLocation1 = CStr(Trim(arrPreferedLocation(0)))
'	If UBound(arrPreferedLocation) >= 1 Then
'		strPreferedLocation2 = CStr(Trim(arrPreferedLocation(1)))
'	End If	
'	If UBound(arrPreferedLocation) >= 2 Then
'		strPreferedLocation3 = CStr(Trim(arrPreferedLocation(2)))
'	End If
	
	strReading = arr_Personal(17, 0)
	strWriting = arr_Personal(18, 0)
	strSpeaking = arr_Personal(19, 0)
	IsPhoto = arr_Personal(20, 0)
	
	strExperience = arr_Personal(21, 0)
	strProfessionalQualification = arr_Personal(22, 0)
	strAcademicDistinctions = arr_Personal(23, 0)
	strExtraCurricularActivities = arr_Personal(24, 0)
	strComputerSkills = arr_Personal(25, 0)
	strOtherDisclose = arr_Personal(26, 0)
	strHomeDistrict = arr_Personal(27, 0)
	strThanaPrmDist = arr_Personal(40, 0)
	
	strTraining = arr_Personal(41, 0)

	strSpouseName = arr_Personal(42, 0)
	strSpouseProfession = arr_Personal(43, 0)

	If strThanaPrmDist <> "" Then
	
		resumeServer="MyBdjobsView" ' for thana from mybdjobs
		
		sqlForThana = "SELECT L_ID, L_Name FROM Locations WHERE L_ID = "&strThanaPrmDist
		err.clear 
		arrSqlForThana = objResumeServer.RetrieveData(sqlForThana, errMsg)
		
		strThanaName = arrSqlForThana(1,0)
	
	End If
 	
	
	  'imgSrc = arr_Personal(28, 0) 


	  jobid = arr_Personal(29, 0)
	  postedOn = arr_Personal(30, 0)
	  updatedOn = arr_Personal(31, 0)
	  strCellPhone2 = arr_Personal(32, 0)  
	  ChangePosition = arr_Personal(33, 0)
	  FathersProfession = arr_Personal(34, 0)
	  MothersProfession = arr_Personal(35, 0)
	  strHomeDistrict2 = arr_Personal(36, 0)
	  IsBdjPhoto = arr_Personal(37, 0)
	  BdjobsId = arr_Personal(38, 0)
	  strProfessionalCertification = arr_Personal(39, 0)
	  'RESPONSE.Write(strProfessionalCertification)
	  if strProfessionalCertification <> "" then
	    strProfessionalCertification = replace(strProfessionalCertification,"Others@@@","")
	  end if 
	  
	  
	If IsNull(ChangePosition) or jobid = 8  Then
	 ChangePosition = ""
	End If

	If strPhotoName <> "" Then 
	 IsPhoto = "" 		
	End IF 	
	
	onlyPhotoSrc = arr_Personal(42, 0)		
	
					
      %>
          <!-- photo view in page ---  
               parameter list  >  IsPhoto , IsBdjPhoto , BdjobsId, onlyPhotoSrc, strPhotoFolder 
               this variable should be used in earliar before include the page 
               strPhotoFolder > came from system.asp  
          -->
          <!--  include virtual = '/applications/common/photo_upload/photo_view.asp' -->  
         <!--#include virtual = '/applications/common/photo_upload_ers/photo_view_ers_db.asp' -->
    
    
      <%		
		  
	
	  if jobid <> "" Then
		  sqlJobPosition = "SELECT [JobId] ,[JobTitle] FROM [JobPosting] where jobid="&jobid
		  arrSqlJobPosition = objERS.RetrieveData(sqlJobPosition, errLog)
		  ErrorMessage "67", errLog, 0
	  
		  position = arrSqlJobPosition(1,0)
	  end if

	'response.Write("**********************************************district"&strHomeDistrict)


		If strHomeDistrict <> "" Then
		
			resumeServer="MyBdjobsView" ' for thana from mybdjobs
			
			sqlForDistrict = "SELECT L_ID, L_Name FROM Locations WHERE L_ID = "&strHomeDistrict
			err.clear 
			arrSqlForDistrict = objResumeServer.RetrieveData(sqlForDistrict, errMsg)
			
			dist = arrSqlForDistrict(1,0)
		
		End If
		
		
			
		If strHomeDistrict2 <> "" Then
		
			resumeServer="MyBdjobsView" ' for thana from mybdjobs
			
			sqlForDistrict2 = "SELECT L_ID, L_Name FROM Locations WHERE L_ID = "&strHomeDistrict2
			err.clear 
			arrSqlForDistrict2 = objResumeServer.RetrieveData(sqlForDistrict2, errMsg)
			
			dist2 = arrSqlForDistrict2(1,0)
		
		End If

	IsPersonal = True
End If	



If arrAcademic(0, 0) <> "Nothing" Then
	AcademicUB = UBound(arrAcademic, 2)
	ReDim arrAcademicId(AcademicUB)
	ReDim arrDegreeName(AcademicUB)
	ReDim arrInstitute(AcademicUB)
	ReDim arrAcademicDist(AcademicUB)
	ReDim arrSubject(AcademicUB)
	ReDim arrPassingYear(AcademicUB)
	ReDim arrEducationId(AcademicUB)
	ReDim arrUniversity(AcademicUB)
	ReDim arrResult(AcademicUB)
	ReDim arrResultPoint(AcademicUB)
	ReDim arrUniversityType(AcademicUB)
	'ReDim arrResultPublishYear(AcademicUB)
	
	For i=0 To AcademicUB
		arrAcademicId(i) = arrAcademic(0, i)
		arrDegreeName(i) = arrAcademic(1, i)
		arrInstitute(i) = arrAcademic(2, i)
		arrAcademicDist(i) =  arrAcademic(13, i)
		arrSubject(i) = arrAcademic(3, i)
		arrSubject2(i) = arrAcademic(11, i)

		arrPassingYear(i) = arrAcademic(4, i)
		arrEducationId(i) = arrAcademic(5, i)
		arrUniversity(i) = arrAcademic(6, i)
		
		arrResult(i) = arrAcademic(7, i)
		arrResultPoint(i) = arrAcademic(8, i)
		arrUniversityType(i) = arrAcademic(9, i)
		'arrResultPublishYear(i) = arrAcademic(13, i)
	Next
	
	IsAcademic = True
End If

'****** reference***************

intUBRef = UBound(arrReference, 2) 
		
If arrReference(0, 0) <> "Nothing" Then
	'intRefID = -1
	'intRefID2 = -1
	
	intRefID = arrReference(0, 0)
	strRefName = arrReference(1, 0)
	strRefPos = arrReference(2, 0)
	strRefAdd = arrReference(3, 0)
	strRefPhone = arrReference(4, 0)
	'strRefHomePhone = arrReference(5, 0)
	strRefEmail = arrReference(5, 0)

	If intUBRef >= 1 Then
		intRefID2 = arrReference(0, 1)
		strRefName2 = arrReference(1, 1)
		strRefPos2 = arrReference(2, 1)
		strRefAdd2 = arrReference(3, 1)
		strRefPhone2 = arrReference(4, 1)
		'strRefHomePhone2 = arrReference(5, 1)
		strRefEmail2 = arrReference(5, 1)
	Else
		'intRefID2 = -1
		strRefName2 = ""
		strRefPos2 = ""
		strRefAdd2 = ""
		strRefPhone2 = ""
		strRefHomePhone2 = ""
		strRefEmail2 = ""
	End If
Else
	' Variable Initialization 4 Reference
	'intRefID = -1
	strRefName = ""
	strRefPos = ""
	strRefAdd = ""
	strRefPhone = ""
	strRefCell = ""
	strRefEmail = ""
	
	'intRefID2 = -1
	strRefName2 = ""
	strRefPos2 = ""
	strRefAdd2 = ""
	strRefPhone2 = ""
	strRefCell2 = ""
	strRefEmail2 = ""
End If
	


%>