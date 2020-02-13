
<form id="back" name="back" action="?<%=Encode("Location=Controller&FormAction=AfterLogin")%>" method="post">
<INPUT type="hidden" name="txtTrackingNo" value="<%=TrackNoNew%>">
<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">
<input type="hidden" id="jobid" name="jobid" value="<%=jobid%>"  /> 
</form>          



<form id="logout" name="logout" action="?<%=Encode("Location=Modal&FormAction=Login")%>" method="post" style="padding:0;">
<INPUT type="hidden" name="txtTrackingNo" value="<%=TrackNoNew%>">
<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">
<input type="hidden" id="jobid" name="jobid" value="<%=jobid%>"  /> 
</form>
