<%
	strEducationId1 = CheckValidation("True",strEducationId1,"select","-1","Number","Education Level for secondary level of Academic Qualification ")	

	strEducationId1 = CheckValidation("True",strEducationId1,"text","Text","1","Education Level for secondary level of Academic Qualification ")	
	
	strEducationId1 = CheckValidation("True",strEducationId1,"Numeric","Numeric","1","Education Level for secondary level of Academic Qualification ")	

	strDegreeName1 = CheckValidation("True",strDegreeName1,"select","S","255","Exam / Degree title for secondary level of Academic Qualification ")	

	strDegreeName1 = CheckValidation("True",strDegreeName1,"text","Text","255","Exam / Degree title for secondary level of Academic Qualification ")	


	If strDegreeName1 = "O Level" Then
	
		If (strSubject_O1 = "" or resultLevel_O1= "") or (strSubject_O2="" or resultLevel_O2 = "") or (strSubject_O3="" or resultLevel_O3 = "") or  (strSubject_O4="" or resultLevel_O4 = "") or (strSubject_O5="" or resultLevel_O5 = "") then			   
			strSubject_O1 = CheckValidation("True",strSubject_O1,"text","text","50","O Level Subject 1")
			resultLevel_O1 = CheckValidation("True",resultLevel_O1,"select","","5","O Level Result 1")
			strSubject_O2 = CheckValidation("True",strSubject_O2,"text","text","50","O Level Subject 2")
			resultLevel_O2 = CheckValidation("True",resultLevel_O2,"select","","5","O Level Result 2")
			strSubject_O3 = CheckValidation("True",strSubject_O3,"text","text","50","O Level Subject 3")
			resultLevel_O3 = CheckValidation("True",resultLevel_O3,"select","","5","O Level Result 3")
			strSubject_O4 = CheckValidation("True",strSubject_O4,"text","text","50","O Level Subject 4")
			resultLevel_O4 = CheckValidation("True",resultLevel_O4,"select","","5","O Level Result 4")
			strSubject_O5 = CheckValidation("True",strSubject_O5,"text","text","50","O Level Subject 5")
			resultLevel_O5 = CheckValidation("True",resultLevel_O5,"select","","5","O Level Result 5")			  
		Else
			
			If IsNumeric(resultLevel_O1) and IsNumeric(resultLevel_O2) and IsNumeric(resultLevel_O3) and IsNumeric(resultLevel_O4) and IsNumeric(resultLevel_O5) Then
				
				strResultPoint_new_o = cint(resultLevel_O1) + cint(resultLevel_O2)  + cint(resultLevel_O3) + cint(resultLevel_O4) + cint(resultLevel_O5)
				
				strResultPoint_new_AVG = strResultPoint_new_o/5
				strResultPoint1 = strResultPoint_new_AVG
				'response.Write("hello"&strResultPoint1)
			End If	 
					
			 If strResultPoint1 < resultRangeForSSCHSC then ' 5								 	
				
				strResultPoint1 = CheckValidation("True",strResultPoint1,"text","Number","5","CGPA/Marks of O Level of Academic Qualification")
					
				'MarksTypeInputValidation "True",strResult1,strResultPoint1, 5 ,"CGPA/Marks of O Level of Academic Qualification", 1, 1
				MarksTypeInputValidationForSecandary "True",strResult1,strResultPoint1,5,"CGPA/Marks of O Level of Academic Qualification",jobid
			
			 End If
				strCGPAScale1 = "5"
				strSubject1 = "NA"
		End If	
	End If ' If strDegreeName = "O Level" Then								
				
	If strDegreeName1 <> "O Level" Then			
		strResultPoint1 = Request.Form("txtResultPoint1")
		strCGPAScale1 = Request.Form("ddlCGPAScale1")		
		strSubject1 = Request.Form("ddlSubject1")		
	ELSEIf strDegreeName1 = "O Level" Then
		strResultPoint1 = strResultPoint_new_AVG
		strCGPAScale1 = "5"
		strSubject1 = "NA"		
	End If

	strPassingYear1 = CheckValidation("True",strPassingYear1,"select","S","4","Passing Year for secondary level of Academic Qualification")	

	strPassingYear1 = CheckValidation("True",strPassingYear1,"text","Text","4","Passing Year for secondary level of Academic Qualification")	

	strPassingYear1 = CheckValidation("True",strPassingYear1,"Numeric","Numeric","4","Passing Year for secondary level of Academic Qualification")	

	
	
