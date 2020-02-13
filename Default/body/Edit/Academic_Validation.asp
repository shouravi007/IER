<%

					
If InStr(lcase(strEducation),"o level") > 0 or InStr(lcase(strEducation),"a level") > 0 Then
	
	
Else
	resultRangeForSSCHSC = 4
	resultRangeForGradPGrad = 5
			
		strResult = CheckValidation(Req,strResult,"select","-1","50","Result of Row  "&intEduIndex&" of Academic Qualification")		
	
		If strResult = 0 Then
		 
			 strResultPoint = CheckValidation(Req,strResultPoint,"text","Text","5","CGPA for row "&intEduIndex&" of Academic Qualification")	
			 strResultPoint = CheckValidation(Req,strResultPoint,"Numeric","Numeric","5","CGPA for row "&intEduIndex&" of Academic Qualification")	
	
			 strCGPAScale = CheckValidation(Req,strCGPAScale,"select","-1","1","CGPA Scale for row "&intEduIndex&" of Academic Qualification")
			 strCGPAScale = CheckValidation(Req,strCGPAScale,"text","Text","1","GCPA Scale for row "&intEduIndex&" of Academic Qualification")
			 strCGPAScale = CheckValidation(Req,strCGPAScale,"Numeric","Numeric","5","CGPA Scale for row "&intEduIndex&" of Academic Qualification")
			
			If bytEduLevel < 3 Then											 	
				'response.Write("strResultPoint:"& strResultPoint& "range"& resultRangeForSSCHSC)
				If strResultPoint < 4 then ' 5								 	
				
					strResultPoint = CheckValidation("True",strResultPoint,"text","Number","5","CGPA for row "&intEduIndex&" of Academic Qualification")				
				
					MarksTypeInputValidationForSecandary "True",strResult,strResultPoint,5,"CGPA for row "&intEduIndex&" of Academic Qualification",jobid,4
				
				End If

			Else
				'response.Write("strResultPoint : "&strResultPoint & "<BR>"&resultRangeForGradPGrad)				
						 								
				MarksTypeInputValidation "True",strResult,strResultPoint,strCGPAScale,"Marks for row "&intEduIndex&" of Academic Qualification", jobid,3
					
			End If		
		 
		ElseIf  strResult > 13 Then
		
			' strResultPoint = CheckValidation(Req,strResultPoint,"text","Text","5","Marks for row "&intEduIndex&" of Academic Qualification")
'			 strResultPoint = CheckValidation(Req,strResultPoint,"Numeric","Numeric","5","Marks for row "&intEduIndex&" of Academic Qualification")
'			 			
'			 If bytEduLevel < 3 Then 
'				MarksTypeInputValidationForSecandary "True",strResult,strResultPoint,5,"Marks for row "&intEduIndex&" of Academic Qualification", jobid
'			
'			Else
'			 
'				MarksTypeInputValidation "True",strResult,strResultPoint,strCGPAScale,"Marks for row "&intEduIndex&" of Academic Qualification", jobid
'			End If	
'			 
'			 'response.Write("<br> marks: "&strResultPoint &"scale: "&strCGPAScale&"<BR>")
'		
'		ElseIf  strResult = 12 Then
'			 appeared check
		End If
			

End If  'If InStr(lcase(strEducation),"o level") > 0 or InStr(lcase(strEducation),"a level") > 0 Then
	

	intPassYear = CheckValidation(Req,intPassYear,"select","S","255","Passing Year of row  "&intEduIndex&" of Academic Qualification")

'response.Write("bytEduLevel:"&bytEduLevel)
'If bytEduLevel <= 3 Then
'	ReqPD = "True"
'Else	
'	if strResult = 12 then 
'		ReqPD = "False"	
'	else
'		ReqPD = "True"
'	end if
'End If

	'intResultDay = CheckValidation(ReqPD,intResultDay,"select","S","2","Day of  Result Publish date  of row  "&intEduIndex&" of Academic Qualification")
'	
'	intResultDay = CheckValidation(ReqPD,intResultDay,"text","Text","2","Day of  Result Publish date of row  "&intEduIndex&" of Academic Qualification")
'	
'	intResultDay = CheckValidation(ReqPD,intResultDay,"Numeric","Numeric","2","Day of  Result Publish date of row  "&intEduIndex&" of Academic Qualification")	
'	
'	intResultMonth = CheckValidation(ReqPD,intResultMonth,"select","S","2","Month of Result Publish date of row  "&intEduIndex&" of Academic Qualification")	
'	
'	intResultMonth = CheckValidation(ReqPD,intResultMonth,"text","Text","2","Month of Result Publish date of row  "&intEduIndex&" of Academic Qualification")	
'	
'	intResultMonth = CheckValidation(ReqPD,intResultMonth,"Numeric","Numeric","2","Month of Result Publish date of row  "&intEduIndex&" of Academic Qualification")	
'		
'	intResultYear = CheckValidation(ReqPD,intResultYear,"select","S","4","Year of  Result Publish date of row  "&intEduIndex&" of Academic Qualification")	
'	
'	intResultYear = CheckValidation(ReqPD,intResultYear,"text","Text","4","Year of  Result Publish date of row  "&intEduIndex&" of Academic Qualification")	
'	
'	intResultYear = CheckValidation(ReqPD,intResultYear,"Numeric","Numeric","4","Year of  Result Publish date of row  "&intEduIndex&" of Academic Qualification")		
'	
'	strResultPublishYear = CheckValidation(ReqPD,strResultPublishYear,"DateTime","DateTime","DateTime","Result of Publish date of row  "&intEduIndex&" of Academic Qualification")	

'End If 'If bytEduLevel > 3 Then (masters appeared check for strResultPublishYear ) 
	
	strInstitute = CheckValidation(Req,strInstitute,"text","Text","255","Institute or Faculty of Row  "&intEduIndex&" of Academic Qualification  ")
	
	strAcademicDist = CheckValidation(Req,strAcademicDist,"select","S","255","District Name of Row  "&intEduIndex&" of Academic Qualification  ")
			
	strUniversity = CheckValidation(Req,strUniversity,"select","S","250","University / Board of row  "&intEduIndex&" of Academic Qualification")	
	
	strUniversity = CheckValidation(Req,strUniversity,"text","Text","255","University / Board of row  "&intEduIndex&" of Academic Qualification")	
			
	strSubject =  CheckValidation(Req,strSubject,"select","S","255","Group/ Subject of row  "&intEduIndex&" of Academic Qualification")
	strSubject =  CheckValidation(Req,strSubject,"text","Text","255","Group/ Subject of row  "&intEduIndex&" of Academic Qualification")
	'strSubject2 =  CheckValidation("False",strSubject2,"select","S","255","Major 2 of row  "&intEduIndex&" of Academic Qualification")
	'strSubject2 =  CheckValidation("False",strSubject2,"text","Text","255","Major 2 of row  "&intEduIndex&" of Academic Qualification")
	
	IsAcademicUpdate = True
	
Next	

%>
