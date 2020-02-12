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

	
	strBodyPersonal = "" 
	
	strBodyPersonal =  strBodyPersonal & " <table border='0' width='100%' cellpadding='2' cellspacing='1' align='center' bgcolor='#F47820'>"
  		strBodyPersonal =  strBodyPersonal & " <tr bgcolor='#F47820'>" 
  		strBodyPersonal =  strBodyPersonal & " <td colspan='4'  align='left' class='BDJSectionHeadLine' style='padding-left:15px;'>" 

     	strBodyPersonal =  strBodyPersonal & "Personal Information"
    	strBodyPersonal =  strBodyPersonal & " </td>"

  		strBodyPersonal =  strBodyPersonal & " </tr>"
  		
		strBodyPersonal =  strBodyPersonal & " <tr>" 
    	strBodyPersonal =  strBodyPersonal & " <td width='23%' valign='top' align='left' bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px;height:25px;'>Full Name:"
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		strBodyPersonal =  strBodyPersonal & ReplacedAllTypeOfSpecialChar(arrPersonal(1,0))
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='19%' valign='top' bgcolor='#F5CBAE' class='BDJLabelText'>"
		strBodyPersonal =  strBodyPersonal & "Blood Group:"
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='24%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		
		If arrPersonal(26,0) <> "" Or IsNull(arrPersonal(26,0)) = False Then
		   If arrPersonal(26,0) = "-1" Then
		      strBodyPersonal =  strBodyPersonal & " Not Mentioned"
		   Else
		     strBodyPersonal =  strBodyPersonal &  ReplacedAllTypeOfSpecialChar(arrPersonal(26,0))
		   End If
		End If
		
		strBodyPersonal =  strBodyPersonal & " </td>"
  		strBodyPersonal =  strBodyPersonal & " </tr>"

		strBodyPersonal =  strBodyPersonal & " <tr>" 
    	strBodyPersonal =  strBodyPersonal & " <td width='23%' valign='top' align='left' bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px;height:25px;'>"
		
		strBodyPersonal =  strBodyPersonal & "Father's Name:"
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		strBodyPersonal =  strBodyPersonal & ReplacedAllTypeOfSpecialChar(arrPersonal(2,0))	    
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='19%' valign='top' bgcolor='#F5CBAE' class='BDJLabelText'>Marital Status:"
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='24%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
	
		If arrPersonal(10,0) = "M" Then
		   strBodyPersonal =  strBodyPersonal & " Married"
		End If

		If arrPersonal(10,0) = "U" Then
		  strBodyPersonal =  strBodyPersonal & " Unmarried"
		End If		

		If arrPersonal(10,0) = "O" Then
		  strBodyPersonal =  strBodyPersonal & " Other"
		End If				
		
		strBodyPersonal =  strBodyPersonal & " </td>"
  		strBodyPersonal =  strBodyPersonal & " </tr>"

		strBodyPersonal =  strBodyPersonal & " <tr>" 
        strBodyPersonal =  strBodyPersonal & " <td width='23%' valign='top' bgcolor='#F5CBAE' align='left' class='BDJLabelText' style='padding-left:15px;height:25px;'>Mother's Name:"
		strBodyPersonal =  strBodyPersonal & " </td>"
        strBodyPersonal =  strBodyPersonal & " <td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		strBodyPersonal =  strBodyPersonal & ReplacedAllTypeOfSpecialChar(arrPersonal(41,0))
		strBodyPersonal =  strBodyPersonal & " </td>"
        strBodyPersonal =  strBodyPersonal & " <td width='19%' valign='top' align='left' bgcolor='#F5CBAE' class='BDJLabelText'>Religion:"
		strBodyPersonal =  strBodyPersonal & " </td>"
        strBodyPersonal =  strBodyPersonal & " <td width='24%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		strBodyPersonal =  strBodyPersonal & ReplacedAllTypeOfSpecialChar(arrPersonal(27,0))
		strBodyPersonal =  strBodyPersonal & " </td>"
  	    strBodyPersonal =  strBodyPersonal & " </tr>"
						
  		strBodyPersonal =  strBodyPersonal & " <tr>" 
    	strBodyPersonal =  strBodyPersonal & " <td width='23%' valign='top' align='left' bgcolor='#F5CBAE' class='BDJLabelText' style='padding-left:15px;height:25px;'>Date of Birth:"
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		
		If arrPersonal(3,0) <> "" Then
		     strBodyPersonal =  strBodyPersonal & Mid(FormatDateTime(arrPersonal(3,0),1), inStr(FormatDateTime(arrPersonal(3,0),1), ", ")+1)
		End If
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='19%' valign='top' bgcolor='#F5CBAE' class='BDJLabelText'>Gender:"
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='24%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		'strBodyPersonal =  strBodyPersonal & " <%
		If arrPersonal(4,0) = "M" Then
		  strBodyPersonal =  strBodyPersonal & "Male"
		End If
		
		If arrPersonal(4,0) = "F" Then
		  strBodyPersonal =  strBodyPersonal & "Female"
		End If   		
	
		strBodyPersonal =  strBodyPersonal & " </td>"
  		strBodyPersonal =  strBodyPersonal & " </tr>"
		
  		strBodyPersonal =  strBodyPersonal & " <tr>" 
    	strBodyPersonal =  strBodyPersonal & " <td width='23%' bgcolor='#F5CBAE' valign='top' align='left' class='BDJLabelText' style='padding-left:15px;height:25px;'>Nationality:"
		
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		strBodyPersonal =  strBodyPersonal & ReplacedAllTypeOfSpecialChar(arrPersonal(11,0))
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='19%' valign='top' bgcolor='#F5CBAE' class='BDJLabelText'>Mobile:"
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='24%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		strBodyPersonal =  strBodyPersonal & ReplacedAllTypeOfSpecialChar(arrPersonal(9,0))
		strBodyPersonal =  strBodyPersonal & " </td>"
  		strBodyPersonal =  strBodyPersonal & " </tr>"
