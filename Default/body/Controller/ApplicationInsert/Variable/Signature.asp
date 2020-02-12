<%
	strTestCV = Trim(Request.Form("TestCV"))	
	
	If strTestCV = "on" Then
		strTestCV = -1
	Else
		strTestCV = 0
	End If	


	bdjID = Request.Form("id_my")
	If bdjID <> "" Then 
	  bdjID = Decode(bdjID)
	Else
	  bdjID = 0			
	End If 
	bdjPHOTOURL = Request.Form("bdjPhoto") 	
	If bdjPHOTOURL <> "" Then 
	  BDJOBSPHOTO = 1 
	  bdjPHOTOURL = "http://my.bdjobs.com/photos/"&bdjPHOTOURL
	  bdjPHOTOURL_ers_location =  "http://ers.bdjobs.com/applications/ImageResize/Photos/"&strPhotoFolder&"/bdjobs/"& trim(request.Form("onlyPhoto"))
	Else
	  BDJOBSPHOTO = 0 
	End IF
	
	ersPHOTOURL = trim(Request.Form("ersPhoto")) 
	photo_upload_by_user_action = trim(request.Form("photo_upload_by_user_action"))
	
	if photo_upload_by_user_action = "upload_from_bdjobs" then
	   PhotoURL = bdjPHOTOURL_ers_location
	elseif photo_upload_by_user_action = "upload_from_ers" then
	   PhotoURL = ersPHOTOURL
	else
	   PhotoURL = "" 
	end if 
	
	
	socialID = Request.Form("socialID") 
	if isempty(socialID) or isnull(socialID) or socialID = "" then 
	  socialID = 0 
	end if 


%>