<%
	Server_FOR_PDF_DOC_IS_NOW = "banglalink.bdjobs.com/pdfbuilder" 
	'strBody = strBody & "wel come to banglaink cv in pdf " 	
 
	'Response.Write "<input type=""hidden"" id=""MainCV"" value="""&strBody&"""  > "
    'Response.Write "<br>"&strBody
	bodyShow = ""
	if testPdf = "true" then
	 bodyShow = strBodyTest
	else 
	 bodyShow = strBody
	end if
%>

<form id="form2" name="form2" method="post" action="http://<%= Server_FOR_PDF_DOC_IS_NOW %>/CV_PDF_BL.php">
<input type="hidden" name="rankForJS_" id="rankForJS_" value="">  
<input type="hidden" name="MainCV_" id="MainCV_" value="<%=bodyShow%>"> 
<input type="hidden" name="imgSrc_" id="imgSrc_" value=""> 

</form>



<script type="text/javascript">
 	 document.getElementById("form2" ).submit() ;
</script>
