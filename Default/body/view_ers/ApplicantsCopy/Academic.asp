<%strBody = strBody &"<strong>Academic Qualifications:</strong><table width='100%' border='1' cellspacing='0' cellpadding='0'>  <tr><td width='10%'><strong>Examination</strong></td><td width='25%'><strong>Board/Institute</strong></td><td width='25%'><strong>Group/Subject/Degree</strong></td><td width='10%'><strong>Result</strong></td><td width='25%'><strong>CGPA/Marks</strong></td><td width='5%'><strong>Year</strong></td>  </tr> "         
	If IsAcademic = True Then
	 For i=0 To AcademicUB
       strBody = strBody &" <tr><td> "
	       If arrDegreeName(i) <> "" Then
			   	If Right(arrDegreeName(i), 3) = "@@@" Then
					strDoctorate = Replace(arrDegreeName(i), "@@@", "")
				
					strBody = strBody &"Doctoral, "&strDoctorate
				Else
					strBody = strBody &arrDegreeName(i)
				End If
			Else
			   strBody = strBody &"UNKNOWN"
		    End If  
			
			strBody = strBody &" </td>  <td>"
			If arrUniversity(i) <> "" Then
			  	strUniversity = Replace(arrUniversity(i), "@***@", ", ")
			  
			   strBody = strBody & strUniversity '  &","&arrInstitute(i)
			 
			  If strUniversity <> "" Then
			    'strBody = strBody &strUniversity
			  End If
		   End if
		   strBody = strBody &" </td><td>"&Replace(arrSubject(i), "@***@", ", ")
		   strBody = strBody &"</td><td>"
		  

		  If arrResult(i) = 16 Then
		   strBody = strBody &"Pass"
		  End If


		  If arrResult(i) = 15 Then
		   strBody = strBody &"First division"
		  End If
		  
		             
		  If arrResult(i) = 14 Then
		   strBody = strBody &"Second division"
		  End If
		  
		  If arrResult(i) = 13 Then                 
		  strBody = strBody &"Third division"
		  End If
		  
		  If arrResult(i) = 0 Then
		     strBody = strBody &"Grade"
	      End If
		  
		  strBody = strBody &"</td><td>"
		  
		  If arrResult(i) < 12 Then
		  strBody = strBody & "CGPA: "&arrResultPoint(i) & " (Out of " & arrCGPAScale(i) & ")"
		  Else
		    if isnull(arrResultPoint(i)) or isempty(arrResultPoint(i)) or arrResultPoint(i) = "" or arrResultPoint(i) = 0 then 
			
			else 			
		      strBody = strBody & arrResultPoint(i)
		    end if 
		  End If
		  strBody = strBody & "</td><td>"&arrPassingYear(i)&" </td>  </tr> " 
 Next
  End If

strBody = strBody &"</table>" 

%> 

