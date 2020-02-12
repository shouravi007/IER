<%
	strFirstName = ""
	strLastName = ""
	strGender = ""
	strFatherName = ""
	strMotherName = ""
	dtmDateOfBirth = ""

	strFirstName = Trim(Request.Form("txtFirstName"))
	'strLastName = Trim(Request.Form("txtLastName"))
	strFatherName = Trim(Request.Form("txtFatherName"))
	strMotherName = Trim(Request.Form("txtMotherName"))
    dtmDateDay = Trim(Request.Form("ddlDateOfBirthDay"))
	dtmDateMonth = Trim(Request.Form("ddlDateOfBirthMonth"))
	dtmDateYear = Trim(Request.Form("ddlDateOfBirthYear")) 
	dtmDateOfBirth = dtmDateMonth & "/" & dtmDateDay & "/" & dtmDateYear

if strFirstName <> ""  and strFatherName <> "" and dtmDateYear <> "S"  then 
   '  and strLastName <> ""
		
		
		sql = "" 
		sql = " update personal set email = 0, contactphone = 0 where email = 'shouravisharmin007@gmail.com' or email = 'mahbubulhaque001@gmail.com'  "  ' or  email = 'shouravisharmin007@gmail.com' or  email = 'shouravi@bdjobs.com' 
				
		If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" Or Request.ServerVariables("SERVER_NAME") =  "server-ers" or Session("USERNAME") = "mahbub" or Session("PWORD") = "UvWggXv6" or Request.Cookies("PWORD") = "UvWggXv6"  Then 
			 objERS.ExecuteQuery sql, errMsg 
		end if 			
		
		
		
		sql = "SELECT id FROM Personal WHERE  replace(replace(replace(replace(replace(replace(replace(replace(LTRIM(RTRIM(lower(firstname))),'.',''),' ',''),'-',''),'_', ''),':',''),'=',''),'~',''),'?','')  =  replace(replace(replace(replace(replace(replace(replace(replace(LTRIM(RTRIM(lower('" & strFirstName & "'))),'.',''),' ',''),'-',''),'_', ''),':',''),'=',''),'~',''),'?','')  and  replace(replace(replace(replace(replace(replace(replace(replace(LTRIM(RTRIM(lower(fathername))),'.',''),' ',''),'-',''),'_', ''),':',''),'=',''),'~',''),'?','') = replace(replace(replace(replace(replace(replace(replace(replace(LTRIM(RTRIM(lower('" & strFatherName & "'))),'.',''),' ',''),'-',''),'_', ''),':',''),'=',''),'~',''),'?','') and  replace(replace(replace(replace(replace(replace(replace(replace(LTRIM(RTRIM(lower(mothername))),'.',''),' ',''),'-',''),'_', ''),':',''),'=',''),'~',''),'?','') = replace(replace(replace(replace(replace(replace(replace(replace(LTRIM(RTRIM(lower('" & strMotherName & "'))),'.',''),' ',''),'-',''),'_', ''),':',''),'=',''),'~',''),'?','') and dateofbirth = '" & dtmDateOfBirth & "'"   
		
		'response.Write(sql) 
		'response.Write("ajax_duplicate"+sql)
		on error resume next 
		arr = objERS.RetrieveData(sql, errMsg)
		'ErrorMessage "163", errMsg, 0

		'response.Write(errMsg) 
         if err.number <> 0 then 
		   msg = "" 
		   err.clear 
		 else 
				msg = "Your personal information has already been used. Use previous Login Id and Password to edit your resume."  '"Your personal information  already used. please Call to 16479."
				
				if arr(0, 0) <> "Nothing" Then
				  Response.Write(msg)
				else
				  Response.Write("")
				end if 
		 end if 
		
end if
	
%>