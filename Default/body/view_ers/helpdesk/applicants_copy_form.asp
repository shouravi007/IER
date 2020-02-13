<form name="frmUserSupport444<%=s%>" id="frmUserSupport444<%=s%>" method="post" action="<%=strLink555%>" target="_blank">   
				
    <button type="submit" class="btn-style" >Download Applicants Copy </button>      
    <input type="hidden" id="UserId" name="UserId" value="<%=Request.form("UserId")%>" />
    <input type="hidden" id="UserName" name="UserName" value="<%=Request.form("UserName")%>" />   
    <input type="hidden" name="txtTrackingNo" id="txtTrakingNo" value="<%=arrUserInfo(6,s)%>" />
    <input type="hidden" name="txtPassword" id="txtPassword" value="<%=arrUserInfo(4,s)%>" />                                                
</form>   
<%else%> 
  
  <!-- <h3 style="color:#F00;">Applicants copy not needed in this system  </h3>-->

<%end if%>  