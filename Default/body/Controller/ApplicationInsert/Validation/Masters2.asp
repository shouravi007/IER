<%

'Response.Write("<br>strEducationId5:"&strEducationId5)
'Response.Write("<br>strDegreeName5:"&strDegreeName5)
'Response.Write("<br>strPassingYear5:"&strPassingYear5)
'Response.Write("<br>strInstitute5:"&strInstitute5)
'Response.Write("<br>strResult5:"&strResult5)
'Response.Write("<br>strUniversity5:"&strUniversity5)
'Response.Write("<br>strSubject5:"&strSubject5)


		if strEducationId5 <> "-1"  Or  strDegreeName5 <> "S"  Or  strPassingYear5  <> "S"  Or  strInstitute5  <> ""  Or  strUniversity5  <> "S"  Or  strResult5  <> "-1"  Or  strSubject5  <> "S"  then 
	
			Req = "True"
		
		else 
		
			Req = "False"
		end if 



	'If  cstr(strEducationId5) <> "-1"  And  cstr(strDegreeName5) <> "S" And cstr(strPassingYear5) <> "0" And cstr(strInstitute5) <> ""  And cstr(strResult5) <> "-1" And  cstr(strUniversity5) <> "S" And cstr(strSubject5) <> "S" Then
     ' Req = "False"
	'ElseIf   cstr(strEducationId5) <> "-1"  Or  cstr(strDegreeName5) <> "S"   Or cstr(strResult5) <> "-1" Or  cstr(strUniversity5) <> "S" Or cstr(strSubject5) <> "S" Then
	 ' Req = "True"
'	Else
	 ' Req = "True"
	'End if 
	
	'Req = "False"
 
'	If  cstr(strEducationId5) <> "-1"  Or  cstr(strDegreeName5) <> "S" Or cstr(strPassingYear5) <> "0" Or cstr(strInstitute5) <> ""  Or cstr(strResult5) <> "-1" Or  cstr(strUniversity5) <> "S" Or cstr(strSubject5) <> "S" Then
'	    Req = "True"
'	Else 
'		Req = "False"
'	End If



	strEducationId5 = CheckValidation(Req,strEducationId5,"select","-1","Number","Education Level for masters 2   level of Academic Qualification ")	

	strEducationId5 = CheckValidation(Req,strEducationId5,"text","Text","2","Education Level for masters  2   level of Academic Qualification ")	

	strEducationId5 = CheckValidation(Req,strEducationId5,"Numeric","Numeric","2","Education Level for masters 2   level of Academic Qualification ")	
	
	strDegreeName5 = CheckValidation(Req,strDegreeName5,"select","S","255","Exam / Degree title for masters 2   level of Academic Qualification ")	

	strDegreeName5 = CheckValidation(Req,strDegreeName5,"text","Text","255","Exam / Degree title for masters 2   level of Academic Qualification ")	


	strPassingYear5 = CheckValidation(Req,strPassingYear5,"select","S","4","Passing Year for masters 2   level of Academic Qualification")	

	strPassingYear5 = CheckValidation(Req,strPassingYear5,"text","Text","4","Passing Year for masters 2   level of Academic Qualification")	
	strPassingYear5 = CheckValidation(Req,strPassingYear5,"Numeric","Numeric","4","Passing Year for masters 2   level of Academic Qualification")	

