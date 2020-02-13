<%
    ersSIGNATUREURL = Trim(Request.Form("ersSignature"))
	bdjSIGNATUREURL =  0  ' Trim(Request.Form("bdjSignature")) 	
	bdjID = 0  '  Request.Form("id_my")
	
	ValuePrint ersSIGNATUREURL, "ersSIGNATUREURL"
	ValuePrint bdjSIGNATUREURL, "bdjSIGNATUREURL"
	ValuePrint bdjID, "bdjID"	
	


   	' strSignatureValid = CheckValidation("True",ersSIGNATUREURL,"Signature",bdjSIGNATUREURL,"100","300 * 80  size scanned signature ")	


     ersSignature = 0       ' if one not upladed sig then  response.end in previous 
	 signatureURL = ersSIGNATUREURL  


		if len(signatureURL) < 80 then 
		 
	      Call  ShowValidateMsg(" Please upload a  transcript/certificate <br />Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	      Response.End()
		end if 
		
		
		
		if instr(signatureURL,"Fatal") > 0 then 
		 
	      Call  ShowValidateMsg(" There is a error in certificate uploading process.  Please upload a  transcript/certificate <br />Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	      Response.End()
		end if 	
     
%>