<% strBodyPedu = strBodyPedu & "<br>" 
If arrProEducation(0,0) = "Nothing" Then
	  strBodyPedu = strBodyPedu & "<table width='100%' border='0' cellspacing='0' cellpadding='1' align='center' bgcolor='#F47820'>"
	 	   strBodyPedu = strBodyPedu & "<tr>"
		   strBodyPedu = strBodyPedu & "<td height='32' class='BDJSectionHeadLine' style='padding-left:15px;'>No Professional Qualification Submitted by Applicant."
		   strBodyPedu = strBodyPedu & "</td>"
	  	   strBodyPedu = strBodyPedu & "<td align='right'>"
		   strBodyPedu = strBodyPedu & "</td>"
		   strBodyPedu = strBodyPedu & "</tr>"
	 strBodyPedu = strBodyPedu & "</table>"
Else
    strBodyPedu = strBodyPedu & "<table border='0' width='100%' align='center' cellspacing='1' cellpadding='2' bgcolor='#F47820'>"
    	strBodyPedu = strBodyPedu & "<tr> "
        strBodyPedu = strBodyPedu & "<td height='20' colspan='4' class='BDJSectionHeadLine' style='padding-left:15px;'>Professional Qualification"
		strBodyPedu = strBodyPedu & "</td>"
        strBodyPedu = strBodyPedu & "</tr>"
				
		strBodyPedu = strBodyPedu & "<tr bgcolor='#F5CBAE' class='BDJBlackColorText'>" 
        strBodyPedu = strBodyPedu & "<td height='25' align='center'>Name of Degree/Certificate"
		strBodyPedu = strBodyPedu & "</td>"        
		strBodyPedu = strBodyPedu & "<td align='center'>Place"
		strBodyPedu = strBodyPedu & "</td>"
        strBodyPedu = strBodyPedu & "<td width='12%' align='center'>Year"
		strBodyPedu = strBodyPedu & "</td>"
        strBodyPedu = strBodyPedu & "<td align='center'>Subject"
		sstrBodyPedu = strBodyPedu & "</td>"
        strBodyPedu = strBodyPedu & "</tr>"        
		
		For i=0 To UBound(arrProEducation,2)
   			  strBodyPedu = strBodyPedu & "<tr class='BDJBlackColorText'>" 
	          strBodyPedu = strBodyPedu & "<td width='30%' style='height:25px;' align='center' bgcolor='#F5E1D3'>"&Replace(ReplacedAllTypeOfSpecialChar(arrProEducation(2,i)),"&"," and ")
			  strBodyPedu = strBodyPedu & "</td>"
              strBodyPedu = strBodyPedu & "<td width='30%' align='center' bgcolor='#F5E1D3'>"&Replace(ReplacedAllTypeOfSpecialChar(arrProEducation(3,i)),"&"," and ")
			  strBodyPedu = strBodyPedu & "</td>"
              strBodyPedu = strBodyPedu & "<td width='10%' align='center' bgcolor='#F5E1D3'>"&Replace(ReplacedAllTypeOfSpecialChar(arrProEducation(4,i)),"&"," and ")
			  strBodyPedu = strBodyPedu & "</td>"
              strBodyPedu = strBodyPedu & "<td width='30%' align='center' bgcolor='#F5E1D3'>"&Replace(ReplacedAllTypeOfSpecialChar(arrProEducation(5,i)),"&"," and ")
			  strBodyPedu = strBodyPedu & "</td>"
              strBodyPedu = strBodyPedu & "</tr>"   			  			  
		Next 
		
       strBodyPedu = strBodyPedu & "</table>"
End If

%> 

