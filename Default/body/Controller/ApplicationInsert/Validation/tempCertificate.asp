<%
    ersCERTIFICATEURL = Trim(Request.Form("ersCertificate"))
	bdjCERTIFICATEURL =  0  ' Trim(Request.Form("bdjCertificate")) 	
	bdjID = 0  '  Request.Form("id_my")
	
	ValuePrint ersCERTIFICATEURL, "ersCERTIFICATEURL"
	ValuePrint bdjCERTIFICATEURL, "bdjCERTIFICATEURL"
	ValuePrint bdjID, "bdjID"	
	


   	' strCertificateValid = CheckValidation("True",ersCERTIFICATEURL,"Certificate",bdjCERTIFICATEURL,"100","300 * 80  size scanned signature ")	


     ersCertificate = 0       ' if one not upladed sig then  response.end in previous 
	 signatureURL = ersCERTIFICATEURL  


		if len(signatureURL) < 80 then 
		 
	      Call  ShowValidateMsg(" Please upload a  transcript/certificate <br />Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	      Response.End()
		end if 
		
		
		
		if instr(signatureURL,"Fatal") > 0 then 
		 
	      Call  ShowValidateMsg(" There is a error in certificate uploading process.  Please upload a  transcript/certificate <br />Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	      Response.End()
		end if 	
     
%>