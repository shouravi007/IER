<%
 
 if system = "ksb" then
 
 else 
'Response.Write("<br>strEducationId4:"&strEducationId4)
'Response.Write("<br>strDegreeName4:"&strDegreeName4)
'Response.Write("<br>strPassingYear4:"&strPassingYear4)
'Response.Write("<br>strInstitute4:"&strInstitute4)
'Response.Write("<br>strResult4:"&strResult4)
'Response.Write("<br>strUniversity4:"&strUniversity4)
'Response.Write("<br>strSubject4:"&strSubject4)


		'if strEducationId4 <> "-1"  Or  strDegreeName4 <> "S"  Or  strPassingYear4  <> "S"  Or  strInstitute4  <> ""  Or  strUniversity4  <> "S"  Or  strResult4  <> "-1"  Or  strSubject4  <> "S"  then 
	
		'	Req = "True"
		
		'else 
		
			'Req = "False"
		'end if 



	'If  cstr(strEducationId4) <> "-1"  And  cstr(strDegreeName4) <> "S" And cstr(strPassingYear4) <> "0" And cstr(strInstitute4) <> ""  And cstr(strResult4) <> "-1" And  cstr(strUniversity4) <> "S" And cstr(strSubject4) <> "S" Then
     ' Req = "False"
	'ElseIf   cstr(strEducationId4) <> "-1"  Or  cstr(strDegreeName4) <> "S"   Or cstr(strResult4) <> "-1" Or  cstr(strUniversity4) <> "S" Or cstr(strSubject4) <> "S" Then
	 ' Req = "True"
'	Else
	 ' Req = "True"
	'End if 
	
	'Req = "False"
 
'	If  cstr(strEducationId4) <> "-1"  Or  cstr(strDegreeName4) <> "S" Or cstr(strPassingYear4) <> "S" Or cstr(strInstitute4) <> ""  Or cstr(strResult4) <> "-1" Or  cstr(strUniversity4) <> "S" Or cstr(strSubject4) <> "S" Then
	    Req = "True"
'	Else 
'	   If jobid < 3  Then   ' InStr(strDegreeName3, "Pass") > 0
'	    Req = "True"
'	   Else 
'		Req = "False"
'	   End If
'	End If

'RESPONSE.Write(Req)

	'Req = "False"

	strEducationId4 = CheckValidation(Req,strEducationId4,"select","-1","Number","Education Level for masters  level of Academic Qualification ")	

	strEducationId4 = CheckValidation(Req,strEducationId4,"text","Text","2","Education Level for masters  level of Academic Qualification ")	

	strEducationId4 = CheckValidation(Req,strEducationId4,"Numeric","Numeric","2","Education Level for masters  level of Academic Qualification ")	
	
	strDegreeName4 = CheckValidation(Req,strDegreeName4,"select","S","255","Exam / Degree title for masters  level of Academic Qualification ")	

	strDegreeName4 = CheckValidation(Req,strDegreeName4,"text","Text","255","Exam / Degree title for masters  level of Academic Qualification ")	


	strPassingYear4 = CheckValidation(Req,strPassingYear4,"select","S","4","Passing Year for masters  level of Academic Qualification")	

	strPassingYear4 = CheckValidation(Req,strPassingYear4,"text","Text","4","Passing Year for masters  level of Academic Qualification")	
	strPassingYear4 = CheckValidation(Req,strPassingYear4,"Numeric","Numeric","4","Passing Year for masters  level of Academic Qualification")	


	'******************** PUBLISH DAY MONTH YEAR START VALIDATION******************
'response.Write(strResult4)
'If Req = "True"	Then
 
' if strResult4 = 12 then 
' 	ReqPD = "False"	
' else
'	ReqPD = "True"
' end if
 
'	intResultDay4 = CheckValidation(ReqPD,intResultDay4,"select","S","2","Day of  Result Publish date  for masters  level of Academic Qualification")
	
