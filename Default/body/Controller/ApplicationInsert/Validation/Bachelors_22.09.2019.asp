<%
'response.Write(strResultPoint3)
	strEducationId3 = CheckValidation("True",strEducationId3,"select","-1","Number","Education Level for bachelor level of Academic Qualification ")	

	strEducationId3 = CheckValidation("True",strEducationId3,"text","Text","1","Education Level for bachelor level of Academic Qualification ")	

	strEducationId3 = CheckValidation("True",strEducationId3,"Numeric","Numeric","1","Education Level for bachelor level of Academic Qualification ")	
	
	strDegreeName3 = CheckValidation("True",strDegreeName3,"select","S","250","Exam / Degree title for bachelor level of Academic Qualification ")	

	strDegreeName3 = CheckValidation("True",strDegreeName3,"text","Text","250","Exam / Degree title for bachelor level of Academic Qualification ")	


	strPassingYear3 = CheckValidation("True",strPassingYear3,"select","S","4","Passing Year for bachelor level of Academic Qualification")	

	strPassingYear3 = CheckValidation("True",strPassingYear3,"text","Text","4","Passing Year for bachelor level of Academic Qualification")	

	strPassingYear3 = CheckValidation("True",strPassingYear3,"Numeric","Numeric","4","Passing Year for bachelor level of Academic Qualification")	

'	intResultDay3 = CheckValidation("True",intResultDay3,"select","S","2","Day of  Result Publish date  for bachelor level of Academic Qualification")
'	
'	intResultDay3 = CheckValidation("True",intResultDay3,"text","Text","2","Day of  Result Publish date  for bachelor level  of Academic Qualification")
'		
'	intResultDay3 = CheckValidation("True",intResultDay3,"Numeric","Numeric","2","Day of  Result Publish date  for bachelor level  of Academic Qualification")
'	
'	intResultMonth3 = CheckValidation("True",intResultMonth3,"select","S","2","Month of Result Publish date for bachelor level  of Academic Qualification")	
'	intResultMonth3 = CheckValidation("True",intResultMonth3,"text","Text","2","Month of Result Publish date for bachelor level  of Academic Qualification")	
'	intResultMonth3 = CheckValidation("True",intResultMonth3,"Numeric","Numeric","2","Month of Result Publish date for bachelor level  of Academic Qualification")	
'	
'	
'	intResultYear3 = CheckValidation("True",intResultYear3,"select","S","4","Year of  Result Publish date  for bachelor level  of Academic Qualification")	
'	intResultYear3 = CheckValidation("True",intResultYear3,"text","Text","4","Year of  Result Publish date  for bachelor level  of Academic Qualification")	
'	intResultYear3 = CheckValidation("True",intResultYear3,"Numeric","Numeric","4","Year of  Result Publish date  for bachelor level  of Academic Qualification")	
'	
'	
'	strResultPublishYear3 = CheckValidation("True",strResultPublishYear3,"DateTime","DateTime","DateTime","Result of Publish date  for bachelor level  of Academic Qualification")	
	

	strInstitute3 = CheckValidation("True",strInstitute3,"text","Text","250","Name of Institute  for bachelor level of Academic Qualification  ")	

	strUniversity3 = CheckValidation("True",strUniversity3,"select","S","250","Name of University for bachelor level of Academic Qualification")	

	strUniversity3 = CheckValidation("True",strUniversity3,"text","Text","250","Name of University for bachelor level of Academic Qualification")	

	
	If strUniversity3 = "Foreign" Then
 
        strCountry3 = CheckValidation("True",strCountry3,"select","S","50","Campus location for bachelor level of Academic Qualification")	
	   
        strCountry3 = CheckValidation("True",strCountry3,"text","Text","50","Campus location for bachelor level of Academic Qualification")	

		strUniversityOthers3 =  CheckValidation("True",strUniversityOthers3,"text","Text","200","Name of Foreign institute for bachelor level of Academic Qualification")	
		
		strUniversity3 = strCountry3 & "@***@" & strUniversityOthers3
		
		strUniversityType3 = "F"
		
	ElseIf strUniversity3 = "Others" Then	
		strUniversityOthers3 =  CheckValidation("True",strUniversityOthers3,"text","Text","200","Name of Others institute for bachelor level of Academic Qualification")	
		
		strUniversity3 = strUniversityOthers3
		
		strUniversityType3 = "O"
	Else
		strUniversityType3 = "N"	
	End If


	strResult3 = CheckValidation("True",strResult3,"select","-1","6","Result for bachelor level  of Academic Qualification")	

	strResult3 = CheckValidation("True",strResult3,"text","Text","6","Result for bachelor level  of Academic Qualification")	

	strResult3 = CheckValidation("True",strResult3,"Numeric","Numeric","6","Result for bachelor level  of Academic Qualification")	

	If  strResult3 = "0" Then 
	     strResultPoint3 = CheckValidation("True",strResultPoint3,"text","Text","5","CGPA for bachelor level of Academic Qualification")	
	     strResultPoint3 = CheckValidation("True",strResultPoint3,"Numeric","Numeric","5","CGPA for bachelor level of Academic Qualification")	

	     strCGPAScale3 = CheckValidation("True",strCGPAScale3,"select","-1","1","GPA Scale for higher bachelor level of Academic Qualification")
	     strCGPAScale3 = CheckValidation("True",strCGPAScale3,"text","Text","1","GPA Scale for higher bachelor level of Academic Qualification")
	     strCGPAScale3 = CheckValidation("True",strCGPAScale3,"Numeric","Numeric","5","GPA Scale for bachelor level of Academic Qualification")		 
		 
		 MarksTypeInputValidation "True",strResult3,strResultPoint3,strCGPAScale3,"CGPA for bachelor level of Academic Qualification", jobid
     
	Else
		 strResultPoint3 = CheckValidation("True",strResultPoint3,"text","Text","5","Marks for bachelor level of Academic Qualification")
		 strResultPoint3 = CheckValidation("True",strResultPoint3,"Numeric","Numeric","5","Marks for bachelor level of Academic Qualification")
			
		 MarksTypeInputValidation "True",strResult3,strResultPoint3,strCGPAScale3,"Marks for bachelor level of Academic Qualification", jobid
    End If 	
	
	strSubject3 =  CheckValidation("True",strSubject3,"select","S","250","Major for  bachelor level of Academic Qualification")
	
	strSubject3 =  CheckValidation("True",strSubject3,"text","Text","250","Major for  bachelor level of Academic Qualification")
	
	If strSubject3 = "Others" Then

		strOthers3 = CheckValidation("True",strOthers3,"text","Text","250","Major name in others for bachelor level of Academic Qualification")
			
		strSubject3 = strOthers3
		strSubject_Others3 = 1	
	Else
	    strSubject_Others3 = 0
	End If									


	strSubject23 =  CheckValidation("False",strSubject23,"select","S","250","Major 2 for  bachelor level of Academic Qualification")
	
	strSubject23 =  CheckValidation("False",strSubject23,"text","Text","250","Major 2 for  bachelor level of Academic Qualification")
	
	If strSubject23 = "Others" Then

		strOthers23 = CheckValidation("True",strOthers23,"text","Text","250","Subject name in others for bachelor level of Academic Qualification")
			
		strSubject23 = strOthers23
		strSubject_Others23 = 1	
	Else
	    strSubject_Others23 = 0
	End If									
	
%>