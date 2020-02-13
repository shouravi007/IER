<%
strResult = Request.Form("ddlResult1")
strResultPoint = Request.Form("txtResultPoint1")

SQLAcademicELG = "SELECT Personalid, EducationID, [RESULT], [ResultPoint], cgpaScale FROM Academic WHERE Personalid=" & TrackNo & " Order by EducationID ASC " ' and educationid = "&intEduId&"

'Response.Write(SQLAcademicELG)	

arr_AcademicELG = objERS.RetrieveData(SQLAcademicELG, errMsg)
ErrorMessage "12", errMsg, 0 
	
If arr_AcademicELG(0,0) <> "Nothing" Then
				
	intUBEduELG = UBound(arr_AcademicELG, 2) 	
	
	FirstClass = 0
				
	for ii = 0 to intUBEduELG
			
		intEduId = arr_AcademicELG(1,ii)
		Result = arr_AcademicELG(2,ii)
		Marks = arr_AcademicELG(3,ii)
		CgpaScale = arr_AcademicELG(4,ii)	
		
	   ' response.Write("<BR>Result(ii) "&Result &"<br>")
		  		  
			If  intEduId > 2 Then
			
				  If  Result = 15 Then				  		  		 
					   FirstClass  = FirstClass + 1					
				  End If 			 
				  
				  If  Result = 0  And CgpaScale =4	Then 					 
						 If Cdbl(Marks) >= 3.00 Then
						   FirstClass  = FirstClass + 1						 
						 End If   
				  End If  
				  
				  If  Result = 0  And CgpaScale =5	Then 
					 If Cdbl(Marks) >= 3.00 Then
					   FirstClass  = FirstClass + 1
					 End If   
				  End If 							  
			 Else 
				  If  Result = 0  Then 
					 If Cdbl(Marks) >= 3.00 Then
					   FirstClass  = FirstClass + 1
					 End If   
				  End If 		
			End IF 
										  
	Next 
				
		'response.Write("form value:"&strResultPoint &" :: " &Cdbl(Marks))
		'response.Write("FirstClass::: "&FirstClass)
		
		strEligibleOk = 0
		
		If  FirstClass > 1 Then
		
			strEligibleOk = 1
			
		ElseIf FirstClass = 1 Then 
				
			If strResult = 0 and cdbl(strResultPoint) >=3.00 Then
				strEligibleOk = 1
			ElseIf strResult = 15 and cdbl(strResultPoint) >=60.00 Then
				strEligibleOk = 1
			ElseIf strResult = 14 and (cdbl(strResultPoint) >=60.00 or cdbl(strResultPoint) < 45) Then
			
			Else	
				strEligibleOk = 0
			End If					
			'response.Write("strEligibleOk::: "&strEligibleOk)	
		ElseIf FirstClass = 0 Then
						
			If strResult = 0 and cdbl(strResultPoint) >= 3.00 Then 			
				strEligibleOk = 1
				'response.Write("1")
			ElseIf strResult = 15 and cdbl(strResultPoint) >= 60.00 Then
				strEligibleOk = 1
				'response.Write("2")
			Else
				strEligibleOk = 0
			End If
			'response.Write("strEligibleOk "&strEligibleOk)
		End If 
		
		If strEligibleOk = 0 Then
		
			ShowValidateMsg("Sorry, you will not eligible for this position if you change your result.<br />Click <a style='color:#F00;' href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.</strong></font></center>")
		End IF 

End IF

%>