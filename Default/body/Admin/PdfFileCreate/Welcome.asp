<%
    'ValuePrint arrPersonal(43,0), "bdjPhoto"
	
	If IsNull(arrPersonal(44,0)) = False Then 
     'ValuePrint arrPersonal(44,0), "defaultPhoto"
	  DefaultPhoto = arrPersonal(44,0)
	Else
	  DefaultPhoto = "" 
	End If 
	
	If arrPersonal(39,0) <> "" And IsNull(arrPersonal(39,0)) = False Then
       'ValuePrint arrPersonal(39,0), "IsPhoto"
	  If arrPersonal(39, 0) = True And arrPersonal(43,0) <> "0" Then 
	    If DefaultPhoto = ""  And arrPersonal(43,0) <> "0" Then 
		   strDefaultImage = arrPersonal(43,0)
		ElseIf DefaultPhoto = "bdjobs" Then 
		   strDefaultImage = arrPersonal(43,0)
		ElseIf DefaultPhoto = "ers" Then 
          strDefaultImage = "http://banglalink.bdjobs.com/Photos/" & arrPersonal(40,0)&"?"&now 
		Else
          strDefaultImage = "http://banglalink.bdjobs.com/Photos/" & arrPersonal(40,0)&"?"&now 
		End If 
	  Else
	   If CBool(arrPersonal(39,0)) = True Then
          strDefaultImage = "http://banglalink.bdjobs.com/Photos/" & arrPersonal(40,0)&"?"&now 
	   Else
		 If arrPersonal(43,0) <> "0" Then  		  
		   strDefaultImage = arrPersonal(43,0)
		 Else
	      strDefaultImage = "../Images/noimage.gif"
		 End If 
	   End If
      End If
	End If	




strBodyTest = ""
 'strBodyTest = strBodyTest & "<div>"&strDefaultImage&"</div>"
 strBodyTest = strBodyTest & "<div>"&"<img src='"&strDefaultImage&"' name='BLinkImage1' id='BLinkImage1' style='border:1px solid #CCCCCC  dotted;' width='150' height='150'/></div>"
 
 
 strBodyTest = strBodyTest & "<div>"&arrPersonal(1,0)&"</div>"
 strBodyTest = strBodyTest & "<div>Tracking No&nbsp;:&nbsp;"&arrPersonal(0,0)&"</div>"
 strBodyTest = strBodyTest & "<div>Resume Posted On&nbsp;:&nbsp;"
	If arrPersonal(20,0) <> "" Then
	    strBodyTest = strBodyTest &  Mid(FormatDateTime(arrPersonal(20,0),1), inStr(FormatDateTime(arrPersonal(20,0),1), ", ")+1)&"</div>"
	End If	 	
	
 strBodyTest = strBodyTest & "<div>Resume Updated On &nbsp;:&nbsp;"
	If IsDate(arrPersonal(23,0)) = True Then
	    strBodyTest = strBodyTest & Mid(FormatDateTime(arrPersonal(23,0),1), inStr(FormatDateTime(arrPersonal(23,0),1), ", ")+1)&"</div>"
	End If		

 strBodyTest = strBodyTest & "<div>Full Name:"
 strBodyTest = strBodyTest & arrPersonal(1,0)&"</div>"
 strBodyTest = strBodyTest & "<div>Blood Group:"
 
 		If arrPersonal(26,0) <> "" Or IsNull(arrPersonal(26,0)) = False Then
		   If arrPersonal(26,0) = "-1" Then
		      strBodyTest = strBodyTest & "Not Mentioned"
		   Else
		      strBodyTest = strBodyTest & arrPersonal(26,0)
		   End If
		End If

 
  strBodyTest = strBodyTest & "</div>"
 strBodyTest = strBodyTest & "<div>Father's Name:"&arrPersonal(2,0)&"</div>"
 strBodyTest = strBodyTest & "<div>Marital Status:"
        If arrPersonal(10,0) = "M" Then
		    strBodyTest = strBodyTest & "Married"
		End If

		If arrPersonal(10,0) = "U" Then
		    strBodyTest = strBodyTest & "Unmarried"
		End If		

		If arrPersonal(10,0) = "O" Then
		    strBodyTest = strBodyTest & "Other"
		End If	
 
 
