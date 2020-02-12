<%

'strJobids = Request.Form("JOB_ID")
'response.Write("job id: "&jobid&"<br>")
	
IsEligibleDOB = 0
	
SQL_DOB_Chk = "SELECT id, [DateOfBirth] FROM Personal WHERE id=" & TrackNo 
'Response.Write("<br>"& SQL_DOB_Chk)
					
arrSQL_DOB_Chk = objERS.RetrieveData(SQL_DOB_Chk, strErr)
ErrorMessage "11", errMsg, 0

If arrSQL_DOB_Chk(0, 0) <> "Nothing" Then
	
	'RESPONSE.Write(arrSQL_DOB_Chk(1, 0)&"<br>")
	'response.Write(dtmBirthEligible&"<br>")	
	
	dtmDateOfBirth = MONTH(arrSQL_DOB_Chk(1, 0)) & "/" & DAY(arrSQL_DOB_Chk(1, 0)) & "/" & YEAR(arrSQL_DOB_Chk(1, 0))
	'RESPONSE.Write(dtmDateOfBirth &"<BR>")
	
	dtmDateOfBirth = CheckValidation("True",dtmDateOfBirth,"DateTime","DateTime","DateTime","Date of Birth")	
	
	ageCheckValidationForJob2  "True",dtmDateOfBirth,dtmBirthEligible,dtmAge,dtmBirthEligibleMsg,"Age maximum"     
	' default\utility.asp

Else
	IsEligibleDOB = 1
End If
%>
