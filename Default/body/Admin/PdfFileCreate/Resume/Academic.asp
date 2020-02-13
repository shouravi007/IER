<%
			qEdu="SELECT Id, DegreeName, Institute, Subject, PassingYear, EducationId, University, Result, ResultPoint, UniversityType FROM Academic where PersonalId="&lastID&" ORDER BY EducationId ASC"
			
			'response.Write(qEdu)
			
			arrEdu = objERS.RetrieveData(qEdu, strErr)
			ErrorMessage "217", errMsg, 0
			
			If arrEdu(0,0)<> "Nothing" Then
			
			strResume = strResume &"<br />    <br />    <table width='100%' border='0' align='center' cellpadding='0' cellspacing='0' style='font-family:Arial; font-size:12px;'> <tr> <td><div style='font-family:Arial; font-size:16px; font-weight:bold; color:#000000; font-style:italic; background-color:#CCCCCC; width:400px;' align='left'><u>ACADEMIC QUALIFICATION</u></div></td></tr> </table> <table width='100%' border='0' cellspacing='1' cellpadding='0' align='center'> <tr bgcolor='#F7F7F7'>  <td colspan='2'><table width='100%' border='0' cellspacing='0' cellpadding='1' align='center'> <tr valign='top'> <td><table width='100%' border='0' cellspacing='0' cellpadding='2' style='font-family:Arial; font-size:12px;'>"                 
		
			for eduCounter= 0 to ubound(arrEdu,2)	  

				strDegreeName = Replace( arrEdu(1,eduCounter),"@@@", ", ")
				strSubject = Replace(arrEdu(3,eduCounter),"@@@", " ")
				strUniversityName =  Replace(arrEdu(6,eduCounter),"@***@", ", ")
				
				'response.Write("university: "&strUniversityName&"<br>")
					'strUniversityCountry = fInf(0)
						strResume = strResume &"<tr valign='top'><td width='34%'><br>"& strDegreeName&" ("&strSubject&")</td><td width='2%'>"& arrEdu(4,eduCounter)&"</td> <td width='53%'>&nbsp;&nbsp;&nbsp;"& arrEdu(2,eduCounter)&" - "&strUniversityName
						
						varF=""
						If arrEdu(9,eduCounter)="F" Then
							varF=" (Foreign)"
						End If
						
						strResume = strResume &varF&"</td><td width='11%'>"
						
						varD=""
						If arrEdu(7,eduCounter)=15 Then
							varD="First Div/Class"
						End If
						If arrEdu(7,eduCounter)=14 Then
							varD="Second Div/Class"
						End If
						If arrEdu(7,eduCounter)=13 Then
							varD="Third Div/Class"
						End If
						If arrEdu(7,eduCounter)=12 Then
							varD="Appeared"
						End If
						If arrEdu(7,eduCounter)<12 Then
							varD="CGPA "&arrEdu(8,eduCounter)
						End If
						
						strResume = strResume &varD&"</td> </tr>"
						
			Next
		
				strResume = strResume &"</table></td> </tr> </table></td> </tr></table>"    
			End If
			
			strResume = strResume &"<br /><br />"

%>