'	intResultDay1 = CheckValidation("True",intResultDay1,"select","S","2","Day of  Result Publish date  for secondary level of Academic Qualification")
'	
'	intResultDay1 = CheckValidation("True",intResultDay1,"text","Text","2","Day of  Result Publish date  for secondary level  of Academic Qualification")
'	
'	intResultDay1 = CheckValidation("True",intResultDay1,"Numeric","Numeric","2","Day of  Result Publish date  for secondary level  of Academic Qualification")
'	
'		
'	intResultMonth1 = CheckValidation("True",intResultMonth1,"select","S","2","Month of Result Publish date for secondary level  of Academic Qualification")	
'	intResultMonth1 = CheckValidation("True",intResultMonth1,"text","Text","2","Month of Result Publish date for secondary level  of Academic Qualification")	
'	intResultMonth1 = CheckValidation("True",intResultMonth1,"Numeric","Numeric","2","Month of Result Publish date for secondary level  of Academic Qualification")	
'	
'	
'	
'	intResultYear1 = CheckValidation("True",intResultYear1,"select","S","4","Year of  Result Publish date  for secondary level  of Academic Qualification")	
'	intResultYear1 = CheckValidation("True",intResultYear1,"text","Text","4","Year of  Result Publish date  for secondary level  of Academic Qualification")	
'	intResultYear1 = CheckValidation("True",intResultYear1,"Numeric","Numeric","4","Year of  Result Publish date  for secondary level  of Academic Qualification")	
'	
'	
'	strResultPublishYear1 = CheckValidation("True",strResultPublishYear1,"DateTime","DateTime","DateTime","Result of Publish date  for secondary level  of Academic Qualification")	
	
	
	strInstitute1 = CheckValidation("True",strInstitute1,"text","Text","255","Name of School for secondary level of Academic Qualification  ")
	
	strAcademicDist1 = CheckValidation("True",strAcademicDist1,"select","S","2","District Name of School for secondary level of Academic Qualification  ")	

	strUniversity1 = CheckValidation("True",strUniversity1,"select","S","250","Name of Board for secondary level of Academic Qualification")	

	strUniversity1 = CheckValidation("True",strUniversity1,"text","Text","250","Name of Board for secondary level of Academic Qualification")	
	
	If strUniversity1 = "Foreign" Then
 
        strCountry1 = CheckValidation("True",strCountry1,"select","S","50","Campus location for secondary level of Academic Qualification")	
	   
        strCountry1 = CheckValidation("True",strCountry1,"text","Text","50","Campus location for secondary level of Academic Qualification")	

		strUniversityOthers1 =  CheckValidation("True",strUniversityOthers1,"text","Text","200","Name of Foreign institute for secondary level of Academic Qualification")	
		
		strUniversity1 = strCountry1 & "@***@" & strUniversityOthers1
		
		strUniversityType1 = "F"
		
	ElseIf strUniversity1 = "Others" Then	
		strUniversityOthers1 =  CheckValidation("True",strUniversityOthers1,"text","Text","200","Name of Others institute for secondary level of Academic Qualification")	
		
		strUniversity1 = strUniversityOthers1
		
		strUniversityType1 = "O"
	Else
		strUniversityType1 = "N"	
	End If


	strResult1 = CheckValidation("True",strResult1,"select","-1","6","Result for secondary level  of Academic Qualification")	

	strResult1 = CheckValidation("True",strResult1,"text","Text","6","Result for secondary level  of Academic Qualification")	
	strResult1 = CheckValidation("True",strResult1,"Numeric","Numeric","6","Result for secondary level  of Academic Qualification")	

	If  strResult1 = "0" Then 
	     strResultPoint1 = CheckValidation("True",strResultPoint1,"text","Text","5","CGPA for secondary level of Academic Qualification")	
	     strResultPoint1 = CheckValidation("True",strResultPoint1,"Numeric","Numeric","5","CGPA for secondary level of Academic Qualification")
		 
	     strCGPAScale1 = CheckValidation("True",strCGPAScale1,"select","-1","1","CGPA Scale for secondary level of Academic Qualification")
	     strCGPAScale1 = CheckValidation("True",strCGPAScale1,"text","Text","1","CGPA Scale for secondary level of Academic Qualification")
	     strCGPAScale1 = CheckValidation("True",strCGPAScale1,"Numeric","Numeric","5","CGPA Scale for secondary level of Academic Qualification")
		
		 MarksTypeInputValidationForSecandary "True",strResult1,strResultPoint1,strCGPAScale1,"CGPA for secondary level of Academic Qualification",jobid
     
	Else
		 strResultPoint1 = CheckValidation("True",strResultPoint1,"text","Text","5","Marks for secondary level of Academic Qualification")
		 strResultPoint1 = CheckValidation("True",strResultPoint1,"text","Text","5","Marks for secondary level of Academic Qualification")
		 strResultPoint1 = CheckValidation("True",strResultPoint1,"Numeric","Numeric","5","Marks for secondary level of Academic Qualification")
		 
		 MarksTypeInputValidationForSecandary "True",strResult1,strResultPoint1,strCGPAScale1,"Marks for secondary level of Academic Qualification",jobid
      
		 
    End If 
	
	
	strSubject1 =  CheckValidation("True",strSubject1,"select","S","255","Subject for secondary level of Academic Qualification")
	
	strSubject1 =  CheckValidation("True",strSubject1,"text","Text","255","Subject for secondary level of Academic Qualification")
	
	If strSubject1 = "Others" Then

		strOthers1 = CheckValidation("True",strOthers1,"text","Text","255","Subject name in others for secondary level of Academic Qualification")
			
		'strSubject1 = strOthers1
		'strSubject_Others1 = 1	
	Else
	   ' strSubject_Others1 = 0
	End If	
	
	
	If strSubject1 = "Others" Then

		strOthers1 = CheckValidation("True",strOthers1,"text","Text","255","Subject name in others for secondary level of Academic Qualification")
			
		'strSubject1 = strOthers1
		'strSubject_Others1 = 1	
	Else
	    'strSubject_Others1 = 0
	End If	
									
	 
%>