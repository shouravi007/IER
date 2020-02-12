<!--#include File = 'RetrieveHiddenValueNew.asp' -->
<!-- include virtual = '/applications/common/Edit/RetrieveHiddenValueNew.asp' -->

<div class="col-sm-12">
    <div class="edit-profile bg-style">
        <h1 class="post-name">Edit Form Personal Information </h1>
           <div class="wrapper">
			 <!--#include File = 'GeneralInformation.asp' -->
				<fieldset>
					<legend>Personal Information</legend>
<%
intTrackingNo = Request.Form("txtTrackingNo")
strPassword = Request.Form("txtPassword") 

If intTrackingNo = "" Then 
  Response.Redirect("?"&Encode("Location=Modal&FormAction=Login"))

Else
    
	If IsBlank = "" or isempty(IsBlank) or isnull(IsBlank) Then
	   
		SQLPersonal = "SELECT FirstName, LastName, FatherName, MotherName, DateOfBirth, MaritalStatus, Nationality, Email, ContactPhone, CellPhone, NationalId, BloodGroup, Gender, Religion, ContactAddress, PermanentAddress, Pass, Declaration, Declaration, Reading, Writing, Speaking, Photo, Experience, ProfessionalQualification, AcademicDistinctions, ExtraCurricularActivities, ComputerSkills, OtherDisclose, CellPhone, HomeDistrict, CellPhone,BdjobsID,BdjobsPhoto,PhotoURL, FathersProfession, MothersProfession,HomeDistrict2,[ThanaForPrmDist], Training,SpouseName,SpouseProfession FROM Personal WHERE id =" & intTrackingNo
			
		'Response.Write(SQLPersonal)
		arrPersonal = objERS.RetrieveData(SQLPersonal, strErr)
		ErrorMessage "34", errMsg, 0
	
		strFirstName = arrPersonal(0, 0)
		strLastName = arrPersonal(1, 0)
		strFatherName = arrPersonal(2, 0) 
		strMotherName = arrPersonal(3, 0)
		dtmDateOfBirth = arrPersonal(4, 0)
		strDateOfBirthDay = Day(dtmDateOfBirth)
		strDateOfBirthMonth = Month(dtmDateOfBirth)
		strDateOfBirthYear = Year(dtmDateOfBirth)
		strMaritalStatus = arrPersonal(5, 0)
		strNationality = arrPersonal(6, 0)
		strEmail = arrPersonal(7, 0)
		
		'if strEmail = "0" or strEmail = 0 or strEmail = "" then
'			strEmail = ""
'		end if
		
		strContactPhone = arrPersonal(8, 0)
		strCellPhone = arrPersonal(9, 0)
		intNationalId = arrPersonal(10, 0)
	
		if intNationalId = 0 Then
			intNationalId = ""
		End If
	
		strBloodGroup = arrPersonal(11, 0)
		strGender = arrPersonal(12, 0)
		strReligion = arrPersonal(13, 0)
		strContactAddress = arrPersonal(14, 0)
		strContactAddress = GiveReplacedString(strContactAddress)
		strPermanentAddress = arrPersonal(15, 0)
		strPermanentAddress = GiveReplacedString(strPermanentAddress)
		strPassword = arrPersonal(16, 0)
		strConfirmPassword = strPassword
		IsDeclaration = arrPersonal(17, 0)
		'	strPreferredLocation = arrPersonal(18, 0)
		
		'	arrPreferedLocation = Split(strPreferredLocation, ",")
		'	strPreferedLocation1 = CStr(Trim(arrPreferedLocation(0)))
		'	If UBound(arrPreferedLocation) >= 1 Then
		'		strPreferedLocation2 = CStr(Trim(arrPreferedLocation(1)))
		'	End If	
		'	If UBound(arrPreferedLocation) >= 2 Then
		'		strPreferedLocation3 = CStr(Trim(arrPreferedLocation(2)))
		'	End If
		'	
		strReading = arrPersonal(19, 0)
		strWriting = arrPersonal(20, 0)
		strSpeaking = arrPersonal(21, 0)
		strExperience = arrPersonal(23, 0)
		strProfessionalQualification = arrPersonal(24, 0)
		strAcademicDistinctions = arrPersonal(25, 0)
		strExtraCurricularActivities = arrPersonal(26, 0)
		strComputerSkills = arrPersonal(27, 0)
		strOtherDisclose = arrPersonal(28, 0)
		strCellPhone2 = arrPersonal(29, 0)
		
		intNoOfClildren = arrPersonal(31, 0)
		ID = arrPersonal(32,0) 
		boolBdjPhoto = arrPersonal(33,0) 
		srcRealBdjPhoto = arrPersonal(34,0) 
		strFathersProfession = arrPersonal(35,0) 
		strMothersProfession = arrPersonal(36,0)
		strHomeDistrict = arrPersonal(30, 0) 
		strHomeDistrict2 = arrPersonal(37,0) 
		strThanaPrmDist = arrPersonal(38,0)
		strTraining =  arrPersonal(39,0)
		strSpouseName = arrPersonal(40, 0)
		strSpouseProfession = arrPersonal(41, 0)	
	
	Else
  
		strFirstName = Request.Form("txtFirstName")
		strLastName = Request.Form("txtLastName") 
		strFatherName = Request.Form("txtFatherName")
		strMotherName = Request.Form("txtMotherName")
		
		strFathersProfession = Request.Form("txtFathersProfession")
		strMothersProfession = Request.Form("txtMothersProfession")
		
		dtmDateOfBirth = Request.Form("txtDateOfBirth")
		
			If dtmDateOfBirth <> "" Then
				If IsDate(dtmDateOfBirth) Then
					strDateOfBirthDay = Day(dtmDateOfBirth)
					strDateOfBirthMonth = Month(dtmDateOfBirth)
					strDateOfBirthYear = Year(dtmDateOfBirth)
				End If  
			End If
  
		  strMaritalStatus = Request.Form("ddlMaritalStatus")
		  strNationality = Request.Form("txtNationality")
		  strEmail = Request.Form("txtEmail")
		  strContactPhone = Request.Form("txtContactPhone")
		  strCellPhone = Request.Form("txtCellPhone")
		  intNationalId = Request.Form("txtNationalId")
		  strBloodGroup = Request.Form("ddlBloodGroup")
		  strGender = Request.Form("ddlGender")
		  strReligion = Request.Form("ddlReligion")
		  strContactAddress = Request.Form("txtContactAddress")
		  strPermanentAddress = Request.Form("txtPermanentAddress")
		  
		  strHomeDistrict = Request.Form("ddlHomeDistrict") 
		  strHomeDistrict2 = Request.Form("ddlHomeDistrict2")
		  strThanaPrmDist = Request.Form("ddlThanaPrmDist")
		  strTraining = Request.Form("txtTraining")
		  strSpouseName = Trim(Request.Form("txtSpouseName"))
		  strSpouseProfession = Trim(Request.Form("txtSpouseProfession"))
			
		End If

