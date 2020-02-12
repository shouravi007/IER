<%
If IsEmpty(Request.Form("txtTrackingNo")) = False And IsEmpty(Request.Form("txtPassword")) = False Then
	Session.Abandon()
	intTrackingNo = Trim(Request.Form("txtTrackingNo"))
	strPassword = Trim(Request.Form("txtPassword"))
         
		 If IsNumeric(intTrackingNo) = False Then 
			   ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! Login ID  should be numeric.<br>Please try again.<br></strong></font></center>"&phone)
				DivCreateForAds
				EndOfAllProcess
		 End If 
		 
	IsEdit = True
	
End if 


If IsEdit = True Then 

		SQL_Login = "SELECT Pass FROM Personal WHERE id = " & intTrackingNo & "  and postedon >= '2019-09-01'  " 
		'Response.Write("<br>"& SQLPersonal)
		ValuePrint sql, "SQL_Login"
		
		arrLogin = objERS.RetrieveData(SQL_Login, errMsg)
		ErrorMessage "25", errMsg, 0


		If arrLogin(0, 0) = "Nothing" Then
			ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! Incorrect Login ID .<br>Please try again.<br></strong></font></center>"&phone)
			DivCreateForAds
			EndOfAllProcess
		Else 		
			   IF  cstr(strPassword) <> Cstr(arrLogin(0, 0)) Then 
					ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! Incorrect  Password.<br>Please try again.<br></strong></font></center>"&phone)
					DivCreateForAds
					EndOfAllProcess
			   End IF 
		End IF 

	
		SQLPersonal = "SELECT id, (FirstName+' '+LastName) as Name, Email,ContactPhone, CellPhone, Gender, PostedOn, UpdatedOn, Pass, Photo, photoURL,jobid,bdjobsphoto,bdjobsid, DateOfBirth,signatureurl FROM Personal WHERE id=" & intTrackingNo & "  and postedon >= '2019-09-01'  " 
		'Response.Write("<br>"& SQLPersonal)
		ValuePrint sql, "SQLPersonal"
		
		arrPersonal = objERS.RetrieveData(SQLPersonal, strErr)
		ErrorMessage "34", errMsg, 0


		
		intTrackingNo = arrPersonal(0, 0)	
		strName = arrPersonal(1, 0)
		strEmail = arrPersonal(2, 0)
		strContact = arrPersonal(3, 0) 
		strCell = arrPersonal(4, 0)
		strGender = arrPersonal(5, 0)
		postedOn = arrPersonal(6, 0)
		updatedOn = arrPersonal(7, 0)
		strPassword = arrPersonal(8, 0)
		IsPhoto = arrPersonal(9, 0)
		
		'imgSrc = arrPersonal(10,0)& "?"&rnd&time
		'response.Write("url: "&imgSrc)
		
		jobid = arrPersonal(11, 0)	
			
		dtmDateOfBirth = MONTH(arrPersonal(14, 0)) & "/" & DAY(arrPersonal(14, 0)) & "/" & YEAR(arrPersonal(14, 0))
		'RESPONSE.Write(dtmDateOfBirth &"<BR>")
	
		dtmDateOfBirth = CheckValidation("True",dtmDateOfBirth,"DateTime","DateTime","DateTime","Date of Birth")	
	
		'ageCheckValidationForJob2  "True",dtmDateOfBirth,dtmBirthEligible,dtmAge,dtmBirthEligibleMsg,"Age maximum"

			sql = ""

			sql = "select jj.JobTitle, j.id as ApplicantId, J.JOBID, j.apply from JobPosting jj inner join jobpos j on jj.jobid = j.jobid  where j.personalid ="&intTrackingNo
						
			ValuePrint sql, "sql"
	
			arrJobTitle = objERS.RetrieveData(sql, errMsg) 
			ErrorMessage "153", errMsg, 0
	
			if arrJobTitle(0, 0) <> "Nothing" Then 
				position = "" 
				For i = 0 to ubound(arrJobTitle, 2)
					
					jobRefId = arrJobTitle(1 , i )
					'RESPONSE.Write("HELLO"& jobRefId)
					
					jobid = arrJobTitle(2 , i )
					Apply = arrJobTitle(3 , i )
					
'					if jobid = 1 then 
'						jobRefId = jobRefId + 100000
'					elseif jobid = 2 then 
'						jobRefId = jobRefId + 200000
'					elseif jobid = 3 then 
'						jobRefId = jobRefId + 300000
'					end if 
 
					If system = "ksb" then
						position = position & arrJobTitle(0 , i ) & "  (Applicant ID : "& jobRefId & " ) <br>"
						
											
					else					
						position = position & arrJobTitle(0 , i ) & "  ( Job Reference ID : "& jobRefId & " ) <br>"
					end if
					
				'TrackNoNEW = arrJobTitle(3 , i ) 
				Next			 
			end if  
		
			jobIdDB = arrJobTitle(2,0)
			imgSrc = arrPersonal(10,0)
			IsBdjPhoto = arrPersonal(12, 0)
			BdjobsId = arrPersonal(13, 0)
			srcSignature = arrPersonal(15, 0)& "?"&rnd&time
			onlyPhotoSrc = arrPersonal(16, 0)		
      %>
	           <!--#include virtual = '/applications/common/photo_upload_ers/photo_view_ers_db.asp' -->

    <%
          
	If Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0  Then
	 
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
	ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! Incorrect Login ID  and/or Password.<br>Please try again.<br></strong></font></center>"&phone)
	DivCreateForAds
	Response.End()
End IF

%>