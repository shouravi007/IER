    <!--#include file = 'InsertVariable.asp'-->
    <!-- include virtual = '/applications/common/ApplicationInsert/InsertVariable.asp'-->
<%

if len(strip) > 20 then 
  strip = "server-ers"
end if 


if checkDevice = true then 
  device_of_apply = "mobile"
else
  device_of_apply = "desktop"
end if 

        'Response.Write("<br>"&TrackNo)
If TrackNo = "-1" Then
			
	strPostedOn = "2019-09-01"
	'Response.Write("<br>jobid:"&jobid)
	ValuePrint jobid, "jobid"
	
	ersSignature = 0 
				
	'[USP_FORM_SUBMIT]
			
	SQLInsertPersonal = "Exec [USP_FORM_SUBMIT_V2] '" & strFirstName & "', '" & strLastName & "', '" & strFatherName & "', '" & strMotherName & "', '" & strFathersProfession & "', '" & strMothersProfession & "', '" & dtmDateOfBirth & "', '" & strMeritalStatus & "', '" & strNationality & "', '" & strEmail & "', '" & strContactPhone & "', '" & strCellPhone & "', '" & intNationalId & "', '" & strBloodGroup & "', '" & strGender & "', '" & strHomeDistrict & "', '" & strHomeDistrict2 & "', '" & strThanaPrmDist & "', '" & strReligion & "', '" & strContactAddress & "', '" & strPermanentAddress & "', '" & strPassword & "', '" & now & "', " & IsDeclaration & ", '" & strReading & "', '" & strWriting & "', '" & strSpeaking & "', '" & strExperience & "', '"& strProfessionalQualification &"', '" & strAcademicDistinctions & "', '" &strExtraCurricularActivities  & "', '" & strComputerSkills & "', '" & strOtherDisclose & "',"&bdjID&","&socialID&","&BDJOBSPHOTO&",'"&bdjPHOTOURL&"',"&ersSignature&",'"&signatureURL&"'," &strTestCV &","&TrackNo&","&jobid&",'"&cert&"','"&strDegreeName1&"','"&strInstitute1&"','"&strAcademicDist1&"','"&strSubject1&"','"&strSubject21&"',"&strPassingYear1&","&strEducationId1&",'"&strUniversity1&"','"&strUniversityType1&"',"&strResult1&","&strResultPoint1&","&strCGPAScale1&","&strSubject_Others1&","&strSubject_Others21&",'"&strDegreeName2&"','"&strInstitute2&"','"&strAcademicDist2&"','"&strSubject2&"','"&strSubject22&"',"&strPassingYear2&","&strEducationId2&",'"&strUniversity2&"','"&strUniversityType2&"',"&strResult2&","&strResultPoint2&","&strCGPAScale2&","&strSubject_Others2&","&strSubject_Others22&",'"&strDegreeName3&"','"&strInstitute3&"','"&strAcademicDist3&"','"&strSubject3&"','"&strSubject23&"',"&strPassingYear3&","&strEducationId3&",'"&strUniversity3&"','"&strUniversityType3&"',"&strResult3&","&strResultPoint3&","&strCGPAScale3&","&strSubject_Others3&","&strSubject_Others23&",'"&strDegreeName4&"','"&strInstitute4&"','"&strAcademicDist4&"','"&strSubject4&"','"&strSubject24&"',"&strPassingYear4&","&strEducationId4&",'"&strUniversity4&"','"&strUniversityType4&"',"&strResult4&","&strResultPoint4&","&strCGPAScale4&","&strSubject_Others4&","&strSubject_Others24&",'"&strReferenceName1&"','"&strReferencePosition1&"','"&strReferenceAddress1&"','"&strReferencePhone1&"','"&strReferenceEmail1&"','"&strReferenceName2&"','"&strReferencePosition2&"','"&strReferenceAddress2&"','"&strReferencePhone2&"','"&strReferenceEmail2&"','"&strip&"','"&strApplyingAs&"','"&strTraining&"', '" &strSubject_O1&"',"&resultLevel_O1&",'"&strSubject_O2&"',"&resultLevel_O2&",'"&strSubject_O3&"',"&resultLevel_O3&",'"&strSubject_O4&"',"&resultLevel_O4&",'"&strSubject_O5&"',"&resultLevel_O5&",'"&strSubject_A1&"',"&resultLevel_A1&",'"&strSubject_A2&"',"&resultLevel_A2&",'"&strFreedomFighter&"'"&","&strOrphan&","&strTribal&","&strAnsarVdp&",'"&strPhysicallyChallenged&"','"&bdjphotourl_my&"','"&source_of_system&"','"&device_of_apply&"'"			
									
	'Response.Write(SQLInsertPersonal)			
	'err.clear

	'ValuePrint SQLInsertPersonal, "SQLInsertPersonal"
	'Response.Write(SQLInsertPersonal)
	'response.End()
	on error resume next 
	
	arrTracking = objERS.RetrieveData(SQLInsertPersonal, errMsg)
	'response.End()
				
	if err.number <> 0 then 
		
		 'RESPONSE.Write("Line:40"&err.number&ERR.DESCRIPTION)
		 sendmail replyTo, developerTo, "SQL-USP-FormSubmit v2",SQLInsertPersonal,"","",replyTo	
		 
		ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! unfortunately your application can not receieved.<br>Please try again after some time.<br><a href='"&commonURL&"'>Click here after some time</a></strong></font></center>"&phone)
		
		sendmail replyTo, developerTo, "Error-StorePro-FormSubmit-"&commonFolder,err.DESCRIPTION&errMsg,"","",replyTo
		
		err.clear
		
		USERID = TrackNo
		currentUser = strContactPhone 
		 
		strModuleName = "Resume Submit Error" 
		strDescription = ReplacedAllTypeOfSpecialChar(ERR.DESCRIPTION&strFirstName & "', '" & strLastName & "', '" & strFatherName & "', '" & strMotherName & "', '" & dtmDateOfBirth & "', '" & strEmail & "', '" & strContactPhone) 
		strAction = "error Insert Personal"
		
