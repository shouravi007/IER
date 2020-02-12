				<div class="col-sm-12">
					<div class="summery-view bg-style">

<%
	strSpouseName = Trim(Request.Form("txtSpouseName"))
	strSpouseProfession = Trim(Request.Form("txtSpouseProfession"))

	strFirstName = Request.Form("txtFirstName")
	strLastName = Request.Form("txtLastName")
	strFatherName = Request.Form("txtFatherName")
	strMotherName = Request.Form("txtMotherName")
	strFathersProfession = Request.Form("txtFathersProfession")
	strMothersProfession = Request.Form("txtMothersProfession")

	dtmDateOfBirth = Request.Form("ddlDateOfBirthMonth") & "/" & Request.Form("ddlDateOfBirthDay") & "/" & Request.Form("ddlDateOfBirthYear") 
	
	strMeritalStatus = Request.Form("ddlMaritalStatus")
	strNationality = Request.Form("txtNationality")
	strEmail = Request.Form("txtEmail")
	'response.Write(strEmail)
	strContactPhone = Request.Form("txtContactPhone")
	strCellPhone = Request.Form("txtCellPhone")
	strCellPhone2 = Request.Form("txtCellPhone2")
	intNationalId = Request.Form("txtNationalId")
	strBloodGroup = Request.Form("ddlBloodGroup")
	strGender = Request.Form("ddlGender") 
	strHomeDistrict = Request.Form("ddlHomeDistrict") 
	strHomeDistrict2 = Request.Form("ddlHomeDistrict2") 
	strThanaPrmDist = Request.Form("ddlThanaPrmDist") 
	strReligion = Request.Form("ddlReligion")
	intNoOfClildren = Request.Form("ddlNoOfChildren")
	strContactAddress = Request.Form("txtContactAddress")
	strPermanentAddress = Request.Form("txtPermanentAddress")
%>
<form action="?<%=Encode("Location=Edit&FormAction=personal")%>" method="post" name="frmApplicationInsert" id="frmApplicationInsert">	
<input name="txtBlank" id="txtBlank" type="hidden" value="True" />
<input name="txtTrackingNo" id="txtTrackingNo" type="hidden" value="<%=TrackNo%>" />
<input name="TrackNoNew" id="TrackNoNew" type="hidden" value="<%=TrackNoNew%>" />
<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">
<input name="txtFirstName" id="txtFirstName" type="hidden" value="<%=strFirstName%>" />	
<input name="txtLastName" id="txtLastName" type="hidden" value="<%=strLastName%>" />	
<input name="txtFatherName" id="txtFatherName" type="hidden" value="<%=strFatherName%>" />
<input name="txtMotherName" id="txtMotherName" type="hidden" value="<%=strMotherName%>" />
<input name="txtFathersProfession" id="txtFathersProfession" type="hidden"  value="<%=strFathersProfession%>" /> 
<input name="txtMothersProfession" id="txtMothersProfession" type="hidden" value="<%=strMothersProfession%>" />
<input name="txtDateOfBirth" id="txtDateOfBirth" type="hidden" value="<%=dtmDateOfBirth%>" />
<input name="ddlMaritalStatus" id="ddlMaritalStatus" type="hidden" value="<%=strMeritalStatus%>" />
<input name="txtNationality" id="txtNationality" type="hidden" value="<%=strNationality%>" />	
<input name="txtEmail" id="txtEmail" type="hidden" value="<%=strEmail%>" />	
<input name="txtContactPhone" id="txtContactPhone" type="hidden" value="<%=strContactPhone%>" />	
<input name="txtCellPhone" id="txtCellPhone" type="hidden" value="<%=strCellPhone%>" />	
<input name="txtCellPhone2" id="txtCellPhone2" type="hidden" value="<%=strCellPhone2%>" />	
<input name="txtNationalId" id="txtNationalId" type="hidden" value="<%=intNationalId%>" />	
<input name="ddlBloodGroup" id="ddlBloodGroup" type="hidden" value="<%=strBloodGroup%>" />	
<input name="ddlGender" id="ddlGender" type="hidden" value="<%=strGender%>" />	
<input name="ddlHomeDistrict" id="ddlHomeDistrict" type="hidden" value="<%=strHomeDistrict%>" /> 
<input name="ddlHomeDistrict2" id="ddlHomeDistrict2" type="hidden" value="<%=strHomeDistrict2%>" />
<input name="ddlThanaPrmDist" id="ddlThanaPrmDist" type="hidden" value="<%=strThanaPrmDist%>" />
<input name="ddlReligion" id="ddlReligion" type="hidden" value="<%=strReligion%>" />	
<input name="ddlNoOfChildren" id="ddlNoOfChildren" type="hidden" value="<%=intNoOfClildren%>" />	
<input name="txtContactAddress" id="txtContactAddress" type="hidden" value="<%=strContactAddress%>" />	
<input name="txtPermanentAddress" id="txtPermanentAddress" type="hidden" value="<%=strPermanentAddress%>" />	
<input name="txtSpouseName" id="txtSpouseName" type="hidden" value="<%=strSpouseName%>" />
<input name="txtSpouseProfession" id="txtSpouseProfession" type="hidden" value="<%=strSpouseProfession%>" />
</form>

