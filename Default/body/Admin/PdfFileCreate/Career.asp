<% 
strBodyCareer = "" 
strBodyCareer = strBodyCareer & "<br><table border='0' width='100%' align='center' bgcolor='#F47820' cellpadding='2' cellspacing='1'>"
strBodyCareer = strBodyCareer & "<tr bgcolor='#9F5000'> "
strBodyCareer = strBodyCareer & "<td colspan='4' bgcolor='#F47820' class='BDJSectionHeadLine' style=''>"			 
strBodyCareer = strBodyCareer & "Career And Application Information"	
strBodyCareer = strBodyCareer & "</td>"
strBodyCareer = strBodyCareer & "</tr>"

strBodyCareer = strBodyCareer & "<tr> "
strBodyCareer = strBodyCareer & "<td align='left' colspan='3' class='BDJLabelText' bgcolor='#F5CBAE'  style='padding-left:15px;height:25px;'>Career Plan:</td>"
strBodyCareer = strBodyCareer & "<td align='left' width='533' bgcolor='#F5E1D3' class='BDJBlackColorText'>"&ReplacedAllTypeOfSpecialChar(ReplacedAllTypeOfSpecialChar(ReplacedAllTypeOfSpecialChar(arrPersonal(14,0))))&"</td>"
strBodyCareer = strBodyCareer & "</tr>"

strBodyCareer = strBodyCareer & "<tr>"			 
strBodyCareer = strBodyCareer & "<td align='left' bgcolor='#F5CBAE' colspan='3' class='BDJLabelText' style='padding-left:15px; height:25px;'>Your Preferred Level of Position:</td>"
strBodyCareer = strBodyCareer & "<td align='left' width='533' bgcolor='#F5E1D3' class='BDJBlackColorText'>"

Select Case arrPersonal(22,0)
Case "Entry"
	strBodyCareer = strBodyCareer & "Entry Level Job."    
Case "Mid"
	strBodyCareer = strBodyCareer & "Mid Level Job."    
Case "Top"
	strBodyCareer = strBodyCareer & "Top Level Job."    
End Select	

strBodyCareer = strBodyCareer & "</td>"
strBodyCareer = strBodyCareer & "</tr>"

strBodyCareer = strBodyCareer & "<tr>" 
strBodyCareer = strBodyCareer & "<td align='left' bgcolor='#F5CBAE' colspan='3' class='BDJLabelText' style='padding-left:15px; height:25px'>Available for:</td>"
strBodyCareer = strBodyCareer & "<td align='left' width='533' bgcolor='#F5E1D3' class='BDJBlackColorText'>"

Select Case arrPersonal(21,0) 
Case "Full"	
	strBodyCareer = strBodyCareer & "Full Time."
Case "Part"
	strBodyCareer = strBodyCareer & "Part Time."
Case "Both"
	strBodyCareer = strBodyCareer & "Both."
Case "Contract"
	strBodyCareer = strBodyCareer & "Contractul."						
End Select

strBodyCareer = strBodyCareer & "</td>"
strBodyCareer = strBodyCareer & "</tr>"

strBodyCareer = strBodyCareer & "<tr>" 
strBodyCareer = strBodyCareer & "<td align='left' bgcolor='#F5CBAE' colspan='3' class='BDJLabelText' style='padding-left:15px; height:25px;'>Present Salary:</td>"
strBodyCareer = strBodyCareer & "<td align='left' width='533' bgcolor='#F5E1D3' class='BDJBlackColorText'>"

If arrPersonal(15,0) <> "" Then
strBodyCareerTest = strBodyCareerTest & "Tk. " & ReplacedAllTypeOfSpecialChar(arrPersonal(15,0))
End If

strBodyCareer = strBodyCareer & "</td>"
strBodyCareer = strBodyCareer & "</tr>"

strBodyCareer = strBodyCareer & "<tr>" 
strBodyCareer = strBodyCareer & "<td align='left' bgcolor='#F5CBAE' colspan='3' class='BDJLabelText' style='padding-left:15px;height:25px;'>Expected Salary:</td>"
strBodyCareer = strBodyCareer & "<td align='left' width='533' bgcolor='#F5E1D3' class='BDJBlackColorText'>"

