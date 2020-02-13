<%
  	strProfessionalCertification = Request.Form("chkCertification")
	strProfessionalCertification_others = Request.Form("txtCertification")
	
	if strProfessionalCertification <> "" then
	
		cert = strProfessionalCertification
	End If
	
	  
	if strProfessionalCertification_others <> "" then
		cert = cert & "@@@" & strProfessionalCertification_others
	else
		cert = strProfessionalCertification
	end if 
	  
	 ' response.Write(cert)
		'sql = ""
		'sql = " update personal set [ProfessionalCertification] = '"&cert&"' where id = "&TrackNo
	'objERS.ExecuteQuery sql, errMsg 
	'ErrorMessage "1306", errMsg, 0	

%>