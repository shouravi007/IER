<%
'imageName = "TB"&TrackNo&".jpg"
imageName = strPhotoFolder&TrackNo&".jpg"
'response.Write("checkDevice: "&checkDevice)
%>
  
<form id="form2" action="http://ers.bdjobs.com/applications/common/photo_upload_ers/Default.php" method="POST" >

<input type="hidden" id="txtPassword" name="txtPassword" value="<%=strPassword%>"/>
<input type="hidden" id="txtTrackingNo" name="txtTrackingNo" value="<%=intTrackingNo%>"/>     

<input type="hidden" id="pageName" name="pageName" value="<%=Request.ServerVariables("URL")%>"/>                  

<input type="hidden" id="Name" name="Name" value="<%=strName%>"/>  
<input type="hidden" id="PostedOn" name="PostedOn" value="<%=postedOn%>"/>  
<input type="hidden" id="UpdatedOn" name="UpdatedOn" value="<%=updatedOn%>"/>  
<input type="hidden" id="imgSrc" name="imgSrc" value="<%=imgSrc%>"/>  

<input type="hidden" id="imageName" name="imageName" value="<%=imageName%>"/>  

<input type="hidden" id="systemName" name="systemName" value="<%=strSystemName%>" >
<input type="hidden" id="folderName" name="folderName" value="<%=strPhotoFolder%>" >
<input type="hidden" id="photo_upload" name="photo_upload" value="post_upload_desktop"/> 

<input type="hidden" id="now" name="now" value="<%=now%>"/> 


<input type="hidden" name="photo_width" id="photo_width" value="<%=photo_width%>" /> 
<input type="hidden" name="photo_height" id="photo_height" value="<%=photo_height%>" /> 
<input type="hidden" name="signature_width" id="signature_width" value="<%=signature_width%>" /> 
<input type="hidden" name="signature_height" id="signature_height" value="<%=signature_height%>" /> 
                             


</form>
  

              
       