'
' if strResult5 <> 14 then 
' 
'	intResultDay5 = CheckValidation(Req,intResultDay5,"select","S","2","Day of  Result Publish date  for masters 2   level of Academic Qualification")
'	
'	intResultDay5 = CheckValidation(Req,intResultDay5,"text","Text","2","Day of  Result Publish date  for masters  level  of Academic Qualification")
'	intResultDay5 = CheckValidation(Req,intResultDay5,"Numeric","Numeric","2","Day of  Result Publish date  for masters  level  of Academic Qualification")
'	
'	
'	intResultMonth5 = CheckValidation(Req,intResultMonth5,"select","S","2","Month of Result Publish date for masters  level  of Academic Qualification")	
'	intResultMonth5 = CheckValidation(Req,intResultMonth5,"text","Text","2","Month of Result Publish date for masters  level  of Academic Qualification")	
'	intResultMonth5 = CheckValidation(Req,intResultMonth5,"Numeric","Numeric","2","Month of Result Publish date for masters  level  of Academic Qualification")	
'	
'	
'	intResultYear5 = CheckValidation(Req,intResultYear5,"select","S","4","Year of  Result Publish date  for masters  level  of Academic Qualification")	
'	intResultYear5 = CheckValidation(Req,intResultYear5,"text","Text","4","Year of  Result Publish date  for masters  level  of Academic Qualification")	
'	intResultYear5 = CheckValidation(Req,intResultYear5,"Numeric","Numeric","4","Year of  Result Publish date  for masters  level  of Academic Qualification")	
'	
'	
'	strResultPublishYear5 = CheckValidation(Req,strResultPublishYear5,"DateTime","DateTime","DateTime","Result of Publish date  for masters  level  of Academic Qualification")	
'	
'end if 
	
	strInstitute5 = CheckValidation(Req,strInstitute5,"text","Text","255","Name of School  for masters 2   level of Academic Qualification  ")	

	strUniversity5 = CheckValidation(Req,strUniversity5,"select","S","250","Name of University for masters 2   level of Academic Qualification")	

	strUniversity5 = CheckValidation(Req,strUniversity5,"text","Text","250","Name of University for masters 2   level of Academic Qualification")	


	
	If strUniversity5 = "Foreign" Then
 
        strCountry5 = CheckValidation(Req,strCountry5,"select","S","50","Campus location for masters 2   level of Academic Qualification")	
	   
        strCountry5 = CheckValidation(Req,strCountry5,"text","Text","50","Campus location for masters 2   level of Academic Qualification")	

		strUniversityOthers5 =  CheckValidation(Req,strUniversityOthers5,"text","Text","200","Name of Foreign institute for masters 2   level of Academic Qualification")	
		
		strUniversity5 = strCountry5 & "@***@" & strUniversityOthers5
		
		strUniversityType5 = "F"
		
	ElseIf strUniversity5 = "Others" Then	
		strUniversityOthers5 =  CheckValidation(Req,strUniversityOthers5,"text","Text","200","Name of Others institute for masters 2   level of Academic Qualification")	
		
		strUniversity5 = strUniversityOthers5
		
		strUniversityType5 = "O"
	Else
		strUniversityType5 = "N"	
	End If


	strResult5 = CheckValidation(Req,strResult5,"select","-1","6","Result for masters  level  of Academic Qualification")	

	strResult5 = CheckValidation(Req,strResult5,"text","Text","6","Result for masters  level  of Academic Qualification")	
	strResult5 = CheckValidation(Req,strResult5,"Numeric","Numeric","6","Result for masters  level  of Academic Qualification")	

	
	
	If  strResult5 = "0" Then 
	     strResultPoint5 = CheckValidation(Req,strResultPoint5,"text","Text","5","CGPA for masters 2   level of Academic Qualification")	
	     strResultPoint5 = CheckValidation(Req,strResultPoint5,"Numeric","Numeric","5","CGPA for masters 2   level of Academic Qualification")	
		 
	     strCGPAScale5 = CheckValidation("True",strCGPAScale5,"select","-1","1","GPA Scale for masters level of Academic Qualification")
	     strCGPAScale5 = CheckValidation("True",strCGPAScale5,"text","Text","1","GPA Scale for masters level of Academic Qualification")
	     strCGPAScale5 = CheckValidation("True",strCGPAScale5,"Numeric","Numeric","5","GPA Scale for masters level of Academic Qualification")
		 
		 
		 
		 MarksTypeInputValidation Req,strResult5,strResultPoint5,strCGPAScale5,"CGPA for masters 2   level of Academic Qualification"
     
	Else
		 strResultPoint5 = CheckValidation(Req,strResultPoint5,"text","Text","5","Marks for masters 2   level of Academic Qualification")
		
		 strResultPoint5 = CheckValidation(Req,strResultPoint5,"Numeric","Numeric","5","Marks for masters 2   level of Academic Qualification")
		
		 MarksTypeInputValidation Req,strResult5,strResultPoint5,strCGPAScale5,"Marks for masters 2   level of Academic Qualification"
		 
    End If 
	
	
	strSubject5 =  CheckValidation(Req,strSubject5,"select","S","255","Subject for masters 2   level of Academic Qualification")
	
	strSubject5 =  CheckValidation(Req,strSubject5,"text","Text","255","Subject for masters 2   level of Academic Qualification")
	
	If strSubject5 = "Others" Then

		strOthers5 = CheckValidation(Req,strOthers5,"text","Text","255","Subject name in others for masters 2   level of Academic Qualification")
			
		strSubject5 = strOthers5
		strSubject_Others5 = 1	
	Else
	    strSubject_Others5 = 0
	End If									
	



	strSubject25 =  CheckValidation("False",strSubject25,"select","S","250","Major 2 for masters  level 2 of Academic Qualification")
	
	strSubject25 =  CheckValidation("False",strSubject25,"text","Text","250","Major 2 for masters  level 2  of Academic Qualification")
	
	If strSubject25 = "Others" Then

		strOthers25 = CheckValidation(Req,strOthers25,"text","Text","250","Major 2 name in others for masters  level of Academic Qualification")
			
		strSubject25 = strOthers25
		strSubject_Others25 = 1	
	Else
	    strSubject_Others25 = 0
	End If									



	on error resume next 
	 y5 = cdate(strResultPublishYear5)
	
	if err.number <> 0 then
	   err.clear 
	   strResultPublishYear5 = ""
	end if 


	on error resume next 
	 p5 = cint(strPassingYear5)
	
	if err.number <> 0 then
	   err.clear 
	   strPassingYear5 = 0 
	end if 


    if strEducationId5 = "-1" or strEducationId5 < -1 then 
	  strEducationId5 = 0 	 
	end if 
	

	
    if strCGPAScale5 = "-1" or strCGPAScale5 < -1 then 
	  strCGPAScale5 = 0 	 
	end if 
	
    if strResult5 = "-1" or strResult5 < -1 then 
	  strResult5 = 0 	 
	end if 
		
	on error resume next 
	 p6 = cint(strEducationId5)
	
	if err.number <> 0 then
	   err.clear 
	   strEducationId5 = 5 
	end if 


	on error resume next 
	 p6 = cint(strResult5)
	
	if err.number <> 0 then
	   err.clear 
	   strResult5 = 0 
	end if 



	on error resume next 
	 p6 = cdbl(strResultPoint5)
	
	if err.number <> 0 then
	   err.clear 
	   strResultPoint5 = 0 
	end if 



	on error resume next 
	 p6 = cint(strCGPAScale5)
	
	if err.number <> 0 then
	   err.clear 
	   strCGPAScale5 = 0 
	end if 
	

%>