'	intResultDay4 = CheckValidation(ReqPD,intResultDay4,"text","Text","2","Day of  Result Publish date  for masters  level  of Academic Qualification")
'	intResultDay4 = CheckValidation(ReqPD,intResultDay4,"Numeric","Numeric","2","Day of  Result Publish date  for masters  level  of Academic Qualification")	
	
'	intResultMonth4 = CheckValidation(ReqPD,intResultMonth4,"select","S","2","Month of Result Publish date for masters  level  of Academic Qualification")	
'	intResultMonth4 = CheckValidation(ReqPD,intResultMonth4,"text","Text","2","Month of Result Publish date for masters  level  of Academic Qualification")	
'	intResultMonth4 = CheckValidation(ReqPD,intResultMonth4,"Numeric","Numeric","2","Month of Result Publish date for masters  level  of Academic Qualification")	
	
	
'	intResultYear4 = CheckValidation(ReqPD,intResultYear4,"select","S","4","Year of  Result Publish date  for masters  level  of Academic Qualification")	
'	intResultYear4 = CheckValidation(ReqPD,intResultYear4,"text","Text","4","Year of  Result Publish date  for masters  level  of Academic Qualification")	
'	intResultYear4 = CheckValidation(ReqPD,intResultYear4,"Numeric","Numeric","4","Year of  Result Publish date  for masters  level  of Academic Qualification")		
	
'	strResultPublishYear4 = CheckValidation(ReqPD,strResultPublishYear4,"DateTime","DateTime","DateTime","Result of Publish date  for masters  level  of Academic Qualification")	

