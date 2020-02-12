<%if pdf = "" then%>

<SCRIPT language="JavaScript" src="../javascripts/common.js"></SCRIPT>
<script type="text/javascript" src="../javascripts/lightbox-form.js"></script>
<script type="text/javascript" src="../javascripts/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../javascripts/jquery.fancybox.js"></script>
<link  href="css/jquery.fancybox.css?v=2.1.0" rel="stylesheet" type="text/css" media="screen">
<script type="text/javascript">
		$(document).ready(function () {
  	$(".fancybox").fancybox({
		openEffect : 'elastic',
		openSpeed  : 600,
		closeEffect : 'elastic',
		closeSpeed  : 600 ,
		closeClick : true,
		'scrolling'  : 'yes',
		 'type' : 'inline'
	 });
});			
                     
 
     
	$(document).ready(function () {
	$(".BDJButton3").fancybox({
		openEffect : 'elastic',
		openSpeed  : 600,
		closeEffect : 'elastic',
		closeSpeed  : 600 ,
		closeClick : true,
		href : '#Wrapperbox',
		'scrolling'  : 'yes',
		'type' : 'inline'
	});
}); 
</script>

<script type="text/javascript">

	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-2113640-1']);
	  _gaq.push(['_setDomainName', 'bdjobs.com']);
	  _gaq.push(['_trackPageview']);
	
	  (function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();
	
	</script>


<SCRIPT language="javascript">
	var msgEdu="Are you sure, you want to delete this Academic Qualification?";
	var msgTra="Are you sure, you want to delete this Training Record?";
	var msgPro="Are you sure, you want to delete this Professional Qualification?";
	var tableEdu="Education";
	var tableTra="Training";
	var tablePro="Profession";
	function PassUserID(str1) 
	{
     document.getElementById('hPS').value=str1;
	 document.getElementById('formPS_View').submit();
	}
   function removeHand(btnName)
	{
	 thisbtn = document.getElementById(btnName) ;
       if (thisbtn!=null)
        {
			if(thisbtn.disabled == true )
			{			
			  thisbtn.style.cursor = "default" ;
			}//if(thisbtn.disabled = true )
			else
			{
			  thisbtn.style.cursor = "hand" ;
			}//else
       }
	}//function removeHand(btnName)

</SCRIPT>

<script language="javascript"> 
	removeHand('cmdRemove1') ;
    removeHand('cmdRemove2') ;
    removeHand('cmdRemove3') ;
</script>

<noscript>
	<center><span style="color:#900; font:Arial, Helvetica, sans-serif">This site requires Javascript enabled.<br> Please enable Javascript in your browser or switch to a browser that supports Javascript in order to view this site</span></center>
</noscript>

<div id="Wrapperbox" style="display:none; width:920px; height:774px;" >
       <iframe id="Iframe" name="Iframe"   frameborder="1" width="920px" height="774px"  ></iframe>
</div> 


<%else%>



<%end if%>