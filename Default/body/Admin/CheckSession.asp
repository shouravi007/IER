<%ON ERROR RESUME NEXT%>

		 <FORM name="frmErr" id="frmErr" action="?<%=Encode("Location=Admin&FormAction=Login")%>" method="post">
        
        <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
        
        <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />
         
			<INPUT type="hidden" name="T" value="False">
		 </FORM>


<%
 
if isnull(Session("USERNAME")) or isempty(Session("USERNAME")) then 
	  if isnull(Request.Cookies("USERNAME")) or isempty(Request.Cookies("USERNAME")) or Request.Cookies("USERNAME") = "" then 	
		Session.Abandon()
		
		'Response.Redirect("default.asp")
		%>
		 <SCRIPT language="javascript">
			alert("Sorry unauthorized access.\nPlease click ok to login...");
			document.getElementById('frmErr').submit();
		 </SCRIPT>		 
        
     <%
	 Response.End()
	end if 
	
End if 

MLA = SESSION("MLA")
if MLA = "" Then 
 MLA = Request.Cookies("MLA")
end if


JA = SESSION("JA")
if JA = "" Then 
 JA = Request.Cookies("JA")
end if


 currentUser = Session("FullName")
 if currentUser = "" Then 
  currentUser = Request.Cookies("USERNAME")
 end if 
 
 
 if currentUser = "" Then 
  currentUser = Session("USERNAME")
 end if 
 
 if currentUser = "" Then 
  currentUser = Request.Cookies("USERNAME")
 end if  
 
 currentUserType = Session("UserType")
 if currentUserType = "" then 
 currentUserType = Request.Cookies("UserType")
 end if 



 USERID = Session("UserId")
 If USERID = "" then 
  USERID = Request.Cookies("UserId")
 End If 

	strPassword = Session("PWORD") 
	
	if strPassword = "" then 
	strPassword = Request.Cookies("PWORD") 
    
	end if 

IF ERR.NUMBER <> 0 THEN
ERR.CLEAR
%>
		 <SCRIPT language="javascript">
			alert("Sorry unauthorized access.\nPlease click ok to login...");
			document.getElementById('Login').submit();
		 </SCRIPT>		 
<%eND IF%>