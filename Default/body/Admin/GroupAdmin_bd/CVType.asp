 <div class="col-sm-4">
    <!--#include File = 'CVType\cvType.asp' -->
 </div>
  
<% If Request.Cookies("USERNAME") = "mahbub" or Session("USERNAME") = "mahbub" or Session("UserName") = "mahbub"  then %>
 <div class="col-sm-2 xs-mb">
    <!--#include File = 'CVType\Rejection.asp' -->
 </div>
<%End If%>
  

 <div class="col-sm-6 xs-mb">
    <!--#include File = 'CVType\JobApplicationDate.asp' -->
 </div>
 
 <div class="col-sm-2 xs-mb">
    <!--#include File = 'CVType\TrackingNumber.asp' -->
 
 </div>
    
<div class="col-sm-2">
<!--#include File = 'CVType\RollNumber.asp' -->
</div>

 
  	<div id="JobAdvertise"></div>
  <br />
  
        <span id="applicationDate">
            <div class="smallHeaderName"></div>
            <link rel="stylesheet" href="jq/development-bundle/themes/base/jquery.ui.all.css">
			<script src="jq/development-bundle/jquery-1.7.1.js"></script>
            <script  src="jq/development-bundle/ui/jquery.ui.core.js"></script>
            <script  src="jq/development-bundle/ui/jquery.ui.widget.js"></script>
            <script src="jq/development-bundle/ui/jquery.ui.datepicker.js"></script>
<!--            <link rel="stylesheet" href="jq/development-bundle/demos/demos.css">
-->	<script>
	$(function() {
		$( "#datepicker1" ).datepicker();
	});
		$(function() {
		$( "#datepicker2" ).datepicker();
	});
	</script> 
    
    </span>
