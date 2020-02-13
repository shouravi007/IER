<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%

	Function Encode(sIn)
		dim x, y, abfrom, abto
		Encode="": ABFrom = ""
	
		For x = 0 To 25: ABFrom = ABFrom & Chr(65 + x): Next 
		For x = 0 To 25: ABFrom = ABFrom & Chr(97 + x): Next 
		For x = 0 To 9: ABFrom = ABFrom & CStr(x): Next 
	
		abto = Mid(abfrom, 14, Len(abfrom) - 13) & Left(abfrom, 13)
		For x=1 to Len(sin): y = InStr(abfrom, Mid(sin, x, 1))
			If y = 0 Then
				 Encode = Encode & Mid(sin, x, 1)
			Else
				 Encode = Encode & Mid(abto, y, 1)
			End If
		Next
	End Function
	
	url = Encode("Location=Admin&FormAction=Login")
	
	Response.Redirect("../Default.asp?"&url)

%>
