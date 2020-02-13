<!--#include File = 'RetrieveHiddenValueNew.asp' -->
<div class="col-sm-12">
    <div class="edit-profile bg-style">
        <h1 class="post-name">Edit Form Others Information </h1>
          <div class="wrapper">
			 <!--#include File = 'GeneralInformation.asp' -->
				<fieldset>
					<legend>Others Information</legend>
<%
TrackNo = Request.Form("txtTrackingNo")
strPassword = Request.Form("txtPassword") 

If TrackNo = "" Then 
  Response.Redirect("?"&Encode("Location=Modal&FormAction=Login"))
Else
 If IsBlank = "" or isempty(IsBlank) or isnull(IsBlank) Then
	SQLPersonal = "SELECT Reading, Writing, Speaking, Experience, ProfessionalQualification, AcademicDistinctions, ExtraCurricularActivities, ComputerSkills, OtherDisclose, [ProfessionalCertification], Training  FROM Personal WHERE id=" & TrackNo 
	
	'Response.Write(SQLPersonal)
	arrPersonal = objERS.RetrieveData(SQLPersonal, strErr)
	ErrorMessage "34", errMsg, 0
	
	
	strReading = arrPersonal(0, 0)
	strWriting = arrPersonal(1, 0)
	strSpeaking = arrPersonal(2, 0)
	
	strExperience = arrPersonal(3, 0)
	strProfessionalQualification = arrPersonal(4, 0)
	strAcademicDistinctions = arrPersonal(5, 0)
	strExtraCurricularActivities = arrPersonal(6, 0)
	strComputerSkills = arrPersonal(7, 0)
	strOtherDisclose = arrPersonal(8, 0)
	strProfessionalCertification = arrPersonal(9, 0) 
	strTraining = arrPersonal(10, 0) 
	
	if strProfessionalCertification <> "" then 
		if instr(strProfessionalCertification,"Others") > 0 then
			strProfessionalCertification_others1 = split(strProfessionalCertification,"Others@@@")
			strProfessionalCertification_others = strProfessionalCertification_others1(1)
			'response.Write(strProfessionalCertification_others)
		else
			strProfessionalCertification_others = ""
		end if 
	end if 
	
  Else
	strReading = Request.Form("ddlReading")
	strWriting = Request.Form("ddlWriting")
	strSpeaking = Request.Form("ddlSpeaking")
	
	strExperience = Request.Form("txtExperience")
	strProfessionalQualification = Request.Form("txtProfessionalQualification")
	strTraining = Request.Form("txtTraining")
	strAcademicDistinctions = Request.Form("txtAcademicDistinctions")
	strExtraCurricularActivities = Request.Form("txtExtraCurricularActivities")
	strComputerSkills = Request.Form("txtComputerSkill")
	strOtherDisclose = Request.Form("txtAnyOther")
	strProfessionalCertification = Request.Form("chkCertification")
	strProfessionalCertification_others = Request.Form("txtCertification")

 End If
End IF 

%>					
	
<form action="?<%=Encode("Location=Edit&FormAction=InsertOthers")%>" method="post" name="frmApplication" id="frmApplication">

<%If system = "ksb" then%>   
   <!--#include File = 'Others\Experience.asp' -->
<%Else%> 
   <!--#include File = 'Others\ProfeciencyInEnglish.asp' -->
   <!--#include File = 'Others\ProfessionalCertification.asp' -->   
   <!--#include File = 'Others\Experience.asp' -->  
   <!--#include File = 'Others\ProfessionalQualification.asp' -->
   <!--#include File = 'Others\Training.asp' -->
   <!--#include File = 'Others\AcademicDistinction.asp' -->
   <!--#include File = 'Others\ExtraCurricularActivites.asp' -->
   <!--#include File = 'Others\ComputerSkills.asp' -->
   <!--#include File = 'Others\AnyOther.asp' -->
<%End If%>
</fieldset>

  <!--#include File = 'CommonFooterAction.asp' -->                          