strBodyTest = strBodyTest & "</div>"
 strBodyTest = strBodyTest & "<div>Mother's Name:"&arrPersonal(41,0)&"</div>"
 strBodyTest = strBodyTest & "<div>Religion:"&arrPersonal(27,0)&"</div>"
 strBodyTest = strBodyTest & "<div>Date of Birth:"
 		 If arrPersonal(3,0) <> "" Then
		     strBodyTest = strBodyTest & Mid(FormatDateTime(arrPersonal(3,0),1), inStr(FormatDateTime(arrPersonal(3,0),1), ", ")+1)
		End If

 
strBodyTest = strBodyTest & "</div>"
 strBodyTest = strBodyTest & "<div>Gender:"
 		If arrPersonal(4,0) = "M" Then
		   strBodyTest = strBodyTest & "Male"
		End If
		
		If arrPersonal(4,0) = "F" Then
		   strBodyTest = strBodyTest & "Female"
		End If   		

strBodyTest = strBodyTest & "</div>"
 strBodyTest = strBodyTest & "<div>Nationality:"&arrPersonal(11,0)&"</div>"
 strBodyTest = strBodyTest & "<div>Mobile:"&arrPersonal(9,0)&"</div>"
 strBodyTest = strBodyTest & "<div>Office Phone:"&arrPersonal(8,0)&"</div>"
 strBodyTest = strBodyTest & "<div>E-Mail:" 
 strBodyTest = strBodyTest & "<a href='mailto:"&arrPersonal(6,0)&"'>"&arrPersonal(6,0)&"</a></div>"
 strBodyTest = strBodyTest & "<div>Home District:"
 
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
 strBodyTest = strBodyTest & HomeDistName&"</div>"
 strBodyTest = strBodyTest & "<div>Permanent Address:"&arrPersonal(5,0)&"</div>"
 strBodyTest = strBodyTest & "<div>Present Address:"&arrPersonal(42,0)&"</div>"

	strBodyWelcome = ""
	strBodyWelcome =  strBodyWelcome & "<table width='80%' border='0' align='center' style='background-color:#FFFFFF;margin-top:10px;'>"
	strBodyWelcome =  strBodyWelcome & "<tr>"
	strBodyWelcome =  strBodyWelcome & "<td width='153' rowspan='5' align='center'>"


	strBodyWelcome =  strBodyWelcome & " <img src='"&strDefaultImage&"' name='BLinkImage1' id='BLinkImage1' style='border:1px solid #CCCCCC  dotted;' width='150' height='150'/></td>"
	strBodyWelcome =  strBodyWelcome & " <td width='604' align='right' style='padding-right:10px; font-size:12px; font-weight:bold;' class='BDJBlackColorText'>"&arrPersonal(1,0)&"</td></tr>"
  	
	strBodyWelcome =  strBodyWelcome &"<tr>"
    strBodyWelcome =  strBodyWelcome &"<td align='right' style='padding-right:10px; height:40px;' class='BDJBlackColorText'>"
	strBodyWelcome =  strBodyWelcome &"<STRONG>Tracking No:"&arrPersonal(0,0)
	strBodyWelcome =  strBodyWelcome &"</STRONG>"
	strBodyWelcome =  strBodyWelcome & "<BR><BR>Resume Posted On : "
	If IsDate(arrPersonal(20,0)) = True  Then
	     strBodyWelcome =  strBodyWelcome & Mid(FormatDateTime(arrPersonal(20,0),1), inStr(FormatDateTime(arrPersonal(20,0),1), ", ")+1)
	End If	 	
	strBodyWelcome =  strBodyWelcome & "<BR>Resume Updated On:"
	
	If IsDate(arrPersonal(23,0)) = True Then
	     strBodyWelcome =  strBodyWelcome & Mid(FormatDateTime(arrPersonal(23,0),1), inStr(FormatDateTime(arrPersonal(23,0),1), ", ")+1)
	End If
	strBodyWelcome =  strBodyWelcome & "</td>"
  	strBodyWelcome =  strBodyWelcome & "</tr>"
    strBodyWelcome =  strBodyWelcome & "</table>"	

%>