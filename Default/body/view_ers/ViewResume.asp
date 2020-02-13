   <link rel="stylesheet" href="<%=common_css%>">
   <link rel="stylesheet" href="http://ers.bdjobs.com/applications/common/css/kb.css">


<div class="col-md-12">
     
     <div class="summery-view bg-style">
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

  </div>

</div>

      

   