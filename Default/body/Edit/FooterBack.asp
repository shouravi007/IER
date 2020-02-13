<div>
<form id="back" name="back" action="?<%=Encode("Location=Edit&FormAction=EditResume")%>" method="post">
<INPUT type="hidden" name="TrackNoNew" value="<%=TrackNoNew%>">
<INPUT type="hidden" name="txtTrackingNo" value="<%=TrackNo%>">
<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">
<input type="hidden" id="jobid" name="jobid" value="<%=jobid%>"  /> 
<button type ="submit" class="btn btn-danger pull-left">Home</button>
</form>          
</div>

<div>
<form id="logout" name="logout" action="?<%=Encode("Location=Modal&FormAction=Login")%>" method="post" style="padding:0;">
<INPUT type="hidden" name="TrackNoNew" value="<%=TrackNoNew%>">
<INPUT type="hidden" name="txtTrackingNo" value="<%=TrackNo%>">
<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">
<input type="hidden" id="jobid" name="jobid" value="<%=jobid%>"  /> 
<button type ="submit" class="btn btn-default pull-left">Logut</button>
</form>
</div>