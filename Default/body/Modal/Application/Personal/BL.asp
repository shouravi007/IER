
<%
If  Request.ServerVariables("SERVER_NAME") = "server-ers" or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" or Request.ServerVariables("REMOTE_ADDR") = "180.234.213.13" Then 

strTestCV = True		
'response.Write("strTestCV"&strTestCV)
%> 
<!--<input align="left" type="checkbox" name="TestCV" id="TestCV" <%'If strTestCV = True Then%>checked<%'end if%> />--><!--Test CV-->
<%
else
strTestCV = false
End If


ersPhotoUrl = trim(request.Form("ersPhoto"))
ersSignatureUrl = trim(request.Form("ersSignature"))
ersPhotoUrl1 = trim(request.Form("ersPhoto1"))
ersSignatureUrl1 = trim(request.Form("ersSignature1"))
ersPhotoUrl2 = trim(request.Form("ersPhoto2"))
ersSignatureUrl2 = trim(request.Form("ersSignature2"))


'response.Write("<br>ersPhotoUrl:"&ersPhotoUrl)
'response.Write("<br>ersPhotoUrl1:"&ersPhotoUrl1)
'response.Write("<br>ersPhotoUrl2:"&ersPhotoUrl2)
'response.Write("<br>ersSignatureUrl:"&ersSignatureUrl)
'response.Write("<br>ersSignatureUrl1:"&ersSignatureUrl1)
'response.Write("<br>ersSignatureUrl2:"&ersSignatureUrl2)



if ersPhotoUrl = "" or isempty(ersPhotoUrl) or isnull(ersPhotoUrl) then
  ersPhotoUrl = ersPhotoUrl1
end if  

if ersPhotoUrl = "" or isempty(ersPhotoUrl) or isnull(ersPhotoUrl) then
  ersPhotoUrl = ersPhotoUrl2
end if  

if ersSignatureUrl = "" or isempty(ersSignatureUrl) or isnull(ersSignatureUrl) then
  ersSignatureUrl = ersSignatureUrl1
end if  

if ersSignatureUrl = "" or isempty(ersSignatureUrl) or isnull(ersSignatureUrl) then
  ersSignatureUrl = ersSignatureUrl2
end if 

'response.Write("<br>ersPhotoUrl:"&ersPhotoUrl)
'response.Write("<br>ersPhotoUrl1:"&ersPhotoUrl1)
'response.Write("<br>ersPhotoUrl2:"&ersPhotoUrl2)
'response.Write("<br>ersSignatureUrl:"&ersSignatureUrl)
'response.Write("<br>ersSignatureUrl1:"&ersSignatureUrl1)
'response.Write("<br>ersSignatureUrl2:"&ersSignatureUrl2)



bdjPhoto = trim(request.Form("bdjPhoto"))

if bdjPhoto <> "" then 
  photoName2 = bdjPhoto
end if 

If bdjPhoto <> ""  Then                                  
        image =  "http://my.bdjobs.com/photos/"&bdjPhoto
		
		  ' "http://ers.bdjobs.com/applications/ImageResize/photos/"&strPhotoFolder&"/"&strPhotoFolder&""& TrackNo &".JPG?"&now
        text = "Change Photo"
ElseIf strPhotoName <> "" Then 
	    image = strPhotoName                              
Else 
	    image = ersPhotoUrl 
	  if image = "" or isnull(image) or isempty(image) then 
	   image = img_default_photo_upload
	   text = "Upload Photo"
	  
	  else
	  
  url22 = split(image,"?")
  url44 = url22(0)
  url66 = split(url44, "http://ers.bdjobs.com/applications/ImageResize/photos/"&strPhotoFolder&"/temp/")
  imgERStemp = url66(1)
 ' Response.Write("<br>imgERStemp:"&imgERStemp)
	  
	'redim objFSO99
	set objFSO99=Server.CreateObject("Scripting.FileSystemObject")
	dir99 = Request.ServerVariables("APPL_PHYSICAL_PATH")& "applications\ImageResize\photos\"&strPhotoFolder&"\temp\"

	photoTemp = ""
	photoTemp = dir99 & imgERStemp
	
		 if objFSO99.FileExists(photoTemp) then
         ' response.Write("Photo file is found ")
		 else
		 
			   image = "Default/images/default1.gif"
			   text = "Upload Photo"
		 
	      'Call  ShowValidateMsg(" Please upload a  "&strMsgVariableName& "<br />Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	     ' Response.End()
	     End if 	   
	  end if 

End If 


	  image2 = ersSignatureUrl 
	  if image2 = "" or isnull(image2) or isempty(image2) then 
	   image2 = img_default_signature_upload 
	   text2 = "Upload Signature"
	  else
	  
  url222 = split(image2,"?")
  url444 = url222(0)
 ' Response.Write("<br>url444:"&url444)
  
  url666 = split(url444, "http://ers.bdjobs.com/applications/ImageResize/photos/"&strPhotoFolder&"/signature/temp/")
  imgERStemp2 = url666(1)
 ' Response.Write("<br>imgERStemp2:"&imgERStemp2)


	'dim objFSO999
	set objFSO999=Server.CreateObject("Scripting.FileSystemObject")
	dir999 = Request.ServerVariables("APPL_PHYSICAL_PATH")& "applications\ImageResize\photos\"&strPhotoFolder&"\signature\temp\"

	photoTemp2 = ""
	photoTemp2 = dir999 & imgERStemp2
	
		if objFSO999.FileExists(photoTemp2) then
          'response.Write("signature file is found ")
		else
	     'Call  ShowValidateMsg(" Please upload a  "&strMsgVariableName& "<br />Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	     'Response.End()
		   image2 = "Default/images/default2.gif"
		   text2 = "Upload Signature"
	   
	   End if 	   
	  
	  end if 
         
%>
 
