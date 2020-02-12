<%
	

	blnDeclaration = Trim(Request.Form("chkDeclaration"))
	If blnDeclaration = "on" Then
		IsDeclaration = True
	Else
		IsDeclaration = False
	End If	
	
	
	strPassword = Trim(Request.Form("txtPassword"))
	strConfirmPassword = Trim(Request.Form("txtConfirmPassword"))


%>