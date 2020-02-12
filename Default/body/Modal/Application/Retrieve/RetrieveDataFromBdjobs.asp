<%
If strMobileForImport <> "" then 
	 sql = "select accid from userAccounts where accUserName = '"&strMobileForImport&"'"
	 arrTestMobileUser = objResumeServer.RetrieveData(sql, errMsg)
	 'response.Write("pid : "&arrTestMobileUser(0,0))
	 
	 if arrTestMobileUser(0,0) <> "Nothing" then
	    UserId = arrTestMobileUser(0,0)	 
	 Else
	 		strMessage = "Sorry, UserName does not exist."
			%> 
			  <script>
				alert('<%=strMessage%>');
			  </script>
			<%
	 end if 

Else

    if socialid <> "" then
	strSql = "USP_UserLogin_ERS  '"&socialid&"','','"&se&"'"
	else
	strSql = "USP_UserLogin_ERS  '"&strUserName&"','"&strPassword&"'"
	end if 
	ValuePrint strSql , "773-sql "    

	arrData=objResumeServer.RetrieveData(strSql,strErr)
	ValuePrint strErr, "778-errmsg"
	'ErrorMessage strErr,"172" , 0 
	'response.Write(arrData(0,0))
	
		If arrData(0,0) = 1 then
				'objResumeServer.CloseConnection()
				'Set objResumeServer = Nothing
				strMessage = "Invalid Character found in your user name."
				%> 
				  <script>
					alert('<%=strMessage%>');
				  </script>
				<%
				'Response.End()
		ElseIf arrData(0,0) = 2 then
				'objResumeServer.CloseConnection()
				'Set objResumeServer = Nothing
				strMessage = "Sorry, UserName does not exist."
				%> 
				  <script>
					alert('<%=strMessage%>');
				  </script>
				<%
					'Response.End()
	
		ElseIf arrData(0,0) = 3 then
				'objResumeServer.CloseConnection()
				'Set objResumeServer = Nothing
				strMessage = "UserName Does Not Activate."
				'Response.End()
				%> 
				  <script>
					alert('<%=strMessage%>');
				  </script>
				<%
		ElseIf arrData(0,0) = 4 then
				'objResumeServer.CloseConnection()
				'Set objResumeServer = Nothing
				strMessage = "Sorry, CV Does Not Posted."
				'Response.End()
				%> 
				  <script>
					alert('<%=strMessage%>');
				  </script>
				<%
		ElseIf arrData(0,0) = 5 then
				'objResumeServer.CloseConnection()
				'Set objResumeServer = Nothing
				strMessage = "Sorry, Username and/or Password did not match"
				'Response.End()
				%> 
				  <script>
					alert('<%=strMessage%>');
				  </script>	
			   <%
		Else
			UserId = arrData(0,0)

		End if 
		
End If 

		
		
