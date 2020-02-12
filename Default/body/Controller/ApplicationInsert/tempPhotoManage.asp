<% 
ersPHOTOURL = Request.Form("ersPhoto")

if strPhotoFolder = "" then
	strPhotoFolder = "ucb"
end if
 
on error resume next
 
if ersPHOTOURL <> "" then   	
  
  url22 = split(ersPHOTOURL,"?")
  url44 = url22(0)
  url66 = split(url44, "http://ers.bdjobs.com/applications/ImageResize/photos/"&strPhotoFolder&"/temp/")
  imgERStemp = url66(1)
  ' Response.Write("<br>imgERStemp:"&imgERStemp)

	USERID = TrackNo
	currentUser = strContactPhone 
	 
	strModuleName = "Temp Photo Manage FT" 
	strDescription = ReplacedAllTypeOfSpecialChar(ERR.DESCRIPTION&ersPHOTOURL) 
	strAction = "php photo rename"
	err.clear
%>
<!--include virtual = '/applications/common/admin/UserLog.asp' -->
 <!--#include File = "UserLog.asp" -->	

<script>
		var dataForPhoto = "";						  						
		dataForPhoto +="ersPhoto=<%=imgERStemp%>";
		dataForPhoto +="&TrackNo=<%=TrackNo%>";
		dataForPhoto +="&now=<%=now%>";
		dataForPhoto +="&photo_upload=pre_upload";
		dataForPhoto +="&folderName=<%=strPhotoFolder%>";
		$.ajax(
		{
		type: "POST",
		contentType: "application/x-www-form-urlencoded; charset=utf-8",
		url: "http://ers.bdjobs.com/applications/common/photo_upload_ers/tempPhotoToERS.php",
		data: dataForPhoto,
		success: function (result)
		 { 
		// alert("copy photo from temp to ksb successful!"); 
			   // document.getElementById('bdj_to_ers_photo_data').innerHTML = "";
				//document.getElementById('bdj_to_ers_photo_data').innerHTML = "<br>bdj photo to ers <br> <img src ='"+ersBdjToERsPhoto+"'  class = 'img-responsive' />"; 	
		
		 
		 }
		});
</script>

<%
	   
	if err.number <> 0 then 
	  'response.Write("<br>err:"&err.description)
	  'sendmail replyTo, developerTo, "error-photo-temp-to-"&strPhotoFolder&"--"&now, err.description, "", commonMail, replyTo  
	 err.clear 
	end if 

End If 

%> 

