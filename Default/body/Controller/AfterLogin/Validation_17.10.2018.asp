<%

If Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141" or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122"  Or InStr(Request.ServerVariables("HTTP_REFERER"), "serverbdj") > 0 Then  
Else
response.Write("<center>edit will open later...</center>")
response.End() 
'	If Date() > cdate("08/25/2015") Then
'		Response.Redirect("Default_Dateover.asp")
'	End If
End IF 

If IsEmpty(Request.Form("txtTrackingNo")) = False And IsEmpty(Request.Form("txtPassword")) = False Then
	Session.Abandon()
	TrackNoNew = Request.Form("txtTrackingNo")
	PassWrd = Request.Form("txtPassword")
	SID = Request.Form("SID")
         
		 If IsNumeric(TrackNoNew) = False Then 
			   ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! Login ID  should be numeric.<br>Please try again.<br></strong></font></center>"&phone)
				DivCreateForAds
				EndOfAllProcess
		 End If 
		 
	IsEdit = True
End if 

if SID = "" then 
  SID = 18
end if 


If IsEdit = True Then 


TrackNoNew = Request.Form("txtTrackingNo")
strPassword =  Request.Form("txtPassword")
If TrackNoNew <> "" and strPassword <> "" Then
'response.Write(TrackNo&"<br>"&strPassword)

sql = ""
sql = "select personalid,id from jobpos where  [personalid] = "&TrackNoNew
ValuePrint sql, "sql"
arrID = objERS.RetrieveData(sql, strErr)
ErrorMessage "34", errMsg, 0

if arrID(0, 0) <> "Nothing" Then 
   TrackNo = arrID(0, 0) 

SQLPersonal = "SELECT id, (FirstName+' '+LastName) as Name, Email,ContactPhone, CellPhone, Gender, PostedOn, UpdatedOn, Pass, Photo, photoURL,jobid,bdjobsphoto,bdjobsid FROM Personal WHERE id=" & TrackNo & "  and postedon >= '2018-05-14'  " 
'Response.Write("<br>"& SQLPersonal)
ValuePrint sql, "SQLPersonal"

arrPersonal = objERS.RetrieveData(SQLPersonal, strErr)
ErrorMessage "34", errMsg, 0


					If arrPersonal(0, 0) = "Nothing" Then
						ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! Incorrect Login ID .<br>Please try again.<br></strong></font></center>"&phone)
						DivCreateForAds
						EndOfAllProcess
					Else 		
						   IF  cstr(strPassword) <> Cstr(arrPersonal(8, 0)) Then 
								ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! Incorrect  Password.<br>Please try again.<br></strong></font></center>"&phone)
								DivCreateForAds
								EndOfAllProcess
						   End IF 
				   End IF 

		IsEdit = True
		TrackNo = arrPersonal(0, 0)	
		strName = arrPersonal(1, 0)
		strEmail = arrPersonal(2, 0)
		strContact = arrPersonal(3, 0) 
		strCell = arrPersonal(4, 0)
		strGender = arrPersonal(5, 0)
		postedOn = arrPersonal(6, 0)
		updatedOn = arrPersonal(7, 0)
		strPassword = arrPersonal(8, 0)
		IsPhoto = arrPersonal(9, 0)
		imgSrc = arrPersonal(10,0)
		jobid = arrPersonal(11, 0)

		sql = ""
		sql = "select jj.JobTitle,j.id from JobPosting jj inner join jobpos j on jj.jobid = j.jobid  where j.personalid ="&TrackNo
		ValuePrint sql, "sql"

		arrJobTitle = objERS.RetrieveData(sql, errMsg) 
		ErrorMessage "153", errMsg, 0

		if arrJobTitle(0, 0) <> "Nothing" Then 
		  position = "" 
		  For i = 0 to ubound(arrJobTitle, 2)
			position = position & arrJobTitle(0 , i ) & "  ( Job Reference ID : "& arrJobTitle(1 , i ) & " ) <br>"
			'TrackNoNEW = arrJobTitle(3 , i ) 
		  Next			 
		end if  
		
		strMsgApply = arrJobTitle(0 ,0 )
			
			'response.Write(position) 


