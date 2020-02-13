<%		
If Request.Form("txtTrackingNo") <> "" Then 
  intTrackingNo = Request.Form("txtTrackingNo") 
Else 
	Response.Write("<center><strong>Session expire.<br />Click <a href='?Y1pn6v10=Z1qny&S14zNp6v10=Y1tv0'>here</a> to re-login.</strong></center>")	
	Response.End()	
End IF 

%>