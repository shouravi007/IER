	<%If errMsg = "" Or IsNull(errMsg) = True Then
	
	ShowValidateMsgOnly("Successfully updated your resume.<br>Please click ok to continue...")
	
	%>
		 <FORM name="view_resume" id="view_resume" action="?<%=Encode("Location=Edit&FormAction=EditResume")%>" method="post">
 
             <input type="hidden" id="TrackNoNew" name="TrackNoNew" value="<%=TrackNoNew%>"/>
		 	<INPUT type="hidden" name="txtTrackingNo" value="<%=TrackNo%>">
			<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">
			<INPUT type="hidden" name="T" value="False">
		 </FORM>
		 <SCRIPT language="javascript">
			alert("Successfully updated your resume.\nPlease click ok to continue...");
			document.getElementById('view_resume').submit();
		 </SCRIPT>		 
	<%End If%>	