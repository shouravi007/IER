
<form method="post" action="?<%=Encode("Location=Admin&FormAction=SearchResult")%>" name="frmResume" id="frmResume">
	<input name="txtUB" type="hidden" id="txtUB" value="<%=UB%>">
	<input name="txtJobName" type="hidden" id="txtJobName" value="<%=strJobName%>">
	<input name="totalPage" type="hidden" id="totalPage" value="<%=totalPage%>">
    
    <input name="hPage" type="hidden" id="hPage" value="<%=pg%>">
	<input name="strIds" type="hidden" id="strIds" value="<%=strIds%>">
    <input name="strDeadLine" id="strDeadLine" type="hidden" value="<%=strDeadLine%>" />
    
    <input name="txtLastID" type="hidden" id="txtLastID" value="<%=intTrakingNumber%>">
	<input name="rdoCVType" type="hidden" id="rdoCVType" value="<%=strCVType%>">
	<input name="ddlJobPosting" type="hidden" id="ddlJobPosting" value="<%=strJobPosting%>">
	<input name="txtStartDate" type="hidden" id="txtStartDate" value="<%=strStartDate%>">
	<input name="txtEndDate" type="hidden" id="txtEndDate" value="<%=strEndDate%>">
    
    <input name="txtName" type="hidden" id="txtName" value="<%=strName%>">
	<input name="ddlAgeFrom" type="hidden" id="ddlAgeFrom" value="<%=intAgeFrom%>">
	<input name="ddlAgeTo" type="hidden" id="ddlAgeTo" value="<%=intAgeTo%>">
	<input name="txtSex" type="hidden" id="txtSex" value="<%=strSex%>">
	<input name="txtEmail" type="hidden" id="txtEmail" value="<%=strEmail%>">
	<input name="txtPhone" type="hidden" id="txtPhone" value="<%=strPhone%>">
	<input name="rdoPhone" type="hidden" id="rdoPhone" value="<%=strPhoneType%>">

	<input name="txtDistrict" type="hidden" id="txtDistrict" value="<%=strHomeDist%>">
	<input name="txtDistrict2" type="hidden" id="txtDistrict2" value="<%=strHomeDist2%>">
    
    <input name="ddlRejected" type="hidden" id="ddlRejected" value="<%=strRejected%>">
	<input name="ddlPhoto" type="hidden" id="ddlPhoto" value="<%=strPhoto%>">
	<%For o = 1 To 5 %>
    <input name="ddlEducationLevel<%=o%>" type="hidden" id="ddlEducationLevel<%=o%>" value="<%=intEducationLevel(o)%>">
    
    
	<input name="stxtDegreeName<%=o%>" type="hidden" id="stxtDegreeName<%=o%>" value="<%=strDegreeName(o)%>">
    
    
	<input name="sINSTITUTE<%=o%>" type="hidden" id="sINSTITUTE<%=o%>" value="<%=strInstituteName(o)%>">
    <input name="CAMPUS<%=o%>" type="hidden" id="CAMPUS<%=o%>" value="<%=strCampus(o)%>">
    <input name="INS_NAME<%=o%>" type="hidden" id="INS_NAME<%=o%>" value="<%=strInstituteName(o)%>">
	<input name="ddlPassingYear<%=o%>" type="hidden" id="ddlPassingYear<%=o%>" value="<%=intPassingYear(o)%>">
	<input name="RESULT<%=o%>" type="hidden" id="RESULT<%=o%>" value="<%=intResult(o)%>">
	<input name="txtPercentFrom<%=o%>" type="hidden" id="txtPercentFrom<%=o%>" value="<%=strPercentFrom(o)%>">
	<input name="txtPercentTo<%=o%>" type="hidden" id="txtPercentTo<%=o%>" value="<%=strPercentTo(o)%>">		 
 	<input name="RESULT<%=o%>_" type="hidden" id="RESULT<%=o%>_" value="<%=intResult_(o)%>">
	<input name="txtPercentFrom<%=o%>_" type="hidden" id="txtPercentFrom<%=o%>_" value="<%=strPercentFrom_(o)%>">
	<input name="txtPercentTo<%=o%>_" type="hidden" id="txtPercentTo<%=o%>_" value="<%=strPercentTo_(o)%>">	       
	<input name="sSUBJECT<%=o%>" type="hidden" id="sSUBJECT<%=o%>" value="<%=strMajorSubject(o)%>">
    
   <input name="chkInstitute<%=o%>" type="hidden" id="chkInstitute<%=o%>" value="<%=strExtraInstitute(o)%>"> 
    
    <% Next %> 


    <input name="txtTrakingNumber" type="hidden" id="txtTrakingNumber" value="<%=intTN%>">	
      <input name="txtRollNumber" type="hidden" id="txtRollNumber" value="<%=intRoll%>">	
  
</form>

