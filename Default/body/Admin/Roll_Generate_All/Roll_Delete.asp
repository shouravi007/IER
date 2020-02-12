<%
	'response.Write("hello"&intRoll)
	
	If Request.Form("clearButton") = "Clear Roll" Then
		
		
		If Request.Form("txtRollNo") <> "" Then

			sqlClearSingleRoll = "Update ROLL set RollNo = 0 Where RollNo=" & Request.Form("txtRollNo") & " And Personalid="& Request.Form("hiddenPersonalId")
			'response.Write(sqlClearSingleRoll)
			objERS.ExecuteQuery sqlClearSingleRoll, errMsg
			ErrorMessage "100", errMsg, 0
		
		Else
			RESPONSE.Write("<center><font color='red'>You must give a roll number.</font></center>")
		End If
	End If
	
	If Request.Form("generateButton") = "Generate Roll" Then
		
		If Request.Form("txtRollNo") <> "" Then
			'call getMaxRoll()
			
			'response.Write("max roll: "&mMaxRoll)			
			
			If mMaxRoll <> CLng(Request.Form("txtRollNo")) Then 'If not maximum roll number
				'Check if same Roll number exist or not
					sqlDuplicateCheck =  "Select PersonalId from roll where RollNo=" & Request.Form("txtRollNo") & " And Personalid <>"&intPersonalId
					'response.Write(sqlDuplicateCheck&"<BR>")
					arr_sqlDuplicateCheck = objERS.RetrieveData(sqlDuplicateCheck, errMsg)
					ErrorMessage "114", errMsg, 0
					
					If arr_sqlDuplicateCheck(0,0) <> "Nothing" Then						
						response.Write("<center><font color='red'>Roll number that you have given already exist for another applicant.<br>Give another Roll Number.</font></center>")
						'txtRoll.SetFocus
					Else
						
						sqlUpdateAll =  "Update ROLL set RollNo=" & Request.Form("txtRollNo") & " where PERSONALID="&intPersonalId
						RESPONSE.Write(sqlUpdateAll&"<BR>")
						objERS.ExecuteQuery sqlUpdateAll, errMsg
						response.Write(errMsg)
						ErrorMessage "119", errMsg, 0
						
						response.Write("<center><font color='green'>New roll number given to all applicants successfully.</font></center>")
						call getMaxRoll()
						'FillApplicants
					End If
			Else

				sqlUpdateSingleApp = "Update roll set RollNo=" & Request.Form("txtRollNo") & " where Personalid=" &intPersonalId
				RESPONSE.Write(sqlUpdateSingleApp&"<BR>")
				RESPONSE.Write(sqlUpdateAll&"<BR>")
				objERS.ExecuteQuery sqlUpdateSingleApp, errMsg
				ErrorMessage "198", errMsg, 0
				
				Response.Write("<center><font color='green'>New roll number given to the applicant successfully.</font></center>")
				'getMaxRoll
				'FillApplicants
			End If
		Else
			RESPONSE.Write("<center><font color='red'>You must give a roll number.</font></center>")		
		End If ' end If Request.Form("txtRollNo") <> "" Then
	
	End If

%>