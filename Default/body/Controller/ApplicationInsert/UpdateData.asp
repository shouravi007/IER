<%

	strSubject1 = Trim(Request.Form("ddlSubject1"))
	strSubject2 = Trim(Request.Form("ddlSubject2"))
	strSubject3 = Trim(Request.Form("ddlSubject3"))
	strSubject4 = Trim(Request.Form("ddlSubject4"))
	strSubject5 = Trim(Request.Form("ddlSubject5"))

	If strSubject1 = "" or isempty(strSubject1) or isnull(strSubject1)  Then 
	 strSubject1 = Trim(Request.Form("ddlSubject1hidden"))
	End IF 

	If strSubject2 = "" or isempty(strSubject2) or isnull(strSubject2)  Then 
	 strSubject2 = Trim(Request.Form("ddlSubject2hidden"))
	End IF 

	If strSubject3 = "" or isempty(strSubject3) or isnull(strSubject3)  Then 
	 strSubject3 = Trim(Request.Form("ddlSubject3hidden"))
	End IF 

	If strSubject4 = "" or isempty(strSubject4) or isnull(strSubject4)  Then 
	 strSubject4 = Trim(Request.Form("ddlSubject4hidden"))
	End IF 


	If strSubject5 = "" or isempty(strSubject5) or isnull(strSubject5)  Then 
	 strSubject5 = Trim(Request.Form("ddlSubject5hidden"))
	End IF 


	strSubject21 = Trim(Request.Form("ddlSubject21"))
	strSubject22 = Trim(Request.Form("ddlSubject22"))
	strSubject23 = Trim(Request.Form("ddlSubject23"))
	strSubject24 = Trim(Request.Form("ddlSubject24"))
	strSubject25 = Trim(Request.Form("ddlSubject25"))
	
	
	If strSubject21 = "" or isempty(strSubject21) or isnull(strSubject21)  Then 
	 strSubject21 = Trim(Request.Form("ddlSubject21hidden"))
	End IF 

	If strSubject22 = "" or isempty(strSubject22) or isnull(strSubject22)  Then 
	 strSubject22 = Trim(Request.Form("ddlSubject22hidden"))
	End IF 

	If strSubject23 = "" or isempty(strSubject23) or isnull(strSubject23)  Then 
	 strSubject23 = Trim(Request.Form("ddlSubject23hidden"))
	End IF 

	If strSubject24 = "" or isempty(strSubject24) or isnull(strSubject24)  Then 
	 strSubject24 = Trim(Request.Form("ddlSubject24hidden"))
	End IF 


	If strSubject25 = "" or isempty(strSubject25) or isnull(strSubject25)  Then 
	 strSubject25 = Trim(Request.Form("ddlSubject25hidden"))
	End IF 
	
	strOthers1 = Trim(Request.Form("txtOthers1"))
	strOthers2 = Trim(Request.Form("txtOthers2"))
	strOthers3 = Trim(Request.Form("txtOthers3"))
	strOthers4 = Trim(Request.Form("txtOthers4"))
	strOthers5 = Trim(Request.Form("txtOthers5"))
	

	strOthers21 = Trim(Request.Form("txtOthers21"))
	strOthers22 = Trim(Request.Form("txtOthers22"))
	strOthers23 = Trim(Request.Form("txtOthers23"))
	strOthers24 = Trim(Request.Form("txtOthers24"))
	strOthers25 = Trim(Request.Form("txtOthers25"))

	
	If strSubject1 = "Others" Then
		strSubject_Others1 = 1	
		strSubject1 = strOthers1	
	Else
		strSubject_Others1 = 0
	End If	
				
	If strSubject2 = "Others" Then
	    strSubject2 = strOthers2
		strSubject_Others2 = 1		
	Else
		strSubject_Others2 = 0
	End If
	
	If strSubject3 = "Others" Then
		strSubject3 = strOthers3
		strSubject_Others3 = 1		
	Else
		strSubject_Others3 = 0
	End If
		
	If strSubject4 = "Others" Then
		strSubject4 = strOthers4
		strSubject_Others4 = 1		
	Else
		strSubject_Others4 = 0
	End If
		
	If strSubject5 = "Others" Then
		strSubject5 = strOthers5
		strSubject_Others5 = 1		
	Else
		strSubject_Others5 = 0
	End If
	

	If strSubject21 = "Others" Then
		strSubject21 = strOthers21
		strSubject_Others21 = 1		
	Else
		strSubject_Others21 = 0
	End If	
				
	If strSubject22 = "Others" Then
		strSubject22 = strOthers22
		strSubject_Others22 = 1		
	Else
		strSubject_Others22 = 0
	End If
	
	If strSubject23 = "Others" Then
		strSubject23 = strOthers23
		strSubject_Others23 = 1		
	Else
		strSubject_Others23 = 0
	End If
		
	If strSubject24 = "Others" Then
		strSubject24 = strOthers24
		strSubject_Others24 = 1		
	Else
		strSubject_Others24 = 0
	End If
		
	If strSubject25 = "Others" Then
		strSubject25 = strOthers25
		strSubject_Others25 = 1		
	Else
		strSubject_Others25 = 0
	End If




	bdjID = Request.Form("id_my")
	If bdjID <> "" Then 
	  bdjID = Decode(bdjID)
	Else
	  bdjID = 0			
	End If 