If arrPersonal(16,0) <> "" Then
strBodyCareer = strBodyCareer & "Tk. "&ReplacedAllTypeOfSpecialChar(arrPersonal(16,0))
End If			

strBodyCareer = strBodyCareer & "</td>"
strBodyCareer = strBodyCareer & "</tr>"			

strBodyCareer = strBodyCareer & "<tr>"
strBodyCareer = strBodyCareer & "<td align='left' bgcolor='#F5CBAE' colspan='3' class='BDJLabelText' style='padding-left:15px;height:25px;'>Notice for joining before:</td>"
strBodyCareer = strBodyCareer & "<td align='left' width='533' bgcolor='#F5E1D3' class='BDJBlackColorText'>"


strBodyCareer = strBodyCareer & "</td>"
strBodyCareer = strBodyCareer & "</tr>"

strBodyCareer = strBodyCareer & "<tr>" 
strBodyCareer = strBodyCareer & "<td align='left' bgcolor='#F5CBAE' colspan='3' class='BDJLabelText' style='padding-left:15px;height:25px;'>Source of Application:</td>"
strBodyCareer = strBodyCareer & "<td align='left'  width='533' bgcolor='#F5E1D3' class='BDJBlackColorText'>"


strBodyCareer = strBodyCareer &ReplacedAllTypeOfSpecialChar(arrPersonal(19,0))

strBodyCareer = strBodyCareer & "</td>"
strBodyCareer = strBodyCareer & "</tr>"

strBodyCareer = strBodyCareer & "<tr>"
strBodyCareer = strBodyCareer & "<td align='left' bgcolor='#F5CBAE' colspan='3' class='BDJLabelText' style='padding-left:15px;height:25px;'>Do you have relative in Banglalink?</td>"
strBodyCareer = strBodyCareer & " <td align='left' class='BDJBlackColorText' bgcolor='#F5E1D3'>"

If arrPersonal(28,0) <> "" Then
If CBool(arrPersonal(28,0)) = True Then
 strBodyCareer = strBodyCareer & "Yes"
Else
 strBodyCareer = strBodyCareer & "No"
End If	  
End If

strBodyCareer = strBodyCareer & "</td>"
strBodyCareer = strBodyCareer & "</tr>"          	
If arrPersonal(28,0) <> "" Then 
 If CBool(arrPersonal(28,0)) = True Then
strBodyCareer = strBodyCareer & "<tr>"
strBodyCareer = strBodyCareer & "<td align='right' bgcolor='#F5CBAE' colspan='3' class='BDJLabelText' style='height:25px;'></td>"
strBodyCareer = strBodyCareer & "<td align='left' class='BDJBlackColorText' bgcolor='#F5E1D3'> strBodyCareer = strBodyCareer & "
  			
   strBodyCareer = strBodyCareer & "Relative Name : " &ReplacedAllTypeOfSpecialChar(arrPersonal(29,0)) & "<br>" 
	strBodyCareer = strBodyCareer & "Designation : " & ReplacedAllTypeOfSpecialChar(arrPersonal(45,0)) & "<br>"
  strBodyCareer = strBodyCareer & "Relationship : " & ReplacedAllTypeOfSpecialChar(arrPersonal(30,0)) 
 
   strBodyCareer = strBodyCareer & "</td>"		  			 
  strBodyCareer = strBodyCareer & " </tr>"
  End If
End If						