if 	UserId <> "" and isnull(UserId) = False and isempty(UserId) = False then 	
		
        strMessage = "You have successfully imported data from your Bdjobs account. You need to manually enter data into the red color boxes as those were not imported. Please verify your data before submission." 		
		


		intErsId = 16 
		'intErsId=Request.form("ersId")
		secPersonal = 15022 '1 ' for personal block 
		secOthers = 15029 '3


		USERID = UserId
		currentUser = strUserName 
		 
		strModuleName = "Import From Bdjobs" 
		strDescription = ReplacedAllTypeOfSpecialChar(ERR.DESCRIPTION&strSql) 
		strAction = strPassword
		err.clear
	%>
	<!--#include File = 'UserLog.asp' -->
    <%
		
		
		strSql2 = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secPersonal 
		'response.Write(strSql2)
		ValuePrint strSql2 , "800-strsql2"
		arrBdjPersonal=objResumeServer.RetrieveData(strSql2,strErr)
		'ErrorMessage strErr,"279", 0
		ValuePrint strErr, "808-strErr"
		'ErrorMessage strErr,"284" , 0 
		ValuePrint strErr, "813"
		ValuePrint arrBdjPersonal(0,1) , "arrBdjPersonal(0,1)"
		strFirstName = arrBdjPersonal(0,1)
		ValuePrint arrBdjPersonal(1,1) , "arrBdjPersonal(1,1)"
		strLastName = arrBdjPersonal(1,1)
		
		ValuePrint arrBdjPersonal(2,1) , "arrBdjPersonal(2,1)"
		
		'If system = "shahjalalbank" or system = "ksb" then
			strFirstNameNew = strFirstName & " " & strLastName
			strFirstName = ""
			strFirstName = strFirstNameNew
		'end if
		
		strGender = arrBdjPersonal(2,1)
		ValuePrint arrBdjPersonal(3,1) , "arrBdjPersonal(3,1)"
		strDateOfBirthDay = arrBdjPersonal(3,1) 
		
		ValuePrint arrBdjPersonal(4,1) , "arrBdjPersonal(4,1)"
		strDateOfBirthMonth = arrBdjPersonal(4,1) 
		
		ValuePrint arrBdjPersonal(5,1) , "arrBdjPersonal(5,1)"
		strDateOfBirthYear = arrBdjPersonal(5, 1 ) 
		ValuePrint arrBdjPersonal(6,1) , "arrBdjPersonal(6,1)"
		strFatherName = arrBdjPersonal(6,1) 
		
		ValuePrint arrBdjPersonal(7,1) , "arrBdjPersonal(7,1)"
		strMotherName = arrBdjPersonal(7,1) 
		ValuePrint arrBdjPersonal(8,1) , "arrBdjPersonal(8,1)"
		strMaritalStatus = arrBdjPersonal(8, 1) 
		ValuePrint arrBdjPersonal(9,1) , "arrBdjPersonal(9,1)"
		strNationality = arrBdjPersonal(9,1) 
		
		ValuePrint arrBdjPersonal(10,1) , "arrBdjPersonal(10,1)"
		
		strEmail = arrBdjPersonal(10, 1) 
		
		
		ValuePrint arrBdjPersonal(11,1) , "arrBdjPersonal(11,1)"
		strContactPhone = arrBdjPersonal(11,1) 
		
		ValuePrint arrBdjPersonal(12,1) , "arrBdjPersonal(12,1)"
		strCellPhone = arrBdjPersonal(12, 1) 
		ValuePrint arrBdjPersonal(13,1) , "arrBdjPersonal(13,1)"
		strCellPhone2 = arrBdjPersonal(13, 1) 
		ValuePrint arrBdjPersonal(14,1) , "arrBdjPersonal(14,1)"
		intNationalId = arrBdjPersonal(14, 1) 
		ValuePrint arrBdjPersonal(15,1) , "arrBdjPersonal(15,1)"
		strReligion2 = arrBdjPersonal(15,1)
	    arrReligionPattern = array("isla","hind","chris","budd")
	    arrReligionValue = array("Islam","Hinduism","Christianity","Buddhism")
		strReligion = "" 
		For r = 0 to ubound(arrReligionPattern, 1) 
			message2 = lcase(strReligion2)
			searchTerm2 = lcase(arrReligionPattern(r))
	    	position2 = InStr(1, message2, searchTerm2, 1)
			
			If position2 > 0 then 
			 strReligion = arrReligionValue(r)			
			end if 
		Next 
		ValuePrint strReligion , "202-strReligion"

		ValuePrint arrBdjPersonal(16,1) , "arrBdjPersonal(16,1)"


		strContactAddress = arrBdjPersonal(16,1) 
		ValuePrint arrBdjPersonal(17,1) , "arrBdjPersonal(17,1)"
		strPermanentAddress = arrBdjPersonal(17, 1) 


		
		'response.Write(arrBdjAcademic(8,0)&"<br>"&arrBdjAcademic(8,1))
		'********************** store procedure 3 end*********************************
		
		secAcademic = 15023 ' 2 ' for personal block 
					
		strSql3 = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secAcademic
		'response.Write(strSql2)
		ValuePrint strSql3 , "54-strsql3"
		arrData3=objResumeServer.RetrieveData(strSql3,strErr)
		ValuePrint strErr , "386-objResumerServer-academic data retrieve error"
		
		
		For v = 0 to ubound(arrData3, 2 ) 
			ValuePrint arrData3(0,v) , "arrBdjAcademic(0,"&v&")"
			ValuePrint arrData3(1,v) , "arrBdjAcademic(1,"&v&")"
			ValuePrint arrData3(2,v) , "arrBdjAcademic(2,"&v&")"
			ValuePrint arrData3(3,v) , "arrBdjAcademic(3,"&v&")"
			ValuePrint arrData3(4,v) , "arrBdjAcademic(4,"&v&")"
			ValuePrint arrData3(5,v) , "arrBdjAcademic(5,"&v&")"
			ValuePrint arrData3(6,v) , "arrBdjAcademic(6,"&v&")"
			ValuePrint arrData3(7,v) , "arrBdjAcademic(7,"&v&")"
		next 
					
		strSql4 = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secOthers 
		ValuePrint strSql4 , "806-strSql3"
		arrBdjReff=objResumeServer.RetrieveData(strSql4,strErr)
		
		For v = 0 to ubound(arrBdjReff, 2 ) 
		ValuePrint arrBdjReff(0,v) , "191:arrBdjReff(0,"&v&")"
		ValuePrint arrBdjReff(1,v) , "192:arrBdjReff(1,"&v&")"
		ValuePrint arrBdjReff(2,v) , "193:arrBdjReff(2,"&v&"):: others.asp"
		next 
		
		secProfessional = 15024 ' for personal block 
					
		strSql6 = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secProfessional
		'response.Write(strSql2)
		ValuePrint strSql6 , "413-strsql6"
		arrBdjPedu=objResumeServer.RetrieveData(strSql6,strErr)
		ValuePrint strErr , "416-objResumerServer-professional data retrieve error"
		
		For v = 1 to ubound(arrBdjPedu, 2 ) 
			ValuePrint arrBdjPedu(0,v) , "arrBdjPedu(0,"&v&")"
			ValuePrint arrBdjPedu(1,v) , "arrBdjPedu(1,"&v&")"
			ValuePrint arrBdjPedu(2,v) , "arrBdjPedu(2,"&v&")"
			ValuePrint arrBdjPedu(3,v) , "arrBdjPedu(3,"&v&")"
		next
		
      If ubound(arrBdjPedu, 2 ) > 0 Then
	    ppp = "Professional Qualification &#13;&#10;&#13;&#10;&#13;&#10;"  
	    For pedu = 1 To Ubound(arrBdjPedu , 2 ) 
              ppp = ppp&(pedu)&"."&"Title : "&arrBdjPedu(0,pedu)
			  ppp = ppp&"&nbsp;&nbsp;&#13;&#10;&#13;&#10;Institute: "&arrBdjPedu(2,pedu)&" &#13;&#10;&#13;&#10;Location: "&arrBdjPedu(1,pedu)& " &#13;&#10;&#13;&#10;Year: "&arrBdjPedu(3,pedu) & 	"&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10; "
	   
	    Next 
	  End IF 

		
		secTraining =   15025 ' for personal block 
					
		strSql7 = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secTraining
		'response.Write(strSql2)
		ValuePrint strSql7 , "431-strsql7"
		arrBdjTraining=objResumeServer.RetrieveData(strSql7,strErr)
		ValuePrint strErr , "433-objResumerServer-training data retrieve error"
		
		
		For v = 0 to ubound(arrBdjTraining, 2 ) 
			ValuePrint arrBdjTraining(0,v) , "arrBdjTraining(0,"&v&")"
			ValuePrint arrBdjTraining(1,v) , "arrBdjTraining(1,"&v&")"
			ValuePrint arrBdjTraining(2,v) , "arrBdjTraining(2,"&v&")"
			ValuePrint arrBdjTraining(3,v) , "arrBdjTraining(3,"&v&")"
			ValuePrint arrBdjTraining(4,v) , "arrBdjTraining(4,"&v&")"
		next
		


		tra = "Training Information &#13;&#10;&#13;&#10;&#13;&#10;" 
      If ubound(arrBdjTraining, 2 ) > 0 Then 
	    For traa = 1 To Ubound(arrBdjTraining , 2 ) 
              tra = tra&(traa)&"."&"Training Title: "&arrBdjTraining(0,traa)
			  tra = tra&"&nbsp;&nbsp;&#13;&#10;&#13;&#10;Institute: "&arrBdjTraining(2,traa)&" &#13;&#10;&#13;&#10;Location: "&arrBdjTraining(1,traa)& " &#13;&#10;&#13;&#10;Year: "&arrBdjTraining(3,traa) ' & 	"Duration: "&arrData7(4,traa)&"&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10; "
	   
	    Next 
	  End IF 



	   strProfessionalQualification =  ppp '&"&nbsp;&nbsp;"& tra
	   strTraining = tra
		
		secLanguage =   15026 ' for personal block 
					
		strSql8 = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secLanguage
		'response.Write(strSql2)
		ValuePrint strSql8 , "449-strsql8"
		arrBdjLanguage=objResumeServer.RetrieveData(strSql8,strErr)
		ValuePrint strErr , "452-objResumerServer-language data retrieve error"
		
		
		For v = 0 to ubound(arrBdjLanguage, 2 ) 
			ValuePrint arrBdjLanguage(0,v) , "arrBdjLanguage(0,"&v&")"
			ValuePrint arrBdjLanguage(1,v) , "arrBdjLanguage(1,"&v&")"
			ValuePrint arrBdjLanguage(2,v) , "arrBdjLanguage(2,"&v&")"
			ValuePrint arrBdjLanguage(3,v) , "arrBdjLanguage(3,"&v&")"

		If InStr(lcase(cstr(arrBdjLanguage(0 , v))) , "english" ) > 0 then 
		
				strReading = arrBdjLanguage(1, v)
				strWriting = arrBdjLanguage(2,v)				
				strSpeaking = arrBdjLanguage(3,v)
				ValuePrint strReading, "150:strReading"
				ValuePrint strWriting, "151 :strWriting"
				ValuePrint strSpeaking , "152:strSpeaking"	
		 end if 

	  next
		
		
		secEmployment =   15027 ' for personal block 
					
		strSql9 = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secEmployment
		'response.Write(strSql2)
		ValuePrint strSql9 , "54-strsql9"
		arrBdjEmployment=objResumeServer.RetrieveData(strSql9,strErr)
		ValuePrint strErr , "486-objResumerServer-employment data retrieve error"
		
		
		For v = 0 to ubound(arrBdjEmployment, 2 ) 
			ValuePrint arrBdjEmployment(0,v) , "arrBdjEmployment(0,"&v&")"
			ValuePrint arrBdjEmployment(1,v) , "arrBdjEmployment(1,"&v&")"
			ValuePrint arrBdjEmployment(2,v) , "arrBdjEmployment(2,"&v&")"
			ValuePrint arrBdjEmployment(3,v) , "arrBdjEmployment(3,"&v&")"
			ValuePrint arrBdjEmployment(4,v) , "arrBdjEmployment(4,"&v&")"
			ValuePrint arrBdjEmployment(5,v) , "arrBdjEmployment(5,"&v&")"
			ValuePrint arrBdjEmployment(6,v) , "arrBdjEmployment(6,"&v&")"
			ValuePrint arrBdjEmployment(7,v) , "arrBdjEmployment(7,"&v&")"
			ValuePrint arrBdjEmployment(8,v) , "arrBdjEmployment(8,"&v&")"
		
		next
		

		   exper = "" 
		   If ubound(arrBdjEmployment, 2) > 0 Then 
			For ex = 1 to ubound(arrBdjEmployment, 2) 
			 exper = exper & (ex) & "."&arrBdjEmployment(1,ex)&"("&DateFormat(arrBdjEmployment(4, ex),"dm")&"-"&DateFormat(arrBdjEmployment(5, ex),"dm")& ")&#13;&#10;&#13;&#10;"&arrBdjEmployment(0, ex)&"&#13;&#10;&#13;&#10;Company Location: "&arrBdjEmployment(3, ex)& "&#13;&#10;Department:"&arrBdjEmployment(7, ex)&"&#13;&#10;Duties/Responsibilities:"&arrBdjEmployment(2, ex)&"&#13;&#10;&#13;&#10; " 
			  ValuePrint exper, "exper-386" 
			 Next 
		   End If 
			
			strExperience = exper





		secReference =   15028 ' for personal block 
					
		strSql10 = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secReference
		'response.Write(strSql2)
		ValuePrint strSql10 , "488-strSql10"
		arrBdjReff=objResumeServer.RetrieveData(strSql10,strErr)
		ValuePrint strErr , "386-objResumerServer-academic data retrieve error"
		
		
		For v = 0 to ubound(arrBdjReff, 2 ) 
			ValuePrint arrBdjReff(0,v) , "arrBdjReff(0,"&v&")"
			ValuePrint arrBdjReff(1,v) , "arrBdjReff(1,"&v&")"
			ValuePrint arrBdjReff(2,v) , "arrBdjReff(2,"&v&")"
			ValuePrint arrBdjReff(3,v) , "arrBdjReff(3,"&v&")"
			ValuePrint arrBdjReff(4,v) , "arrBdjReff(4,"&v&")"
			ValuePrint arrBdjReff(5,v) , "arrBdjReff(5,"&v&")"
			ValuePrint arrBdjReff(6,v) , "arrBdjReff(6,"&v&")"
			ValuePrint arrBdjReff(7,v) , "arrBdjReff(7,"&v&")"
		next
		

	
	If ubound(arrBdjReff, 2 ) > 0 Then
		
		intRefID1 = -1
		strRefName = arrBdjReff(0,1)
		strRefPos = arrBdjReff(1,1)
		strRefAdd = arrBdjReff(7,1)
		strRefPhone = arrBdjReff(6,1)
		strRefEmail = arrBdjReff(2,1)	
		
		If ubound(arrBdjReff, 2 ) > 1 Then
		    intRefID2 = -1
			strRefName2 = arrBdjReff(0,2)
			strRefPos2 = arrBdjReff(1,2)
			strRefAdd2 = arrBdjReff(7,2)
			strRefPhone2 = arrBdjReff(6,2)
			strRefEmail2 = arrBdjReff(2,2)	
		Else
			intRefID2 = -1
			strRefName2 = ""
			strRefPos2 = ""
			strRefAdd2 = ""
			strRefPhone2 = ""
			strRefHomePhone2 = ""
			strRefEmail2 = ""
		End If
	Else
		' Variable Initialization 4 Reference
		intRefID = -1
		strRefName = ""
		strRefPos = ""
		strRefAdd = ""
		strRefPhone = ""
		strRefCell = ""
		strRefEmail = ""
		
		intRefID2 = -1
		strRefName2 = ""
		bdjColorRefName2 = " background-color: #FF0000;" 
		strRefPos2 = ""
		strRefAdd2 = ""
		strRefPhone2 = ""
		strRefCell2 = ""
		strRefEmail2 = ""
	End If





		
		secPhoto = 15030 '  4 
		strSqlPhoto = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secPhoto 
		ValuePrint strSqlPhoto , "88-strSqlphoto"
		'response.Write(strSqlPhoto&"<br>")
		arrDataPhoto = objResumeServer.RetrieveData(strSqlPhoto,strErr)
		'ErrorMessage strErr,"391" , 0
		For v = 0 to ubound(arrBdjReff, 2 )			  
		ValuePrint arrDataPhoto(0,v) , "191:arrDataPhoto(0,"&v&")"
		ValuePrint arrDataPhoto(1,v) , "191:arrDataPhoto(0,"&v&")"
		ValuePrint arrDataPhoto(2,v) , "191:arrDataPhoto(0,"&v&")"
		Next 


        If arrDataPhoto(0,1) <> "Nothing" Then	
			photoName2 =  arrDataPhoto(0,1) &".jpg"
			strMybdjobs = True
			photoName1 = "" ' "//my.bdjobs.com/photos/"
			strImageLink = photoName1&photoName2
			ValuePrint strImageLink , "98-strImageLink"
			strPhotoName = strImageLink
			'strPhotoName = strImageLink
			pp33 = split(photoName2, "/")
			onlyPhoto = pp33(1) 			
        End If

      If photoName2 <> "" then 
	 %>
      <script>
	    var ersBdjToERsPhoto = "";
		ersBdjToERsPhoto = "//ers.bdjobs.com/applications/imageResize/photos/<%=strPhotoFolder%>/bdjobs/<%=onlyPhoto%>";
		var dataForPhoto = "";						  						
		dataForPhoto +="bdjPhoto=<%=photoName2%>";
		dataForPhoto +="&folderName=<%=strPhotoFolder%>";
		$.ajax(
		{
		type: "POST",
		contentType: "application/x-www-form-urlencoded; charset=utf-8",
		url: "//ers.bdjobs.com/applications/common/photo_upload/bdjPhotoToErs.php",
		data: dataForPhoto,
		success: function (result)
		 { 
			
		        $('#imgUser').attr('src','');
			    $('#imgUser').attr('src',ersBdjToERsPhoto);
				$( "#onlyPhoto" ).val("<%=onlyPhoto%>"); 
			
			
			document.getElementById('photo_upload_by_user_action').value = "";
	        $('#photo_upload_by_user_action').val('upload_from_bdjobs'); 			
		 }
		})	  
       </script>
     <%end if%>

        <!--#include File = "dhakbankHomeDistrictTobdj.asp" -->
    <%	
	  End IF 
    %> 