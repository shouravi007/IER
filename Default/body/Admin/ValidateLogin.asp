<div class="login-form bg-style"> 
      
<%

	' Validation (Server)
	If Len(strUserName) <= 0 Or strUserName = "" Then
		ShowMessage("<center><strong>User name can't be empty.<br />Click <a href='Default.asp'>here</a> to re-try.</strong></center>")
		Response.End()	
	ElseIf Len(strUserName) > 20 Then
		ShowMessage("<center><strong>User name can't be greater than 20 character.<br />Click <a href='Login.asp'>here</a> to re-try.</strong></center>")
		Response.End()	
	ElseIf Len(strPassword) <= 0 Or strPassword = "" Then
		ShowMessage("<center><strong>Password can't be empty.<br />Click <a href='Default.asp'>here</a> to re-try.</strong></center>")
		Response.End()	
	ElseIf Len(strPassword) > 20 Then
		ShowMessage("<center><strong>Password can't be greater than 20 character.<br />Click <a href='Default.asp'>here</a> to re-try.</strong></center>")
		Response.End()
	End If
  




SQLValidUser = "SELECT UserName, UserId , userpassword  FROM UserInfo WHERE UserStatus = 1 And UserName='" & strUserName & "' " 
'Response.Write(SQLValidUser) 
ValuePrint SQLValidUser , "sqlvaliduser-119"
arr_ValidUser = objERS.RetrieveData(SQLValidUser, errMsg)
ErrorMessage "163", errMsg, 0


If arr_ValidUser(0, 0) <> "Nothing" Then
	strUserName = arr_ValidUser(0, 0)
	intUserId = arr_ValidUser(1, 0)
	dbPass = arr_ValidUser(2, 0)
	
	'Response.Write("<br>"&dbPass)
	'Response.Write("<br>"&strPassword)
	
	if dbPass <> strPassword then 
	
		   Call ShowValidateMsgOnly("<CENTER>Access denied! Invalid User Name or Password<br> <a href='?"&Encode("Location=Admin&FormAction=Logout")&"'> Click here  </a> to retry </CENTER>")
		   
		   ConnectionClose
		   Response.End() 
	
	end if 

	Session("USERNAME") = strUserName
	Response.Cookies("USERNAME")= strUserName
	
	Session("PWORD") = strPassword
	Response.Cookies("PWORD")= strPassword
	

	Session("USERID") = intUserId
	Response.Cookies("USERID")= intUserId
	
	
	
	strAction = Trim(Request.Form("Action"))
	strJobId = Trim(Request.Form("jobid"))
	
    strAction = Encode("Location=Admin&FormAction=Home")
 
	
	  %>
      <form name="LoginAdmin" id="LoginAdmin" action="?<%=strAction%>" method="post">
       <input type="hidden" name="txtJobTitle" id="txtJobTitle" value="<%=strJobId%>"  />    
         <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
         <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />
    </form>
    <script>
	 document.getElementById('LoginAdmin').submit();
	</script>
    
      <%

Else
		   Call ShowValidateMsgOnly("<CENTER>Access denied! Invalid User Name or Password<br> <a href='?"&Encode("Location=Admin&FormAction=Logout")&"' style='color:#F00;'> Click here  </a> to retry </CENTER>")
		   
		   ConnectionClose
		   Response.End() 
		   
	   
            %>
             <%if cstr(strFormAction) = cstr("ValidateLogin") then %>
			      <div class="col-md-12" align="center" style="margin:2%">
                  <form name="login" id="login" action="Default.asp?<%=Encode("Location=Admin&FormAction=Login")%>" method="post">
           
   			
                                        <button type="submit" class="btn btn-primary"   >Back</button><!-- onclick="javascript:document.getElementById('frmErr').submit();"-->
                      
                       </form>	  
                   </div>
             <%End If%>    

          </div>
			
			<%
		   ConnectionClose
		   Response.End() 


End If

%>

</div>
           