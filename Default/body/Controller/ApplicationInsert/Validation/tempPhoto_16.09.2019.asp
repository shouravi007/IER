<%
    ersPHOTOURL = Trim(Request.Form("ersPhoto"))
	'response.Write(ersPHOTOURL)
	bdjPHOTOURL = Trim(Request.Form("bdjPhoto")) 
	'response.Write("bdj:: "&bdjPHOTOURL)
	'response.End()	
	bdjID = Request.Form("id_my")
	
	  ValuePrint ersPHOTOURL, "ersPHOTOURL"
	  ValuePrint bdjPHOTOURL, "bdjPHOTOURL"
	  ValuePrint bdjID, "bdjID"	
	
	  
	  strPhotoValid = CheckValidation("True",ersPHOTOURL,"Photo",bdjPHOTOURL,"100"," passport size scanned photo")	



%>