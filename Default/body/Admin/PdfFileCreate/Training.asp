<% strBodyTraining = strBodyTraining & "<BR>"
If arrTraining(0,0) = "Nothing" then
	 strBodyTraining = strBodyTraining & " <table width='100%' border='0' cellspacing='0' cellpadding='1' align='LEFT' bgcolor='#F47820'>"
		strBodyTraining = strBodyTraining &"<tr>"
		strBodyTraining = strBodyTraining &"<td height='32' class='BDJSectionHeadLine' style='padding-left:15px;'>"
		strBodyTraining = strBodyTraining &"No Training Information Submitted by User.</td>"
		strBodyTraining = strBodyTraining &"<td align='right'>"
		strBodyTraining = strBodyTraining &"</td>"
		strBodyTraining = strBodyTraining &"</tr>"
	strBodyTraining = strBodyTraining &"</table>"
Else
	strBodyTraining = strBodyTraining & " <table align='left' width='100%' cellpadding='2' cellspacing='1' bgcolor='#F47820'>"
		strBodyTraining = strBodyTraining & " <tr>"
		strBodyTraining = strBodyTraining & " <td colspan='5'>"
	   strBodyTraining = strBodyTraining &"<table width='100%' cellpadding='0' cellspacing='0' align='left'>"
			strBodyTraining = strBodyTraining & "<tr bgcolor='#F47820'>"
			strBodyTraining = strBodyTraining & "<td width='76%' height='25' align='left' class='BDJSectionHeadLine'>Perticipated Training</td>"
			strBodyTraining = strBodyTraining & " <td width='24%' align='right'>"		  	
			
            
           strBodyTraining = strBodyTraining &"</td>"
			strBodyTraining = strBodyTraining & " </tr>"
	    strBodyTraining = strBodyTraining & " </table>"
		strBodyTraining = strBodyTraining & " </td>"
		strBodyTraining = strBodyTraining & " </tr>"
		
		For i = 0 To UBound(arrTraining,2)
			strBodyTraining = strBodyTraining & " <tr>"
			strBodyTraining = strBodyTraining & " <td  bgcolor='#F5CBAE' align='center' style='font-size:12px; font-weight:bold; padding-top:5px; padding-bottom:5px; height:25px;'></td>"
			strBodyTraining = strBodyTraining & " <td colspan='4' align='center'  bgcolor='#F5E1D3' style='font-size:12px; font-weight:bold; padding-top:5px; padding-bottom:5px; height:25px;'><U>Training :"&(i+1)&"</U>"
			strBodyTraining = strBodyTraining & " </td>"
			strBodyTraining = strBodyTraining & " </tr>"
				
			strBodyTraining = strBodyTraining & " <tr>"
			strBodyTraining = strBodyTraining & " <td width='19%' height='24' bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px; height:25px;'>Training Title :</td>"
			strBodyTraining = strBodyTraining & " <td colspan='4' class='BDJBlackColorText' align='left' bgcolor='#F5E1D3'>"
			 traTitle = Replace(arrTraining(2,i),"&"," and ")
			
		     strBodyTraining = strBodyTraining & ReplacedAllTypeOfSpecialChar(traTitle)

			strBodyTraining = strBodyTraining & "</td></tr>"
				
			strBodyTraining = strBodyTraining & " <tr>"
			strBodyTraining = strBodyTraining & " <td height='24' class='BDJLabelText' bgcolor='#F5CBAE'  style='padding-left:15px; height:25px;'>Training Period : </td>"
			strBodyTraining = strBodyTraining & " <td width='9%' align='left' class='BDJBlackColorText' bgcolor='#F5E1D3'>Duration:</td>"
		    strBodyTraining = strBodyTraining & " <td width='10%' class='BDJBlackColorText' bgcolor='#F5E1D3'>"
			 traDuration = Replace(arrTraining(4,i),"&"," and ")
			
		     strBodyTraining = strBodyTraining & ReplacedAllTypeOfSpecialChar(traDuration)

			'strBodyTraining = strBodyTraining & arrTraining(4,i)
			strBodyTraining = strBodyTraining & " days</td>"
		   strBodyTraining = strBodyTraining &"<td width='5%' align='right' bgcolor='#F5E1D3' class='BDJBlackColorText'>Year:</td>"
		   strBodyTraining = strBodyTraining &"<td width='57%' class='BDJBlackColorText' bgcolor='#F5E1D3'>"

			 traDuration = Replace(arrTraining(3,i),"&"," and ")
			
		     strBodyTraining = strBodyTraining & ReplacedAllTypeOfSpecialChar(traDuration)


		  ' strBodyTraining = strBodyTraining & arrTraining(3,i)
		   strBodyTraining = strBodyTraining & "</td>"
		    strBodyTraining = strBodyTraining & " </tr>"
				
			strBodyTraining = strBodyTraining & " <tr>"
			strBodyTraining = strBodyTraining & " <td height='24' class='BDJLabelText' bgcolor='#F5CBAE' style='padding-left:15px; height:25px;'>Name of Institute: </td>"
			strBodyTraining = strBodyTraining & " <td colspan='4' class='BDJBlackColorText' bgcolor='#F5E1D3'>"

			 traIns = Replace(arrTraining(5,i),"&"," and ")
			
		     strBodyTraining = strBodyTraining & ReplacedAllTypeOfSpecialChar(traIns)

			'strBodyTraining = strBodyTraining & arrTraining(5,i)
			strBodyTraining = strBodyTraining & "</td>"
		    strBodyTraining = strBodyTraining &"</tr>"
				
			strBodyTraining = strBodyTraining & " <tr>"
			strBodyTraining = strBodyTraining & " <td height='24' class='BDJLabelText'  bgcolor='#F5CBAE' style='padding-left:15px; height:25px;'>City:</td>"
			strBodyTraining = strBodyTraining & " <td colspan='4' class='BDJBlackColorText' bgcolor='#F5E1D3'>"

			 traCity = Replace(arrTraining(6,i),"&"," and ")
			
		     strBodyTraining = strBodyTraining & ReplacedAllTypeOfSpecialChar(traCity)


			'strBodyTraining = strBodyTraining & arrTraining(6,i)
			strBodyTraining = strBodyTraining & "</td>"
		    strBodyTraining = strBodyTraining & " </tr>"
				
			strBodyTraining = strBodyTraining & " <tr>"
			strBodyTraining = strBodyTraining & " <td height='24' class='BDJLabelText' bgcolor='#F5CBAE'  style='padding-left:15px; height:25px;'>Country:</td>"
			strBodyTraining = strBodyTraining & " <td colspan='4' class='BDJBlackColorText' bgcolor='#F5E1D3'>"
			 traCountry = Replace(arrTraining(7,i),"&"," and ")
			
		     strBodyTraining = strBodyTraining & ReplacedAllTypeOfSpecialChar(traCountry)


			'strBodyTraining = strBodyTraining & arrTraining(7,i)
			strBodyTraining = strBodyTraining & "</td>"
		   strBodyTraining = strBodyTraining &"</tr>"									
		Next
						
strBodyTraining = strBodyTraining & " </table>	"  		
End If

%> 
