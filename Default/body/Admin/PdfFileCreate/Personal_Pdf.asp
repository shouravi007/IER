<%
'strBody = strBody & " <table width='80%' border='0' align='center' style='background-color:#FFFFFF;margin-top:10px;'>	<tr>  <td width='153' rowspan='5' align='center'>"
'strBody = strBody & " <img src='"&strDefaultImage&"' name='BLinkImage1' id=BLinkImage1 style='border:1px solid #CCCCCC  dotted;' width='150' height='150'/>"
	
'strBody = strBody & "</td><td width='604' align='right' style='padding-right:10px; font-size:12px; font-weight:bold;' class='BDJBlackColorText'>"&arrPersonal(1,0)&"</td></tr>	<tr><td align='right' style='padding-right:10px; height:40px;' class='BDJBlackColorText'><STRONG>Tracking No&nbsp;:&nbsp;"&arrPersonal(0,0)&"</STRONG><BR><BR>Resume Posted On&nbsp;:&nbsp;"

strBody = ""
strBody = strBody & "<br>"&strDefaultImage
strBody = strBody & "<br>"&arrPersonal(1,0)
strBody = strBody & "<br>Tracking No :"&arrPersonal(0,0)
strBody = strBody & "<img src='"&strDefaultImage&"' />"

	If arrPersonal(20,0) <> "" Then
	    ' strBody = strBody & Mid(FormatDateTime(arrPersonal(20,0),1), inStr(FormatDateTime(arrPersonal(20,0),1), ", ")+1)
	End If
	
	'strBody = strBody & "<BR>Resume Updated On &nbsp;:&nbsp;"
	
	If IsDate(arrPersonal(23,0)) = True Then
	  '   strBody = strBody & Mid(FormatDateTime(arrPersonal(23,0),1), inStr(FormatDateTime(arrPersonal(23,0),1), ", ")+1)
	End If
	'strBody = strBody & "</td></tr><tr><td align='right' style='padding-right:10px; height:25px' class='BDJBlackColorText'></td></tr>z<tr><td align='right' style='padding-right:10px; height:25px' class='BDJBlackColorText'></td></tr><tr>	<td align='right' style='padding-right:10px; height:25px' class='BDJBlackColorText'>&nbsp;</td> </tr><tr><td align='center' style=' height:25px;' class='BDJBlackColorText'></td><td align='left' valign='middle' class='BDJBlackColorText'>&nbsp;</td></tr></table><table border='0' width='86%' cellpadding='2' cellspacing='1' align='center' bgcolor='#F47820'><tr bgcolor='#F47820'><td  colspan='3' align='left' class='BDJSectionHeadLine' style='padding-left:15px;'>Personal Information</td> <td align='right'></td>	</tr><tr><td width='23%' valign='top' align='left' bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px;height:25px;'>Full Name:</td> <td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"&arrPersonal(1,0)&"</td><td width='19%' valign='top' bgcolor='#F5CBAE' class='BDJLabelText'>Blood Group:</td><td width='24%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
	
		'strBody = strBody & "</td></tr><tr><td align='right' style='padding-right:10px; height:25px' class='BDJBlackColorText'></td></tr>z<tr><td align='right' style='padding-right:10px; height:25px' class='BDJBlackColorText'></td></tr><tr>	<td align='right' style='padding-right:10px; height:25px' class='BDJBlackColorText'>&nbsp;</td> </tr><tr><td align='center' style=' height:25px;' class='BDJBlackColorText'></td><td align='left' valign='middle' class='BDJBlackColorText'>&nbsp;</td></tr></table><table border='0' width='86%' cellpadding='2' cellspacing='1' align='center' bgcolor='#F47820'><tr bgcolor='#F47820'><td  colspan='3' align='left' class='BDJSectionHeadLine' style='padding-left:15px;'>Personal Information</td> <td align='right'></td>	</tr><tr><td width='23%' valign='top' align='left' bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px;height:25px;'>Full Name:</td> <td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"&arrPersonal(1,0)&"</td><td width='19%' valign='top' bgcolor='#F5CBAE' class='BDJLabelText'>Blood Group:</td><td width='24%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"

	
		If arrPersonal(26,0) <> "" Or IsNull(arrPersonal(26,0)) = False Then
		   If arrPersonal(26,0) = "-1" Then
		      'strBody = strBody & "Not Mentioned"
		   Else
		     ' strBody = strBody & arrPersonal(26,0)
		   End If
		End If
