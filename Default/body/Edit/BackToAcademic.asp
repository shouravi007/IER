	<FORM  method ="post" name="frmEducation" id="frmEducation" action="?<%=Encode("Location=Edit&FormAction=academic")%>">
			
		 <!--#include File = 'HiddenValueNew.asp' -->   

   </FORM>
 
 		<%ShowValidateMsgOnly("Successfully updated your resume.<br>Please click ok to continue...")%>
	
		 <SCRIPT language="javascript">
			alert("Successfully updated your resume.\nPlease click ok to continue...");
		    document.getElementById('frmEducation').submit();

         </SCRIPT>		 