'position = "Management Trainee Officer(MTO)"


					IsBdjPhoto = arrPersonal(12, 0)
					BdjobsId = arrPersonal(13, 0)
					
					
If IsPhoto = True Then 
  strMsg = "You have applied for the post of "&position
Else 
  If IsBdjPhoto = True then  
				intErsId = 17 
				UserId = BdjobsId  'arrPersonal(3,i)
				secPhoto = 16030 '   10025
				strSqlPhoto = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secPhoto 
				'Response.Write(strSqlPhoto)
				'Response.End()
				
				
				arrDataPhoto = objResumeServer.RetrieveData(strSqlPhoto,strErr)
				
				if arrDataPhoto(0, 0) <> "Nothing" Then
				  
				  if ubound(arrDataPhoto, 2) > 0 then 
				
					if isnull(arrDataPhoto(0,1)) or isempty(arrDataPhoto(0,1)) or arrDataPhoto(0,1) = "" then  
					   strMsg = "Please upload photo in bdjobs account. currently your application is rejected for photograph."
	                  imgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"

					 %>
                     <script>
					// alert("If you really fail to download admit card ? then please follow the steps ... please upload your pictures on My Bdjobs/Bdjobs Account Resume and login again.\n???? ?? ????? ????? ??????? ???? ?????? ?? ? ???? ??? ????? ?????????? ????? ????? ??????? ???? ???, ???? ??? ??? ???????-? ????? ??? ????? ???; ??????? ???? ????")
					  alert("<%=strMsg%>");
                     </script>
					 <%

					else
					
					imgSrc =  "http://my.bdjobs.com/photos/"&arrDataPhoto(0,1) &".jpg"	
                    strMsg = "You have applied for the post of "&position
					end if
				
				  else
					   strMsg = "Please upload photo in bdjobs account. currently your application is rejected for photograph."
				  end if 
				else
					   strMsg = "Please upload photo in bdjobs account. currently your application is rejected for photograph."
				end if 					

	 else
	  imgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"
	 
					   strMsg = "Please upload photo. currently your application is rejected for photograph."
	 end if

End If 
				


	If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0  Then 
    strModuleName = "CRM Login View for user "
	strDescription = "CRM Login View Menu for the tracking : "&TrackNoNew
	strAction = "View Menu for the user"
	SQLUserLog = "INSERT INTO UserLog (UserId, UserName, ModuleName, [Description], ActionDate, [Action],[ip]) values (" 
	SQLUserLog = SQLUserLog & Request.form("UserId") & ", '" & Request.form("UserName")  & "', '" & strModuleName & "', '" & strDescription & "', '" & Now & "' ,'" & strAction & "','"&Request.ServerVariables("REMOTE_ADDR")&"')"
	
	Else 
    strModuleName = "Login View"
	strDescription = "Login View Menu for the tracking : "&TrackNoNew
	strAction = "View Menu"
	SQLUserLog = "INSERT INTO UserLog (UserId, UserName, ModuleName, [Description], ActionDate, [Action],[ip]) values (" 
	SQLUserLog = SQLUserLog & TrackNo & ", '" & TrackNoNew & "', '" & strModuleName & "', '" & strDescription & "', '" & Now & "' ,'" & strAction & "','"&Request.ServerVariables("REMOTE_ADDR")&"')"
    End If 
	ValuePrint SQLUserLog, "2163-SQLUserLog"
	objERS.ExecuteQuery SQLUserLog, strErr


			
			
Else
 						ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! Incorrect Login ID .<br>Please try again.<br></strong></font></center>"&phone)
						DivCreateForAds
						EndOfAllProcess

End If 


%> 