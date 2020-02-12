<p class="btn-wrap" align="center">

<form action=""  name="photo" id="imageUploadForm"  method="post" enctype="multipart/form-data" style="padding:0; max-width: 215px; display: inline-block;">                        
<!-- <i class="fa fa-upload" aria-hidden="true"></i>-->  

<input  name="file" type="file"  id="file" accesskey="U"  onChange="return CheckImage();" size="40" maxlength="1024" class="btn-style-3" />

<input type="hidden" id="txtTrackingNo" name="txtTrackingNo" value=""/>     
<input type="hidden" id="pageName" name="pageName" value=""/>                  

<input type="hidden" id="Name" name="Name" value=""/>  
<input type="hidden" id="PostedOn" name="PostedOn" value=""/>  
<input type="hidden" id="UpdatedOn" name="UpdatedOn" value=""/>  
<input type="hidden" id="imgSrc" name="imgSrc" value=""/>  

<%
 imgName123 = time&rnd
 imgName123 = trim(imgName123)
 imgName123 = replace(imgName123," ","")
 imgName123 = replace(imgName123,":","")
 imgName123 = replace(imgName123,".","")

%>

<input type="hidden" id="imageName" name="imageName" value="<%=imgName123%>.jpg"/>  

<input type="hidden" id="systemName" name="systemName" value="<%=strSystemName%>" >
<input type="hidden" id="folderName" name="folderName" value="<%=strPhotoFolder%>" >

<input type="hidden" id="now" name="now" value=""/> 
<input type="hidden" id="photo_upload" name="photo_upload" value="pre_upload"/> 
                 
</form>


<script>
	function CheckImage() {
		var ImgFile = document.getElementById("file");
		var ImgValue = ImgFile.value;
		var file = ImgFile.files[0];
		var count = file.size;
		count = Math.round((count * 0.000976562));

//		if ($("#btnCancel").css("display") == "none") {
//			$("#btnCancel").show();
//		}

		if (count > 1023.5) {
//			$("#skipCroppingPhoto").prop("disabled", true).hide();
//			$("#cropNuploadPhoto").prop("disabled", true).hide();
//			$("#uploadPhoto").prop("disabled", true).show();
//			$("#cropPhoto").css("background-color", "#69aa44");
			document.getElementById("file").value = "";
			alert("File size is too large (" + count + "KB). Your file size must be below 1MB.");
			return false;
		}

		if (ImgValue.length == 0) {
//			if (jcrop_api) {
//						jcrop_api.release();
//						jcrop_api.destroy();
//			}
//			$("#skipCroppingPhoto").prop("disabled", true).hide();
//			$("#cropNuploadPhoto").prop("disabled", true).hide();
//			$("#uploadPhoto").prop("disabled", true).show();
			return false;
		}
		else {
			if ((ImgValue.indexOf(".gif") != -1) || (ImgValue.indexOf(".GIF") != -1) || (ImgValue.indexOf(".jpg") != -1) || (ImgValue.indexOf(".JPG") != -1) || (ImgValue.indexOf(".png") != -1) || (ImgValue.indexOf(".PNG") != -1) || (ImgValue.indexOf(".jpeg") != -1) || (ImgValue.indexOf(".JPEG") != -1)) {

//				$("#skipCroppingPhoto").prop("disabled", false).css("background-color", "#69aa44").show();
//				$("#cropNuploadPhoto").prop("disabled", false).css("background-color", "#69aa44").show();
//				$("#uploadPhoto").prop("disabled", true).hide();
//				$("#changeImage").removeClass("user-photo");
//				$("#changeImage").html("").append("<img src='" + URL.createObjectURL(file) + "' id='userImg' name='userImg' alt='User Photo' />");

				//assignJcrop();
			
			
		   $('#processing').html("<img src='http://ers.bdjobs.com/applications/images/please_wait.gif' style='width:200px; height:200px;' />"); 
			
			$("#imgUser").hide();
			$("#file").hide();
			

	  //  e.preventDefault();
        var formData = new FormData(document.getElementById('imageUploadForm'));

        $.ajax({
            type:'POST',
           // url: "http://ers.bdjobs.com/applications/ImageResize/php/sjibl_preupload/upload_resized.php",
			url: "http://ers.bdjobs.com/applications/common/photo_upload/Default.php", 
            data:formData,
            cache:false,
            contentType: false,
            processData: false,
            success:function(data){
			    document.getElementById('photo_data').innerHTML = "";
				var n = data.search("Error");
				if(n > 0)
				{
				document.getElementById('photo_data').innerHTML = data;
				
				}
				else
				{				
				document.getElementById('photo_data').innerHTML = "<img src ='"+data+"'  class = 'img-responsive' />"; 
				$('#processing').html(""); 
				}
				
			    document.getElementById('ersPhoto').value = data;
			    document.getElementById('ersPhoto1').value = data;
			    document.getElementById('ersPhoto2').value = data;
				
                console.log("success");
                console.log(data);
			    $("#file").show();
		       

            },
            error: function(data){
                console.log("error");
                console.log(data);
				document.getElementById('photo_data').innerHTML = "Sorry ! photo upload not successful, please try again." ; 	
            
				$("#file").show();
				$("#imgUser").show();				
				$('#processing').html(""); 
			
			}
        });
			
			
			}
			else {
//				$("#skipCroppingPhoto").prop("disabled", true).hide();
//				$("#cropNuploadPhoto").prop("disabled", true).hide();
//				$("#uploadPhoto").prop("disabled", true).show();
				alert("The image file must be gif, jpeg or png.");
				document.getElementById("file").value = "";
				return false;
			}
		}
	}
</script>

<br /> 
<p id="ers_photo_validation_msg" style="display:none;color:#e60278;"> </p>

</p>