'End If	
	'******************** PUBLISH DAY MONTH YEAR END VALIDATION******************
	
	strInstitute4 = CheckValidation(Req,strInstitute4,"text","Text","255","Name of School  for masters  level of Academic Qualification  ")	

	strUniversity4 = CheckValidation(Req,strUniversity4,"select","S","250","Name of University for masters  level of Academic Qualification")	

	strUniversity4 = CheckValidation(Req,strUniversity4,"text","Text","250","Name of University for masters  level of Academic Qualification")	


	
	If strUniversity4 = "Foreign" Then
 
        strCountry4 = CheckValidation(Req,strCountry4,"select","S","50","Campus location for masters  level of Academic Qualification")	
	   
        strCountry4 = CheckValidation(Req,strCountry4,"text","Text","50","Campus location for masters  level of Academic Qualification")	

		strUniversityOthers4 =  CheckValidation(Req,strUniversityOthers4,"text","Text","200","Name of Foreign institute for masters  level of Academic Qualification")	
		
		strUniversity4 = strCountry4 & "@***@" & strUniversityOthers4
		
		strUniversityType4 = "F"
		
	ElseIf strUniversity4 = "Others" Then	
		strUniversityOthers4 =  CheckValidation(Req,strUniversityOthers4,"text","Text","200","Name of Others institute for masters  level of Academic Qualification")	
		
		strUniversity4 = strUniversityOthers4
		
		strUniversityType4 = "O"
	Else
		strUniversityType4 = "N"	
	End If


	strResult4 = CheckValidation(Req,strResult4,"select","-1","6","Result for masters  level  of Academic Qualification")	

	strResult4 = CheckValidation(Req,strResult4,"text","Text","6","Result for masters  level  of Academic Qualification")	
	strResult4 = CheckValidation(Req,strResult4,"Numeric","Numeric","6","Result for masters  level  of Academic Qualification")	

	
	
	If  strResult4 = "0" Then 
	     strResultPoint4 = CheckValidation(Req,strResultPoint4,"text","Text","5","CGPA for masters  level of Academic Qualification")	
	     strResultPoint4 = CheckValidation(Req,strResultPoint4,"Numeric","Numeric","5","CGPA for masters  level of Academic Qualification")	
		 
	     strCGPAScale4 = CheckValidation("True",strCGPAScale4,"select","-1","1","CGPA Scale for masters level of Academic Qualification")
	     strCGPAScale4 = CheckValidation("True",strCGPAScale4,"text","Text","1","CGPA Scale for masters level of Academic Qualification")
	     strCGPAScale4 = CheckValidation("True",strCGPAScale4,"Numeric","Numeric","5","CGPA Scale for masters level of Academic Qualification")
		 
		 
		 MarksTypeInputValidation Req,strResult4,strResultPoint4,strCGPAScale4,"CGPA for masters  level of Academic Qualification", jobid
     
	Else
		 strResultPoint4 = CheckValidation(Req,strResultPoint4,"text","Text","5","Marks for masters  level of Academic Qualification")
		
		 strResultPoint4 = CheckValidation(Req,strResultPoint4,"Numeric","Numeric","5","Marks for masters  level of Academic Qualification")

		if strResult4 = 12 then
		else	
		 
		 MarksTypeInputValidation Req,strResult4,strResultPoint4,strCGPAScale4,"Marks for masters  level of Academic Qualification", jobid
		end if 
		 
    End If 
	
	
	strSubject4 =  CheckValidation(Req,strSubject4,"select","S","250","Major for masters  level of Academic Qualification")
	
	strSubject4 =  CheckValidation(Req,strSubject4,"text","Text","250","Major for masters  level of Academic Qualification")
	
	If strSubject4 = "Others" Then

		strOthers4 = CheckValidation(Req,strOthers4,"text","Text","250","Major name in others for masters  level of Academic Qualification")
			
		'strSubject4 = strOthers4
		'strSubject_Others4 = 1	
	Else
	   ' strSubject_Others4 = 0
	End If									
	
	strSubject24 =  CheckValidation("False",strSubject24,"select","S","250","Major 2 for masters  level of Academic Qualification")
	
	strSubject24 =  CheckValidation("False",strSubject24,"text","Text","250","Major 2 for masters  level of Academic Qualification")
	
	If strSubject24 = "Others" Then

		strOthers24 = CheckValidation(Req,strOthers24,"text","Text","250","Major 2 name in others for masters  level of Academic Qualification")
			
		'strSubject24 = strOthers24
		'strSubject_Others24 = 1	
	Else
	    'strSubject_Others24 = 0
	End If									

 
  end if 


	on error resume next 
	 py = cint(strPassingYear4)
	
	if err.number <> 0 then
	   err.clear 
	   strPassingYear4 = 0
	end if 


	on error resume next 
	 p5 = cint(strEducationId4)
	
	if err.number <> 0 then
	   err.clear 
	   strEducationId4 = 4 
	end if 


	on error resume next 
	 p5 = cint(strResult4)
	
	if err.number <> 0 then
	   err.clear 
	   strResult4 = 0 
	end if 



	on error resume next 
	 p5 = cdbl(strResultPoint4)
	
	if err.number <> 0 then
	   err.clear 
	   strResultPoint4 = 0 
	end if 



	on error resume next 
	 p5 = cint(strCGPAScale4)
	
	if err.number <> 0 then
	   err.clear 
	   strCGPAScale4 = 0 
	end if 


    if strEducationId4 = "-1" or strEducationId4 < -1 then 
	  strEducationId4 = 0 	 
	end if 
	
    if strCGPAScale4 = "-1" or strCGPAScale4 < -1 then 
	  strCGPAScale4 = 0 	 
	end if 
	
    if strResult4 = "-1" or strResult4 < -1 then 
	  strResult4 = 0 	 
	end if 
	
	on error resume next 
	 y4 = cdate(strResultPublishYear4)
	
	if err.number <> 0 then
	   err.clear 
	   strResultPublishYear4 = ""
	end if 


	on error resume next 
	 p4 = cint(strPassingYear4)
	
	if err.number <> 0 then
	   err.clear 
	   strPassingYear4 = 0 
	end if 


%>