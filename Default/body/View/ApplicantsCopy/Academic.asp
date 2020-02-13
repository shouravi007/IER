<%strBody = strBody &"<strong>Academic Qualifications:</strong><table width='100%' border='1' cellspacing='0' cellpadding='0'><tr><td width='15%'>Level</td><td width='15%'>Examination</td><td width='10%'>Board/University</td><td width='10%'>Group/Subject</td><td width='10%'>Division/Class</td><td width='10%'>GPA/CGPA</td><td width='10%'>Out of</td><td width='10%'>Year of <br> passing</td>  </tr> "

         
	If IsAcademic = True Then
	 For i=0 To AcademicUB
       strBody = strBody &" <tr><td> "
	     if i = 0 then 
		   lbl = "S.S.C/ Equivalent"
		 elseif i = 1 then 
		   lbl = "H.S.C/ Equivalent" 
		 elseif i = 2 then 
		   lbl =  "Graduation"
		 elseif i = 3 then 
		  lbl =  "Post-Graduation"
		 end if 
		 
	   strBody = strBody & lbl &" </td><td>"
	 
      ' strBody = strBody &" <tr><td> "
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
		  strBody = strBody & arrResultPoint(i) & " </td><td>" & arrCGPAScale(i) & "</td>"
		  Else
		    if isnull(arrResultPoint(i)) or isempty(arrResultPoint(i)) or arrResultPoint(i) = "" or arrResultPoint(i) = 0 then 
			  strBody = strBody & "&nbsp;</td><td>&nbsp;</td>"
			else 			
		      strBody = strBody & arrResultPoint(i) & "</td><td>&nbsp;</td>"
		    end if 
		  End If
		  strBody = strBody & "<td>"&arrPassingYear(i)&" </td>  </tr> " 
 Next
  End If

strBody = strBody &"</table>" 

%> 

