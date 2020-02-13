<%
'response.Write(strReferenceName1)
		strReferenceName1 =  CheckValidation("True",strReferenceName1,"text","Text","100","Name of Reference 1 ")
		strReferencePosition1 =  CheckValidation("True",strReferencePosition1,"text","Text","100","Position of Reference 1 ")
		strReferenceAddress1 =  CheckValidation("True",strReferenceAddress1,"text","Text","255","Address of Reference 1 ")
		strReferencePhone1 =  CheckValidation("True",strReferencePhone1,"text","Text","50","Phone  of Reference 1 ")
		'strReferencePhone1 =  CheckValidation("True",strReferencePhone1,"Numeric","Numeric","50","Phone  of Reference 1 ")
		
		strReferenceEmail1 =  CheckValidation("False",strReferenceEmail1,"text","Text","100","Email  of Reference 1  ")
		
		strReferenceEmail1 =  CheckValidation("False",strReferenceEmail1,"email","Text","100","Email  of Reference 1  ")
		
		
	
		strReferenceName2 =  CheckValidation("True",strReferenceName2,"text","Text","100","Name of Reference 2 ")
		strReferencePosition2 =  CheckValidation("True",strReferencePosition2,"text","Text","100","Position of Reference 2 ")
		strReferenceAddress2 =  CheckValidation("True",strReferenceAddress2,"text","Text","255","Address of Reference 2 ")
		strReferencePhone2 =  CheckValidation("True",strReferencePhone2,"text","Text","50","Phone  of Reference 2 ")
		'strReferencePhone2 =  CheckValidation("True",strReferencePhone2,"Numeric","Numeric","50","Phone  of Reference 2 ")
		
		strReferenceEmail2 =  CheckValidation("False",strReferenceEmail2,"text","Text","100","Email  of Reference 2  ")
		strReferenceEmail2 =  CheckValidation("False",strReferenceEmail2,"email","Text","100","Email  of Reference 2  ")
				

%>