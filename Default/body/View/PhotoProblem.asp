<%

'If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or Request.ServerVariables("SERVER_NAME") = "server-ers" or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0  Then   ' only run  in office 

	' This Procedure is Used by All Class, Function & Procedure. This is an Error Message Displaying Procedure.
	SQL_ID = "" 
	SQL_ID = " select p.contactphone,p.ersphotourl,p.id,p.id, p.photourl,p.ersphotourl FROM [personal] p  where  p.photo = 0 and p.testcv = 0 and p.bdjobsphoto <> 1  " 
			
	'Response.Write("<br>"&SQL_ID)
   ' Response.Write("<br>jobid:"&jobid)
	arr_ID = objERS.RetrieveData(SQL_ID, errMsg)
	'Response.Write errMsg
	ErrorMessage "163", errMsg, 0	
	
	if arr_ID(0, 0) <> "Nothing" then
	  For i = 0 to ubound(arr_ID,  2)  ' 1 '
	  TrackNo = ""
	  TrackNo = arr_ID(3, i)
	  ersPHOTOURL = "" 
	  ersPHOTOURL = arr_ID(5, i)

     ' Response.Write("<br>ersphoto:"&ersPHOTOURL)

on error resume next 

if ersPHOTOURL <> "" then   	
  'http://ers.bdjobs.com/applications/ImageResize/photos/dhakabank/temp/113945AM05795186.jpg?t=1536039632"
  
  url2222 = split(ersPHOTOURL,"?")
  url4444 = url2222(0)
  url6666 = split(url4444, "http://ers.bdjobs.com/applications/ImageResize/photos/"&strPhotoFolder&"/temp/")
  imgERStemp = url6666(1)
	'Response.Write("<br>imgERStemp:"&imgERStemp)


	USERID = TrackNo
	currentUser = strContactPhone 
	 
	strModuleName = "Photo Missing DB" 
	strDescription = ReplacedAllTypeOfSpecialChar(ERR.DESCRIPTION&ersPHOTOURL) 
	strAction = "missing photo update to db "
	err.clear
%>
<!--#include File = 'UserLog.asp' -->	

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
		// alert("copy photo from temp to dhakabank successful!"); 
			   // document.getElementById('bdj_to_ers_photo_data').innerHTML = "";
				//document.getElementById('bdj_to_ers_photo_data').innerHTML = "<br>bdj photo to ers <br> <img src ='"+ersBdjToERsPhoto+"'  class = 'img-responsive' />"; 	
		
		 
		 }
		});
</script>

  <!--include virtual = '/applications/common/view/PhotoProblem_bdj_to_ers_ksb.asp'-->

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
If system = "ksb" then

	SQL_CHECK_PHOTO_URL = "select id, photourl, bdjphotourl, BdjobsID, BdjobsPhoto, SUBSTRING(LEFT(replace(bdjphotourl,'http://my.bdjobs.com/photos/',''), LEN(replace(bdjphotourl,'http://my.bdjobs.com/photos/',''))-4), CHARINDEX('/', LEFT(replace(bdjphotourl,'http://my.bdjobs.com/photos/',''), LEN(replace(bdjphotourl,'http://my.bdjobs.com/photos/',''))-4))+1, LEN(LEFT(replace(bdjphotourl,'http://my.bdjobs.com/photos/',''), LEN(replace(bdjphotourl,'http://my.bdjobs.com/photos/',''))-4))) from personal where photourl = '' and id="& TrackNo 
			
	'Response.Write("<br>"&SQL_CHECK_PHOTO_URL)
	arr_SQL_CHECK_PHOTO_URL = objERS.RetrieveData(SQL_CHECK_PHOTO_URL, errMsg)
	'Response.Write errMsg
	ErrorMessage "163", errMsg, 0
	
	If arr_SQL_CHECK_PHOTO_URL(0,0) <> "Nothing" Then
		
		empty_photoUrl = arr_SQL_CHECK_PHOTO_URL(1,0)
		
		bdjobs_url = arr_SQL_CHECK_PHOTO_URL(2,0)
		
		photoNameN = arr_SQL_CHECK_PHOTO_URL(5,0)
		
		imgSrcN =  "http://ers.bdjobs.com/applications/ImageResize/Photos/"&strPhotoFolder&"/bdjobs/"&photoNameN &".jpg"	
		
		if empty_photoUrl = "" then
			
			sqlUpdateUrl = "UPDATE PERSONAL SET PHOTOURL='"&imgSrcN &"', BdjobsPhoto=1 WHERE ID = "& TrackNo &" AND PHOTOURL = ''"
			'response.Write(sqlUpdateUrl)			
			objERS.ExecuteQuery sqlUpdateUrl, strErr
			ErrorMessage "111", strErr, 0
		else
		
		end if
		
		
	end if	

End If
%>
<%
'End If
%>
