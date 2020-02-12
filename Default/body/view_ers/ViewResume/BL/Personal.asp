<%
err.clear 
SQLPersonal = "SELECT (FirstName + ' ' + LastName) AS Name, FatherName, MotherName, DateOfBirth, MaritalStatus, Nationality, Email, ContactPhone, CellPhone, NationalId, BloodGroup, Gender, Religion, ContactAddress, PermanentAddress, Declaration, Declaration, Reading, Writing, Speaking, Photo, Experience, ProfessionalQualification, AcademicDistinctions, ExtraCurricularActivities, ComputerSkills, OtherDisclose, HomeDistrict, photourl, jobid, FathersProfession,MothersProfession,bdjobsphoto,bdjobsid,HomeDistrict2,pass,ProfessionalCertification, [ThanaForPrmDist],[signature],[signatureurl], [Training] FROM Personal WHERE id=" & intTrakingNo
Response.Write(SQLPersonal)
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
	
%>	
<%
If strThanaPrmDist <> "" Then

	resumeServer="MyBdjobsView" ' for thana from mybdjobs
	
	sqlForThana = "SELECT L_ID, L_Name FROM Locations WHERE L_ID = "&strThanaPrmDist
	err.clear 
	arrSqlForThana = objResumeServer.RetrieveData(sqlForThana, errMsg)
	
	strThanaName = arrSqlForThana(1,0)

End If
%>  
<%	
	strSignatureSrc = arr_Personal(39, 0)&"?"&time&rnd 
	
	  if strProfessionalCertification <> "" then
		strProfessionalCertification = replace(strProfessionalCertification,"Others@@@","")
	  end if 
	  
	  	
'If IsPhoto = True Then 
'
'Else 
'  	If IsBdjPhoto = True then  
'		intErsId = 17 
'		UserId = BdjobsId  'arrPersonal(3,i)
'		secPhoto = 16030 '   10025
'		
'		strSqlPhoto = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secPhoto 
'		arrDataPhoto = objResumeServer.RetrieveData(strSqlPhoto,strErr)
'		
'		if arrDataPhoto(0, 0) <> "Nothing" Then
'		' response.Write(ubound(arrDataPhoto, 2))
'			if ubound(arrDataPhoto, 2) > 0 then 
'			
'				if isnull(arrDataPhoto(0,1)) or isempty(arrDataPhoto(0,1)) or arrDataPhoto(0,1) = "" then 
'					
'					imgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"
%>
					 <!--<script>
                        alert("Sorry you have no photo in bdjobs account. so please upload a photo in bdjobs account. otherwise your application will be rejected.")
                     </script>-->
				 
