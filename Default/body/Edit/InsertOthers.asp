				<div class="col-sm-12">
					<div class="summery-view bg-style">

<%
'response.Write("TrackNo:"&TrackNo)
strProfessionalCertification = Request.Form("chkCertification")
strProfessionalCertification_others = Request.Form("txtCertification")

if strProfessionalCertification <> "" then 
  if strProfessionalCertification_others <> "" then
	cert = strProfessionalCertification & "@@@" & strProfessionalCertification_others
  else
	cert = strProfessionalCertification
  end if 
end if 
	
strExperience = Request.Form("txtExperience")
strProfessionalQualification = Request.Form("txtProfessionalQualification")
strTraining = Request.Form("txtTraining")
strAcademicDistinctions = Request.Form("txtAcademicDistinctions")
strExtraCurricularActivities = Request.Form("txtExtraCurricularActivities")
strComputerSkills = Request.Form("txtComputerSkill")
strOtherDisclose = Request.Form("txtAnyOther")

strReading = Request.Form("ddlReading")
strWriting = Request.Form("ddlWriting")
strSpeaking = Request.Form("ddlSpeaking")

%>

<form action="?<%=Encode("Location=Edit&FormAction=others")%>" method="post" name="frmApplicationInsert" id="frmApplicationInsert">	
<input name="txtBlank" id="txtBlank" type="hidden" value="True" />
<input name="txtTrackingNo" id="txtTrackingNo" type="hidden" value="<%=TrackNo%>" />	
<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">
<input name="TrackNoNew" id="TrackNoNew" type="hidden" value="<%=TrackNoNew%>" />
<input name="ddlReading" id="ddlReading" type="hidden" value="<%=strReading%>" />	
<input name="ddlWriting" id="ddlWriting" type="hidden" value="<%=strWriting%>" />	
<input name="ddlSpeaking" id="ddlSpeaking" type="hidden" value="<%=strSpeaking%>" />	
<input name="chkCertification" id="chkCertification" type="hidden" value="<%=strProfessionalCertification%>" />
<input name="txtCertification" id="txtCertification" type="hidden" value="<%=strProfessionalCertification_others%>" />	
<input name="txtExperience" id="txtExperience" type="hidden" value="<%=strExperience%>" />	
<input name="txtProfessionalQualification" id="txtProfessionalQualification" type="hidden" value="<%=strProfessionalQualification%>" />
<input name="txtTraining" id="txtTraining" type="hidden" value="<%=strTraining%>" />	
<input name="txtAcademicDistinctions" id="txtAcademicDistinctions" type="hidden" value="<%=strAcademicDistinctions%>" />
<input name="txtExtraCurricularActivities" id="txtExtraCurricularActivities" type="hidden" value="<%=strExtraCurricularActivities%>" />	
<input name="txtComputerSkill" id="txtComputerSkill" type="hidden" value="<%=strComputerSkills%>" />	
<input name="txtAnyOther" id="txtAnyOther" type="hidden" value="<%=strOtherDisclose%>" />	

<input name="txtBlank" id="txtBlank" type="hidden" value="True" />
    
</form>


<%
strReading = CheckValidation("True",strReading,"select","S","6","Reading")	
strWriting = CheckValidation("True",strWriting,"select","S","6","Writing")	
strSpeaking = CheckValidation("True",strSpeaking,"select","S","6","Speaking")

if strProfessionalCertification <> "" then 
   if instr(strProfessionalCertification,"Others")  > 0 then 
   
	strProfessionalCertification_others = CheckValidation("True",strProfessionalCertification_others,"text","Text","50","Name of professional certification  ")	

   end if 
end if 
		
strExperience = CheckValidation("False",strExperience,"text","Text","5000","Experience (if any) ")	
strProfessionalQualification = CheckValidation("False",strProfessionalQualification,"text","Text","2000","Professional Qualification (if any)")	

strTraining = CheckValidation("False",strTraining,"text","Text","2000","Training Information (if any)")

strAcademicDistinctions = CheckValidation("False",strAcademicDistinctions,"text","Text","1000","Academic Distinctions(if any)")	
strExtraCurricularActivities = CheckValidation("False",strExtraCurricularActivities,"text","Text","1000","Extra curricular activities(if any) ")	
strComputerSkills = CheckValidation("False",strComputerSkills,"text","Text","1000","Computer skills (if any) ")	
strOtherDisclose = CheckValidation("False",strOtherDisclose,"text","Text","1000","Any other thing you want to disclose(if any) ")	



			ReDim arrPersonalSQL(0)
			ReDim arrPersonalData(0, 11)
			
			arrPersonalData(0, 0) = strReading
			arrPersonalData(0, 1) = strWriting
			arrPersonalData(0, 2) = strSpeaking
			arrPersonalData(0, 3) = strExperience
			arrPersonalData(0, 4) = strProfessionalQualification
			arrPersonalData(0, 5) = strAcademicDistinctions
			arrPersonalData(0, 6) = strExtraCurricularActivities
			arrPersonalData(0, 7) = strComputerSkills
			arrPersonalData(0, 8) = strOtherDisclose
			arrPersonalData(0, 9) = now
			arrPersonalData(0, 10) = cert
			arrPersonalData(0, 11) = strTraining
		
			USERID = TrackNo
			currentUser = TrackNo 
			strModuleName = "Resume Update" 
			
			SQLInsertRef = strReading & "-" & TrackNo & "-" &  strSpeaking & "-" &  strSpeaking & "-" &  strExperience & "-" &  strProfessionalQualification & "-" &  strAcademicDistinctions & "-" & Request.ServerVariables("REMOTE_ADDR")

			strDescription = ReplacedAllTypeOfSpecialChar(SQLInsertRef) 
			strAction = "Update Reference"
			%>
			  <!--#include File = "UserLog.asp" -->
			<%

		
		
		   If TrackNo <> "" Then 
			arrPersonalSQL(0) = "SELECT Reading, Writing, Speaking, Experience, ProfessionalQualification, AcademicDistinctions, ExtraCurricularActivities, ComputerSkills, OtherDisclose, UpdatedOn ,  ProfessionalCertification, Training FROM Personal WHERE id =" & TrackNo
		
			objERS.UpdateData arrPersonalSQL, arrPersonalData, errMsg
			ErrorMessage "106", errMsg, 0
		
		  End IF 
		
%>
<!--#include File = 'BackToEditResume.asp' -->
    
        </div>
   </div>