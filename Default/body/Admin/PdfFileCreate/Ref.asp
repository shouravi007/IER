<%
strBodyRef = ""
strBodyRef = strBodyRef & "<br>"

If arrReference(0,0) = "Nothing" Then
     strBodyRef = strBodyRef & "<table width='100%' border='0' cellspacing='0' cellpadding='1' align='center' bgcolor='#F47820'>"
		 strBodyRef = strBodyRef & "<tr>"
		 strBodyRef = strBodyRef & "<td height='33' class='BDJSectionHeadLine' style='padding-left:15px;'>No Reference Information Submitted by Applicant."
		 strBodyRef = strBodyRef & "</td>"
		 strBodyRef = strBodyRef & "<td align='right'>"
		 strBodyRef = strBodyRef & "</td>"
		 strBodyRef = strBodyRef & "</tr>"
     strBodyRef = strBodyRef & "</table>"
Else
	 
	   For i = 0 To UBound(arrReference,2)
	   	   'ACADEMIC REFERENCE:	
	   	   If arrReference(8,i) = "1" Then
	          strReferenceID1 = ReplacedAllTypeOfSpecialChar(arrReference(0,i))
			  strRName1 = ReplacedAllTypeOfSpecialChar(arrReference(1,i))
			  strRAddress1 = ReplacedAllTypeOfSpecialChar(arrReference(2,i))
			  strRDesignation1 = ReplacedAllTypeOfSpecialChar(arrReference(3,i))
			  strROrganization1 = ReplacedAllTypeOfSpecialChar(arrReference(4,i))
			  strRPhone1 = ReplacedAllTypeOfSpecialChar(arrReference(5,i))
			  strREmail1 = ReplacedAllTypeOfSpecialChar(arrReference(6,i))
			  strRRelationship1 = ReplacedAllTypeOfSpecialChar(arrReference(7,i))			  
		   End If
		   'PRESENT EMPLOYER REFERENCE:
	   	   If arrReference(8,i) = "2" Then
	          strReferenceID2 = ReplacedAllTypeOfSpecialChar(arrReference(0,i))
			  strRName2 = ReplacedAllTypeOfSpecialChar(arrReference(1,i))
			  strRAddress2 = ReplacedAllTypeOfSpecialChar(arrReference(2,i))
			  strRDesignation2 = ReplacedAllTypeOfSpecialChar(arrReference(3,i))
			  strROrganization2 = ReplacedAllTypeOfSpecialChar(arrReference(4,i))
			  strRPhone2 = ReplacedAllTypeOfSpecialChar(arrReference(5,i))
			  strREmail2 = ReplacedAllTypeOfSpecialChar(arrReference(6,i))
			  strRRelationship2 = ReplacedAllTypeOfSpecialChar(arrReference(7,i))			  
		   End If
		   'PREVIOUS EMPLOYER REFERENCE:   	  
	   	   If arrReference(8,i) = "3" Then
	          strReferenceID3 = ReplacedAllTypeOfSpecialChar(arrReference(0,i))
			  strRName3 = ReplacedAllTypeOfSpecialChar(arrReference(1,i))
			  strRAddress3 = ReplacedAllTypeOfSpecialChar(arrReference(2,i))
			  strRDesignation3 = ReplacedAllTypeOfSpecialChar(arrReference(3,i))
			  strROrganization3 = ReplacedAllTypeOfSpecialChar(arrReference(4,i))
			  strRPhone3 = ReplacedAllTypeOfSpecialChar(arrReference(5,i))
			  strREmail3 = ReplacedAllTypeOfSpecialChar(arrReference(6,i))
			  strRRelationship3 = ReplacedAllTypeOfSpecialChar(arrReference(7,i))			  
		   End If	   
	   Next
	 
	 strBodyRef = strBodyRef & "<table border='0' width='100%' align='center' cellpadding='2' cellspacing='1' style='margin-top:10px;background-color:#F47820;'>"
 	 	 strBodyRef = strBodyRef & "<tr>"
		 strBodyRef = strBodyRef & "<td align='left' class='BDJSectionHeadLine' style='background-color:#F47820;color:#FFFFFF;padding-left:15px;'>Reference"
		 strBodyRef = strBodyRef & "</td>"
		 strBodyRef = strBodyRef & "<td align='left' class='BDJSectionHeadLine' style='background-color:#F47820;color:#FFFFFF'>"
		 strBodyRef = strBodyRef & "</td>"
		 strBodyRef = strBodyRef & "<td align='left' class='BDJSectionHeadLine' style='background-color:#F47820;color:#FFFFFF'>"
		 strBodyRef = strBodyRef & "</td>"
		 strBodyRef = strBodyRef & "<td align='right' class='BDJSectionHeadLine' style='background-color:#F47820;color:#FFFFFF'>"
		 strBodyRef = strBodyRef & "</td>"
 	 	 strBodyRef = strBodyRef & "</tr>"
		 
		 strBodyRef = strBodyRef & "<tr class='BDJLabelText'>"
		 strBodyRef = strBodyRef & "<td width='25%' align='center' bgcolor='#F5CBAE' style='height:25px;'>"
		 strBodyRef = strBodyRef & "</td>"
	
		 strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='center'>"
		 strBodyRef = strBodyRef & "</td>"	
		 strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='center'>"
		 strBodyRef = strBodyRef & "</td>"
		
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='center'>"
		strBodyRef = strBodyRef & "</td>"
	    strBodyRef = strBodyRef & "</tr>"
		
		strBodyRef = strBodyRef & "<tr class='BDJBlackColorText'>"
		strBodyRef = strBodyRef & "<td width='25%' height='25' bgcolor='#F5CBAE' align='left' class='BDJLabelText' style='padding-left:10px;'>Name"
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strRName1
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strRName2
		strBodyRef = strBodyRef & "</td>"		
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strRName3
		strBodyRef = strBodyRef & "</td>"
	    strBodyRef = strBodyRef & "</tr>"

		strBodyRef = strBodyRef & "<tr class='BDJBlackColorText'>"
		strBodyRef = strBodyRef & "<td width='25%' height='25' bgcolor='#F5CBAE' align='left' class='BDJLabelText' style='padding-left:10px;'>Address"
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strRAddress1
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strRAddress2
		strBodyRef = strBodyRef & "</td>"		
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strRAddress3
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "</tr>"
	
		strBodyRef = strBodyRef & "<tr class='BDJBlackColorText'>"
		strBodyRef = strBodyRef & "<td width='25%' height='25' bgcolor='#F5CBAE' class='BDJLabelText' align='left' style='padding-left:10px;'>Designation/Profession"
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strRDesignation1
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strRDesignation2
		strBodyRef = strBodyRef & "</td>"		
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strRDesignation3
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "</tr>"

		strBodyRef = strBodyRef & "<tr class='BDJBlackColorText'>"
		strBodyRef = strBodyRef & "<td width='25%' height='25' bgcolor='#F5CBAE' class='BDJLabelText' align='left' style='padding-left:10px;'>Organization/Institute"
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strROrganization1
		
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strROrganization2
		
		strBodyRef = strBodyRef & "</td>"		
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strROrganization3
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "</tr>"
	
		strBodyRef = strBodyRef & "<tr class='BDJBlackColorText'>"
		strBodyRef = strBodyRef & "<td width='25%' height='25' bgcolor='#F5CBAE' class='BDJLabelText' align='left' style='padding-left:10px;'>Phone"
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strRPhone1
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strRPhone2
		strBodyRef = strBodyRef & "</td>"		
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strRPhone3
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "</tr>"
	
		strBodyRef = strBodyRef & "<tr class='BDJBlackColorText'>"
		strBodyRef = strBodyRef & "<td width='25%' height='25' bgcolor='#F5CBAE' class='BDJLabelText' align='left' style='padding-left:10px;'>E-Mail"
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strREmail1
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strREmail2
		strBodyRef = strBodyRef & "</td>"		
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"&strREmail3
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "</tr>"

		strBodyRef = strBodyRef & "<tr class='BDJBlackColorText'>"
		strBodyRef = strBodyRef & "<td width='25%' height='25' bgcolor='#F5CBAE' class='BDJLabelText' align='left' style='padding-left:10px;'>Relationship"
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"
		Select Case strRRelationship1
			   Case "-1"
			   		strBodyRef = strBodyRef & ""			
			   Case "1"
					strBodyRef = strBodyRef & "Department Head"
			   Case "2"
					 strBodyRef = strBodyRef & "Lecturer/Instructor"
			   Case "3"
					 strBodyRef = strBodyRef & "Stuff"					 
		End Select					 
	
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"
		
		Select Case strRRelationship2
			   Case "-1"
			   		strBodyRef = strBodyRef & ""				
			   Case "1"
					strBodyRef = strBodyRef & "Department Head"
			   Case "2"
					 strBodyRef = strBodyRef & "Line Manager/Supervisor"
			   Case "3"
					 strBodyRef = strBodyRef & "Colleague"					 
		End Select					 
				
		strBodyRef = strBodyRef & "</td>"			
		strBodyRef = strBodyRef & "<td width='25%' bgcolor='#F5E1D3' align='left'>"
		
		Select Case strRRelationship3
			   Case "-1"
			   		strBodyRef = strBodyRef & ""	
			   Case "1"
					 strBodyRef = strBodyRef & "Department Head"
			   Case "2"
					 strBodyRef = strBodyRef & "Line Manager/Supervisor"
			   Case "3"
					 strBodyRef = strBodyRef & "Colleague"				 
		End Select					 
						
		strBodyRef = strBodyRef & "</td>"
		strBodyRef = strBodyRef & "</tr>"		
	strBodyRef = strBodyRef & "</table>"
End If
%>