'		
  		strBodyPersonal =  strBodyPersonal & " <tr>" 
    	strBodyPersonal =  strBodyPersonal & " <td width='23%' bgcolor='#F5CBAE' valign='top' align='left' class='BDJLabelText' style='padding-left:15px;height:25px;'>Home Phone:"
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		strBodyPersonal =  strBodyPersonal & ReplacedAllTypeOfSpecialChar(arrPersonal(7,0))
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='23%' valign='top' bgcolor='#F5CBAE' align='left' class='BDJLabelText'>Office Phone:"
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		strBodyPersonal =  strBodyPersonal & ReplacedAllTypeOfSpecialChar(arrPersonal(8,0))
		strBodyPersonal =  strBodyPersonal & " </td>"
  		strBodyPersonal =  strBodyPersonal & " </tr>"
		
  		
		strBodyPersonal =  strBodyPersonal & " <tr>" 
    	strBodyPersonal =  strBodyPersonal & " <td width='23%' bgcolor='#F5CBAE' valign='top' align='left' class='BDJLabelText' style='padding-left:15px;height:25px;'>E-Mail:"
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		strBodyPersonal =  strBodyPersonal & "<a href='mailto:"&arrPersonal(6,0)&"'>"&ReplacedAllTypeOfSpecialChar(arrPersonal(6,0))&"</a>"
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='19%' valign='top' bgcolor='#F5CBAE' class='BDJLabelText'>Home District:"
		strBodyPersonal =  strBodyPersonal & " </td>"
    	strBodyPersonal =  strBodyPersonal & " <td width='24%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"      
	  	'strBodyPersonal =  strBodyPersonal & " <%
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
	    
        strBodyPersonal =  strBodyPersonal & ReplacedAllTypeOfSpecialChar(HomeDistName)
		strBodyPersonal =  strBodyPersonal & " </td>"
  	    strBodyPersonal =  strBodyPersonal & " </tr>"
	  
        strBodyPersonal =  strBodyPersonal & " <tr>" 
        strBodyPersonal =  strBodyPersonal & " <td width='23%' bgcolor='#F5CBAE' valign='top' align='left' class='BDJLabelText' style='padding-left:15px;height:25px;'>Permanent Address:"
		strBodyPersonal =  strBodyPersonal & " </td>"
        strBodyPersonal =  strBodyPersonal & " <td width='34%' valign='top' bgcolor='#F5E1D3' height='27' class='BDJBlackColorText'>"
		strBodyPersonal =  strBodyPersonal & ReplacedAllTypeOfSpecialChar(arrPersonal(5,0))
		strBodyPersonal =  strBodyPersonal & " </td>"
        strBodyPersonal =  strBodyPersonal & " <td width='19%' valign='top' bgcolor='#F5CBAE' height='27'>---"
		strBodyPersonal =  strBodyPersonal & " </td>"
        strBodyPersonal =  strBodyPersonal & " <td width='24%' valign='top' bgcolor='#F5E1D3' height='27'>---"
		strBodyPersonal =  strBodyPersonal & " </td>"
  	    strBodyPersonal =  strBodyPersonal & " </tr>" 

        strBodyPersonal =  strBodyPersonal & " <tr>" 
        strBodyPersonal =  strBodyPersonal & " <td width='23%' bgcolor='#F5CBAE' valign='top' align='left' class='BDJLabelText' style='padding-left:15px;height:25px;'>Present Address:"
		strBodyPersonal =  strBodyPersonal & " </td>"
        strBodyPersonal =  strBodyPersonal & " <td width='34%' valign='top' bgcolor='#F5E1D3' class='BDJBlackColorText'>"
		strBodyPersonal =  strBodyPersonal & ReplacedAllTypeOfSpecialChar(arrPersonal(42,0))
		strBodyPersonal =  strBodyPersonal & " </td>"
        strBodyPersonal =  strBodyPersonal & " <td width='19%' valign='top' bgcolor='#F5CBAE'>---"
		strBodyPersonal =  strBodyPersonal & " </td>"
        strBodyPersonal =  strBodyPersonal & " <td width='24%' valign='top' bgcolor='#F5E1D3'>---"
		strBodyPersonal =  strBodyPersonal & " </td>"
  	    strBodyPersonal =  strBodyPersonal & " </tr>" 		
    	strBodyPersonal =  strBodyPersonal & " </table>"
%>