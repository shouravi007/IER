
<link href="http://ers.bdjobs.com/applications/common/photo_upload/default/css/bootstrap.min.css" rel="stylesheet" />
<link href="http://ers.bdjobs.com/applications/common/photo_upload/default/css/responsive.css" rel="stylesheet" />
<link href="http://ers.bdjobs.com/applications/common/photo_upload/default/css/jquery-ui.css" rel="stylesheet" />
<link href="http://ers.bdjobs.com/applications/common/photo_upload/default/css/jquery.Jcrop.min.css" rel="stylesheet" />


<script src="http://ers.bdjobs.com/applications/common/photo_upload/default/js/jquery-2.0.2.js"></script>
<script src="http://ers.bdjobs.com/applications/common/photo_upload/default/js/jquery-ui.js"></script>
<script src="http://ers.bdjobs.com/applications/common/photo_upload/default/js/bootstrap.min.js"></script>
<script src="http://ers.bdjobs.com/applications/common/photo_upload/default/js/jquery.Jcrop.min.js"></script>


<link href="http://ers.bdjobs.com/applications/common/photo_upload/default/css/jquery-ui.css" rel="stylesheet" />
<link href="http://ers.bdjobs.com/applications/common/photo_upload/default/css/jquery.Jcrop.min.css" rel="stylesheet" />

<style type="text/css">
	.jcrop-holder {
		margin: 0 auto 30px auto;
	}
	.btn-crop {
		margin: 0 10px 0 0;
	}
	.cropped {
		background-color: #37474f;
	}
	@media only screen and (min-width: 0px) and (max-width: 460px) {
		.img-mobile {
			width: 290px;
			-webkit-overflow-scrolling: touch;
			overflow: scroll;
			float: none;
			margin-bottom:15px;
		}
		.jcrop-holder {
			margin: 0 auto 10px auto;
			float: none;
		}
	}
	@media only screen and (min-width: 461px) and (max-width: 767px) {
		.img-mobile {
			width: 340px;
			-webkit-overflow-scrolling: touch;
			overflow: scroll;
			float: none;
			margin-bottom:15px;
		}
		.jcrop-holder {
			margin: 0 auto 10px auto;
			float: none;
		}
	}
	 @media only screen and (min-width: 0px) and (max-width: 767px) {
		/*.img-mobile {
			width: 295px;
			-webkit-overflow-scrolling: touch;
			overflow: scroll;
			float: none;
		}
		.jcrop-holder {
			margin: 0 auto 30px auto;
			float: none;
		}*/
		::-webkit-scrollbar {
			-webkit-appearance: none;
		}
		::-webkit-scrollbar:vertical {
			width: 12px;
		}
		::-webkit-scrollbar:horizontal {
			height: 12px;
		}
		::-webkit-scrollbar-thumb {
			background-color: rgba(0, 0, 0, .5);
			border-radius: 10px;
			border: 2px solid #ffffff;
		}
		::-webkit-scrollbar-track {
			border-radius: 10px;
			background-color: #ffffff;
		}
	}
</style>



<style type="text/css">
.body
{
-moz-hyphens:auto;
-ms-hyphens:auto;
-webkit-hyphens:auto;
hyphens:auto;
word-wrap:break-word;
}
</style>



                            
<script type="text/javascript">

	var jcrop_api;
	
	function confirmation(path) {
		var msg;
		msg = "Are you sure, you want to remove your photograph?";
		var t = window.confirm(msg);
		if (t) {
			document.getElementById("hidP").value = path;
			document.getElementById("hType").value = "Delete"
			document.getElementById("form1").submit();
			return true;
		}
		else {
			document.getElementById("hType").value = "Change";
			return false;
		}
	}

    function Cancel()
	{
		$('#pre_photo_upload_after').hide();
		$('#photo_after_before').show();
	}

	
	 