%>
	<!--#include File = 'UserLog.asp' -->
				   
<%  
		ErrorMessage "64", ERR.DESCRIPTION, 0	
		err.clear
		DivCreateForAds
		EndOfAllProcess
				
	else
		
		'error not found
		USERID = TrackNo
		currentUser = strContactPhone 
		
		strModuleName = "Resume Submit" 
		strDescription = ReplacedAllTypeOfSpecialChar(ERR.DESCRIPTION&strFirstName & "', '" & strLastName & "', '" & strFatherName & "', '" & strMotherName & "', '" & strFathersProfession & "', '" & strMothersProfession & "', '" & dtmDateOfBirth & "', '" & strMeritalStatus & "', '" & strNationality & "', '" & strEmail & "', '" & strContactPhone) 
		strAction = "Insert Personal"
		'response.Write("1: "&"<BR>" &err.number) 
		'err.clear
	%>
	<!--#include File = 'UserLog.asp' -->				
	<%
	
	end if 'if err.number <> 0 then 
				
	'ValuePrint errMsg, "errMsg"
	ErrorMessage "86", errMsg, 0
	

	If arrTracking(0,0) = 1 then 
	   'Response.Write("<br>"&SQLInsertPersonal&"<br>")
	  ' RESPONSE.Write("Line:82"&err.number&ERR.DESCRIPTION&arrTracking(0, 0)&arrTracking(1, 0)&arrTracking(2, 0))
	   ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! unfortunately your application can not receieved.<br>Please try again after some time.<br><a href='#' onclick='javascript:PageSubmit();return false;'>Click here after some time</a></strong></font></center>"&phone)
	   
		USERID = TrackNo
		currentUser = strContactPhone 
		 
		strModuleName = "Resume Submit Error Store Proc " 
		
		strDescription = ReplacedAllTypeOfSpecialChar(arrTracking(1,0)&arrTracking(2,0)&ERR.DESCRIPTION&strFirstName & "', '" & strLastName & "', '" & strFatherName & "', '" & strMotherName & "', '" & dtmDateOfBirth & "', '" & strEmail & "', '" & strContactPhone) 
		strAction = "Insert Personal Store Proc ERROR"
		err.clear
	%>
	<!--#include File = 'UserLog.asp' -->
	
	<%  ErrorMessage "103", ERR.DESCRIPTION, 0	
		err.clear
		DivCreateForAds
		EndOfAllProcess
	
	ElseIf arrTracking(0,0) = 2 then 

		If Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Then
		
		
		'response.Write("1new: "& arrTracking(0, 0) & "<BR>2: "&arrTracking(1, 0))

		end if	
ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=3 face=Arial>You have already submitted your application in this system.<br /><a style='color:#F00;' href='http://ers.bdjobs.com/applications/ksb/Default.asp?Y1pn6v10=Z1qny&S14zNp6v10=Y1tv0' target='_blank'>Click Here</a></strong> to LogIn. <br>To know your Login Id Password, <strong><a style='color:#F00;' href='http://ers.bdjobs.com/applications/ksb/Default.asp?Y1pn6v10=Z1qny&S14zNp6v10=S14tr6Y1tv0' target='_blank'>Click Forget Login</a></strong></font></center>"&phone)
	   
		USERID = TrackNo
		currentUser = strContactPhone
		
		'response.Write("00: "& arrTracking(0,0) & "<BR>11new: "& arrTracking(1, 0) & "<BR>22: "&arrTracking(2, 0)) 
		 
		strModuleName = "Duplicate User Found" 
		strDescription = ReplacedAllTypeOfSpecialChar(ERR.DESCRIPTION&strFirstName & "', '" & strLastName & "', '" & strFatherName & "', '" & strMotherName & "', '" & dtmDateOfBirth & "', '" & strEmail & "', '" & strContactPhone) 
		strAction = "PHONE/NAME/FNAME/MNAME/DOB Already Exist"
		err.clear
	%>
	<!--#include File = 'UserLog.asp' -->
	
	<%  ErrorMessage "122", ERR.DESCRIPTION, 0	
		err.clear
		DivCreateForAds
		EndOfAllProcess				
	
	ElseIf arrTracking(0,0) = 0 then 
		
		' cv post complete
	
		TrackNo = arrTracking(2, 0)
		TrackNoNEW = arrTracking(1, 0)
		
		if TrackNoNEW <> "" and isnull(TrackNoNEW) = False and isempty(TrackNoNEW) = False then
		
		' call second stored procedure to apply start
		
			SQLInsertJobPosForApply = "USP_ApplyOnline " & TrackNoNEW & ", " & jobid 
			
			
