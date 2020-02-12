<%
'If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or Request.ServerVariables("SERVER_NAME") = "server-ers" or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0  Then   ' only run  in office 

	' This Procedure is Used by All Class, Function & Procedure. This is an Error Message Displaying Procedure.
	SQL_ID = "" 
	SQL_ID = " select top 10 p.BdjobsID,p.BdjobsPhoto, p.photo, p.id, p.photourl, p.bdjobsphotourl FROM [personal] p where p.photourl = '' and bdjobsphotourl <> ''   " 
			
	'Response.Write("<br>"&SQL_ID)
	'response.End()
   ' Response.Write("<br>jobid:"&jobid)
	arr_ID = objERS.RetrieveData(SQL_ID, errMsg)
	'Response.Write errMsg
	ErrorMessage "12", errMsg, 0	
	
	if arr_ID(0, 0) <> "Nothing" then
	  For i = 0 to ubound(arr_ID,  2)  ' 1 '
		  BdjobsID = ""
		  BdjobsID = arr_ID(0, i)
		  BdjobsPhoto = "" 
		  BdjobsPhoto = arr_ID(1, i)
		  photo = "" 
		  photo = arr_ID(2, i)
		  id = "" 
		  id = arr_ID(3, i)
		  photourl = "" 
		  photourl = arr_ID(4, i)
		  photoName2 = arr_ID(5, i)

      'Response.Write("<br>photoName2:"&photoName2)

on error resume next 
if photoName2 <> "" then   

			strMybdjobs = True
			photoName1 = "" ' "http://my.bdjobs.com/photos/"
			strImageLink = photoName1&photoName2
			ValuePrint strImageLink , "98-strImageLink"
			strPhotoName = strImageLink
			'strPhotoName = strImageLink
			pp33 = split(photoName2, "/")
			onlyPhoto = pp33(1) 			

     If photoName2 <> "" then 
	 %>
      <script>
	    var ersBdjToERsPhoto = "";
		ersBdjToERsPhoto = "http://ers.bdjobs.com/applications/imageResize/photos/<%=strPhotoFolder%>/bdjobs/<%=onlyPhoto%>";
		var dataForPhoto = "";						  						
		dataForPhoto +="bdjPhoto=<%=photoName2%>";
		dataForPhoto +="&folderName=<%=strPhotoFolder%>";
		dataForPhoto +="&now=<%=now%>";
		dataForPhoto +="&txtTrackingNo=<%=id%>";
		$.ajax(
		{
		type: "POST",
		contentType: "application/x-www-form-urlencoded; charset=utf-8",
		url: "http://ers.bdjobs.com/applications/common/photo_upload_ers/bdjPhotoToErs_problem.php",
		data: dataForPhoto,
		success: function (result)
		 { 
		     //  alert("copy photo from bdjobs to ers successful!"); 
		 }
		})	  
       </script>
     <%end if%>

<%
	   
	if err.number <> 0 then 
	  response.Write("<br>err:"&err.description)
	  sendmail replyto, developerTo, "error-photo-bdj-to-ers-"&strPhotoFolder&"--"&now, err.description, "", commonMail, replyto  
	 err.clear 
	end if 

End If 

     Next 
 End If 
%>


<%
'End If
%>
