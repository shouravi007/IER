<%				
				 'EMAIL GENERATION 
				'----------------
				strName = strFirstName & " " & strLastName
				strERecruitmentSystemName = strSystemName
                
				
				sql = " select jobtitle from jobposting where jobid = "&jobid
				arr_position = objERS.RetrieveData(sql, errMsg)
				
				if arr_position(0,0) <> "Nothing" then
				  position = arr_position(0,0)
				end if
				
				
				sqlSelectAppId = " select id from jobpos where jobid = "&jobid & " and personalid="&TrackNo
				arr_sqlSelectAppId = objERS.RetrieveData(sqlSelectAppId, errMsg)
				
				if arr_sqlSelectAppId(0,0) <> "Nothing" then
				  intAppIdNew = arr_sqlSelectAppId(0,0)
				end if
				
				
				'if jobid = 1 then 
'				  TrackNoNEW = TrackNoNEW + 100000
'				elseif jobid = 2 then 
'				  TrackNoNEW = TrackNoNEW + 200000
'				elseif jobid = 3 then 
'				  TrackNoNEW = TrackNoNEW + 300000
'				end if 
				
				
				BodyText0 = "<DIV align=justify><font size=2 face=Arial><p><strong><strong>Dear "&strName&": </strong></strong><br /><br />Thank you very much for applied to "&position&" position. <strong><font color=#003399>Your Applicant Id : " & intAppIdNew & ".</font></p><p style='color:#CC0000;'><strong><br/>To update your information please use the following Login ID and Password:<br><br></strong></p><p><br /><font color=#990000><strong><font color=#003399>Login ID :</font> "&TrackNo&"<BR><font color=#003399>Password :</font> "&strPassword&" </strong></font>&nbsp;<font color='#FF0000'></font></p><p>(Please do not forget this Login ID and Password.)<br /></p><p>Your CV will not be considered for the next step of recruitment process if it found incomplete or inappropriate photograph and certificate.</p><br/><p>If you have any query please call at dial " & help_number & " from any number or e-mail to " & replyto & ".</p><p style='color:#CC0000;'><strong><br/><br />If you want to edit/login/update notice then please visit : " & commonURL & " <br /><br /></strong></p><p><br />Thanks and regards,<br /><br /><br /><br /><strong><strong>Human Resources Division</strong></strong><strong><br /><strong><strong>" & strSystemName & " Online Application System.</strong></strong></strong></p></div>"
			
			
				
				
				toWho = strName & "<" & strEmail &">"
				Subject = "Notice for Resume Submission :: "&position  'TRIM( Request.Form( "Subject" )) 
				Body = BodyText0
				toCC=""
				toBCC = commonMail
				
				
				On Error Resume Next
				If toWho <> "" Then 
				   If TrackNoNEW <> "" and isnull(TrackNoNEW) = false and isempty(TrackNoNEW) = false then 
					sendmail fromWho, toWho, Subject, Body, toCC, toBCC, replyTo 
				   end if 
					Response.Write(err.description)
					Set ObjCDO = Nothing 
					Set iConf = Nothing 
					Set Flds = Nothing 
				End If
				
				if err.number = 0 then 
				sql = " update personal set sendMail = 1 , ip = '"&Request.ServerVariables("REMOTE_ADDR")&"' where id ="& TrackNoNEW
                ValuePrint sql , "sql"
				objERS.ExecuteQuery sql, errMsg
				'Response.Write errMsg
				ErrorMessage "1302", errMsg, 0	
                end if 
				
%> 