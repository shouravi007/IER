<%
   err.clear 
%>
<script type="text/javascript">
	function printIT()
	{
		var strPara = document.getElementById("paraPrint").innerHTML;
		var strParaTop = document.getElementById("paraPrintTop").innerHTML;
		document.getElementById("paraPrint").innerHTML="";
		document.getElementById("paraPrintTop").innerHTML="";
		window.print();
		document.getElementById("paraPrint").innerHTML=strPara;
		document.getElementById("paraPrintTop").innerHTML=strParaTop;
	}
	
	function closeIT()
	{
		window.close();
	}
	
	
</script>

<%
IsAcademic = False
IsPersonal = False
IsPhoto = False
admin = trim(Request.Form("admin"))

%>
<!--#include File = 'ViewResume\LoginCheck.asp' -->
<!--#include File = 'ViewResume\Personal.asp' -->
<!--#include File = 'ViewResume\Academic.asp' -->
<!--#include File = 'ViewResume\Reference.asp' -->
<!--#include File = 'ViewResume\content_personal.asp' -->
<!--#include File = 'ViewResume\content_academic.asp' -->
<!--#include File = 'ViewResume\content_personal_details.asp' -->
<!--#include File = 'ViewResume\content_language_profeciency.asp' -->
<!--#include File = 'ViewResume\content_references.asp' -->
<!--#include File = 'ViewResume\content_others.asp' -->
<!--#include File = 'ViewResume\content_signature.asp' -->

<script>
 var TrackNo = "<%=intTrackingNo%>";
 if ( TrackNo != "")
 {
	 document.getElementById('login').innerHTML = "Logout";
	 //document.getElementById('backMenu').style.display = "block";
	 document.getElementById('homeMenu').style.display = "block";
	document.getElementById('printMenu').style.display = "block"; 
 }
 else
 {
	 
 }
 
 var admin = "<%=admin%>";
 if(admin == "true")
 {
	 document.getElementById('login').style.display = "none";
	 //document.getElementById('backMenu').style.display = "block";
	 document.getElementById('homeMenu').style.display = "none";
	 document.getElementById('printMenu').style.display = "none"; 
 

	 document.getElementById('ForgetLogin').style.display = "none";
	 document.getElementById('Apply').style.display = "none";
 }
 
</script>
 
<%
 
 intTrackingNo = Trim(Request.Form("txtTrackingNo"))

 strPassword = Trim(Request.Form("txtPassword"))
 

%>
  
<form id="back" name="back" action="?<%=Encode("Location=Controller&FormAction=AfterLogin")%>" method="post">
<INPUT type="hidden" name="txtTrackingNo" value="<%=intTrackingNo%>">
<INPUT type="hidden" name="txtPassword"  value="<%=strPassword%>">
<input type="hidden" id="jobid" name="jobid" value="<%=jobid%>"  /> 
</form>          



<form id="logout" name="logout" action="" method="post" style="padding:0;">
<INPUT type="hidden" name="txtTrackingNo" value="<%=intTrackingNo%>">
<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">
<input type="hidden" id="jobid" name="jobid" value="<%=jobid%>"  /> 
</form>
		