'strBody = strBody & "</td></tr><tr> <td width='23%' valign='top' align='left' bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px;height:25px;'>Father's Name:</td><td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"&arrPersonal(2,0)&"</td><td width='19%' valign='top' bgcolor='#F5CBAE' class='BDJLabelText'>Marital Status:</td>	<td width='24%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		
		If arrPersonal(10,0) = "M" Then
		  ' strBody = strBody & "Married"
		End If

		If arrPersonal(10,0) = "U" Then
		 ' strBody = strBody & "Unmarried"
		End If		

		If arrPersonal(10,0) = "O" Then
		  ' strBody = strBody & "Other"
		End If				
		
		
        'strBody = strBody & "</td></tr>	<tr>     <td width='23%' valign='top' bgcolor='#F5CBAE' align='left' class='BDJLabelText' style='padding-left:15px;height:25px;'>Mother's Name:</td>     <td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"&arrPersonal(41,0)&"</td><td width='19%' valign='top' align='left' bgcolor='#F5CBAE' class='BDJLabelText'>Religion:</td>  <td width='24%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"&arrPersonal(27,0)&"</td> </tr><tr> 	<td width='23%' valign='top' align='left' bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px;height:25px;'>Date of Birth:</td>	<td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		If arrPersonal(3,0) <> "" Then
		   '  strBody = strBody & Mid(FormatDateTime(arrPersonal(3,0),1), inStr(FormatDateTime(arrPersonal(3,0),1), ", ")+1)
		End If
		'strBody = strBody & "</td> 	<td width='19%' valign='top' bgcolor='#F5CBAE' class='BDJLabelText'>Gender:</td>  	<td width='24%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		
		If arrPersonal(4,0) = "M" Then
		  ' strBody = strBody & "Male"
		End If
		
		If arrPersonal(4,0) = "F" Then
		  ' strBody = strBody & "Female"
		End If   		
		
		'strBody = strBody & "</td></tr>	<tr>   	<td width='23%' bgcolor='#F5CBAE' valign='top' align='left' class='BDJLabelText' style='padding-left:15px;height:25px;'>Nationality:</td><td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"&arrPersonal(11,0)&"</td>  	<td width='19%' valign='top' bgcolor='#F5CBAE' class='BDJLabelText'>Mobile:</td>   	<td width='24%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"&arrPersonal(9,0)&"</td>	</tr>"
		
  		'strBody = strBody & "<tr>  	<td width='23%' bgcolor='#F5CBAE' valign='top' align='left' class='BDJLabelText' style='padding-left:15px;height:25px;'>Home Phone:</td>    	<td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"&arrPersonal(7,0)&"</td>   	<td width='23%' valign='top' bgcolor='#F5CBAE' align='left' class='BDJLabelText'>Office Phone:</td><td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"&arrPersonal(8,0)&"</td>	</tr><tr> <td width='23%' bgcolor='#F5CBAE' valign='top' align='left' class='BDJLabelText' style='padding-left:15px;height:25px;'>E-Mail:</td>    	<td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'><a href=mailto:"&arrPersonal(6,0)&"'"&arrPersonal(6,0)&"</a></td>  	<td width='19%' valign='top' bgcolor='#F5CBAE' class='BDJLabelText'>Home District:</td>   	<td width='24%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"      
	  	
		HomeDistID = Trim(arrPersonal(12,0))
		If HomeDistID <> "" Then
		   If IsNumeric(HomeDistID) Then
			  If cInt(HomeDistID)>=1 And cInt(HomeDistID)<=64 Then
				 HomeDistName=district_Array(HomeDistID)
			  Else
				HomeDistName=""
			  End If
		   Else
			  HomeDistName=""	
		   End If 
		Else
			HomeDistName=""	
		End If
	    
        strBody = strBody & HomeDistName
		'strBody = strBody & "</td>    </tr>     <tr>      <td width='23%' bgcolor='#F5CBAE' valign='top' align='left' class='BDJLabelText' style='padding-left:15px;height:25px;'>Permanent Address:</td>  <td width='34%' valign='top' bgcolor='#F5E1D3' height='27' class='BDJBlackColorText'>"&arrPersonal(5,0)&"</td> <td width='19%' valign='top' bgcolor='#F5CBAE' height='27'>&nbsp;</td><td width='24%' valign='top' bgcolor='#F5E1D3' height='27'>&nbsp;</td></tr> <tr><td width='23%' bgcolor='#F5CBAE' valign='top' align='left' class='BDJLabelText' style='padding-left:15px;height:25px;'>Present Address:</td><td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"&arrPersonal(42,0)&"</td><td width='19%' valign='top' bgcolor='#F5CBAE'>&nbsp;</td> <td width='24%' valign='top' bgcolor='#F5E1D3'>&nbsp;</td></tr></table>"
%>