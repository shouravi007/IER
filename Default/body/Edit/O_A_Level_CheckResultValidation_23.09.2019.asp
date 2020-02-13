<%			
            If strDegreeName = "O Level" Then			
				'RESPONSE.Write(strDegreeName)	
				
				If (strSubject_O1 = "" or resultLevel_O1= "") or (strSubject_O2="" or resultLevel_O2 = "") or (strSubject_O3="" or resultLevel_O3 = "") or  (strSubject_O4="" or resultLevel_O4 = "") or (strSubject_O5="" or resultLevel_O5 = "") then
							   
					strSubject_O1 = CheckValidation("True",strSubject_O1,"text","text","50","O Level Subject 1")
					resultLevel_O1 = CheckValidation("True",resultLevel_O1,"select","S","5","O Level Result 1")
					strSubject_O2 = CheckValidation("True",strSubject_O2,"text","text","50","O Level Subject 2")
					resultLevel_O2 = CheckValidation("True",resultLevel_O2,"select","S","5","O Level Result 2")
					strSubject_O3 = CheckValidation("True",strSubject_O3,"text","text","50","O Level Subject 3")
					resultLevel_O3 = CheckValidation("True",resultLevel_O3,"select","S","5","O Level Result 3")
					strSubject_O4 = CheckValidation("True",strSubject_O4,"text","text","50","O Level Subject 4")
					resultLevel_O4 = CheckValidation("True",resultLevel_O4,"select","S","5","O Level Result 4")
					strSubject_O5 = CheckValidation("True",strSubject_O5,"text","text","50","O Level Subject 5")
					resultLevel_O5 = CheckValidation("True",resultLevel_O5,"select","S","5","O Level Result 5")			  
				Else
					'RESPONSE.Write(IsNumeric(resultLevel_O1))
			
					If IsNumeric(resultLevel_O1) and IsNumeric(resultLevel_O2) and IsNumeric(resultLevel_O3) and IsNumeric(resultLevel_O4) and IsNumeric(resultLevel_O5) Then
					
						strResultPoint_new_o = cint(resultLevel_O1) + cint(resultLevel_O2)  + cint(resultLevel_O3) + cint(resultLevel_O4) + cint(resultLevel_O5)
						strResultPoint_new_AVG = strResultPoint_new_o/5
						strResultPoint = strResultPoint_new_AVG
					End If	 
													 												
					MarksTypeInputValidationForSecandary "True",strResult,strResultPoint,5,"CGPA/Marks of O Level of Academic Qualification",jobid
			 
					strCGPAScale = "5"
					strSubject = "NA"
				
			End If
			
	End If ' If strDegreeName = "O Level" Then								

	If strDegreeName = "A Level" Then
			
		IF (strSubject_A1 = "" or resultLevel_A1= "") OR (strSubject_A2 = "" or resultLevel_A2 = "") Then	
			strSubject_A1 = CheckValidation("True",strSubject_A1,"text","text","50","A Level Subject 1")
			resultLevel_A1 = CheckValidation("True",resultLevel_A1,"select","S","5","A Level Result 1")
			strSubject_A2 = CheckValidation("True",strSubject_A2,"text","text","50","A Level Subject 2")
			resultLevel_A2 = CheckValidation("True",resultLevel_A2,"select","S","5","A Level Result 2")			
		
		ELSE
			
			If IsNumeric(resultLevel_A1) and IsNumeric(resultLevel_A2) Then			
				strResultPoint_new_a = cint(resultLevel_A1) + cint(resultLevel_A2)
				strResultPoint_a_AVG = strResultPoint_new_a/2 
				strResultPoint = strResultPoint_a_AVG
			End If
				
				MarksTypeInputValidationForSecandary "True",strResult,strResultPoint,5,"CGPA/Marks of A Level of Academic Qualification", jobid

			    strCGPAScale = "5"
 				strSubject = "NA"
			END IF			 
		
	End If	' If strDegreeName = "A Level" Then	
%>