If arrPersonal(31,0) <> "" Then
  If CBool(arrPersonal(31,0)) = True Then
  strBodyCareer = strBodyCareer & "<tr>"
 strBodyCareer = strBodyCareer & "<td align='right' bgcolor='#F5CBAE' style='height:25px;' colspan='3' class='BDJLabelText'></td>  strBodyCareer = strBodyCareer & ' <td align='left' class='BDJBlackColorText' bgcolor='#F5E1D3'>"
 
	If IsDate(arrPersonal(33,0)) = True Then 
	   strInterviewDate = MonthName(Month(arrPersonal(33,0))) & ", " & Year(arrPersonal(33,0))
	End If
	strBodyCareer = strBodyCareer & "Position : " & ReplacedAllTypeOfSpecialChar(arrPersonal(32,0)) & "<br>"
	strBodyCareer = strBodyCareer & "Interview Date : " & strInterviewDate'Mid(FormatDateTime(arrPersonal(46,0),1), InStr(FormatDateTime(arrPersonal(46,0),1), ", ")+1))																
 
   strBodyCareer = strBodyCareer & "</td>"
   strBodyCareer = strBodyCareer & "</tr>	"		
End If
End If


'ReDim strJobLocation
strJobLocation = ""
If Trim(arrPersonal(17,0)) <> "" then
If Trim(arrPersonal(17,0)) <> "-10" Then
JobIDs = Mid(arrPersonal(17,0),2,len(arrPersonal(17,0))-2)
strJobLocation = ReturnName(JobIDs)
Else
strJobLocation="Others"		
End If	
Else
strJobLocation="Others"		
End If
          	
strBodyCareer = strBodyCareer & "<tr>"
strBodyCareer = strBodyCareer & "	<td align='left' bgcolor='#F5CBAE' colspan='3' class='BDJLabelText' style='padding-left:15px; height:25px;'>Preferred Job Location</td>"
strBodyCareer = strBodyCareer & "<td align='left' class='BDJBlackColorText' bgcolor='#F5E1D3'>"&ReplacedAllTypeOfSpecialChar(strJobLocation)&"</td>"
strBodyCareer = strBodyCareer & "</tr>	"		
strBodyCareer = strBodyCareer & "</table>"
strBodyCareer = strBodyCareer & "</td>"
strBodyCareer = strBodyCareer & "</tr>"
strBodyCareer = strBodyCareer & "</table> "

strBodyCareer = strBodyCareer & "<table width='100%' border='0' cellspacing='1' cellpadding='2' align='center' bgcolor='#F47820'>"

strBodyCareer = strBodyCareer & "<tr> "
strBodyCareer = strBodyCareer & "  <td  bgcolor='#F5CBAE'  class='BDJLabelText' style='padding-left:10px; height:25px;'>Academic Distinctions :</td>"
'strBodyCareer = strBodyCareer & " </tr>"

'strBodyCareer = strBodyCareer & "<tr> "
strBodyCareer = strBodyCareer & " <td colspan='3' bgcolor='#F5E1D3' style='height:50px;'  class='BDJBlackColorText'>"

If arrPersonal(35,0) <> "" And IsNull(arrPersonal(35,0)) = False Then
strBodyCareer = strBodyCareer & ReplacedAllTypeOfSpecialChar(arrPersonal(35,0))
Else
strBodyCareer = strBodyCareer & "NA"	 
End If

strBodyCareer = strBodyCareer & "</td>"
strBodyCareer = strBodyCareer & "</tr>"

	
strBodyCareer = strBodyCareer & "<tr> "
strBodyCareer = strBodyCareer & " <td  bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:10px; height:25px;'>Extra curricular activities :</td>"
'strBodyCareer = strBodyCareer & " </tr>"

'strBodyCareer = strBodyCareer & "<tr> "
strBodyCareer = strBodyCareer & " <td colspan='3' bgcolor='#F5E1D3'  class='BDJBlackColorText' style='height:50px;'>"
If arrPersonal(13,0) <> "" and IsNull(arrPersonal(13,0)) = False Then
strBodyCareer = strBodyCareer & ReplacedAllTypeOfSpecialChar(arrPersonal(13,0))
Else
strBodyCareer = strBodyCareer & "NA"
End If
strBodyCareer = strBodyCareer & "</td>"
strBodyCareer = strBodyCareer & "</tr>"


strBodyCareer = strBodyCareer & " </td>"
strBodyCareer = strBodyCareer & " </tr>"
strBodyCareer = strBodyCareer & "</table>"
%>