End IF 

%>					
	
<form action="?<%=Encode("Location=Edit&FormAction=InsertPersonal")%>" method="post" name="frmApplication" id="frmApplication">

<div class="row">

<div class="col-sm-12">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\FirstName.asp' -->                                 
      </div>
  </div>
</div>

<!--<div class="col-sm-6">
  <div class="form-group">
     <div class="row">-->
        <!--include File = 'Personal\LastName.asp' -->                                 
     <!-- </div>
  </div>
</div>-->
</div>

<div class="row">

<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\FatherName.asp' --> 
      </div>
  </div>
</div>

<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\MotherName.asp' -->
     </div>
  </div>
</div>
</div>

<%if system <> "ksb" then%>

<div class="row">
<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\FathersProfession.asp' --> 
     </div>
  </div>
</div>

<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\MothersProfession.asp' --> 
     </div>
  </div>
</div>
</div>

<%
end if
%>
<div class="row">
<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\Gender.asp' -->
     </div>
  </div>
</div>

<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\DateOfBirth.asp' -->
     </div>
  </div>
</div>
</div>



<div class="row">
<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\MaritalStatus.asp' -->
      </div>
  </div>
</div>

<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\Religion.asp' --> 
     </div>
  </div>
</div>
</div>


<div class="row">
<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\Nationality.asp' --> 
     </div>
  </div>
</div>

<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\NationalID.asp' --> 
     </div>
  </div>
</div>
</div>


<div class="row">
<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\BloodGroup.asp' --> 
     </div>
  </div>
</div>

<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
      <!--#include File = 'Personal\Email.asp' -->
     </div>
  </div>
</div>
</div>       


<div class="row">

<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\ContactPhone.asp' -->
     </div>
  </div>
</div>

<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\CellPhone.asp' --> 
     </div>
  </div>
</div>
</div>     


<div class="row">

<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\ContactAddress.asp' --> 
     </div>
  </div>
</div>

<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\PermanentAddress.asp' --> 
      </div>
  </div>
</div>
</div> 



<div class="row">
<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
       <!--#include File = 'Personal\HomeDistrict2.asp' -->
     </div>
  </div>
</div>

<div class="col-sm-6">
  <div class="form-group">
     <div class="row">
        <!--#include File = 'Personal\HomeDistrict.asp' -->
      </div>
  </div>
</div>
</div>              

<div class="row">
 
  <div class="col-sm-6">
      <div class="form-group">
         <div class="row">
          
         </div>
      </div>
  </div>

  <div class="col-sm-6">
      <div class="form-group">
         <div class="row">
            <!--#include File = 'Personal\ThanaUnderPermanentDistrict.asp' --> 
          </div>
      </div>
  </div>
  
</div>        
										
</fieldset>

  <!--#include File = 'CommonFooterAction.asp' -->                          