<%
'				else
'				
'					imgSrc =  "http://my.bdjobs.com/photos/"&arrDataPhoto(0,1) &".jpg"	
'				
'				end if
'			
'			else
'			
'			'imgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"
'			end if 
'			
'		else
'	        'imgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"
'		
'		end if 					
'
'	 else
'		imgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"
'	 
'	 end if
'
'End If 
					
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
				if jobid = 1 then 
				  TrackNoNEW = TrackNoNEW + 100000
				elseif jobid = 2 then 
				  TrackNoNEW = TrackNoNEW + 200000
				elseif jobid = 3 then 
				  TrackNoNEW = TrackNoNEW + 300000
				end if 
				 
			    position = position & arrJobTitle(0 , i ) & "  ( Job Reference ID : "& TrackNoNEW & " ) <br>"
				'TrackNoNEW = arrJobTitle(3 , i ) 
			  Next			 
			end if 	
	
	
	
	
	
	If strHomeDistrict = "1" Then
		dist = "Brahmanbaria"
	ElseIf strHomeDistrict = "2" Then
		dist = "Bagerhat"
	ElseIf strHomeDistrict = "3" Then
		dist = "Bandarban"
	ElseIf strHomeDistrict = "4" Then
		dist = "Barishal"
	ElseIf strHomeDistrict = "5" Then
		dist = "Bhola"
	ElseIf strHomeDistrict = "6" Then
		dist = "Bogura"
	ElseIf strHomeDistrict = "7" Then
		dist = "Borguna"
	ElseIf strHomeDistrict = "8" Then
		dist = "Chandpur"
	ElseIf strHomeDistrict = "9" Then
		dist = "Chapainawabganj"
	ElseIf strHomeDistrict = "10" Then
		dist = "Chattogram"
	ElseIf strHomeDistrict = "11" Then
		dist = "Chuadanga"
	ElseIf strHomeDistrict = "12" Then
		dist = "Cumilla"
	ElseIf strHomeDistrict = "13" Then
		dist = "Cox's Bazar"
	ElseIf strHomeDistrict = "14" Then
		dist = "Dhaka"
	ElseIf strHomeDistrict = "15" Then
		dist = "Dinajpur"
	ElseIf strHomeDistrict = "16" Then
		dist = "Faridpur"
	ElseIf strHomeDistrict = "17" Then
		dist = "Feni"
	ElseIf strHomeDistrict = "18" Then
		dist = "Gaibandha"
	ElseIf strHomeDistrict = "19" Then
		dist = "Gazipur"
	ElseIf strHomeDistrict = "20" Then
		dist = "Gopalgonj"
	ElseIf strHomeDistrict = "21" Then
		dist = "Hobigonj"
	ElseIf strHomeDistrict = "22" Then
		dist = "Jamalpur"
	ElseIf strHomeDistrict = "23" Then
		dist = "Jashore"
	ElseIf strHomeDistrict = "24" Then
		dist = "Jhalokathi"
	ElseIf strHomeDistrict = "25" Then
		dist = "Jhenaidah"
	ElseIf strHomeDistrict = "26" Then
		dist = "Joypurhat"
	ElseIf strHomeDistrict = "27" Then
		dist = "Khagrachari"
	ElseIf strHomeDistrict = "28" Then
		dist = "Khulna"
	ElseIf strHomeDistrict = "29" Then
		dist = "Kishorgonj"
	ElseIf strHomeDistrict = "30" Then
		dist = "Kurigram"
	ElseIf strHomeDistrict = "31" Then
		dist = "Kushtia"
	ElseIf strHomeDistrict = "32" Then
		dist = "Lalmonirhat"
	ElseIf strHomeDistrict = "33" Then
		dist = "Laxmipur"
	ElseIf strHomeDistrict = "34" Then
		dist = "Madaripur"
	ElseIf strHomeDistrict = "35" Then
		dist = "Magura"
	ElseIf strHomeDistrict = "36" Then
		dist = "Manikgonj"
	ElseIf strHomeDistrict = "37" Then
		dist = "Meherpur"
	ElseIf strHomeDistrict = "38" Then
		dist = "MoulaviBazar"
	ElseIf strHomeDistrict = "39" Then
		dist = "Munshigonj"
	ElseIf strHomeDistrict = "40" Then
		dist = "Mymensingh"
	ElseIf strHomeDistrict = "41" Then
		dist = "Naogaon"
	ElseIf strHomeDistrict = "42" Then
		dist = "Narail"
	ElseIf strHomeDistrict = "43" Then
		dist = "Narayangonj"
	ElseIf strHomeDistrict = "44" Then
		dist = "Narshingdi"
	ElseIf strHomeDistrict = "45" Then
		dist = "Natore"
	ElseIf strHomeDistrict = "46" Then
		dist = "Netrokona"
	ElseIf strHomeDistrict = "47" Then
		dist = "Nilphamari"
	ElseIf strHomeDistrict = "48" Then
		dist = "Noakhali"
	ElseIf strHomeDistrict = "49" Then
		dist = "Pabna"
	ElseIf strHomeDistrict = "50" Then
		dist = "Panchagahr"
	ElseIf strHomeDistrict = "51" Then
		dist = "Patuakhali"
	ElseIf strHomeDistrict = "52" Then
		dist = "Pirojpur"
	ElseIf strHomeDistrict = "53" Then
		dist = "Rajbari"
	ElseIf strHomeDistrict = "54" Then
		dist = "Rajshahi"
	ElseIf strHomeDistrict = "55" Then
		dist = "Rangamati"
	ElseIf strHomeDistrict = "56" Then
		dist = "Rangpur"
	ElseIf strHomeDistrict = "57" Then
		dist = "Satkhira"
	ElseIf strHomeDistrict = "58" Then
		dist = "Shariatpur"
	ElseIf strHomeDistrict = "59" Then
		dist = "Sherpur"
	ElseIf strHomeDistrict = "60" Then
		dist = "Sirajgonj"
	ElseIf strHomeDistrict = "61" Then
		dist = "Sunamgonj"
	ElseIf strHomeDistrict = "62" Then
		dist = "Sylhet"
	ElseIf strHomeDistrict = "63" Then
		dist = "Tangail"
	ElseIf strHomeDistrict = "64" Then
		dist = "Thakurgaon"
	End If	


	If strHomeDistrict2 = "1" Then
		dist2 = "Brahmanbaria"
	ElseIf strHomeDistrict2 = "2" Then
		dist2 = "Bagerhat"
	ElseIf strHomeDistrict2 = "3" Then
		dist2 = "Bandarban"
	ElseIf strHomeDistrict2 = "4" Then
		dist2 = "Barisal"
	ElseIf strHomeDistrict2 = "5" Then
		dist2 = "Bhola"
	ElseIf strHomeDistrict2 = "6" Then
		dist2 = "Bogra"
	ElseIf strHomeDistrict2 = "7" Then
		dist2 = "Borguna"
	ElseIf strHomeDistrict2 = "8" Then
		dist2 = "Chandpur"
	ElseIf strHomeDistrict2 = "9" Then
		dist2 = "Chapainawabganj"
	ElseIf strHomeDistrict2 = "10" Then
		dist2 = "Chattogram"
	ElseIf strHomeDistrict2 = "11" Then
		dist2 = "Chuadanga"
	ElseIf strHomeDistrict2 = "12" Then
		dist2 = "Cumilla"
	ElseIf strHomeDistrict2 = "13" Then
		dist2 = "Cox's Bazar"
	ElseIf strHomeDistrict2 = "14" Then
		dist2 = "Dhaka"
	ElseIf strHomeDistrict2 = "15" Then
		dist2 = "Dinajpur"
	ElseIf strHomeDistrict2 = "16" Then
		dist2 = "Faridpur"
	ElseIf strHomeDistrict2 = "17" Then
		dist2 = "Feni"
	ElseIf strHomeDistrict2 = "18" Then
		dist2 = "Gaibandha"
	ElseIf strHomeDistrict2 = "19" Then
		dist2 = "Gazipur"
	ElseIf strHomeDistrict2 = "20" Then
		dist2 = "Gopalgonj"
	ElseIf strHomeDistrict2 = "21" Then
		dist2 = "Hobigonj"
	ElseIf strHomeDistrict2 = "22" Then
		dist2 = "Jamalpur"
	ElseIf strHomeDistrict2 = "23" Then
		dist2 = "Jessore"
	ElseIf strHomeDistrict2 = "24" Then
		dist2 = "Jhalokathi"
	ElseIf strHomeDistrict2 = "25" Then
		dist2 = "Jhenaidah"
	ElseIf strHomeDistrict2 = "26" Then
		dist2 = "Joypurhat"
	ElseIf strHomeDistrict2 = "27" Then
		dist2 = "Khagrachari"
	ElseIf strHomeDistrict2 = "28" Then
		dist2 = "Khulna"
	ElseIf strHomeDistrict2 = "29" Then
		dist2 = "Kishorgonj"
	ElseIf strHomeDistrict2 = "30" Then
		dist2 = "Kurigram"
	ElseIf strHomeDistrict2 = "31" Then
		dist2 = "Kushtia"
	ElseIf strHomeDistrict2 = "32" Then
		dist2 = "Lalmonirhat"
	ElseIf strHomeDistrict2 = "33" Then
		dist2 = "Laxmipur"
	ElseIf strHomeDistrict2 = "34" Then
		dist2 = "Madaripur"
	ElseIf strHomeDistrict2 = "35" Then
		dist2 = "Magura"
	ElseIf strHomeDistrict2 = "36" Then
		dist2 = "Manikgonj"
	ElseIf strHomeDistrict2 = "37" Then
		dist2 = "Meherpur"
	ElseIf strHomeDistrict2 = "38" Then
		dist2 = "MoulaviBazar"
	ElseIf strHomeDistrict2 = "39" Then
		dist2 = "Munshigonj"
	ElseIf strHomeDistrict2 = "40" Then
		dist2 = "Mymensingh"
	ElseIf strHomeDistrict2 = "41" Then
		dist2 = "Naogaon"
	ElseIf strHomeDistrict2 = "42" Then
		dist2 = "Narail"
	ElseIf strHomeDistrict2 = "43" Then
		dist2 = "Narayangonj"
	ElseIf strHomeDistrict2 = "44" Then
		dist2 = "Narshingdi"
	ElseIf strHomeDistrict2 = "45" Then
		dist2 = "Natore"
	ElseIf strHomeDistrict2 = "46" Then
		dist2 = "Netrokona"
	ElseIf strHomeDistrict2 = "47" Then
		dist2 = "Nilphamari"
	ElseIf strHomeDistrict2 = "48" Then
		dist2 = "Noakhali"
	ElseIf strHomeDistrict2 = "49" Then
		dist2 = "Pabna"
	ElseIf strHomeDistrict2 = "50" Then
		dist2 = "Panchagahr"
	ElseIf strHomeDistrict2 = "51" Then
		dist2 = "Patuakhali"
	ElseIf strHomeDistrict2 = "52" Then
		dist2 = "Pirojpur"
	ElseIf strHomeDistrict2 = "53" Then
		dist2 = "Rajbari"
	ElseIf strHomeDistrict2 = "54" Then
		dist2 = "Rajshahi"
	ElseIf strHomeDistrict2 = "55" Then
		dist2 = "Rangamati"
	ElseIf strHomeDistrict2 = "56" Then
		dist2 = "Rangpur"
	ElseIf strHomeDistrict2 = "57" Then
		dist2 = "Satkhira"
	ElseIf strHomeDistrict2 = "58" Then
		dist2 = "Shariatpur"
	ElseIf strHomeDistrict2 = "59" Then
		dist2 = "Sherpur"
	ElseIf strHomeDistrict2 = "60" Then
		dist2 = "Sirajgonj"
	ElseIf strHomeDistrict2 = "61" Then
		dist2 = "Sunamgonj"
	ElseIf strHomeDistrict2 = "62" Then
		dist2 = "Sylhet"
	ElseIf strHomeDistrict2 = "63" Then
		dist2 = "Tangail"
	ElseIf strHomeDistrict2 = "64" Then
		dist2 = "Thakurgaon"
	End If	



	IsPersonal = True
End If	

%>