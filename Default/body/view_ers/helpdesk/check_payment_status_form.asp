<form name="form_applicants_copy_view_55<%=s%>" id="form_applicants_copy_view_55<%=s%>" method="post" action="<%=strLink%>" target="_blank">
    <button type="submit" class="btn-style" >Check Payment Status</button>	
    
    <input type="hidden" id="UserId" name="UserId" value="<%=Request.form("UserId")%>" />
    <input type="hidden" id="UserName" name="UserName" value="<%=Request.form("UserName")%>" />
    
    <input type="hidden" name="txtTrackingNo" id="txtTrakingNo" value="<%=arrUserInfo(6,s)%>" />
    <input type="hidden" name="txtPassword" id="txtPassword" value="<%=arrUserInfo(4,s)%>" />

	<input type="hidden" id="TrackNo" name="TrackNo" value="<%=arrUserInfo(6,s)%>"/>

	<input type="hidden" id="position" name="position" value="<%=position%>" />
	<input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 



	<input type="hidden" id="TrackNoNew" name="TrackNoNew" value="<%=TrackNoNew%>"/>  


                    


 </form>