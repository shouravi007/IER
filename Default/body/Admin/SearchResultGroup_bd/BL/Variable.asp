
<%	
	'If intTN = "" Then
		strJobPosting = Request.Form("ddlJobPosting")
		'response.Write(strJobPosting)
		strStartDate = Trim(Request.Form("txtStartDate"))
		'strStartDate=dateFunction(strStartDate)
		strEndDate = Trim(Request.Form("txtEndDate"))
		'strEndDate = dateFunction(strEndDate)
		strName = Request.Form("txtName")
		'strNameType = Request.Form("rdoName")
		intAgeFrom = Request.Form("ddlAgeFrom")
		intAgeTo = Request.Form("ddlAgeTo")
		strSex = Request.Form("txtSex")
		strEmail = Request.Form("txtEmail")
		strPhone = Request.Form("txtPhone")
		strPhoneType = Request.Form("rdoPhone")
		strHomeDist = Request.Form("txtDistrict")
		'strCDist = Request.Form("txtCDistrict")
		strRejected = Request.Form("ddlRejected")
		strPhoto = Request.Form("ddlPhoto")
		

		'ACADEMIC PORTION (MULTIPLE ROW AND VALUES)
		Dim intEducationLevel(5)
		Dim strDegreeName(5)
		Dim strInstituteName(5)
		Dim strForeign(5)
		Dim strInstituteNameActual(5)
		Dim intPassingYear(5)
		Dim intResult(5)
		Dim intResult_(5)
		Dim strPercentFrom(5)
		Dim strPercentTo(5)
		Dim strPercentFrom_(5)
		Dim strPercentTo_(5)
		Dim strMajorSubject(5)
		Dim strCampus(5)
		Dim uniType(5)
		Dim strExtraInstitute(5)
	
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
	  
	  For  a = 1 To 4 
		  intEducationLevel(a) = Request.Form("ddlEducationLevel"&a)
		  'response.Write("edu level::.............................................................."&intEducationLevel(a))
		  strDegreeName(a) =  Request.Form("stxtDegreeName"&a) 'Request.Form("txtDegreeName"&a)
		  
		  strDegreeName(a) = Replace(strDegreeName(a),", ",", ")'Replace(strDegreeName(a),"$","','")
		 ' response.Write(strDegreeName(a)&"<br>")	
		  strForeign(a) =  Request.Form("sINSTITUTE"&a) 'Request.Form("INSTITUTE"&a)
		  'strInstituteName(a) = Request.Form("INSTITUTE"&a)	
		 ' response.Write(strInstituteName(a)&"<br>")
		  intResult(a) = Request.Form("RESULT"&a) 
		  intResult_(a) = Request.Form("RESULT"&a&"_") 
		  strPercentFrom(a) = Request.Form("txtPercentFrom"&a)
		  strPercentTo(a) = Request.Form("txtPercentTo"&a)
		  strPercentFrom_(a) = Request.Form("txtPercentFrom"&a&"_")
		  strPercentTo_(a) = Request.Form("txtPercentTo"&a&"_")
		  'strMajorSubject(a) = Request.Form("SUBJECT"&a) 'Request.Form("sSUBJECT"&a)
		  strMajorSubject(a) = Replace(Request.Form("sSUBJECT"&a),", ","','") 'Replace(Request.Form("SUBJECT"&a),"$","','") 
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
				strInstituteName(a) = Replace(Request.Form("sINSTITUTE"&a),", ",",") 'Replace(Request.Form("INSTITUTE"&a),"$","','") 
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
