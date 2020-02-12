
<div class="col-md-12">
<h5><span class="fa fa-thumb-tack"></span>Total Admit Download for MTO : <span id="total_mto_admit_download" class="badge" > 0 </span>
 </h5></div>


<div class="col-md-12">
<h5><span class="fa fa-thumb-tack"></span>Total Admit Download for TO : <span id="total_to_admit_download" class="badge" > 0 </span>
 </h5></div>
 
 
 <div class="col-md-12"><a href="FailedApplicants.asp?jobid=4" target="_blank"><h5>
<span class="fa fa-tags"></span>Falid List of  Admit Download for MTO</h5></a>
 </div>
 
 
 <div class="col-md-12"><a href="FailedApplicants.asp?jobid=5" target="_blank">
<h5><span class="fa fa-tags"></span>Falid List of  Admit Download for TO
 </h5></a></div>


<script>
 function CountAdmit()
 {
	 
	//alert(strCenter);
	
	//alert(ID);
		var xmlhttp;	
		var str_Message;
		
		if (window.XMLHttpRequest)
		{
			
			xmlhttp=new XMLHttpRequest();
		}
		else
		{// code for IE6, IE5
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		xmlhttp.onreadystatechange=function()
		{
			
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{         					  
				txt = xmlhttp.responseText;
				var count = txt.split("###");
				c_mto = count[0];
				c_to = count[1];
			//	alert(txt); 
			    document.getElementById("total_mto_admit_download").innerHTML = c_mto;
			    document.getElementById("total_to_admit_download").innerHTML = c_to;
			 }
		  }
		 xmlhttp.open("GET","CountAdmitDownload.asp",true);
	   
		xmlhttp.send(null);
		
	
 }

</script>