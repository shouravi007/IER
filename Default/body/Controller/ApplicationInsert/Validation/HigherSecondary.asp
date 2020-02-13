<% 
	strEducationId2 = CheckValidation("True",strEducationId2,"select","-1","Number","Education Level for higher secondary level of Academic Qualification ")	

	strEducationId2 = CheckValidation("True",strEducationId2,"text","Text","1","Education Level for higher secondary  level of Academic Qualification ")	

	strEducationId2 = CheckValidation("True",strEducationId2,"Numeric","Numeric","1","Education Level for higher secondary  level of Academic Qualification ")	
	
	strDegreeName2 = CheckValidation("True",strDegreeName2,"select","S","255","Exam / Degree title for higher secondary  level of Academic Qualification ")	

	strDegreeName2 = CheckValidation("True",strDegreeName2,"text","Text","255","Exam / Degree title for higher secondary  level of Academic Qualification ")	

	If strDegreeName2 = "A Level" Then
	
		IF (strSubject_A1 = "" or resultLevel_A1= "") OR (strSubject_A2 = "" or resultLevel_A2 = "") Then	
		
				strSubject_A1 = CheckValidation("True",strSubject_A1,"text","text","50","A Level Subject 1")
				resultLevel_A1 = CheckValidation("True",resultLevel_A1,"select","","5","A Level Result 1")
				
				strSubject_A2 = CheckValidation("True",strSubject_A2,"text","text","50","A Level Subject 2")
				resultLevel_A2 = CheckValidation("True",resultLevel_A2,"select","","5","A Level Result 2")	
						
		 ELSE
		 
			If IsNumeric(resultLevel_A1) and IsNumeric(resultLevel_A2) Then	
					
				strResultPoint_new_a = cint(resultLevel_A1) + cint(resultLevel_A2)
				strResultPoint_a_AVG = strResultPoint_new_a/2 
				strResultPoint2 = strResultPoint_a_AVG
			
			End If
			
			If strResultPoint2 < resultRangeForSSCHSC Then ' 5								 	
				
				strResultPoint2 = CheckValidation("True",strResultPoint2,"text","Number","5","CGPA/Marks of A Level of Academic Qualification")
					
				'MarksTypeInputValidation "True",strResult2,strResultPoint2, 5 ,"CGPA/Marks of A Level of Academic Qualification", 1, 1
				
				MarksTypeInputValidationForSecandary "True",strResult2,strResultPoint2,5,"CGPA/Marks of A Level of Academic Qualification", jobid

				
			End If
			
				strCGPAScale2 = "5"
				strSubject2 = "NA"
		 END IF	
		 		 
	End If	' If strDegreeName = "A Level" Then	
				
		If strDegreeName2 <> "A Level" Then
					
			strResultPoint2 = Request.Form("txtResultPoint2")
			strCGPAScale2 = Request.Form("ddlCGPAScale2")		
			strSubject2 = Request.Form("ddlSubject2")
					
		ELSEIf strDegreeName2 = "A Level" Then
			
			strResultPoint2 = strResultPoint_a_AVG
			strCGPAScale2 = "5"
			strSubject2 = "NA"		
		End If


	strPassingYear2 = CheckValidation("True",strPassingYear2,"select","S","4","Passing Year for higher secondary  level of Academic Qualification")	

	strPassingYear2 = CheckValidation("True",strPassingYear2,"text","Text","4","Passing Year for higher secondary  level of Academic Qualification")	

	strPassingYear2 = CheckValidation("True",strPassingYear2,"Numeric","Numeric","4","Passing Year for higher secondary  level of Academic Qualification")	
	


