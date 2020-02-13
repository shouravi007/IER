<div class="btn-wrap" align="center">

<form action=""  name="imageUploadForm2" id="imageUploadForm2"  method="post" enctype="multipart/form-data" style="padding:0;">                       
<!-- <i class="fa fa-upload" aria-hidden="true"></i>-->  

<input  name="file2" type="file"  id="file2" accesskey="U"  onChange="return CheckImage2();" size="40" maxlength="1024" class="btn-style-3" />

<input type="hidden" id="TrackNoNEW" name="TrackNoNEW" value=""/>  
<input type="hidden" id="TrackNo" name="TrackNo" value=""/>     
<input type="hidden" id="pageName" name="pageName" value=""/>                  

<input type="hidden" id="Name" name="Name" value=""/>  
<input type="hidden" id="PostedOn" name="PostedOn" value=""/>  
<input type="hidden" id="UpdatedOn" name="UpdatedOn" value=""/>  
<input type="hidden" id="imgSrc" name="imgSrc" value=""/>  

<%
 imgName223 = time&rnd
 imgName223 = trim(imgName223)
 imgName223 = replace(imgName223," ","")
 imgName223 = replace(imgName223,":","")
 imgName223 = replace(imgName223,".","")

%>

<input type="hidden" id="imageName" name="imageName" value="<%=imgName223%>.jpg"/>  

<input type="hidden" id="systemName" name="systemName" value="" >


<input type="hidden" id="now" name="now" value=""/>                                               
                 
</form>


<script>
	function CheckImage2() {
		var ImgFile = document.getElementById("file2");
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
			document.getElementById("file2").value = "";
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
			
			
		   $('#processing2').html("<img src='http://ers.bdjobs.com/applications/images/please_wait.gif' style='width:200px; height:200px;' />"); 
			
			$("#imgUser2").hide();
			$("#file2").hide();
			

	  //  e.preventDefault();
        var formData = new FormData(document.getElementById('imageUploadForm2'));

        $.ajax({
            type:'POST',
            url: "http://ers.bdjobs.com/applications/ImageResize/php/sjibl_preupload_signature/upload_resized.php",
			 
            data:formData,
            cache:false,
            contentType: false,
            processData: false,
            success:function(data){
			    document.getElementById('photo_data2').innerHTML = "";
				
			   
				var n = data.search("Error");
				if(n > 0)
				{
				document.getElementById('photo_data2').innerHTML = data;
				
				}
				else
				{				
				document.getElementById('photo_data2').innerHTML = "<img src ='"+data+"'  class = 'img-responsive' style='width:300px; height:80px;' />"; 	
				}			   
			   
			   
			   
			    document.getElementById('ersSignature').value = data;
			    document.getElementById('ersSignature1').value = data;
			    document.getElementById('ersSignature2').value = data;
				
                console.log("success");
                console.log(data);
			    $("#file2").show();
		        $('#processing2').html(""); 

            },
            error: function(data){
                console.log("error");
                console.log(data);
				document.getElementById('photo_data2').innerHTML = "Sorry ! signature upload not successfull, please try again." ; 	
            
			   $("#file2").show();
			   $('#processing2').html(""); 
			
			}
        });
			
			
			}
			else {
//				$("#skipCroppingPhoto").prop("disabled", true).hide();
//				$("#cropNuploadPhoto").prop("disabled", true).hide();
//				$("#uploadPhoto").prop("disabled", true).show();
				alert("The image file for signature must be gif, jpeg or png.");
				document.getElementById("file2").value = "";
				return false;
			}
		}
	}
</script>

<br /> 
<p id="ers_photo_validation_msg2" style="display:none;color:#e60278;"> </p>

</div>