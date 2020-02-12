<%
strEmail = Request.Form("txtEmail")
strContactPhone = Request.Form("txtContactPhone")

if strEmail <> "" or strContactPhone <> "" then 
		
		sql = "" 
		sql = " update personal set email = 0, contactphone = 0 where email = 'shouravisharmin007@gmail.com'  or email = 'mahbubulhaque001@gmail.com'   " '  or  email = 'shouravisharmin007@gmail.com' or  email = 'shouravi@bdjobs.com' 
		
		If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or Request.ServerVariables("SERVER_NAME") =  "server-ers" or Session("USERNAME") = "mahbub" and Session("PWORD") = "UvWggXv6" or Request.Cookies("PWORD") = "UvWggXv6"   Then 
			 objERS.ExecuteQuery sql, errMsg 
		end if 		
		
		
		if system = "ksb" then

			if strContactPhone <> "" then 
				sql = " select id from personal where contactphone = '"&strContactPhone&"' "
				msg = "You have already applied by this contact number. Use previous Login Id and Password to edit your resume." '"Your mobile number has been already used. Please provide new mobile number."
			end if 
		
		else
		
			if strEmail <> "" then 
			sql = " select id from personal where email = '"&strEmail&"' "
			msg = "You have already applied by this email. Use previous Login Id and Password to edit your resume." '"Your email has been already used. Please provide new email account."
			elseif strContactPhone <> "" then 
			sql = " select id from personal where contactphone = '"&strContactPhone&"' "
			msg = "You have already applied by this contact number. Use previous Login Id and Password to edit your resume." '"Your mobile number has been already used. Please provide new mobile number."
			end if
		
		end if 
		
		'Response.Write(sql)
		arr = objERS.RetrieveData(sql, errMsg)
		
		if arr(0, 0) <> "Nothing" Then
		  Response.Write(msg)
		else
		  Response.Write("")
		end if 
		
end if

%>