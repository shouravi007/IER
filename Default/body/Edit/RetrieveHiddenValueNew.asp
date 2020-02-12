<%
hidTrackNoNew = Trim(Request.Form("TrackNoNew"))
hidPassword = Trim(Request.Form("txtPassword"))
hidjobid = Trim(Request.Form("jobid"))
hidName = Trim(Request.Form("Name"))

sql = " select postedon,updatedon,photourl, Photo, bdjobsphoto,bdjobsid,signatureurl, SUBSTRING(LEFT(replace(photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(photourl,'http://my.bdjobs.com/photos/',''))-4), CHARINDEX('/', LEFT(replace(photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(photourl,'http://my.bdjobs.com/photos/',''))-4))+1, LEN(LEFT(replace(photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(photourl,'http://my.bdjobs.com/photos/',''))-4))) FROM Personal where id = "&intTrackingNo

'response.Write(sql)
arrGG = objERS.RetrieveData(sql, errMsg)

hidPostedOn = arrGG(0,0) 'Trim(Request.Form("PostedOn"))
hidUpdatedOn = arrGG(1,0)'Trim(Request.Form("UpdatedOn"))
hidimgSrc = arrGG(2,0) 'Trim(Request.Form("imgSrc"))

IsBdjPhoto = arrGG(4, 0)
BdjobsId = arrGG(5, 0)
srcSignature = arrGG(6, 0)& "?"&rnd&time
onlyPhotoSrc = arrGG(7, 0)		

%>
<!-- photo view in page ---  
parameter list  >  IsPhoto , IsBdjPhoto , BdjobsId, onlyPhotoSrc, strPhotoFolder 
this variable should be used in earliar before include the page 
strPhotoFolder > came from system.asp  
-->
<!--#include virtual = '/applications/common/photo_upload/photo_view.asp' -->  

<%

hidimgSrc = imgSrc

if hidimgSrc = "" then
	hidimgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"
end if 



%>
