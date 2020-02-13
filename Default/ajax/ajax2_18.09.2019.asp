<%
strEmail = Request.Form("txtEmail")
strContactPhone = Request.Form("txtContactPhone")

strFirstName = ""
strLastName = ""
strGender = ""
strFatherName = ""
strMotherName = ""
dtmDateOfBirth = ""


strFirstName = Trim(Request.Form("txtFirstName"))
strLastName = Trim(Request.Form("txtLastName"))
strFatherName = Trim(Request.Form("txtFatherName"))
strMotherName = Trim(Request.Form("txtMotherName"))
dtmDateDay = Trim(Request.Form("ddlDateOfBirthDay"))
dtmDateMonth = Trim(Request.Form("ddlDateOfBirthMonth"))
dtmDateYear = Trim(Request.Form("ddlDateOfBirthYear")) 

dtmDateOfBirth = dtmDateMonth & "/" & dtmDateDay & "/" & dtmDateYear


if strEmail <> "" and strContactPhone <> "" and dtmDateYear <> "S" then 

		
		sql = "" 
		sql = " update personal set email = 0, contactphone = 0 where email = 'shouravisharmin007@gmail.com' or email = 'mahbubulhaque001@gmail.com'  "  ' or  email = 'shouravisharmin007@gmail.com' or  email = 'shouravi@bdjobs.com' 
		
		If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" Or Request.ServerVariables("SERVER_NAME") =  "server-ers" or Session("USERNAME") = "mahbub" or Session("PWORD") = "UvWggXv6" or Request.Cookies("PWORD") = "UvWggXv6"  Then 
			 objERS.ExecuteQuery sql, errMsg 
		end if 		
		
		 msg = "" 
		 sql = ""
		 sql = " select id from personal where email = '"&strEmail&"' "
		 arrEmail = objERS.RetrieveData(sql, errMsg)
		
		 if arrEmail(0,0) <> "Nothing" Then  
		   msg = "You have already applied by this email. Use previous Login Id and Password to edit your resume." '"Your email has been already used. Please provide new email account."
		 Else
			 sql = ""
			 sql = " select id from personal where contactphone = '"&strContactPhone&"' "
			 arrMobile = objERS.RetrieveData(sql, errMsg)
			 if arrMobile(0,0) <> "Nothing" Then  
			   msg = "You have already applied by this contact number.Use previous Login Id and Password to edit your resume." '"Your mobile number has been already used. Please provide new mobile number."
			   
			 Else
					'sql = "SELECT id FROM Personal WHERE FirstName = LTRIM(RTRIM('" & strFirstName & "')) AND LastName = LTRIM(RTRIM('" & strLastName & "')) And  FatherName = LTRIM(RTRIM('" & strFatherName & "'))  AND  MotherName = LTRIM(RTRIM('" & strMotherName & "')) AND DateOfBirth = '" & dtmDateOfBirth & "'" 
					
		msg = "" 			
		sql = "SELECT id FROM Personal WHERE  replace(replace(replace(replace(replace(replace(replace(replace(LTRIM(RTRIM(lower(firstname))),'.',''),' ',''),'-',''),'_', ''),':',''),'=',''),'~',''),'?','')  =  replace(replace(replace(replace(replace(replace(replace(replace(LTRIM(RTRIM(lower('" & strFirstName & "'))),'.',''),' ',''),'-',''),'_', ''),':',''),'=',''),'~',''),'?','') AND  replace(replace(replace(replace(replace(replace(replace(replace(LTRIM(RTRIM(lower(lastname))),'.',''),' ',''),'-',''),'_', ''),':',''),'=',''),'~',''),'?','') = replace(replace(replace(replace(replace(replace(replace(replace(LTRIM(RTRIM(lower('" & strLastName & "'))),'.',''),' ',''),'-',''),'_', ''),':',''),'=',''),'~',''),'?','') and  replace(replace(replace(replace(replace(replace(replace(replace(LTRIM(RTRIM(lower(fathername))),'.',''),' ',''),'-',''),'_', ''),':',''),'=',''),'~',''),'?','') = replace(replace(replace(replace(replace(replace(replace(replace(LTRIM(RTRIM(lower('" & strFatherName & "'))),'.',''),' ',''),'-',''),'_', ''),':',''),'=',''),'~',''),'?','') and  replace(replace(replace(replace(replace(replace(replace(replace(LTRIM(RTRIM(lower(mothername))),'.',''),' ',''),'-',''),'_', ''),':',''),'=',''),'~',''),'?','') = replace(replace(replace(replace(replace(replace(replace(replace(LTRIM(RTRIM(lower('" & strMotherName & "'))),'.',''),' ',''),'-',''),'_', ''),':',''),'=',''),'~',''),'?','') and dateofbirth = '" & dtmDateOfBirth & "'"   
			
					
					arr = objERS.RetrieveData(sql, errMsg)
					
					if arr(0, 0) <> "Nothing" Then
					 
					  msg = "Your personal information has already been used. Use previous Login Id and Password to edit your resume." '"Your personal information  already used. please Call to 16479."
					else
					  msg = "" 
					end if
				  
			   
		     end if
		 End If 
		 
		 Response.Write(msg)
		
end if

%>