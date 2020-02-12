<script>
function PageSubmit(pNo)
{
	//alert(pNo);
	document.getElementById('hPage').value=pNo;
	document.getElementById('frmResume').submit();
}
</script>

<%
		
Sub endof
        ErrorTrack "666", "endof", "NRBBank-Admin"
		Response.Write("<center><strong>No Record Found<br/><br/><a style='cursor:pointer;'  onclick ='javascipt:history.go(-1);'>Back</a></center>")
        objERS.CloseConnection()
		Set objERS = Nothing 
		Response.End()
End Sub 


Sub ErrorTrack(LineNo, pageName, systemName)
 If Err.Number <> 0 Then
 
     Response.Write("<br>"&Err.Source&"Error Source:"&LineNo&"-"&pageName&"-"&systemName)
     Response.Write("<br>"&Server.HTMLEncode(Err.Description)&"Error Description:"&LineNo&"-"&pageName&"-"&systemName)  
     Response.Write("<br>"&Server.HTMLEncode(Err.Number)&"Error Code:"&LineNo&"-"&pageName&"-"&systemName) 
     'ValuePrint Server.HTMLEncode(Err.Source)&"Error Source:"&LineNo&"-"&pageName&"-"&systemName 
     'ValuePrint Server.HTMLEncode(Err.Description), "Error Description:"&LineNo&"-"&pageName&"-"&systemName
	 'ValuePrint Server.HTMLEncode(Err.Number) , "Error Code:"&LineNo&"-"&pageName&"-"&systemName
   
     Err.Clear 
 End If
End Sub

pg = Trim(Request.Form("hPage"))
'Response.Write("pg"&pg)
%>

<%

