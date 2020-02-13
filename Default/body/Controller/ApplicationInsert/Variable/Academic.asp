<%
    strEducationId1 = Trim(Request.Form("ddlEducationLevel1"))	
    strEducationId2 = Trim(Request.Form("ddlEducationLevel2"))	
    strEducationId3 = Trim(Request.Form("ddlEducationLevel3"))	
    strEducationId4 = Trim(Request.Form("ddlEducationLevel4"))	
    strEducationId5 = Trim(Request.Form("ddlEducationLevel5"))	
	
	'Response.Write("<br>strEduLevel1:"&strEduLevel1)
	'Response.Write("<br>strEduLevel2:"&strEduLevel2)
	'Response.Write("<br>strEduLevel3:"&strEduLevel3)
	'Response.Write("<br>strEduLevel4:"&strEduLevel4)
	'Response.Write("<br>strEduLevel5:"&strEduLevel5)
	'Response.Write("<br>strEduLevel1:"&strEduLevel1)
	
	
	strDegreeName1 = Trim(Request.Form("ddlDegreeName1")) 
	strDegreeName2 = Trim(Request.Form("ddlDegreeName2")) 
	strDegreeName3 = Trim(Request.Form("ddlDegreeName3")) 
	strDegreeName4 = Trim(Request.Form("ddlDegreeName4")) 
	strDegreeName5 = Trim(Request.Form("ddlDegreeName5")) 

	If strDegreeName1 = "" or isempty(strDegreeName1) or isnull(strDegreeName1)  Then			
	 strDegreeName1 = Trim(Request.Form("ddlDegreeName1hidden"))
	End IF

	If strDegreeName2 = "" or isempty(strDegreeName2) or isnull(strDegreeName2)  Then			
	 strDegreeName2 = Trim(Request.Form("ddlDegreeName2hidden"))
	End IF

	If strDegreeName3 = "" or isempty(strDegreeName3) or isnull(strDegreeName3)  Then			
	 strDegreeName3 = Trim(Request.Form("ddlDegreeName3hidden"))
	End IF


	If strDegreeName4 = "" or isempty(strDegreeName4) or isnull(strDegreeName4)  Then			
	 strDegreeName4 = Trim(Request.Form("ddlDegreeName4hidden"))
	End IF


	If strDegreeName5 = "" or isempty(strDegreeName5) or isnull(strDegreeName5)  Then			
	 strDegreeName5 = Trim(Request.Form("ddlDegreeName5hidden"))
	End IF
	If strDegreeName1 = "O Level" Then
	
		resultLevel_O1 = Trim(Request.Form("txtLevel_O1"))
		resultLevel_O2 = Trim(Request.Form("txtLevel_O2"))
		resultLevel_O3 = Trim(Request.Form("txtLevel_O3"))
		resultLevel_O4 = Trim(Request.Form("txtLevel_O4"))
		resultLevel_O5 = Trim(Request.Form("txtLevel_O5"))
		
		strSubject_O1 = Trim(Request.Form("txtSubO1"))		
		strSubject_O2 = Trim(Request.Form("txtSubO2"))		
		strSubject_O3 = Trim(Request.Form("txtSubO3"))		
		strSubject_O4 = Trim(Request.Form("txtSubO4"))
		strSubject_O5 = Trim(Request.Form("txtSubO5"))
	Else
		resultLevel_O1 = 0
		resultLevel_O2 = 0
		resultLevel_O3 = 0
		resultLevel_O4 = 0
		resultLevel_O5 = 0
		
		strSubject_O1 = ""	
		strSubject_O2 = ""
		strSubject_O3 = ""
		strSubject_O4 = ""
		strSubject_O5 = ""
	
	End If
	
	If strDegreeName2 = "A Level" Then
	
		resultLevel_A1 = Trim(Request.Form("txtLevel_A1"))
		resultLevel_A2 = Trim(Request.Form("txtLevel_A2"))
		
		strSubject_A1 = Trim(Request.Form("txtSubA1"))
		strSubject_A2 = Trim(Request.Form("txtSubA2"))
	Else
		resultLevel_A1 = 0
		resultLevel_A2 = 0
		
		strSubject_A1 = ""
		strSubject_A2 = ""
	
	End If
		
	
	strPassingYear1 = Trim(Request.Form("ddlPassingYear1"))
	strPassingYear2 = Trim(Request.Form("ddlPassingYear2"))
	strPassingYear3 = Trim(Request.Form("ddlPassingYear3"))
	strPassingYear4 = Trim(Request.Form("ddlPassingYear4"))
	strPassingYear5 = Trim(Request.Form("ddlPassingYear5"))
	
	
	intResultDay1 = Trim(Request.Form("ddlResultDay1"))
	intResultMonth1 = Trim(Request.Form("ddlResultMonth1"))
	intResultYear1 = Trim(Request.Form("ddlResultYear1"))	
	strResultPublishYear1 = intResultYear1 & "/" & intResultMonth1 & "/"& intResultDay1	
	
	intResultDay2 = Trim(Request.Form("ddlResultDay2"))
	intResultMonth2 = Trim(Request.Form("ddlResultMonth2"))
	intResultYear2 = Trim(Request.Form("ddlResultYear2"))	
	strResultPublishYear2 = intResultYear2 & "/" & intResultMonth2 & "/"& intResultDay2		
	
	intResultDay3 = Trim(Request.Form("ddlResultDay3"))
	intResultMonth3 = Trim(Request.Form("ddlResultMonth3"))
	intResultYear3 = Trim(Request.Form("ddlResultYear3"))	
	strResultPublishYear3 = intResultYear3 & "/" & intResultMonth3 & "/"& intResultDay3		
	
	intResultDay4 = Trim(Request.Form("ddlResultDay4"))
	intResultMonth4 = Trim(Request.Form("ddlResultMonth4"))
	intResultYear4 = Trim(Request.Form("ddlResultYear4"))	
	strResultPublishYear4 = intResultYear4 & "/" & intResultMonth4 & "/"& intResultDay4	
       


	intResultDay5 = Trim(Request.Form("ddlResultDay5"))
	intResultMonth5 = Trim(Request.Form("ddlResultMonth5"))
	intResultYear5 = Trim(Request.Form("ddlResultYear5"))	
	strResultPublishYear5 = intResultYear5 & "/" & intResultMonth5 & "/"& intResultDay5	

	strInstitute1 = Trim(Request.Form("txtInstitute1")) 
	strInstitute2 = Trim(Request.Form("txtInstitute2")) 
	strInstitute3 = Trim(Request.Form("txtInstitute3")) 
	strInstitute4 = Trim(Request.Form("txtInstitute4")) 
	strInstitute5 = Trim(Request.Form("txtInstitute5")) 
	
	strAcademicDist1 = Trim(Request.Form("ddlAcademicDist1"))
	strAcademicDist2 = Trim(Request.Form("ddlAcademicDist2"))
	strAcademicDist3 = Trim(Request.Form("ddlAcademicDist3"))
	strAcademicDist4 = Trim(Request.Form("ddlAcademicDist4"))
	strAcademicDist5 = Trim(Request.Form("ddlAcademicDist5"))

	if strAcademicDist3 = "" or isempty(strAcademicDist3) or isnull(strAcademicDist3) then
	  strAcademicDist3 = 0
	end if
		
	if strAcademicDist4 = "" or isempty(strAcademicDist4) or isnull(strAcademicDist4) then
	  strAcademicDist4 = 0
	end if
	
	strUniversity1 = Trim(Request.Form("ddlUniversity1")) 
	strUniversity2 = Trim(Request.Form("ddlUniversity2")) 
	strUniversity3 = Trim(Request.Form("ddlUniversity3")) 
	strUniversity4 = Trim(Request.Form("ddlUniversity4")) 
	strUniversity5 = Trim(Request.Form("ddlUniversity5")) 
	
	strUniversityOthers1 = Trim(Request.Form("txtUniversity1"))
	strUniversityOthers2 = Trim(Request.Form("txtUniversity2"))
	strUniversityOthers3 = Trim(Request.Form("txtUniversity3"))
	strUniversityOthers4 = Trim(Request.Form("txtUniversity4"))
	strUniversityOthers5 = Trim(Request.Form("txtUniversity1"))
	

	if strUniversityOthers1 = "" or isempty(strUniversityOthers1) or isnull(strUniversityOthers1) Then
	 strUniversityOthers1 = Trim(Request.Form("txtUniversity1hidden"))
	end if

	if strUniversityOthers2 = "" or isempty(strUniversityOthers2) or isnull(strUniversityOthers2) Then
	 strUniversityOthers2 = Trim(Request.Form("txtUniversity2hidden"))
	end if
	if strUniversityOthers3 = "" or isempty(strUniversityOthers3) or isnull(strUniversityOthers3) Then
	 strUniversityOthers3 = Trim(Request.Form("txtUniversity3hidden"))
	end if
	if strUniversityOthers4 = "" or isempty(strUniversityOthers4) or isnull(strUniversityOthers4) Then
	 strUniversityOthers4 = Trim(Request.Form("txtUniversity4hidden"))
	end if
	if strUniversityOthers5 = "" or isempty(strUniversityOthers5) or isnull(strUniversityOthers5) Then
	 strUniversityOthers5 = Trim(Request.Form("txtUniversity5hidden"))
	end if


	strCountry1 = Trim(Request.Form("ddlCountry1"))
	strCountry2 = Trim(Request.Form("ddlCountry2"))
	strCountry3 = Trim(Request.Form("ddlCountry3"))
	strCountry4 = Trim(Request.Form("ddlCountry4"))
	strCountry5 = Trim(Request.Form("ddlCountry5"))
	

	if strCountry1 = "" or isempty(strCountry1) or isnull(strCountry1) Then
	 strCountry1 = Trim(Request.Form("ddlCountry1hidden"))
	end if
	if strCountry2 = "" or isempty(strCountry2) or isnull(strCountry2) Then
	 strCountry2 = Trim(Request.Form("ddlCountry2hidden"))
	end if

	if strCountry3 = "" or isempty(strCountry3) or isnull(strCountry3) Then
	 strCountry3 = Trim(Request.Form("ddlCountry3hidden"))
	end if

	if strCountry4 = "" or isempty(strCountry4) or isnull(strCountry4) Then
	 strCountry4 = Trim(Request.Form("ddlCountry4hidden"))
	end if

	if strCountry5 = "" or isempty(strCountry5) or isnull(strCountry5) Then
	 strCountry5 = Trim(Request.Form("ddlCountry5hidden"))
	end if


	
	If strUniversity1 = "Foreign" Then
		strUniversityType1 = "F"
	ElseIf strUniversity1 = "Others" Then	
		strUniversityType1 = "O"
	Else
		strUniversityType1 = "N"	
	End If	
	
	If strUniversity2 = "Foreign" Then
		strUniversityType2 = "F"
	ElseIf strUniversity2 = "Others" Then	
		strUniversityType2 = "O"
	Else
		strUniversityType2 = "N"	
	End If	
	
	If strUniversity3 = "Foreign" Then
		strUniversityType3 = "F"
	ElseIf strUniversity3 = "Others" Then	
		strUniversityType3 = "O"
	Else
		strUniversityType3 = "N"	
	End If	
	
	If strUniversity4 = "Foreign" Then
		strUniversityType4 = "F"
	ElseIf strUniversity4 = "Others" Then	
		strUniversityType4 = "O"
	Else
		strUniversityType4 = "N"	
	End If	

	If strUniversity5 = "Foreign" Then
		strUniversityType5 = "F"
	ElseIf strUniversity5 = "Others" Then	
		strUniversityType5 = "O"
	Else
		strUniversityType5 = "N"	
	End If	
	
	
	If strDegreeName1 = "O Level" Then
		strResult1 = 0
	Else
		strResult1 = Trim(Request.Form("ddlResult1"))
	End If
	
	If strDegreeName2 = "A Level" Then
		strResult2 = 0
	Else
		strResult2 = Trim(Request.Form("ddlResult2"))
	End If
	
	
	strResult3 = Trim(Request.Form("ddlResult3"))
	strResult4 = Trim(Request.Form("ddlResult4"))
	strResult5 = Trim(Request.Form("ddlResult5"))
	
	If strDegreeName1 = "O Level" Then
		
		If IsNumeric(resultLevel_O1) and IsNumeric(resultLevel_O2) and IsNumeric(resultLevel_O3) and IsNumeric(resultLevel_O4) and IsNumeric(resultLevel_O5) Then
		
			strResultPoint_new_o = cint(resultLevel_O1) + cint(resultLevel_O2)  + cint(resultLevel_O3) + cint(resultLevel_O4) + cint(resultLevel_O5)
		
			strResultPoint_new_AVG = strResultPoint_new_o/5
			strResultPoint1 = strResultPoint_new_AVG
			'response.Write("hello"&strResultPoint1)
		End If
	
	Else	 
	
		strResultPoint1 = Trim(Request.Form("txtResultPoint1"))
		'response.Write("result1: "&strResultPoint1)
	End If
	
	
	
	If strDegreeName2 = "A Level" Then	
		If IsNumeric(resultLevel_A1) and IsNumeric(resultLevel_A2) Then					
			strResultPoint_new_a = cint(resultLevel_A1) + cint(resultLevel_A2)
			strResultPoint_a_AVG = strResultPoint_new_a/2 
			strResultPoint2 = strResultPoint_a_AVG			
		End If		
	Else	
		strResultPoint2 = Trim(Request.Form("txtResultPoint2"))
		'response.Write("result2: "&strResultPoint2)
	End If
	
	strResultPoint3 = Trim(Request.Form("txtResultPoint3"))
	strResultPoint4 = Trim(Request.Form("txtResultPoint4"))
	strResultPoint5 = Trim(Request.Form("txtResultPoint5"))
	

	If strDegreeName1 = "O Level" Then
		strCGPAScale1 = 5
	Else
		strCGPAScale1 = Trim(Request.Form("ddlCGPAScale1"))
	End If
	
	If strDegreeName2 = "A Level" Then	
		strCGPAScale2 = 5
	Else
		strCGPAScale2 = Trim(Request.Form("ddlCGPAScale2"))
	End If
	
	
	strCGPAScale3 = Trim(Request.Form("ddlCGPAScale3"))
	strCGPAScale4 = Trim(Request.Form("ddlCGPAScale4"))
	strCGPAScale5 = Trim(Request.Form("ddlCGPAScale5"))
	
	if strCGPAScale4 = "" or isempty(strCGPAScale4) or isnull(strCGPAScale4) then
	  strCGPAScale4 = 100
	end if 
	
	if strResultPoint4 = "" or isempty(strResultPoint4) or isnull(strResultPoint4) then
	  strResultPoint4 = 0
	end if 
	
	if strCGPAScale5 = "" or isempty(strCGPAScale5) or isnull(strCGPAScale5) then
	  strCGPAScale5 = 100
	end if 
	
	if strResultPoint5 = "" or isempty(strResultPoint5) or isnull(strResultPoint5) then
	  strResultPoint5 = 0
	end if 
	
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


  	strProfessionalCertification = Request.Form("chkCertification")
	strProfessionalCertification_others = Request.Form("txtCertification")
	
	if strProfessionalCertification <> "" then 
	  if strProfessionalCertification_others <> "" then
	    cert = strProfessionalCertification & "@@@" & strProfessionalCertification_others
	  else
	    cert = strProfessionalCertification
	  end if 
	end if   



%>