  <%     
          sql = "" 
		  sql = "select firstname,lastname,email from personal where id ="&TrackNo 
		 ' Response.Write("<br>"&sql)
          arr = objERS.RetrieveData(sql, errMsg) 
		  ErrorMessage "278", errMsg, 0
		   
		  		  
		  strFirstName = arr(0, 0)
		  strLastName = arr(0, 1)
          strEmail = arr(0, 2) 
				
				 'EMAIL GENERATION 
				'----------------
				strName = strFirstName & " " & strLastName
				strERecruitmentSystemName = "Dhaka Bank"
				BodyText0 = "<DIV align=justify><font size=2 face=Arial><p><strong><strong>Dear "&strName&":</strong></strong><br /><br />Job application Change to <strong>"&strJobPosition&"</strong> is completed. <br> New  Tracking</strong></strong><strong><strong>:</strong></strong><strong><strong> "&TrackNoNEW&"</strong><BR><font color=#003399>Password :</font> "&strPassword&"</strong></font>&nbsp;<font color='#FF0000'></font></strong></p><p>Please do not forget this Tracking Number and password.<br /></p><p><br />If you want to edit/login/update notice then please visit : bdjobs.com/dhakabank <br /><br /></strong></p><p><br /></strong><strong><br /></strong><br /></p><br/><p style='color:#CC0000;'><strong></p><p><br />Thanks and regards,<br /><br /><br /><br /><strong><strong>Customer Care Division</strong></strong><strong><br /><strong><strong>Bdjobs.Com Limited.</strong></strong></strong></p></div>"
				
				fromWho = strERecruitmentSystemName & " Online Application System <dhakabank@bdjobs.com>" 'TRIM( Request.Form( "fromWho")) 
				toWho = strName & "<" & strEmail &">"
				Subject = "Job Application Change To  "&strJobPosition  'TRIM( Request.Form( "Subject" )) 
				Body = BodyText0
				toCC=""
				toBCC="server-ers<serverers00@gmail.com>"
				replyTo = "dhakabank<dhakabank@bdjobs.com>"
				
				On Error Resume Next
				If toWho <> "" Then 
					sendmail fromWho, strEmail, Subject, Body, toCC, toBCC, replyTo 
					Set ObjCDO = Nothing 
					Set iConf = Nothing 
					Set Flds = Nothing 
				End If
%>