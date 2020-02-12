<%		
' Variable Initialization.
'intTrakingNo = Session("TrakNo")
intQueryTN = Decode(Request.Querystring("TrakingNo"))

if Request.QueryString("TrackNo") <> "" Or Request.QueryString("Pass") <> "" Then 
	intTrakingNo = base64_decode(Request.QueryString("TrackNo"))
	PassWrd = base64_decode(Request.QueryString("Pass"))
	'response.Write(Request.Form("ID"))
	IsEdit = True
Else
	intTrakingNo = Request.Form("TrackNo")
	PassWrd = Request.Form("Pass")
	'response.Write(Request.Form("ID"))
	IsEdit = True
	
	If intTrakingNo = "" Then 
 	 intQueryTN2 = Request.QueryString("TrackNo")
	 intTrakingNo = base64_decode(intQueryTN2)
	End IF 
	
End IF 

If intQueryTN <> "" Then
	intQueryTN = cdbl(intQueryTN)
	intTrakingNo = intQueryTN
Else


    If intTrakingNo <> "" Then 
	
	Else 
	ValuePrint intTrakingNo , "intTrakingNo"
	ValuePrint intQueryTN2 , "intQueryTN2"

	ValuePrint intQueryTN , "intQueryTN"
	
		If Request.Form("txtTrakingNumber") <> "" Then 
		 intTrakingNo = Request.Form("txtTrakingNumber") 
		Else 

		Response.Write("<center><strong>Session expire.<br />Click <a href='?Y1pn6v10=Z1qny&S14zNp6v10=Y1tv0'>here</a> to re-login.</strong></center>")	
	    Response.End()	
        End IF 
	End IF 
	
End If



%>