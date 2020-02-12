<%
strBodyPef = "" 
strBodyPef = strBodyPef & "<BR>"
If arrPersonal(0,0) <> "Nothing" Then
     If arrPersonal(25,0) = "" Or IsNull(arrPersonal(25,0)) = True Then
          
  	      strBodyPef = strBodyPef & "<table width='100%' border='0' cellspacing='0' cellpadding='1' align='center' bgcolor='#F47820'>"
			  strBodyPef = strBodyPef & "<tr>"
			  strBodyPef = strBodyPef & "<td height='32' class='BDJSectionHeadLine' style='padding-left:15px;'>No Preferred Work area in Banglalink Submitted by Applicant."
			  strBodyPef = strBodyPef & "</td>"
			  strBodyPef = strBodyPef & "<td align='right'>"
			  strBodyPef = strBodyPef & "</td>"
			  strBodyPef = strBodyPef & "</tr>"
              strBodyPef = strBodyPef & "</table>"

	      	
     Else
	      strBodyPef = strBodyPef & "<table width='100%' align='center' cellpadding='2' cellspacing='1' bgcolor='#F47820'>"
			  strBodyPef = strBodyPef & "<tr bgcolor='#F47820'>"
			  strBodyPef = strBodyPef & "<td width='75%' height='32' align='left' class='BDJSectionHeadLine' style='padding-left:15px;'>Preferred Work area in Banglalink"
			  strBodyPef = strBodyPef & "</td>"
			  strBodyPef = strBodyPef & "<td width='25%' colspan='3' align='right'>"
			  strBodyPef = strBodyPef & "</td>"
			  strBodyPef = strBodyPef & "</tr>"
			  
		  	  strBodyPef = strBodyPef & "<tr bgcolor='#F5E1D3'>"
		      strBodyPef = strBodyPef & "<td colspan='4' class='BDJBlackColorText' style='padding-left:15px; height:40px;'>"
			  			 
			  If arrPersonal(25,0) <> "" Then
				 If InStr(arrPersonal(25,0), ",") > 0 Then
				    strSQL = "SELECT SubDepartment FROM BLSubDepartment WHERE SubDepCode IN (" & arrPersonal(25,0) & ")"
				 Else
					strSQL = "SELECT SubDepartment FROM BLSubDepartment WHERE SubDepCode=" & arrPersonal(25,0)
				 End If		  
				 'ValuePrint strSQL , "strSQL"
				 arrWorkArea = objLookUp.RetrieveData(strSQL, errLog)
				 ErrorMessage "1226", errLog
			  
				' Dim strWorkArea
				 strWorkArea = ""
				 
				 If arrWorkArea(0,0) <> "Nothing" Then
					 For i = 0 To UBound(arrWorkArea,2)
						 If strWorkArea = "" Then
							strWorkArea = ReplacedAllTypeOfSpecialChar(arrWorkArea(0,i))
						 Else
							strWorkArea = strWorkArea & ", " & ReplacedAllTypeOfSpecialChar(arrWorkArea(0,i))
						 End If
					 Next
					 strBodyPef = strBodyPef & strWorkArea
				 End If
			  End If
			  
			  strBodyPef = strBodyPef & "</td>"
		      strBodyPef = strBodyPef & "</tr>"			      
		  strBodyPef = strBodyPef & "</table>"	  
	 End If	 
 End If
%>
