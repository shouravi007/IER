<%
strBodyEdu = "" 
strBodyEdu = strBodyEdu & "<br>"
If arrEducation(0,0) = "Nothing" Then 

   strBodyEdu = strBodyEdu & "<table width='86%' border='0' cellspacing='0' cellpadding='0' align='center' bgcolor='#F47820'>"
		strBodyEdu = strBodyEdu & "<tr>"
		strBodyEdu = strBodyEdu & "<td width='70%' height='33' class='BDJSectionHeadLine' style='padding-left:15px;'>No Academic Information Submitted by User."
		strBodyEdu = strBodyEdu & "</td>"
		strBodyEdu = strBodyEdu & "<td width='30%' align='right'>"
		strBodyEdu = strBodyEdu & "</td>"
		strBodyEdu = strBodyEdu & "</tr>"
	strBodyEdu = strBodyEdu & "</table>"
Else
    strBodyEdu = strBodyEdu & "<table width='86%' border='0' cellspacing='0' cellpadding='0' align='center' bgcolor='#F47820'>"
		strBodyEdu = strBodyEdu & "<tr>" 
        strBodyEdu = strBodyEdu & "<td height='20' colspan='7' bgcolor='#F47820' style='padding-left:15px;height:25px;'>Educational Qualification"
		strBodyEdu = strBodyEdu & "</td>"
        strBodyEdu = strBodyEdu & "<td align='right'>"		
		strBodyEdu = strBodyEdu & "</td>"
        strBodyEdu = strBodyEdu & "<td align='right'>"
		strBodyEdu = strBodyEdu & "</td>"
        strBodyEdu = strBodyEdu & "</tr>"
		
        strBodyEdu = strBodyEdu & "<tr bgcolor='#F5CBAE'>" 
        strBodyEdu = strBodyEdu & "<td width='10%' align='center'>Education Level"
		strBodyEdu = strBodyEdu & "</td>"
        strBodyEdu = strBodyEdu & "<td width='10%' align='center'>Name of Degree"
		strBodyEdu = strBodyEdu & "</td>"
        strBodyEdu = strBodyEdu & "<td width='16%' align='center'>Institute"
		strBodyEdu = strBodyEdu & "</td>"
        strBodyEdu = strBodyEdu & "<td width='13%' align='center'>Passing Year"
		strBodyEdu = strBodyEdu & "</td>"
        strBodyEdu = strBodyEdu & "<td width='11%' align='center'>Status"
		strBodyEdu = strBodyEdu & "</td>"
        strBodyEdu = strBodyEdu & "<td width='11%' align='center'>Major/Area"
		strBodyEdu = strBodyEdu & "</td>"
        strBodyEdu = strBodyEdu & "<td width='21%' align='center'>Class/CGPA"
		strBodyEdu = strBodyEdu & "<br>Grade/ Percentage"
		strBodyEdu = strBodyEdu & "</td>"
        strBodyEdu = strBodyEdu & "<td width='21%' align='center'>Distinction"
		strBodyEdu = strBodyEdu & "</td>"
        strBodyEdu = strBodyEdu & "</tr>"		
        For i = 0 To UBound(arrEducation,2)
              strBodyEdu = strBodyEdu & "<tr>" 
			 ' strBodyEdu = strBodyEdu & "<td width='3%' align='center' bgcolor='#F5E1D3'>"
			 ' strBodyEdu = strBodyEdu & "</td>"
              strBodyEdu = strBodyEdu & "<td width='16%' style='height:25px;' align='left' bgcolor='#F5E1D3' height='2'>"			 
			  
			  Select Case arrEducation(2,i)
			  		 Case "1"
					 	  strBodyEdu = strBodyEdu & "Secondary"
				     Case "2"
					 	  strBodyEdu = strBodyEdu & "Higher Secondary"
					 Case "3"
					 	  strBodyEdu = strBodyEdu & "Graduation"
					 Case "4"
					 	  strBodyEdu = strBodyEdu & "Masters"
					 Case "5"
					 	  strBodyEdu = strBodyEdu & "Doctoral"
					 Case "6"
					 	  strBodyEdu = strBodyEdu & "Post-Doctoral"  	 		  		  
			  End Select
			  		  
			  strBodyEdu = strBodyEdu & "</td>"              
              strBodyEdu = strBodyEdu & "<td width='20%' align='center' bgcolor='#F5E1D3' height='2'>"
			  strBodyEdu = strBodyEdu & ""
			  strBodyEdu = strBodyEdu & arrEducation(3,i)
			  strBodyEdu = strBodyEdu & "</td>"
              strBodyEdu = strBodyEdu & "<td width='16%' align='center' bgcolor='#F5E1D3' height='2'>"
			  strBodyEdu = strBodyEdu & ""
			  strBodyEdu = strBodyEdu & ReplacedAllTypeOfSpecialChar(arrEducation(4,i))
			  strBodyEdu = strBodyEdu & ""
              


  if isnull(arrEducation(10,i)) then 
  
  else 
    if arrEducation(10,i) = True then 
      strBodyEdu = strBodyEdu & "<br><br><i>Pass from Foreign Institute Campus Location :"&arrEducation(12,i)&"</i>"
 	
    end if 
  end if 

              
              strBodyEdu = strBodyEdu & "</td>"
              strBodyEdu = strBodyEdu & "<td height='2' align='center' bgcolor='#F5E1D3'>"
			  strBodyEdu = strBodyEdu & ""
			  strBodyEdu = strBodyEdu & arrEducation(7,i)
			  
			  strBodyEdu = strBodyEdu & ""
			  strBodyEdu = strBodyEdu & "</td>"
              strBodyEdu = strBodyEdu & "<td width='11%' align='center' bgcolor='#F5E1D3'>"
			  strBodyEdu = strBodyEdu & ""&arrEducation(8,i)
			  strBodyEdu = strBodyEdu & "</font>"
			  strBodyEdu = strBodyEdu & "</td>"
              strBodyEdu = strBodyEdu & "<td width='11%' align='center' bgcolor='#F5E1D3' height='2'>"
			  strBodyEdu = strBodyEdu & ""
			  strBodyEdu = strBodyEdu & ReplacedAllTypeOfSpecialChar(arrEducation(6,i))
			  strBodyEdu = strBodyEdu & ""
			  strBodyEdu = strBodyEdu & "</td>"
              strBodyEdu = strBodyEdu & "<td width='21%' align='center' bgcolor='#F5E1D3' height='2'>"
			  strBodyEdu = strBodyEdu & ""
			  strBodyEdu = strBodyEdu & ReplacedAllTypeOfSpecialChar(arrEducation(5,i))
			  strBodyEdu = strBodyEdu & ""
			  strBodyEdu = strBodyEdu & "</td>"
              strBodyEdu = strBodyEdu & "<td width='21%' align='center' bgcolor='#F5E1D3'>"
			  strBodyEdu = strBodyEdu & ""
			  strBodyEdu = strBodyEdu & arrEducation(9,i)
			  strBodyEdu = strBodyEdu & ""
			  strBodyEdu = strBodyEdu & "</td>"
              strBodyEdu = strBodyEdu & "</tr>"
        Next
'		strBodyEdu = strBodyEdu & "<tr>"
'		strBodyEdu = strBodyEdu & "<td height='46'colspan='9' bgcolor='#F5E1D3' align='left' style='padding-left:10px;'>"
'		strBodyEdu = strBodyEdu & "</td>"
'		strBodyEdu = strBodyEdu & "</tr>"
	strBodyEdu = strBodyEdu & "</table>"

End If%>