err.clear
on error resume next 
        'Response.Write("<br>"&TrackNo)
If TrackNo = "-1" Then
			jobid = 1 
			'strPostedOn = "2018-06-25"
            'Response.Write("<br>jobid:"&jobid)
			ValuePrint jobid, "jobid"
			'Response.End()
			SQLInsertPersonal = "Exec [USP_FORM_SUBMIT] '" & strFirstName & "', '" & strLastName & "', '" & strFatherName & "', '" & strMotherName & "', '" & strFathersProfession & "', '" & strMothersProfession & "', '" & dtmDateOfBirth & "', '" & strMeritalStatus & "', '" & strNationality & "', '" & strEmail & "', '" & strContactPhone & "', '" & strCellPhone & "', '" & intNationalId & "', '" & strBloodGroup & "', '" & strGender & "', '" & strHomeDistrict & "', '" & strHomeDistrict2 & "', '" & strThanaPrmDist & "', '" & strReligion & "', '" & strContactAddress & "', '" & strPermanentAddress & "', '" & strPassword & "', '" & now & "', " & IsDeclaration & ", '" & strReading & "', '" & strWriting & "', '" & strSpeaking & "', '" & strExperience & "', '"& strProfessionalQualification &"', '" & strAcademicDistinctions & "', '" &strExtraCurricularActivities  & "', '" & strComputerSkills & "', '" & strOtherDisclose & "',"&bdjID&","&socialID&","&BDJOBSPHOTO&",'"&PhotoURL&"', " &strTestCV &", "&TrackNo&","&jobid&",'"&cert&"','"&strDegreeName1&"','"&strInstitute1&"','"&strSubject1&"','"&strSubject21&"',"&strPassingYear1&","&strEducationId1&",'"&strUniversity1&"','"&strUniversityType1&"',"&strResult1&","&strResultPoint1&","&strCGPAScale1&","&strSubject_Others1&","&strSubject_Others21&",'"&strDegreeName2&"','"&strInstitute2&"','"&strSubject2&"','"&strSubject22&"',"&strPassingYear2&","&strEducationId2&",'"&strUniversity2&"','"&strUniversityType2&"',"&strResult2&","&strResultPoint2&","&strCGPAScale2&","&strSubject_Others2&","&strSubject_Others22&",'"&strDegreeName3&"','"&strInstitute3&"','"&strSubject3&"','"&strSubject23&"',"&strPassingYear3&","&strEducationId3&",'"&strUniversity3&"','"&strUniversityType3&"',"&strResult3&","&strResultPoint3&","&strCGPAScale3&","&strSubject_Others3&","&strSubject_Others23&",'"&strDegreeName4&"','"&strInstitute4&"','"&strSubject4&"','"&strSubject24&"',"&strPassingYear4&","&strEducationId4&",'"&strUniversity4&"','"&strUniversityType4&"',"&strResult4&","&strResultPoint4&","&strCGPAScale4&","&strSubject_Others4&","&strSubject_Others24&",'"&strReferenceName1&"','"&strReferencePosition1&"','"&strReferenceAddress1&"','"&strReferencePhone1&"','"&strReferenceEmail1&"','"&strReferenceName2&"','"&strReferencePosition2&"','"&strReferenceAddress2&"','"&strReferencePhone2&"','"&strReferenceEmail2&"','"&strip&"', '" &strSubject_O1&"',"&resultLevel_O1&",'"&strSubject_O2&"',"&resultLevel_O2&",'"&strSubject_O3&"',"&resultLevel_O3&",'"&strSubject_O4&"',"&resultLevel_O4&",'"&strSubject_O5&"',"&resultLevel_O5&",'"&strSubject_A1&"',"&resultLevel_A1&",'"&strSubject_A2&"',"&resultLevel_A2&",'"&bdjPHOTOURL&"','"&ersPHOTOURL&"','"&photo_upload_by_user_action&"','"&ersSIGNATUREURL&"','"&ersSIGNATUREURL&"','"&strAcademicDist1&"','"&strAcademicDist2&"','"&strAcademicDist3&"','"&strAcademicDist4&"','"&strTraining&"','"&strSpouseName&"','"&strSpouseProfession&"'"

		sendmail replyTo, "developer.ers@bdjobs.com", "StorePro-FormSubmit-"&commonFolder,SQLInsertPersonal,"","",replyTo

			err.clear


			   ' ValuePrint SQLInsertPersonal, "SQLInsertPersonal"
				Response.Write(SQLInsertPersonal)
				'response.End()
				on error resume next 
				arrTracking = objERS.RetrieveData(SQLInsertPersonal, errMsg)
				if err.number <> 0 then 
				  ' RESPONSE.Write(ERR.DESCRIPTION)
				   ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! unfortunately your application can not receieved.<br>Please try again after some time.<br><a href='"&commonURL&"'>Click here after some time</a></strong></font></center>"&phone)

		            sendmail replyTo, "developer.ers@bdjobs.com", "Error-StorePro-FormSubmit-"&commonFolder,err.DESCRIPTION&errMsg,"","",replyTo

				    err.clear


				   
					USERID = TrackNo
					currentUser = strContactPhone 
					 
					strModuleName = "Resume Submit Error" 
					strDescription = ReplacedAllTypeOfSpecialChar(ERR.DESCRIPTION&strFirstName & "', '" & strLastName & "', '" & strFatherName & "', '" & strMotherName & "', '" & strFathersProfession & "', '" & strMothersProfession & "', '" & dtmDateOfBirth & "', '" & strMeritalStatus & "', '" & strNationality & "', '" & strEmail & "', '" & strContactPhone) 
					strAction = "Insert Personal"
					
				%>
				<!--#include File = 'UserLog.asp' -->
				   
				<%  ErrorMessage "1302", ERR.DESCRIPTION, 0	
                    err.clear
					DivCreateForAds
					EndOfAllProcess
				
				else
					USERID = TrackNo
					currentUser = strContactPhone 
					 
					strModuleName = "Resume Submit" 
					strDescription = ReplacedAllTypeOfSpecialChar(ERR.DESCRIPTION&strFirstName & "', '" & strLastName & "', '" & strFatherName & "', '" & strMotherName & "', '" & strFathersProfession & "', '" & strMothersProfession & "', '" & dtmDateOfBirth & "', '" & strMeritalStatus & "', '" & strNationality & "', '" & strEmail & "', '" & strContactPhone) 
					strAction = "Insert Personal"
					'err.clear
				%>
				<!--#include File = 'UserLog.asp' -->				
				<%
				
               
				
			    ValuePrint errMsg, "errMsg"
				'Response.Write errMsg
				ErrorMessage "1302", errMsg, 0
				
				If arrTracking(0, 0) = 1 then 
				
				   ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! unfortunately your application can not receieved.<br>Please try again after some time.<br><a href='#' onclick='javascript:PageSubmit();return false;'>Click here after some time</a></strong></font></center>"&phone)
				   
					USERID = TrackNo
					currentUser = strContactPhone 
					 
					strModuleName = "Resume Submit Error Store Proc " 
					strDescription = ReplacedAllTypeOfSpecialChar(arrTracking(1, 0)&arrTracking(2, 0)&ERR.DESCRIPTION&strFirstName & "', '" & strLastName & "', '" & strFatherName & "', '" & strMotherName & "', '" & strFathersProfession & "', '" & strMothersProfession & "', '" & dtmDateOfBirth & "', '" & strMeritalStatus & "', '" & strNationality & "', '" & strEmail & "', '" & strContactPhone) 
					strAction = "Insert Personal Store Proc"
					'err.clear
				%>
				<!--#include File = 'UserLog.asp' -->
				
				<%  ErrorMessage "68", ERR.DESCRIPTION, 0	
                    err.clear
					DivCreateForAds
					EndOfAllProcess
				
				ElseIf arrTracking(0, 0) = 2 then 
				
				   ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Your mobile number has been already used. Please provide new mobile number.<br />Click <a   style='color:#F00;' href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.</strong></font></center>"&phone)
				   
					USERID = TrackNo
					currentUser = strContactPhone 
					 
					strModuleName = "Duplicate User Found" 
					strDescription = ReplacedAllTypeOfSpecialChar(ERR.DESCRIPTION&strFirstName & "', '" & strLastName & "', '" & strFatherName & "', '" & strMotherName & "', '" & strFathersProfession & "', '" & strMothersProfession & "', '" & dtmDateOfBirth & "', '" & strMeritalStatus & "', '" & strNationality & "', '" & strEmail & "', '" & strContactPhone) 
					strAction = "Phone/Email Already Exist"
					'err.clear
				%>
				<!--#include File = 'UserLog.asp' -->
				
				<%  'ErrorMessage "1302", ERR.DESCRIPTION, 0	
                    'err.clear
					DivCreateForAds
					EndOfAllProcess
				
				ElseIf arrTracking(0, 0) = 0 then 
				
					TrackNo = arrTracking(2, 0)
					TrackNoNEW = arrTracking(1, 0)
					
					if TrackNoNEW <> "" and isnull(TrackNoNEW) = False and isempty(TrackNoNEW) = False then 