<%	
	
	strFirstName = CheckValidation("True",strFirstName,"text","Text","50","First Name")	
	strLastName = CheckValidation("False",strLastName,"text","Text","50","Last Name")	
	strFatherName = CheckValidation("True",strFatherName,"text","Text","100","Father's Name")	
	strMotherName = CheckValidation("True",strMotherName,"text","Text","100","Mother's Name")		
	
	if system = "ksb" then
		reqFMP = "False"	
	else
		reqFMP = "True"
	end if	
	
	strFathersProfession = CheckValidation(reqFMP,strFathersProfession,"text","Text","100","Father's Profession")	
	strMothersProfession = CheckValidation(reqFMP,strMothersProfession,"text","Text","100","Mother's Profession")	
	
	
	dtmDateOfBirth = CheckValidation("True",dtmDateOfBirth,"DateTime","DateTime","DateTime","Date of Birth")	
	
	'ageCheckValidation  "True",dtmDateOfBirth,"02/09/1989","30","09/02/2019","Age maximum"
	
	'ageCheckValidation  "True",dtmDateOfBirth,dtmBirthEligible,dtmAge,dtmBirthEligibleMsg,"Age maximum"     ' default\utility.asp
	
	If system = "ksb" then	
	
'******** quota*******
%>
<!--#include File = 'CheckQuota.asp' -->
<%
'******** check quota*******		
		
		'response.Write("strFreedomFighter"& strFreedomFighter & "<BR>" & strFreedomFighterC_GC)
		'response.Write("strPhysicallyChallenged"&dtmBirthEligibleQuota)
		'response.Write("strAnsarVdp"&dtmAgeQuota)	
		
		if strFreedomFighter = "1" or strFreedomFighterC_GC = "C" OR strFreedomFighterC_GC = "GC" Then
			
			ageCheckValidation  "True",dtmDateOfBirth,dtmBirthEligibleQuota,dtmAgeQuota,dtmBirthEligibleMsg,"You have crossed your age limit. Your age can be maximum"
			
		elseif strPhysicallyChallenged = "1" Then			
			'response.Write(strPhysicallyChallenged)
			
			ageCheckValidation  "True",dtmDateOfBirth,dtmBirthEligibleQuota,dtmAgeQuota,dtmBirthEligibleMsg,"You have crossed your age limit. Your age can be maximum"
		
		elseif strAnsarVdp = "1" or strTribal = "1" or strOrphan = "1" Then
			
			'response.Write(strAnsarVdp)			
			ageCheckValidation  "True",dtmDateOfBirth,dtmBirthEligible,dtmAge,dtmBirthEligibleMsg,"You have crossed your age limit. Your age can be maximum"
		
		else			
			ageCheckValidation  "True",dtmDateOfBirth,dtmBirthEligible,dtmAge,dtmBirthEligibleMsg,"You have crossed your age limit. Your age can be maximum"
		end if
	
	else
	
		ageCheckValidation  "True",dtmDateOfBirth,dtmBirthEligible,dtmAge,dtmBirthEligibleMsg,"You have crossed your age limit. Your age can be maximum" 
	
	end if	
	
	strMeritalStatus = CheckValidation("True",strMeritalStatus,"select","S","15","Marital Status")	
	
    if strMeritalStatus = "Married" then 
	'strSpouseName = CheckValidation("True",strSpouseName,"text","Text","70","Spouse Name")	
	'strSpouseProfession = CheckValidation("True",strSpouseProfession,"text","Text","70","Spouse Profession")	
	end if 	
	
	strNationality = CheckValidation("True",strNationality,"text","Text","50","Nationality")	
	'intNoOfClildren = CheckValidation("False",intNoOfClildren,"text","Number","1","No of Children")	
	strHomeDistrict = CheckValidation("True",strHomeDistrict,"text","Text","50","Home District")	
	strHomeDistrict2 = CheckValidation("True",strHomeDistrict2,"text","Text","50","Present District")	
	strThanaPrmDist = CheckValidation("True",strThanaPrmDist,"text","Text","50","Thana for Home District")
	
	strContactPhone = CheckValidation("True",strContactPhone,"text","Text","11","Contact Mobile")
	strContactPhone = CheckValidation("True",strContactPhone,"Numeric","Numeric","11","Contact Mobile ")
	
	strCellPhone = CheckValidation("True",strCellPhone,"text","Text","11","Emergency Contact Number")			
	strCellPhone = CheckValidation("True",strCellPhone,"Numeric","Numeric","11","Emergency Contact Number ")
	
		
	'strCellPhone2 = CheckValidation("False",strCellPhone2,"text","Text","50","Cell  Phone 2 ")	
	intNationalId = CheckValidation("False",intNationalId,"text","Text","25","National ID")	
	
	If intNationalId <> "" Then 
	  If Len(intNationalId) < 5 Then 
	     ShowValidateMsg("National ID can not be less than 5 digit<br/>Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	  End IF 
    End IF   
    
	strBloodGroup =  CheckValidation("False",strBloodGroup,"text","Text","3","Blood Group")	
	strGender = CheckValidation("True",strGender,"select","S","6","Gender")	
	strReligion = CheckValidation("True",strReligion,"select","S","25","Religion")	
	
	strEmail = CheckValidation(reqFMP,strEmail,"email","Text","100","Email")		
	
	strContactAddress = CheckValidation("True",strContactAddress,"text","Text","250","Correspondence  Address")	
	strPermanentAddress = CheckValidation("True",strPermanentAddress,"text","Text","250","Permanent Address")			
	

    sql = "" 
	
	if system = "ksb" then
		sql = " select id from personal where id <> "&TrackNo&" and ( contactphone = '"&strContactPhone&"' ) "
	else
		sql = " select id from personal where id <> "&TrackNo&" and ( email = '"&strEmail&"' or contactphone = '"&strContactPhone&"' ) "
	end if
	
	'Response.Write(sql)
	arrDuplicateUser = objERS.RetrieveData(sql, errMsg)
	
	 if arrDuplicateUser(0, 0) <> "Nothing" Then 
	
		if system = "ksb" then
			ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>This contact mobile has been already used. Please provide new mobile number.<br />Click <a   style='color:#F00;' href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.</strong></font></center>"&phone)
		else					
			ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Your mobile number or email has been already used. Please provide new mobile number or email address.<br />Click <a   style='color:#F00;' href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.</strong></font></center>"&phone)
		end if   
			USERID = TrackNo
			currentUser = strContactPhone 
			 
			strModuleName = "Duplicate Contact/email Found Edit " 
			strDescription = ReplacedAllTypeOfSpecialChar(ERR.DESCRIPTION&sql) 
			strAction = "Phone/Email Already Exist Edit"
	
			err.clear
		%>
		<!--#include File = 'UserLog.asp' -->
		
		<%
			DivCreateForAds
			EndOfAllProcess
		end if 
	


			ReDim arrPersonalSQL(1)
			ReDim arrPersonalData(1, 24)
			
			arrPersonalData(0, 0) = strFirstName
			arrPersonalData(0, 1) = strLastName
			arrPersonalData(0, 2) = strFatherName
			arrPersonalData(0, 3) = strMotherName
			arrPersonalData(0, 4) = dtmDateOfBirth
			arrPersonalData(0, 5) = strMeritalStatus
			arrPersonalData(0, 6) = strNationality
			arrPersonalData(0, 7) = strEmail
			arrPersonalData(0, 8) = strContactPhone
			arrPersonalData(0, 9) = strCellPhone
			arrPersonalData(0, 10) = intNationalId
			arrPersonalData(0, 11) = strBloodGroup
			arrPersonalData(0, 12) = strGender
			arrPersonalData(0, 13) = strReligion
			arrPersonalData(0, 14) = strContactAddress
			arrPersonalData(0, 15) = strPermanentAddress
			arrPersonalData(0, 16) = now
			'arrPersonalData(0, 17) = strCellPhone2
			arrPersonalData(0, 17) = strHomeDistrict

			arrPersonalData(0, 18) = strFathersProfession
			arrPersonalData(0, 19) = strMothersProfession
			arrPersonalData(0, 20) = strHomeDistrict2
			arrPersonalData(0, 21) = strThanaPrmDist
			arrPersonalData(0, 22) = Request.ServerVariables("REMOTE_ADDR")
			arrPersonalData(0, 23) = strSpouseName
			arrPersonalData(0, 24) = strSpouseProfession


			USERID = TrackNo
			currentUser = TrackNo 
			strModuleName = "Resume Update" 
			SQLInsertAcademic =  strFirstName & "-" & strLastName & "-" &  strFatherName & "-" &  strMotherName & "-" &  dtmDateOfBirth & "-" &  strEmail & "-" &  strContactPhone & "-" &  strCellPhone & "-" & strHomeDistrict & "-" &  strHomeDistrict2 & "-" &strContactAddress & "-" & strPermanentAddress & "-" & Request.ServerVariables("REMOTE_ADDR")& "-" & strGender & "-" & strThanaPrmDist

			strDescription = ReplacedAllTypeOfSpecialChar(SQLInsertAcademic) 
			strAction = "Update Personal"
			%>
			  <!--#include File = "UserLog.asp" -->


			<%
			
			
			'							    0		  1	  		2			3			4				5			  6		   7		8				9						  10		  11		  12		13		  14				 15			 16		 17			18				19			   20		21		  22	
			arrPersonalSQL(0) = "SELECT FirstName, LastName, FatherName, MotherName, DateOfBirth, MaritalStatus, Nationality, Email, ContactPhone, CellPhone, NationalId, BloodGroup, Gender, Religion, ContactAddress, PermanentAddress,  UpdatedOn, HomeDistrict,FathersProfession,MothersProfession,HomeDistrict2,[ThanaForPrmDist], [ip],SpouseName,SpouseProfession FROM Personal WHERE id=" & TrackNo
			'response.Write(arrPersonalSQL(0))
		
			objERS.UpdateData arrPersonalSQL, arrPersonalData, errMsg
			response.Write(errMsg)
			ErrorMessage "177", errMsg, 0
		
%>

	<%If errMsg = "" Or IsNull(errMsg) = True Then
	
	ShowValidateMsgOnly("Successfully updated your resume.<br>Please click ok to continue...")
	
	%>
		 <FORM name="view_resume" id="view_resume" action="?<%=Encode("Location=Edit&FormAction=EditResume")%>" method="post">
             
             <input type="hidden" id="TrackNoNew" name="TrackNoNew" value="<%=TrackNoNew%>"/>
             <INPUT type="hidden" name="txtTrackingNo" value="<%=TrackNo%>">
			<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">
			<INPUT type="hidden" name="T" value="False">
		 </FORM>
		 <SCRIPT language="javascript">
			alert("Successfully updated your resume.\nPlease click ok to continue...");
			document.getElementById('view_resume').submit();
		 </SCRIPT>		 
	<%End If%>	
    
    
    
        </div>
   </div>