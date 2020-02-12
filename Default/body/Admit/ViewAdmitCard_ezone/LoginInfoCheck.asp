<%

phone = "<br/><p>If you need anymore assistance regarding the Online Application System, please call at Dial 16479 from any number or  Email to sjibl@bdjobs.com. <span style='color:#d22a3d;'></span></p>"


intTrackingNo = Request.Form("txtTrackingNo")	
strPassword = Request.Form("txtPassword")




If  intTrackingNo = "" Then
	
	ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! Login information not authentic.<br/>Please mention Login ID.<br></strong></font></center>"&phone)
	DivCreateForAds

	Response.End()
Else
'TrackNo = Request.Form("txtTrakingNo")
	If Not IsNumeric(intTrackingNo) then
		 Response.Clear()
	     ShowValidateMsgOnly("Sorry! Login information not authentic.<br/>Please provide numeric Login ID.<br></strong></font></center>"&phone)
		 DivCreateForAds
		Response.End()
	End If 
End If




If  strPassword = "" Then
	
	ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! Login information not authentic.<br/>Please mention password .<br></strong></font></center>"&phone)
    DivCreateForAds
	Response.End()
Else
    'TrackNo = Request.Form("txtTrakingNo")
	'strPassword = strPassword
End If


	
%>