
<form method="post" action="SearchResultGroup.asp" name="frmResume" id="frmResume">
	<input name="txtUB" type="hidden" id="txtUB" value="<%=UB%>">
	<input name="hPage" type="hidden" id="hPage" value="<%=pg%>">
	<input name="str" type="hidden" id="str" value="<%=str%>">
    
    <input name="txtLastID" type="hidden" id="txtLastID" value="<%'=intTrakingNumber%>">
	<input name="rdoCVType" type="hidden" id="rdoCVType" value="<%=strCVType%>">
	<input name="ddlJobPosting" type="hidden" id="ddlJobPosting" value="<%=strJobPosting%>">
	<input name="txtName" type="hidden" id="txtName" value="<%=strName%>">
	<input name="ddlAgeFrom" type="hidden" id="ddlAgeFrom" value="<%=intAgeFrom%>">
	<input name="ddlAgeTo" type="hidden" id="ddlAgeTo" value="<%=intAgeTo%>">
	<input name="txtSex" type="hidden" id="txtSex" value="<%=strSex%>">
	<input name="txtEmail" type="hidden" id="txtEmail" value="<%=strEmail%>">
	<input name="txtPhone" type="hidden" id="txtPhone" value="<%=strPhone%>">
	<input name="rdoPhone" type="hidden" id="rdoPhone" value="<%=strPhoneType%>">
	<input name="txtCDistrict" type="hidden" id="txtCDistrict" value="<%'=strCDist%>">
	<input name="txtDistrict" type="hidden" id="txtDistrict" value="<%=strHomeDist%>">
    <input name="ddlRejected" type="hidden" id="ddlRejected" value="<%=strRejected%>">
	<input name="ddlPhoto" type="hidden" id="ddlPhoto" value="<%=strPhoto%>">
	<%For o = 1 To 4 %>
    <input name="ddlEducationLevel<%=o%>" type="hidden" id="ddlEducationLevel<%=o%>" value="<%=intEducationLevel(o)%>">
	<input name="txtDegreeName<%=o%>" type="hidden" id="txtDegreeName<%=o%>" value="<%=strDegreeName(o)%>">
	<input name="INSTITUTE<%=o%>" type="hidden" id="INSTITUTE<%=o%>" value="<%=strInstituteName(o)%>">
    <input name="CAMPUS<%=o%>" type="hidden" id="CAMPUS<%=o%>" value="<%=strCampus(o)%>">
    <input name="INS_NAME<%=o%>" type="hidden" id="INS_NAME<%=o%>" value="<%=strInstituteName(o)%>">
	<input name="ddlPassingYear<%=o%>" type="hidden" id="ddlPassingYear<%=o%>" value="<%=intPassingYear(o)%>">
	<input name="RESULT<%=o%>" type="hidden" id="RESULT<%=o%>" value="<%=intResult(o)%>">
	<input name="txtPercentFrom<%=o%>" type="hidden" id="txtPercentFrom<%=o%>" value="<%=strPercentFrom(o)%>">
	<input name="txtPercentTo<%=o%>" type="hidden" id="txtPercentTo<%=o%>" value="<%=strPercentTo(o)%>">		 
 	<input name="RESULT<%=o%>_" type="hidden" id="RESULT<%=o%>_" value="<%=intResult_(o)%>">
	<input name="txtPercentFrom<%=o%>_" type="hidden" id="txtPercentFrom<%=o%>_" value="<%=strPercentFrom_(o)%>">
	<input name="txtPercentTo<%=o%>_" type="hidden" id="txtPercentTo<%=o%>_" value="<%=strPercentTo_(o)%>">	       
	<input name="SUBJECT<%=o%>" type="hidden" id="SUBJECT<%=o%>" value="<%=strMajorSubject(o)%>">
    <% Next %> 

	<input name="txtProfessionalDegree" type="hidden" id="txtProfessionalDegree" value="<%=strProfessionalDegree%>">
	<input name="ddlProfessionalPassingYear" type="hidden" id="ddlProfessionalPassingYear" value="<%=intProfessionalPassingYear%>">
	<!--<input name="txtTrainingName" type="hidden" id="txtTrainingName" value="<%=strTrainingName%>">
	<input name="txtAwardingBody" type="hidden" id="txtAwardingBody" value="<%=strAwardingBody%>">
	<input name="txtTrainingDuration" type="hidden" id="txtTrainingDuration" value="<%=intTrainingDuration%>">
	<input name="ddlTrainingPassingYear" type="hidden" id="ddlTrainingPassingYear" value="<%=intTrainingPassingYear%>">
	<input name="CSG" type="hidden" id="CSG" value="<%=strComputerGeneralSkill%>">
	<input name="CSA" type="hidden" id="CSA" value="<%=strComputerAdvancedSkill%>">
	<input name="KS" type="hidden" id="KS" value="<%=strKeySkill%>">
	<input name="ddlExpectedTrustGrade" type="hidden" id="ddlExpectedTrustGrade" value="<%'=strExpectedTrustGrade%>">-->
	<input name="POS_LOC" type="hidden" id="POS_LOC" value="<%=strLocation%>">
	<!--<input name="txtPresentSalaryFrom" type="hidden" id="txtPresentSalaryFrom" value="<%=intPresentSalaryFrom%>">
	<input name="txtPresentSalaryTo" type="hidden" id="txtPresentSalaryTo" value="<%=intPresentSalaryTo%>">
	<input name="txtExpectedSalaryFrom" type="hidden" id="txtExpectedSalaryFrom" value="<%=txtExpectedSalaryFrom%>">
	<input name="txtExpectedSalaryTo" type="hidden" id="txtExpectedSalaryTo" value="<%=txtExpectedSalaryTo%>">
	<input name="ddlWorkAreaPreference" type="hidden" id="ddlWorkAreaPreference" value="<%=strWorkAreaPreference%>">
	<input name="txtNoticePeriodFrom" type="hidden" id="txtNoticePeriodFrom" value="<%=txtNoticePeriodFrom%>">
	<input name="txtNoticePeriodTo" type="hidden" id="txtNoticePeriodTo" value="<%=txtNoticePeriodTo%>">
	<input name="txtPreviouslyInterviewedPosition" type="hidden" id="txtPreviouslyInterviewedPosition" value="<%=strPreviouslyInterviewedPosition%>">
	<input name="ddlPreviouslyInterviewedMonth" type="hidden" id="ddlPreviouslyInterviewedMonth" value="<%=intPreviouslyInterviewedMonth%>">
	<input name="ddlPreviouslyInterviewedYear" type="hidden" id="ddlPreviouslyInterviewedYear" value="<%=intPreviouslyInterviewedYear%>">-->
    <input name="txtTrakingNumber" type="hidden" id="txtTrakingNumber" value="<%=intTN%>">	
    
</form>