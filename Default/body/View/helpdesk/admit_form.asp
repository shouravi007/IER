<% if intRollNo <> "N/A" then %>	
<form name="frmUserSupport2<%=s%>" id="frmUserSupport2<%=s%>" method="post" action="<%=strLink%>" target="_blank">   
				
    <button type="submit" class="btn-style" >Download Admit</button>      
    <input type="hidden" id="UserId" name="UserId" value="<%=Request.form("UserId")%>" />
    <input type="hidden" id="UserName" name="UserName" value="<%=Request.form("UserName")%>" />   
    <input type="hidden" name="txtTrackingNo" id="txtTrakingNo" value="<%=arrUserInfo(6,s)%>" />
    <input type="hidden" name="txtPassword" id="txtPassword" value="<%=arrUserInfo(4,s)%>" />                                                
</form>   
<%else%> 
  
   <h3 style="color:#F00;">Sorry ! you are not shortlisted  </h3>
<%end if%>  