function CheckImage() {
		
	    var ImgFile = document.getElementById("File1");
		var ImgValue = ImgFile.value;

		var file = ImgFile.files[0];
		var count = file.size;
		count = Math.round((count * 0.000976562));


		if (count > 1023.5) {
			document.getElementById("File1").value = "";
			alert("File size is too large (" + count + "KB). Your file size must be below 1MB.");
			return false;
		}

		if (ImgValue.length == 0) {
			return false;
		}
		else {
			if ((ImgValue.indexOf(".gif") != -1) || (ImgValue.indexOf(".GIF") != -1) || (ImgValue.indexOf(".jpg") != -1) || (ImgValue.indexOf(".JPG") != -1) || (ImgValue.indexOf(".png") != -1) || (ImgValue.indexOf(".PNG") != -1) || (ImgValue.indexOf(".jpeg") != -1) || (ImgValue.indexOf(".JPEG") != -1)) {

				$("#skipCroppingPhoto").prop("disabled", false).css("background-color", "#69aa44").show();
				$("#cropNuploadPhoto").prop("disabled", false).css("background-color", "#69aa44").show();
		   	    $("#uploadPhoto").prop("disabled", true).hide();
				$('#btnCancel').show();
				$("#changeImage").removeClass("user-photo");
				
				
				
				$("#changeImage").html("").append("<img src='" + URL.createObjectURL(file) + "' id='userImg' name='userImg' alt='User Photo' />");

				assignJcrop();
			
			
			$('#pre_photo_upload_after').show();
		    $('#photo_after_before').hide();

			
			}
			else {

				alert("The image file must be gif, jpeg or png.");
				document.getElementById("file").value = "";
				return false;
			}
		}
	}	
	
	
	
	function assignJcrop() {
		$(document).ready(function () {
			setTimeout(function () {
				$("#userImg").Jcrop({
					onSelect: storeCoords,
					onChange: storeCoords,
					aspectRatio: 1,
					boxWidth: 500,
					boxHeight: 450
				}, function () {
					jcrop_api = this;
					
					var dim = jcrop_api.getBounds();
					var heightWidth = selectedPosition(dim);
					var startX = Math.round(dim[0]) > 340 ? Math.round((dim[0] / 2)) - Math.round((dim[0] / 2 / 100 * 40)) : 0;
					var startY = Math.round(dim[1]) > 340 ? Math.round((dim[1] / 2)) - Math.round((dim[1] / 2 / 100 * 40)) : 0;
					jcrop_api.setSelect([startX, startY, heightWidth, heightWidth]);
				});
			}, 500);
		});
	}

	function storeCoords(c) {
		
		if (c.w != 0 || c.h != 0)
		{
			$("#skipCroppingPhoto").prop("disabled", false).show();
			$("#cropNuploadPhoto").prop("disabled", false).show();
			$("#uploadPhoto").prop("disabled", true).hide();
			$("#X").val(c.x);
			$("#Y").val(c.y);
			$("#W").val(c.w);
			$("#H").val(c.h);
		}
		else
		{
			$("#skipCroppingPhoto").prop("disabled", true).hide();
			$("#cropNuploadPhoto").prop("disabled", true).hide();
			$("#uploadPhoto").prop("disabled", false).show();
			$("#X").val(0);
			$("#Y").val(0);
			$("#W").val(0);
			$("#H").val(0);
		}
	}

	function UploadFunction() {

        document.getElementById('photo_data').innerHTML = "";
		var ImgFile = document.getElementById("File1");
 
		var ImgValue = ImgFile.value;
		var file = ImgFile.files[0];
		var count = file.size;
		count = Math.round((count * 0.000976562));

		if (ImgValue.length == 0) {
			alert("Please select image file to upload!");
			return false;
		}

		if (count > 1023.5) {
			jcrop_api.release();
			$("#skipCroppingPhoto").prop("disabled", true).hide();
			$("#cropNuploadPhoto").prop("disabled", true).hide();
			$("#uploadPhoto").prop("disabled", true).show();
			$("#cropPhoto").css("background-color", "#69aa44");
			ImgFile = "";
			alert("File size is too large (" + count + "KB). Your file size must be below 1MB.");
			return false;
		}
		else
		{
		  
		$('#pre_photo_upload_after').hide();
		$('#photo_after_before').show();
		  
		   $('#processing').html("<img src='http://ers.bdjobs.com/applications/images/please_wait.gif' style='width:200px; height:200px;' />"); 
			
			$("#imgUser").hide();
			$("#File1").hide();
			

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
			    //document.getElementById('ersPhoto2').value = data;
				//$('#imgUser').hide();
                console.log("success");
                console.log(data);
			    $("#File1").show();
		       

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
	}

	function filesize() {
		var input, file;
		input = document.getElementById("File1");
		file = input.files[0];

		if (file.size > 1024) {
			alert("File size is too large ('" + file.size + "')KB. Your file size must be below MB.");
			return false;
		}
	}

	function skipCropingImage() {
		jcrop_api.release();
		$("#X").val(0);
		$("#Y").val(0);
		$("#W").val(0);
		$("#H").val(0);
		$("#skipCroppingPhoto").prop("disabled", true).hide();
		$("#cropNuploadPhoto").prop("disabled", true).hide();
		$("#uploadPhoto").prop("disabled", false).show();
	}

	function selectedPosition(dim) {
		//alert(dim);
		var x;

		if (Math.round(dim[0]) <= 340) {
			x = 200;
		}
		else if (Math.round(dim[1]) <= 340) {
			x = 200;
		}
		else {
			var width = Math.round((dim[0]) / 100) * 80;
			var height = Math.round((dim[1]) / 100) * 80;
			x = width <= height ? width : height;
		}
		return x;
	}

	$("#changePhoto").click(function () {
		$("#btn_import").hide();
		$("#File1").show();
		$("#changePhoto").remove();
		$("#skipCroppingPhoto").prop("disabled", true);
		$("#cropNuploadPhoto").prop("disabled", true);
		$("#uploadPhoto").prop("disabled", true);

		$("#skipCroppingPhoto").hide();
		$("#cropNuploadPhoto").hide();

		$("#uploadPhoto").show();
		$("#uploadPhoto").prop("disabled", true);
		$("#uploadSMPhoto").css({ display: "inline" });
		$("#uploadSMPhoto").addClass("show");
		$("#btnDelete").hide();
		$("#btnCancel").show();
	});
</script>