'Session.Timeout = 120
intTN = Request.Form("txtTrakingNumber")
'strJobPosting = Request.Form("ddlJobPosting")
IsWhereEdu = True 
strCVType = ""
'Response.Write("strCVType: " & strCVType)
'strGrade = ""
'strPercentFrom = ""
'strPercentTo = ""
IsDisplay = False
IsWhere = True
SQLWhere = ""
strBrach = ""
strJoin = ""
No_Subject = Trim(Request.Form("No_Subject"))
'Response.Write(No_Subject)

	
	'If intTN = "" Then
		strJobPosting = Request.Form("ddlJobPosting")
		'response.Write(strJobPosting)
		

		strCVType = Trim(Request.Form("rdoCVType"))
		'response.Write("cv type:::"&strCVType&"<br>")
		
		strStartDate = Trim(Request.Form("txtStartDate"))
		'strStartDate=dateFunction(strStartDate)
		strEndDate = Trim(Request.Form("txtEndDate"))
		'strEndDate = dateFunction(strEndDate)
		strName = Request.Form("txtName")
		strDeadLine = Request.Form("strDeadLine")
		intAgeFrom = Request.Form("ddlAgeFrom")
		intAgeTo = Request.Form("ddlAgeTo")
		strSex = Request.Form("txtSex")
		strEmail = Request.Form("txtEmail")
		strPhone = Request.Form("txtPhone")
		strPhoneType = Request.Form("rdoPhone")
		strHomeDist = Request.Form("txtDistrict")
		strHomeDist2 = Request.Form("txtDistrict2")
		intRoll = Trim(Request.Form("txtRollNumber"))

		
		'strCDist = Request.Form("txtCDistrict")
		strRejected = Request.Form("ddlRejected")
		strPhoto = Request.Form("ddlPhoto")
		

		'ACADEMIC PORTION (MULTIPLE ROW AND VALUES)
		ReDim intEducationLevel(5)
		ReDim strDegreeName(5)
		ReDim strInstituteName(5)
		ReDim strForeign(5)
		ReDim strInstituteNameActual(5)
		ReDim intPassingYear(5)
		ReDim intResult(5)
		ReDim intResult_(5)
		ReDim strPercentFrom(5)
		ReDim strPercentTo(5)
		ReDim strPercentFrom_(5)
		ReDim strPercentTo_(5)
		ReDim strMajorSubject(5)
		ReDim strCampus(5)
		ReDim uniType(5)
		ReDim strExtraInstitute(5)
	
	  intEducationLevel(0) = ""
	  strDegreeName(0) = ""
	  strInstituteName(0) = ""
	  strForeign(0) = ""
	  strInstituteNameActual(0) = ""
	  intPassingYear(0) = ""
	  intResult(0) = ""
	  intResult_(0) = ""
	  strPercentFrom(0) = ""
	  strPercentTo(0) = ""
	  strPercentFrom_(0) = ""
	  strPercentTo_(0) = ""
	  strMajorSubject(0) = ""
	  strCampus(0) = ""
	  uniType(0) = ""
	  strExtraInstitute(0) = ""
	  
	  For  a = 1 To 5 
		  intEducationLevel(a) = Request.Form("ddlEducationLevel"&a)
		  'response.Write("edu level::.............................................................."&intEducationLevel(a))
		  strDegreeName(a) =  Request.Form("stxtDegreeName"&a) 'Request.Form("txtDegreeName"&a)
		  
		  'strDegreeName(a) = Replace(strDegreeName(a),", ","', '")'Replace(strDegreeName(a),"$","','")
		  'response.Write(strDegreeName(a)&"<br>")	
		  strForeign(a) =  Request.Form("sINSTITUTE"&a) 'Request.Form("INSTITUTE"&a)
		  'strInstituteName(a) = Request.Form("INSTITUTE"&a)	
		 ' response.Write(strInstituteName(a)&"<br>")
		  intResult(a) = Request.Form("RESULT"&a) 
		  intResult_(a) = Request.Form("RESULT"&a&"_") 
		  strPercentFrom(a) = Request.Form("txtPercentFrom"&a)
		  strPercentTo(a) = Request.Form("txtPercentTo"&a)
		  strPercentFrom_(a) = Request.Form("txtPercentFrom"&a&"_")
		  strPercentTo_(a) = Request.Form("txtPercentTo"&a&"_")
		  strMajorSubject(a) = Request.Form("sSUBJECT"&a) 'Request.Form("sSUBJECT"&a)
		 ' strMajorSubject(a) = Replace(Request.Form("sSUBJECT"&a),", ","','") 'Replace(Request.Form("SUBJECT"&a),"$","','") 
		  'response.Write(strMajorSubject(a))
		  intPassingYear(a) = Request.Form("ddlPassingYear"&a)
		  strCampus(a) = Request.Form("CAMPUS"&a)
		  strExtraInstitute(a) = Request.Form("chkInstitute"&a)
	'Next  
	       
	'For m = 1 To 5 	
			m = a
			
			If strForeign(a) <> "F" AND strForeign(a) <> "O" Then
				uniType(a) = "N"	 
				strInstituteName(a) = Request.Form("sINSTITUTE"&a) 'Request.Form("INSTITUTE"&a) 
				'strInstituteName(a) = Replace(Request.Form("sINSTITUTE"&a),", ","','") 'Replace(Request.Form("INSTITUTE"&a),"$","','") 
				'response.Write(strInstituteName(a))
			End If
						
			If strForeign(a) = "O" Then
				uniType(a) = "O"
				strInstituteName(m) = Request.Form("INS_NAME"&a)
				strINS_NAME1 = strInstituteName(a)
			End If

			
			If strForeign(a) = "F" Then
				uniType(a) = "F"
				strCampus(a) = Request.Form("CAMPUS"&a)
				
				If strCampus(a) = "Any" Then
					strInstituteName(a) = ""
				Else
					strInstituteName(a) = Request.Form("INS_NAME"&a)
					strInstituteName(a) = strInstituteName(a) & "@***@" & strCampus(a)
				End If
			End If	
			'response.Write(strExtraInstitute)

			If strExtraInstitute(a) <> "" Then
				strExtraInstitute(a) = Request.Form("chkInstitute"&a)
				strExtraInstitute(a) = Replace(Request.Form("chkInstitute"&a),", ","','")
			End If
						
			intPassingYear(m)  = Request.Form("ddlPassingYear"&m)
			intResult(m) = Request.Form("RESULT"&m)
		
			If intResult(m) <> "0" And intResult(m) <> "12" Then
				strPercentFrom(m) = Request.Form("txtPercentFrom"&m)
				strPercentTo(m) = Request.Form("txtPercentTo"&m)
			ElseIf intResult(m) = "0" Then
				'strGrade = Request.Form("GRADE1")
				strPercentFrom(m) = Request.Form("txtPercentFrom"&m)
				strPercentTo(m) = Request.Form("txtPercentTo"&m)
			End If
			
			If strPercentFrom(m) <> "" And strPercentTo(m) <> "" Then
				If strPercentFrom(m) > 0 And strPercentTo(m) > 0 Then
					If strPercentFrom(m) > strPercentTo(m) Then
						'strTempPercent(m) = strPercentTo(m)
						'strPercentTo(m) = strPercentFrom(m) ' eta cilo
						'strPercentFrom(m) = strTempPercent(m)
					End If
				End If	
			End If

			If intResult_(m) <> "0" And intResult_(m) <> "12" Then
				strPercentFrom_(m) = Request.Form("txtPercentFrom"&m&"_")
				strPercentTo_(m) = Request.Form("txtPercentTo"&m&"_")
			ElseIf intResult_(m) = "0" Then
				'strGrade = Request.Form("GRADE1")
				strPercentFrom_(m) = Request.Form("txtPercentFrom"&m&"_")
				strPercentTo_(m) = Request.Form("txtPercentTo"&m&"_")
			End If
			
			If strPercentFrom_(m) <> "" And strPercentTo_(m) <> "" Then
				If strPercentFrom_(m) > 0 And strPercentTo_(m) > 0 Then
					If strPercentFrom_(m) > strPercentTo_(m) Then
						'strTempPercent(m) = strPercentTo(m)
						strPercentTo_(m) = strPercentFrom_(m)
						'strPercentFrom(m) = strTempPercent(m)
					End If
				End If	
			End If
		
			'strMajorSubject(m) = Request.Form("SUBJECT1")
			'If strMajorSubject(m) = "Others" Then
				'strMajorSubject(m) = Request.Form("MAJOR"&m)
				'response.Write(strMajorSubject(m))
			'End If
		
		Next 

%>