%>
					<!--#include File = 'SendMail.asp' -->
                    
                    <%End If%>

					<% If errMsg = "" then  %>
                    <!--#include File = "BdjidInsert.asp" -->
                    <%End if%>
                    
                    <!--#include File = 'tempPhotoManage.asp' -->
                    <!--#include File = 'tempSignatureManage.asp' -->
                    <!--#include File = 'PhotoProblem_bdj_to_ers_ksb.asp' -->

<form id="fotFrm" action="?<%=Encode("Location=View&FormAction=Photo")%>" method="post" >

<input type="hidden" id="track_no" name="track_no" value="<%=TrackNo%>">
<input type="hidden" id="TrackNoNEW" name="TrackNoNEW" value="<%=TrackNoNEW%>"  />
<input type="hidden" id="systemName" name="systemName" value="PrimeBank_<%=YEAR(NOW)%>" >   
<input type="hidden" id="txtPassword" name ="txtPassword" value="<%=strPassword%>">
<input type="hidden" id="IsPhoto" name ="IsPhoto" value="<%=IsPhoto%>">               
<input type="hidden" id="srcImage" name ="srcImage" value="<%=ersPHOTOURL%>">
<input type="hidden" id="srcSignature" name ="srcSignature" value="<%=ersSIGNATUREURL%>">
<input type="hidden" id="JOB_ID" name ="JOB_ID" value="<%=jobid%>">               
 
</form>

<script type="text/javascript">
       setTimeout(function(){ document.getElementById('fotFrm').submit(); }, 10000);
</script>

                <%
				 Else
				
				   ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! unfortunately your application can not receieved.<br>Please try again after some time.<br />Click <a   style='color:#F00;' href='#' onclick='javascript:PageSubmit();return false;'>Click here after some time</a></strong></font></center>"&phone)
				   
					USERID = TrackNo
					currentUser = strContactPhone 
					 
					strModuleName = "Resume Submit Error Store Proc Unknown " 
					strDescription = ReplacedAllTypeOfSpecialChar(ERR.DESCRIPTION&strFirstName & "', '" & strLastName & "', '" & strFatherName & "', '" & strMotherName & "', '" & strFathersProfession & "', '" & strMothersProfession & "', '" & dtmDateOfBirth & "', '" & strMeritalStatus & "', '" & strNationality & "', '" & strEmail & "', '" & strContactPhone) 
					strAction = "Insert Personal Store Proc"
					err.clear
				%>
				<!--#include File = 'UserLog.asp' -->
				
				<%
					DivCreateForAds
					EndOfAllProcess
				 End If 
				
				
				 end if 
				%>


<%End If%>