<%
err.clear 
SQLPersonal = "SELECT (FirstName + ' ' + LastName) AS Name, FatherName, MotherName, DateOfBirth, MaritalStatus, Nationality, Email, ContactPhone, CellPhone, NationalId, BloodGroup, Gender, Religion, ContactAddress, PermanentAddress, Declaration, Declaration, Reading, Writing, Speaking, Photo, Experience, ProfessionalQualification, AcademicDistinctions, ExtraCurricularActivities, ComputerSkills, OtherDisclose, HomeDistrict, photourl, jobid, FathersProfession,MothersProfession,bdjobsphoto,bdjobsid,HomeDistrict2,pass,ProfessionalCertification, [ThanaForPrmDist],[signature],[signatureurl], [Training] FROM Personal WHERE id=" & intTrakingNo
'Response.Write(SQLPersonal)
ValuePrint SQLPersonal, "SQLPersonal"

arr_Personal = objERS.RetrieveData(SQLPersonal, errMsg)
ErrorMessage "126", errMsg, 0

sql = ""
sql = "select rollno from roll where personalid ="&intTrakingNo
ValuePrint sql, "sql"

arr = objERS.RetrieveData(sql, errMsg) 
ErrorMessage "153", errMsg, 0

SQL_ID = "" 
SQL_ID = "select id from jobpos where  personalid = " & intTrakingNo 
ValuePrint SQL_ID, "SQL_ID"

'Response.Write("<br>"&SQL_ID)
'Response.End()
' Response.Write("<br>jobid:"&jobid)
arr_Tracking = objERS.RetrieveData(SQL_ID, errMsg)
ErrorMessage "163", errMsg, 0	

if arr_Tracking(0, 0) <> "Nothing" then
	TrackNoNEW = arr_Tracking(0, 0)
Else
	'Response.Write("<br>"&SQL_ID)
 
end if


admin = request.Form("admin")

If admin = "true" then 
	if arr(0, 0) <> "Nothing" then 
	  for rl = 0 to ubound(arr,2)
	  	rollno = "Roll NO : "&arr(0, rl)
	  	intRollNumber = arr(0, rl)
	  next
	else
	  rollno = " Roll not found ! "
	end if 
end if

'Response.Write("SQLPersonal: " & SQLPersonal)
'Response.End()
If arr_Personal(0, 0) <> "Nothing" Then
	' Variable Initialization.
	strName = arr_Personal(0, 0)
	strName = GiveReplacedString(strName)
	strName = Replace(strName,"~"," ")
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
	strContactAddress = Replace(strContactAddress,"~",", ")
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
	strTraining = arr_Personal(40, 0)
	strAcademicDistinctions = arr_Personal(23, 0)
	strExtraCurricularActivities = arr_Personal(24, 0)
	strComputerSkills = arr_Personal(25, 0)
	strOtherDisclose = arr_Personal(26, 0)
	strHomeDistrict = arr_Personal(27, 0)
	
	imgSrc = arr_Personal(28, 0)&"?"&time&rnd 
	'response.Write(imgSrc)
	'If IsPhoto = True Then 
	  'strPhotoName = "" 
	'End IF

	IsBdjPhoto = arr_Personal(32, 0)
	BdjobsId = arr_Personal(33, 0)
	strHomeDistrict2 = arr_Personal(34, 0)
	strPasswordDB = arr_Personal(35, 0)
	strProfessionalCertification = arr_Personal(36, 0)
	strThanaPrmDist = arr_Personal(37, 0)
	

If strThanaPrmDist <> "" Then

	resumeServer="MyBdjobsView" ' for thana from mybdjobs
	
	sqlForThana = "SELECT L_ID, L_Name FROM Locations WHERE L_ID = "&strThanaPrmDist
	err.clear 
	arrSqlForThana = objResumeServer.RetrieveData(sqlForThana, errMsg)
	
	strThanaName = arrSqlForThana(1,0)

End If


	strSignatureSrc = arr_Personal(39, 0) '&"?"&time&rnd 
	
	  if strProfessionalCertification <> "" then
		strProfessionalCertification = replace(strProfessionalCertification,"Others@@@","")
	  end if 
	  
	  	
      %>
          <!-- photo view in page ---  
               parameter list  >  IsPhoto , IsBdjPhoto , BdjobsId, strPhotoFolder 
               this variable should be used in earliar before include the page 
               strPhotoFolder > came from system.asp  
          -->
          <!--#include virtual = '/applications/common/photo_upload/photo_view.asp' -->  
       
      <%					
		    jobid = arr_Personal(29, 0)
			
		    FathersProfession = arr_Personal(30, 0)
		    MothersProfession = arr_Personal(31, 0)
		  

		    sql = ""
			sql = "select jj.JobTitle,j.id,jj.jobid from JobPosting jj inner join jobpos j on jj.jobid = j.jobid  where j.personalid ="&intTrakingNo
			arrJobTitle = objERS.RetrieveData(sql, errMsg) 
			ErrorMessage "153", errMsg, 0

            if arrJobTitle(0, 0) <> "Nothing" Then 
			  position = "" 
			  For i = 0 to ubound(arrJobTitle, 2)
			    jobid = arrJobTitle(2 , i )
				 TrackNoNEW = arrJobTitle(1 , i )
				 
				 if strPhotoFolder = "bankjobs" then
					if jobid = 1 then 
					  TrackNoNEW = TrackNoNEW + 100000
					elseif jobid = 2 then 
					  TrackNoNEW = TrackNoNEW + 200000
					elseif jobid = 3 then 
					  TrackNoNEW = TrackNoNEW + 300000
					end if 
				 end if 
				 
			    position = position & arrJobTitle(0 , i ) & "  ( Job Reference ID : "& TrackNoNEW & " ) <br>"
				'TrackNoNEW = arrJobTitle(3 , i ) 
			  Next			 
			end if 	
	
	
	
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

%>