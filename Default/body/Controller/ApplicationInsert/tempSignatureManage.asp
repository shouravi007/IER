<% 
ersSIGNATUREURL = Request.Form("ersSignature")
'Response.Write("<br>ersphoto:"&ersSIGNATUREURL)
if strPhotoFolder = "" then
	strPhotoFolder = "ucb"
end if

on error resume next 

if ersSIGNATUREURL <> "" then   	
  
  url2222 = split(ersSIGNATUREURL,"?")
  url4444 = url2222(0)
  url6666 = split(url4444, "http://ers.bdjobs.com/applications/ImageResize/photos/"&strPhotoFolder&"/signature/temp/")
  imgERStemp222 = url6666(1)
'Response.Write("<br>imgERStemp:"&imgERStemp)

	USERID = TrackNo
	currentUser = strContactPhone 
	 
	strModuleName = "Temp Signature Manage FT" 
	strDescription = ReplacedAllTypeOfSpecialChar(ERR.DESCRIPTION&ersSIGNATUREURL) 
	strAction = "php signature rename"
	err.clear
%>
<!--include virtual = '/applications/common/admin/UserLog.asp' -->	
 <!--#include File = "UserLog.asp" -->
<script>
		var dataForSignature = "";						  						
		dataForSignature +="ersSignature=<%=imgERStemp222%>";
		dataForSignature +="&TrackNo=<%=TrackNo%>";
		dataForSignature +="&now=<%=now%>";
		dataForSignature +="&folderName=<%=strPhotoFolder%>";
		$.ajax(
		{
		type: "POST",
		contentType: "application/x-www-form-urlencoded; charset=utf-8",
		url: "http://ers.bdjobs.com/applications/common/photo_upload_ers/tempSignatureToERS.php",
		data: dataForSignature,
		success: function (result)
		 { 
		// alert("copy photo from temp to dhakabank successful!"); 
			   // document.getElementById('bdj_to_ers_photo_data').innerHTML = "";
				//document.getElementById('bdj_to_ers_photo_data').innerHTML = "<br>bdj photo to ers <br> <img src ='"+ersBdjToERsSignature+"'  class = 'img-responsive' />"; 	
		
		 
		 }
		});
</script>

<%
	   
	if err.number <> 0 then 
	 ' response.Write("<br>err:"&err.description)
	  ' sendmail replyTo, developerTo, "error-SIG-temp-to-"&strPhotoFolder&"--"&now, err.description, "", commonMail, replyTo  
	 err.clear 
	end if 

End If 

%> 