'sendmail replyTo, developerTo, "SQL-USP-JobApplyAfterForm",SQLInsertJobPosForApply,"","",replyTo	
				
			err.clear

			'ValuePrint SQLInsertJobPosForApply, "SQLInsertJobPosForApply"
			'response.End()
			on error resume next 
		
			arrAppId = objERS.RetrieveData(SQLInsertJobPosForApply, errMsg)
			'ValuePrint SQLInsertJobPosForApply, "SQLInsertJobPosForApply"

			If arrAppId(0, 0) = 3 then 
		
				ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! unfortunately your application can not receieved.<br>Please try again after some time.<br><a href='#' onclick='javascript:PageSubmit();return false;'>Click here after some time</a></strong></font></center>"&phone)
		
				USERID = TrackNo
				currentUser = strContactPhone 
		 
				strModuleName = "Job Apply Error in Store Proc" 
		
				strDescription = "jobid:"&jobid
		
				strAction = "Insert JobPos Store Proc"
		
		%>
				<!--#include File = 'UserLog.asp' -->
		
		<%  	ErrorMessage "169", ERR.DESCRIPTION, 0	
				err.clear
				DivCreateForAds
				EndOfAllProcess
		
			
			ElseIf arrAppId(0, 0) = 1 then 
			
				ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>You have already applied for this job position. Please pay your applicant fee if you didn't pay yet.<br />Click <a style='color:#F00;' href='#' onclick='javascript:PageSubmit();return false;'>here</a> to LogIn.</strong></font></center>"&phone)
				
				USERID = TrackNo
				currentUser = strContactPhone 
		 
				strModuleName = "Already Applied Not Paid" 
		
				strDescription = "jobid: "&jobid 
		
				strAction = "Already Applied Not Paid"
		
		%>
				<!--#include File = 'UserLog.asp' -->
		
		<%  	ErrorMessage "191", ERR.DESCRIPTION, 0	
				err.clear
				DivCreateForAds
				EndOfAllProcess
			
			ElseIf arrAppId(0, 0) = 0 then 

%>
			<!--#include File = 'SendMail.asp' -->
<%						
			End If	' call second stored procedure to apply end														%>                   

<%
		End If
%>

		<% If errMsg = "" then  %>
			<!--#include File = "BdjidInsert.asp" -->
		<%End if%>
		
		
		<!--#include file = 'tempPhotoManage.asp' -->
		<!--#include file = 'tempSignatureManage.asp' -->
		

		<form id="fotFrm" action="?<%=Encode("Location=View&FormAction=Photo")%>" method="post" >
		
		<!--<input type="hidden" id="track_no" name="track_no" value="<%'=TrackNo%>">-->
		<input type="hidden" id="track_no" name="track_no" value="<%=TrackNoNEW%>">
		<input type="hidden" id="TrackNoNEW" name="TrackNoNEW" value="<%=TrackNoNEW%>"  />
		<input type="hidden" id="systemName" name="systemName" value="<%=commonFolder%>_<%=YEAR(NOW)%>" >  
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

	End If ' ElseIf arrTracking(0, 0) = 0 then
			
		'End If ' error not found
%>


<%End If%>