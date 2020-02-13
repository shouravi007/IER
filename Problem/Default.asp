<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%

response.Write(Request.ServerVariables("REMOTE_ADDR"))

If request.ServerVariables("REMOTE_ADDR") = "163.53.150.126" or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.67" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0 or request.ServerVariables("SERVER_NAME") = "server-ers"  Then   ' only run  in office 



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
	
	
	url = Encode("Location=Ajax&FormAction=ajax_duplicate")
	
	Response.Write("<br>")
	Response.Write("ajax_duplicate problem checkup  ")
	Response.Write("<br>")
	Response.write("<a href='../Default.asp?"&url&"'>ajax_duplicate problem check  </a>")
	
	
	url = Encode("Location=Ajax&FormAction=ajax2")
	
	Response.Write("<br>")
	Response.Write("ajax2 problem checkup  ")
	Response.Write("<br>")
	Response.write("<a href='../Default.asp?"&url&"'>ajax2 problem check  </a>")
		
	
	url = Encode("Location=Problem&FormAction=PhotoProblem")
	
	Response.Write("<br>")
	Response.Write("photo problem checkup  ")
	Response.Write("<br>")
	Response.write("<a href='../Default.asp?"&url&"'>photo problem check  </a>")


	url = Encode("Location=Problem&FormAction=SignatureProblem")
	
	Response.Write("<br>")
	Response.Write("SignatureProblem problem checkup  ")
	Response.Write("<br>")
	Response.write("<a href='../Default.asp?"&url&"'>SignatureProblem problem check  </a>")
	

	url = Encode("Location=Problem&FormAction=Name")
	
	Response.Write("<br>")
	Response.Write("Name problem checkup  ")
	Response.Write("<br>")
	Response.write("<a href='../Default.asp?"&url&"'>Name problem check  </a>")
	


'	url = Encode("Location=Problem&FormAction=MarksProblem")
'	
'	Response.Write("<br>")
'	Response.Write("MarksProblem problem MarksProblem  ")
'	Response.Write("<br>")
'	Response.write("<a href='../Default.asp?"&url&"'>MarksProblem problem MarksProblem  </a>")
'	
'	
'	
'	
'	
'	url = Encode("Location=Problem&FormAction=PhotoDuplicateProblem")
'	
'	Response.Write("<br>")
'	Response.Write("PhotoDuplicateProblem problem PhotoDuplicateProblem  ")
'	Response.Write("<br>")
'	Response.write("<a href='../Default.asp?"&url&"'>PhotoDuplicateProblem problem PhotoDuplicateProblem  </a>")
'	
	
	
	
end if 
%>