'	intResultDay2 = CheckValidation("True",intResultDay2,"select","S","2","Day of  Result Publish date  for higher secondary  level of Academic Qualification")
'	
'	intResultDay2 = CheckValidation("True",intResultDay2,"text","Text","2","Day of  Result Publish date  for higher secondary  level  of Academic Qualification")
'		
'	intResultDay2 = CheckValidation("True",intResultDay2,"Numeric","Numeric","2","Day of  Result Publish date  for higher secondary  level  of Academic Qualification")
'	
'	intResultMonth2 = CheckValidation("True",intResultMonth2,"select","S","2","Month of Result Publish date for higher secondary  level  of Academic Qualification")	
'	intResultMonth2 = CheckValidation("True",intResultMonth2,"text","Text","2","Month of Result Publish date for higher secondary  level  of Academic Qualification")	
'	intResultMonth2 = CheckValidation("True",intResultMonth2,"Numeric","Numeric","2","Month of Result Publish date for higher secondary  level  of Academic Qualification")	
'
'	
'	intResultYear2 = CheckValidation("True",intResultYear2,"select","S","4","Year of  Result Publish date  for higher secondary  level  of Academic Qualification")	
'	intResultYear2 = CheckValidation("True",intResultYear2,"text","Text","4","Year of  Result Publish date  for higher secondary  level  of Academic Qualification")	
'	intResultYear2 = CheckValidation("True",intResultYear2,"Numeric","Numeric","4","Year of  Result Publish date  for higher secondary  level  of Academic Qualification")	
'
'
'	strResultPublishYear2 = CheckValidation("True",strResultPublishYear2,"DateTime","DateTime","DateTime","Result of Publish date  for higher secondary  level  of Academic Qualification")	

	
	strInstitute2 = CheckValidation("True",strInstitute2,"text","Text","255","Name of School  for higher secondary  level of Academic Qualification  ")
	
	strAcademicDist2 = CheckValidation("True",strAcademicDist2,"select","S","2","District Name of higher secondary level of Academic Qualification  ")		

	strUniversity2 = CheckValidation("True",strUniversity2,"select","S","250","Name of Board for higher secondary  level of Academic Qualification")	

	strUniversity2 = CheckValidation("True",strUniversity2,"text","Text","250","Name of Board for higher secondary  level of Academic Qualification")	


	
	If strUniversity2 = "Foreign" Then
 
        strCountry2 = CheckValidation("True",strCountry2,"select","S","50","Campus location for higher secondary  level of Academic Qualification")	
	   
        strCountry2 = CheckValidation("True",strCountry2,"text","Text","50","Campus location for higher secondary  level of Academic Qualification")	

		strUniversityOthers2 =  CheckValidation("True",strUniversityOthers2,"text","Text","200","Name of Foreign institute for higher secondary  level of Academic Qualification")	
		
		strUniversity2 = strCountry2 & "@***@" & strUniversityOthers2
		
		strUniversityType2 = "F"
		
	ElseIf strUniversity2 = "Others" Then	
		strUniversityOthers2 =  CheckValidation("True",strUniversityOthers2,"text","Text","200","Name of Others institute for higher secondary  level of Academic Qualification")	
		
		strUniversity2 = strUniversityOthers2
		
		strUniversityType2 = "O"
	Else
		strUniversityType2 = "N"	
	End If


	strResult2 = CheckValidation("True",strResult2,"select","-1","6","Result for higher secondary  level  of Academic Qualification")	

	strResult2 = CheckValidation("True",strResult2,"text","Text","6","Result for higher secondary  level  of Academic Qualification")	

	strResult2 = CheckValidation("True",strResult2,"Numeric","Numeric","6","Result for higher secondary  level  of Academic Qualification")	

	If  strResult2 = "0" Then 
	     strResultPoint2 = CheckValidation("True",strResultPoint2,"text","Text","5","GPA for higher secondary  level of Academic Qualification")	
	  
	     strResultPoint2 = CheckValidation("True",strResultPoint2,"Numeric","Numeric","5","GPA for higher secondary  level of Academic Qualification")	
		 
		 
	     strCGPAScale2 = CheckValidation("True",strCGPAScale2,"select","-1","1","CGPA Scale for higher secondary level of Academic Qualification")
	     strCGPAScale2 = CheckValidation("True",strCGPAScale2,"text","Text","1","CGPA Scale for higher secondary level of Academic Qualification")
	     strCGPAScale2 = CheckValidation("True",strCGPAScale2,"Numeric","Numeric","5","CGPA Scale for higher secondary level of Academic Qualification")

		 
		 MarksTypeInputValidationForSecandary "True",strResult2,strResultPoint2,strCGPAScale2,"GPA for higher secondary  level of Academic Qualification", jobid
     
	Else
		 strResultPoint2 = CheckValidation("True",strResultPoint2,"text","Text","5","Marks for higher secondary  level of Academic Qualification")
		
		 strResultPoint2 = CheckValidation("True",strResultPoint2,"Numeric","Numeric","5","Marks for higher secondary  level of Academic Qualification")
		
		 MarksTypeInputValidationForSecandary "True",strResult2,strResultPoint2,strCGPAScale2,"CGPA for higher secondary  level of Academic Qualification", jobid

    End If 
	
	ValuePrint strSubject2, "strSubject2"
	strSubject2 =  CheckValidation("True",strSubject2,"select","S","255","Subject for higher secondary  level of Academic Qualification")
	
	strSubject2 =  CheckValidation("True",strSubject2,"text","Text","255","Subject for higher secondary  level of Academic Qualification")
	
	If strSubject2 = "Others" Then

		strOthers2 = CheckValidation("True",strOthers2,"text","Text","255","Subject name in others for higher secondary  level of Academic Qualification")
			
		'strSubject2 = strOthers2
		'strSubject_Others2 = 1	
	Else
	   ' strSubject_Others2 = 0
	End If									
%>