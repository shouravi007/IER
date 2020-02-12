<% 

strBodyExp = "" 
strBodyExp = strBodyExp & " <BR>"
If arrPersonal(0,0) <> "Nothing" Then
     If arrPersonal(34,0) <> "" Or IsNull(arrPersonal(34,0)) <> True Then
	      If CBool(arrPersonal(34,0)) = False Then
			   If arrExperience(0,0) = "Nothing" then 
				  
				    strBodyExp = strBodyExp & "<table width='100%' border='0' cellspacing='0' cellpadding='1' align='left' bgcolor='#F47820'>"
						strBodyExp = strBodyExp & "<tr>"
					  	strBodyExp = strBodyExp & "<td height='31' class='BDJSectionHeadLine' style='padding-left:15px;'>No Experience Submitted by Applicant."
						strBodyExp = strBodyExp & "</td>"
					  	strBodyExp = strBodyExp & "<td align='right'>"
					    strBodyExp = strBodyExp & "</td>"
					  	strBodyExp = strBodyExp & "</tr>"
				  	strBodyExp = strBodyExp & "</table>"
			 		
			   Else 
				    strBodyExp = strBodyExp & "<table width='100%' align='left' cellpadding='2' cellspacing='1' bgcolor='#F47820'>"
	      		    strBodyExp = strBodyExp & "<tr>"
				    strBodyExp = strBodyExp & "<td colspan='5'>"
					strBodyExp = strBodyExp & "<table width='100%' align='left' border='0' cellpadding='0' cellspacing='0'>"
						strBodyExp = strBodyExp & "<tr>"
						strBodyExp = strBodyExp & "<td width='76%' align='left' class='BDJSectionHeadLine' style='padding-left:15px;height:25px;'>Work Experience"
						strBodyExp = strBodyExp & "</td>"
						strBodyExp = strBodyExp & "<td width='24%' align='right'>"
						strBodyExp = strBodyExp & "</td>"
						strBodyExp = strBodyExp & "</tr>"
					strBodyExp = strBodyExp & "</table>"
					strBodyExp = strBodyExp & "</td>"
				    strBodyExp = strBodyExp & "</tr>"
					For i=0 To UBound(arrExperience,2)		  
						  strBodyExp = strBodyExp & "<tr>"
						  strBodyExp = strBodyExp & "<td width='22%' bgcolor='#F5CBAE' align='center'  style='height:25px;'>"
						  strBodyExp = strBodyExp & "</td>"
					      strBodyExp = strBodyExp & "<td bgcolor='#F5E1D3'  colspan='4' align='center' style='font-size:12px; font-weight:bold; padding-top:10px;'>"
						   strBodyExp = strBodyExp & "<u>Work Experience :"
						   strBodyExp = strBodyExp & (i+1)
						   strBodyExp = strBodyExp & "</u>"
						  strBodyExp = strBodyExp & "</td>"
			         	  strBodyExp = strBodyExp & "</tr>"
					  
						  strBodyExp = strBodyExp & "<tr>"
						  strBodyExp = strBodyExp & "<td height='20' bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px; height:25px;'>Area of Experience :"
						  strBodyExp = strBodyExp & "</td>"
						  strBodyExp = strBodyExp & "<td colspan='4' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
						  strBodyExp = strBodyExp & ReplacedAllTypeOfSpecialChar(arrExperience(9,i))
						  strBodyExp = strBodyExp & "</td>"
						  strBodyExp = strBodyExp & "</tr>"
							
						  strBodyExp = strBodyExp & "<tr>"
						  strBodyExp = strBodyExp & "<td bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px; height:25px;'>Company Name :"
						  strBodyExp = strBodyExp & "</td>"
						  strBodyExp = strBodyExp & "<td colspan='4' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
						 strBodyExp = strBodyExp & ReplacedAllTypeOfSpecialChar(arrExperience(2,i))
						  strBodyExp = strBodyExp & "</td>"
						  strBodyExp = strBodyExp & "</tr>"
							
						  strBodyExp = strBodyExp & "<tr>"
						  strBodyExp = strBodyExp & "<td bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px; height:25px;'>Position Held:"
						  strBodyExp = strBodyExp & "</td>"
						  strBodyExp = strBodyExp & "<td colspan='4' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
						  
						  positionHeld = Replace(arrExperience(3,i),"&"," and ")
						  strBodyExp = strBodyExp & ReplacedAllTypeOfSpecialChar(positionHeld)
						  strBodyExp = strBodyExp & "</td>"
						  strBodyExp = strBodyExp & "</tr>"


													
						  strBodyExp = strBodyExp & "<tr>"
						  strBodyExp = strBodyExp & "<td bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px; height:25px;'>Company Location:"
						  strBodyExp = strBodyExp & "</td>"
						  strBodyExp = strBodyExp & "<td colspan='4' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
						
						  compLoc = Replace(arrExperience(6,i),"&"," and ")
						  
						  strBodyExp = strBodyExp & ReplacedAllTypeOfSpecialChar(compLoc)
						  strBodyExp = strBodyExp & "</td>"
						  strBodyExp = strBodyExp & "</tr>"
							
						  strBodyExp = strBodyExp & "<tr>"
						  strBodyExp = strBodyExp & "<td bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px; height:25px;'>Industry:"
						  strBodyExp = strBodyExp & "</td>"
						  strBodyExp = strBodyExp & "<td colspan='4' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
						  
						  industry = Replace(arrExperience(4,i),"&"," and ")
						  
						  strBodyExp = strBodyExp & ReplacedAllTypeOfSpecialChar(industry)
						 ' strBodyExp = strBodyExp & arrExperience(4,i)
						  strBodyExp = strBodyExp & "</td>"
						  strBodyExp = strBodyExp & "</tr>"
							
						  strBodyExp = strBodyExp & "<tr>"
						  strBodyExp = strBodyExp & "<td bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px; height:25px;'>Served Form:"
						  strBodyExp = strBodyExp & "</td>"
						  strBodyExp = strBodyExp & "<td width='20%' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
							
							If IsNull(arrExperience(7,i)) = False Or arrExperience(7,i) <> "" Then
							   strBodyExp = strBodyExp & MonthName(Month(arrExperience(7,i))) & "," & Year(arrExperience(7,i)) 
							End If
							
                          strBodyExp = strBodyExp & " </td>"
						  strBodyExp = strBodyExp & "<td width='9%' bgcolor='#F5E1D3' class='BDJLabelText'>Serve Till:</td>"
						  strBodyExp = strBodyExp & "<td width='49%' colspan='2' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
						  
							If arrExperience(10,i) <> "" Then
							   If CBool(arrExperience(10,i)) = True Then
								  strBodyExp = strBodyExp & "Continuing"
							   Else
									if IsDate(Trim(arrExperience(8,i))) then	
										  strBodyExp = strBodyExp & MonthName(Month(arrExperience(8,i))) & "," & Year(arrExperience(8,i))
									end if
							   End If
							Else
								if IsDate(Trim(arrExperience(8,i))) then	
									  strBodyExp = strBodyExp & MonthName(Month(arrExperience(8,i))) & "," & Year(arrExperience(8,i))
								end if
							End If
		                strBodyExp = strBodyExp & "</td>"
						strBodyExp = strBodyExp & " </tr>"
							
						 strBodyExp = strBodyExp & " <tr>"
						 strBodyExp = strBodyExp & " <td bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px; height:25px;'>Major Responsibilities:</td>"
						 strBodyExp = strBodyExp & " <td colspan='4' bgcolor='#F5E1D3' class='BDJBlackColorText'>"

						  majorRes = Replace(arrExperience(5,i),"&"," and ")
						  
						  strBodyExp = strBodyExp & ReplacedAllTypeOfSpecialChar(majorRes)


						 strBodyExp = strBodyExp & "</td>"
						  strBodyExp = strBodyExp & "</tr>"
							
						strBodyExp = strBodyExp & " <tr>"
						 strBodyExp = strBodyExp & " <td height='20' bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px; height:25px;'>Experience Type: </td>"
						  strBodyExp = strBodyExp & "<td colspan='4' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
						 
							  types = Replace(arrExperience(12,i),"&"," and ")
						  
						  strBodyExp = strBodyExp & ReplacedAllTypeOfSpecialChar(types)
					 
						 ' strBodyExp = strBodyExp &arrExperience(12,i)
						  strBodyExp = strBodyExp &"</td>"
						strBodyExp = strBodyExp & " </tr>"			
					Next
													
					
				  strBodyExp = strBodyExp & "</table>"
			   End If
		   End If	   
	 End If
End If%>
