

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
			document.getElementById('Login').submit();
		 </SCRIPT>		 
        
     <%
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
'Response.Write(err.description)
ERR.CLEAR
%>
		 <SCRIPT language="javascript">
			//alert("Sorry unauthorized access.\nPlease click ok to login...");
			//document.getElementById('Login').submit();
		 </SCRIPT>		 
<%eND IF



strMessage = ""
TrackingNumber = Request.Form("TrackingNumber")	
jobid = Request.Form("jobid") 
rollno = Request.Form("rollno") 


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



if TrackingNumber <> ""  and jobid <> "" and rollno <> "" Then 
	


	SQL_ID = "" 
	SQL_ID = "select rollno from roll where jobid = "&jobid&" and rollno = "&rollno
	
	'Response.Write("<br>"&SQL_ID)
	'Response.End()
	' Response.Write("<br>jobid:"&jobid)
	arr_rollduplicate = objERS.RetrieveData(SQL_ID, errMsg)
	ErrorMessage "163", errMsg, 0	
	
	if arr_rollduplicate(0, 0) <> "Nothing" then
		sql = " delete from roll where personalid in ( Select p.ID From PERSONAL p inner join jobpos j on j.personalid = p.id  where j.shortlisted = 1 and j.jobid = " & jobid & "  and j.personalid = "&TrackingNumber&" ) "
		'response.Write(sql)
		
		objERS.ExecuteQuery sql, errMsg 
	    ErrorMessage "163", errMsg, 0	
		
		
		sql = " update jobpos set shortlisted = 1  where personalid in ( Select p.ID From PERSONAL p inner join jobpos j on j.personalid = p.id  where j.shortlisted = 1 and j.jobid = " & jobid & "  and j.personalid = "&TrackingNumber&" ) "
		'response.Write(sql)
		
		objERS.ExecuteQuery sql, errMsg 
	    ErrorMessage "163", errMsg, 0	
		
				
		strMsg = strMsg & "&nbsp; Roll no :" & rollno & "<p>"
		
		strMsg = strMsg & " Deleted successfully "
	
		

    else
			 strMsg = strMsg & rollno &"  already deleted ! "
			 'strMsg = strMsg & TrackingNumber&" has shortlisted successfully."' 
             strAction = "Roll Delete"
	
	
	end if 
               
		   
	

		strModuleName = "Roll Delete"
	

		
		SQLUserLog = "INSERT INTO UserLog (UserId, UserName, ModuleName, [Description], ActionDate, [Action]) values (" 
		SQLUserLog = SQLUserLog & USERID & ", '" & currentUser  & "', '" & strModuleName & "', '"&strMsg&"', '" & Now & "' ,'" & strAction & "')"
		
	        IF Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0 Then		
	   		'Response.Write(SQLUserLog&"<br/>")
			End If
			
		objERS.ExecuteQuery SQLUserLog, strErr
		


End If 

   if errMsg = "" then 
	 Response.Write("<strong style='color:#F00; font-size: 12px;'><br>( "&strMsg&" ) </strong>")
   end if


%> 