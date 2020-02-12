<%

'If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or Request.ServerVariables("SERVER_NAME") = "server-ers" or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0  Then   ' only run  in office 

	' This Procedure is Used by All Class, Function & Procedure. This is an Error Message Displaying Procedure.
	SQL_ID = "" 
	SQL_ID = " select  id,erssignatureurl,signatureurl,[signature]  from  personal where [signature] = 0  and erssignatureurl not  like '%Fatal%'   " 
			
	'Response.Write("<br>"&SQL_ID)
   ' Response.Write("<br>jobid:"&jobid)
	arr_ID = objERS.RetrieveData(SQL_ID, errMsg)
	'Response.Write errMsg
	ErrorMessage "163", errMsg, 0	
	
	if arr_ID(0, 0) <> "Nothing" then
	  For i = 0 to ubound(arr_ID,  2)  ' 1 '
	  TrackNo = ""
	  TrackNo = arr_ID(0, i)
	  ersPHOTOURL = "" 
	  ersPHOTOURL = arr_ID(1, i)

     ' Response.Write("<br>ersphoto:"&ersPHOTOURL)

on error resume next 
if ersPHOTOURL <> "" then   	
  'http://ers.bdjobs.com/applications/ImageResize/photos/dhakabank/temp/113945AM05795186.jpg?t=1536039632"
  
  url2222 = split(ersPHOTOURL,"?")
  url4444 = url2222(0)
  url6666 = split(url4444, "http://ers.bdjobs.com/applications/ImageResize/photos/"&strPhotoFolder&"/signature/temp/")
  imgERStemp = url6666(1)
'Response.Write("<br>imgERStemp:"&imgERStemp)


	USERID = TrackNo
	currentUser = TrackNo 
	 
	strModuleName = "Signature Missing DB" 
	strDescription = ReplacedAllTypeOfSpecialChar(ERR.DESCRIPTION&ersPHOTOURL) 
	strAction = "missing signature update to db "
	err.clear
%>
<!--#include File = 'UserLog.asp' -->	

<script>
		var dataForPhoto = "";						  						
		dataForPhoto +="ersSignature=<%=imgERStemp%>";
		dataForPhoto +="&TrackNo=<%=TrackNo%>";
		dataForPhoto +="&now=<%=now%>";
		dataForPhoto +="&photo_upload=pre_upload";
		dataForPhoto +="&folderName=<%=strPhotoFolder%>";
		$.ajax(
		{
		type: "POST",
		contentType: "application/x-www-form-urlencoded; charset=utf-8",
		url: "http://ers.bdjobs.com/applications/common/photo_upload_ers/tempSignatureToERS.php",
		data: dataForPhoto,
		success: function (result)
		 { 
		// alert("copy photo from temp to dhakabank successful!"); 
			   // document.getElementById('bdj_to_ers_photo_data').innerHTML = "";
				//document.getElementById('bdj_to_ers_photo_data').innerHTML = "<br>bdj photo to ers <br> <img src ='"+ersBdjToERsPhoto+"'  class = 'img-responsive' />"; 	
		
		 
		 }
		});
</script>

<%
	   
	if err.number <> 0 then 
	  response.Write("<br>err:"&err.description)
	  sendmail replyto, developerTo, "error-photo-temp-to-"&strPhotoFolder&"--"&now, err.description, "", commonMail, replyto  
	 err.clear 
	end if 

End If 

     Next 
 End If 
%>


<%
'End If
%>
