<table width="80%" border="0" align="center" style="background-color:#FFFFFF;margin-top:10px;">
  	<tr>
    <td width="153" rowspan="5" align="center">
	<%
	
	Sub UpdateImageNameWhenReffereIsAspNotCorrect()
	End Sub 
	
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
	%>
	<img src="<%=strDefaultImage%>" name="BLinkImage1" id="BLinkImage1" style="border:1px solid #CCCCCC  dotted;" width="150" height="150"/>	</td>
	<td width="604" align="right" style="padding-right:10px; font-size:12px; font-weight:bold;" class="BDJBlackColorText"><%=arrPersonal(1,0)%></td>
  	</tr>
  	
	<tr>
  	<td align="right" style="padding-right:10px; height:40px;" class="BDJBlackColorText">
	<STRONG>
	Tracking No&nbsp;:&nbsp;<%=arrPersonal(0,0)%><% session("TrackingNo") = arrPersonal(0,0) %>
	</STRONG>
	<BR><BR>
	Resume Posted On&nbsp;:&nbsp;
	<%If arrPersonal(20,0) <> "" Then%>
	     <%=Mid(FormatDateTime(arrPersonal(20,0),1), inStr(FormatDateTime(arrPersonal(20,0),1), ", ")+1)%>
	<%End If%>	 	
	<BR>	
	Resume Updated On &nbsp;:&nbsp;
	<%If IsDate(arrPersonal(23,0)) = True Then%>
	     <%=Mid(FormatDateTime(arrPersonal(23,0),1), inStr(FormatDateTime(arrPersonal(23,0),1), ", ")+1)%>
	<%End If%>		
	</td>
  	</tr>
	
	<tr>
  	<td align="right" style="padding-right:10px; height:25px" class="BDJBlackColorText">
	</td>
    </tr>
	
	<tr>
  	<td align="right" style="padding-right:10px; height:25px" class="BDJBlackColorText">
	</td>
    </tr>
	
	<tr>
  	<td align="right" style="padding-right:10px; height:25px" class="BDJBlackColorText">&nbsp;</td>
    </tr>  
	

    
  	<tr>
  	<td align="center" style=" height:25px;" class="BDJBlackColorText">
	<%If arrPersonal(39,0) <> "" Then%>
	     <%If CBool(arrPersonal(39,0)) = False Or  arrPersonal(40,0) = ""   Then%>            
          <%
		   Sub CreateImageName()
		   End Sub 
		   
		   imageNameforUpload = "" 
			varID = arrPersonal(0,0)
				varID = Clng(varID)/10000
			If InStr(varID, ".") > 0 Then
				varFolderName = Split(varID, ".")
				strNewFolderName = varFolderName(0)+1
			Else
				strNewFolderName = varID + 1
			End If
		  strImageName = ""
	
	strImageName = LCase(Trim(Mid(arrPersonal(1,0),1,3))) & "_" & Trim(arrPersonal(0,0))

           imageNameforUpload = strNewFolderName&"/"&strImageName&".jpg"
		  %>
              <%if admin = "" then%>
           	     <a class="fancybox"  id="fancybox" href="#Wrapperbox" style="text-decoration:none;">
                   
                     <input type="button" value="Upload Photograph" class="button2"                    
                      onClick="javascript:openbox('<%=arrPersonal(0,0)%>','<%=strPassword%>','<%=imageNameforUpload%>');" /> </a> <%end if%>
                
		    <!--  <a href="Edit_Photo.asp?ID=<%'=arrPersonal(0,0)%>">Upload Photograph</a>-->
                     
              
		 <%Else%>
		      <%'	  If Request.ServerVariables("REMOTE_ADDR")="180.211.209.4" Then%>
              	     <a class="fancybox"  id="fancybox" href="#Wrapperbox" style="text-decoration:none;">
                      <%if admin = "" then%>
                     <input type="button" value="Edit Photograph" class="button2"                     
                      onClick="javascript:openbox('<%=arrPersonal(0,0)%>','<%=strPassword%>','<%=arrPersonal(40,0)%>');" /> </a> <%end if%>
                <%'Else%>  
            <!--    <a href="Edit_Photo.asp?ID=<%'=arrPersonal(0,0)%>">Change Photograph</a>-->
               		 <%'End If%>
		 <%End If%>
	<%End If%>  	</td>
  	<td align="left" valign="middle" class="BDJBlackColorText">&nbsp;</td>
  	</tr>
</table>	
<FORM  method ="post" name="personal" action="application.asp">
	<table border="0" width="86%" cellpadding="2" cellspacing="1" align="center" bgcolor="#F47820">
  		<tr bgcolor="#F47820"> 
  		<td  colspan="3" align="left" class="BDJSectionHeadLine" style="padding-left:15px;"> 
     	Personal Information
    	</td>
    	<td align="right">
		<INPUT type="hidden" name="ID" value="<%=ID%>">
		<INPUT type="hidden" name="PASS" value="<%=PASS%>">
		 <%if admin = "" then%>
        <INPUT type="submit" name="psubmit" class="button2" style="cursor:hand; width:100;" value="Edit">         
        <%end if%>
		</td>
  		</tr>
  		
		<tr> 
    	<td width="23%" valign="top" align="left" bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:15px;height:25px;">Full Name:</td>
    	<td width="34%" valign="top" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrPersonal(1,0)%><% session("Name") = arrPersonal(1,0) %></td>
    	<td width="19%" valign="top" bgcolor="#F5CBAE" class="BDJLabelText">Blood Group:</td>
    	<td width="24%" valign="top" bgcolor="#F5E1D3" class="BDJBlackColorText">
		<%
		If arrPersonal(26,0) <> "" Or IsNull(arrPersonal(26,0)) = False Then
		   If arrPersonal(26,0) = "-1" Then
		      Response.Write("Not Mentioned")
		   Else
		      Response.Write(arrPersonal(26,0))
		   End If
		End If
		%>
		</td>
  		</tr>

		<tr> 
    	<td width="23%" valign="top" align="left" bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:15px;height:25px;">Father's Name:</td>
    	<td width="34%" valign="top" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrPersonal(2,0)%>		    
		</td>
    	<td width="19%" valign="top" bgcolor="#F5CBAE" class="BDJLabelText">Marital Status:</td>
    	<td width="24%" valign="top" bgcolor="#F5E1D3" class="BDJBlackColorText">
		<%
		If arrPersonal(10,0) = "M" Then
		   Response.Write("Married")
		End If

		If arrPersonal(10,0) = "U" Then
		   Response.Write("Unmarried")
		End If		

		If arrPersonal(10,0) = "O" Then
		   Response.Write("Other")
		End If				
		%>
		</td>
  		</tr>

		<tr> 
        <td width="23%" valign="top" bgcolor="#F5CBAE" align="left" class="BDJLabelText" style="padding-left:15px;height:25px;">Mother's Name:</td>
        <td width="34%" valign="top" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrPersonal(41,0)%></td>
        <td width="19%" valign="top" align="left" bgcolor="#F5CBAE" class="BDJLabelText">Religion:</td>
        <td width="24%" valign="top" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrPersonal(27,0)%></td>
  	    </tr>
						
  		<tr> 
    	<td width="23%" valign="top" align="left" bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:15px;height:25px;">Date of Birth:</td>
    	<td width="34%" valign="top" bgcolor="#F5E1D3" class="BDJBlackColorText">
		<%If arrPersonal(3,0) <> "" Then%>
		     <%=Mid(FormatDateTime(arrPersonal(3,0),1), inStr(FormatDateTime(arrPersonal(3,0),1), ", ")+1)%>
		<%End If%>
		</td>
    	<td width="19%" valign="top" bgcolor="#F5CBAE" class="BDJLabelText">Gender:</td>
    	<td width="24%" valign="top" bgcolor="#F5E1D3" class="BDJBlackColorText">
		<%
		If arrPersonal(4,0) = "M" Then
		   Response.Write("Male")
		End If
		
		If arrPersonal(4,0) = "F" Then
		   Response.Write("Female")
		End If   		
		%>		    
		</td>
  		</tr>
		
  		<tr> 
    	<td width="23%" bgcolor="#F5CBAE" valign="top" align="left" class="BDJLabelText" style="padding-left:15px;height:25px;">Nationality:</td>
    	<td width="34%" valign="top" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrPersonal(11,0)%></td>
    	<td width="19%" valign="top" bgcolor="#F5CBAE" class="BDJLabelText">Mobile:</td>
    	<td width="24%" valign="top" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrPersonal(9,0)%><% session("Mobile") = arrPersonal(9,0) %></td>
  		</tr>
		
  		<tr> 
    	<td width="23%" bgcolor="#F5CBAE" valign="top" align="left" class="BDJLabelText" style="padding-left:15px;height:25px;">Home Phone:</td>
    	<td width="34%" valign="top" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrPersonal(7,0)%></td>
    	<td width="23%" valign="top" bgcolor="#F5CBAE" align="left" class="BDJLabelText">Office Phone:</td>
    	<td width="34%" valign="top" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrPersonal(8,0)%></td>
  		</tr>
		
  		
		<tr> 
    	<td width="23%" bgcolor="#F5CBAE" valign="top" align="left" class="BDJLabelText" style="padding-left:15px;height:25px;">E-Mail:</td>
    	<td width="34%" valign="top" bgcolor="#F5E1D3" class="BDJBlackColorText"><a href="mailto:<%=arrPersonal(6,0)%>"><%=arrPersonal(6,0)%></a><% session("Email") = arrPersonal(6,0) %></td>
    	<td width="19%" valign="top" bgcolor="#F5CBAE" class="BDJLabelText">Home District:</td>
    	<td width="24%" valign="top" bgcolor="#F5E1D3" class="BDJBlackColorText">      
	  	<%
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
	    %>
        <%=HomeDistName%>
		</td>
  	    </tr>
	  
        <tr> 
        <td width="23%" bgcolor="#F5CBAE" valign="top" align="left" class="BDJLabelText" style="padding-left:15px;height:25px;">Permanent Address:</td>
        <td width="34%" valign="top" bgcolor="#F5E1D3" height="27" class="BDJBlackColorText"><%=arrPersonal(5,0)%></td>
        <td width="19%" valign="top" bgcolor="#F5CBAE" height="27">&nbsp;</td>
        <td width="24%" valign="top" bgcolor="#F5E1D3" height="27">&nbsp;</td>
  	    </tr> 

        <tr> 
        <td width="23%" bgcolor="#F5CBAE" valign="top" align="left" class="BDJLabelText" style="padding-left:15px;height:25px;">Present Address:</td>
        <td width="34%" valign="top" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrPersonal(42,0)%></td>
        <td width="19%" valign="top" bgcolor="#F5CBAE">&nbsp;</td>
        <td width="24%" valign="top" bgcolor="#F5E1D3">&nbsp;</td>
  	    </tr> 		
	</table>
</FORM>
<FORM  method ="post" name="personal" action="application.asp#C">
  	<table width="86%" border="0" cellspacing="0" cellpadding="0" align="center">
    	<tr> 
      	<td>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
        	<tr bgcolor="#9F5000"> 
            <td height="29" bgcolor="#F47820" class="BDJSectionHeadLine" style="padding-left:15px;height:25px;">			 
            Career &amp; Application Information			</td>
            <td height="29" bgcolor="#F47820" align="right">
		  	<INPUT type="hidden" name="ID" value="<%=ID%>">
	  		<INPUT type="hidden" name="PASS" value="<%=PASS%>">	  
      		 <%if admin = "" then%>
            <INPUT type="submit" name="psubmit2" value="Edit" style="cursor:hand; width:100;" class="button2">
             
             <%end if%>
            </td>
          	</tr>
        </table>
        <table border="0" width="100%" align="center" bgcolor="#F47820" cellpadding="2" cellspacing="1">
        	<tr> 
            <td align="left" colspan="3" class="BDJLabelText" bgcolor="#F5CBAE"  style="padding-left:15px;height:25px;">Career Plan:</td>
            <td align="left" width="533" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrPersonal(14,0)%></td>
			</tr>
          	
			<tr>			 
            <td align="left" bgcolor="#F5CBAE" colspan="3" class="BDJLabelText" style="padding-left:15px; height:25px;">Your Preferred Level of Position:</td>
            <td align="left" width="533" bgcolor="#F5E1D3" class="BDJBlackColorText">
			<%
			Select Case arrPersonal(22,0)
			       Case "Entry"
			            Response.Write("Entry Level Job.")    
				   Case "Mid"
			   			Response.Write("Mid Level Job.")    
				   Case "Top"
			   			Response.Write("Top Level Job.")    
			End Select	
			%>
			</td>
          	</tr>
			
          	<tr> 
            <td align="left" bgcolor="#F5CBAE" colspan="3" class="BDJLabelText" style="padding-left:15px; height:25px">Available for:</td>
            <td align="left" width="533" bgcolor="#F5E1D3" class="BDJBlackColorText">
			<%
			Select Case arrPersonal(21,0) 
				   Case "Full"	
			            Response.Write("Full Time.")
				   Case "Part"
				        Response.Write("Part Time.")
				   Case "Both"
				        Response.Write("Both.")
				   Case "Contract"
				        Response.Write("Contractul.")						
			End Select
			%>
			</td>
            </tr>
			
          	<tr> 
            <td align="left" bgcolor="#F5CBAE" colspan="3" class="BDJLabelText" style="padding-left:15px; height:25px;">Present Salary:</td>
            <td align="left" width="533" bgcolor="#F5E1D3" class="BDJBlackColorText">
			<%
			If arrPersonal(15,0) <> "" Then
			   Response.Write("Tk. " & arrPersonal(15,0))
			End If
			%>
			</td>
            </tr>

          	<tr> 
            <td align="left" bgcolor="#F5CBAE" colspan="3" class="BDJLabelText" style="padding-left:15px;height:25px;">Expected Salary:</td>
            <td align="left" width="533" bgcolor="#F5E1D3" class="BDJBlackColorText">
			<%
			If arrPersonal(16,0) <> "" Then
			   Response.Write("Tk. " & arrPersonal(16,0))
			End If			
			%>
			</td>
            </tr>			
			
            <tr> 
            <td align="left" bgcolor="#F5CBAE" colspan="3" class="BDJLabelText" style="padding-left:15px;height:25px;">Notice for joining before:</td>
            <td align="left" width="533" bgcolor="#F5E1D3" class="BDJBlackColorText">
			<%
			If arrPersonal(18,0) <> "day" Then
			   Response.Write(arrPersonal(18,0) & " days.")
			End If
			%>
			</td>
            </tr>
			
          	<tr> 
            <td align="left" bgcolor="#F5CBAE" colspan="3" class="BDJLabelText" style="padding-left:15px;height:25px;">Source of Application:</td>
            <td align="left"  width="533" bgcolor="#F5E1D3" class="BDJBlackColorText">  
			<%
			'Select Case arrPersonal(19,0)
				  ' Case	"Newspaper"
'				   		Response.Write("Newspaper Advertisement.")
'				   Case	"Website"
'				   		Response.Write("Web Site Advertisement.")
'				   Case	"Friend"
'				   		Response.Write("From a Friend.")
'				   Case	"Contact"
'				   		Response.Write("Contacting Banglalink Directly.")
'				   Case	"Banglalinkperson"
'				   		Response.Write("Banglalink person.")
			'End Select
			
			Response.Write(arrPersonal(19,0))
			%>
			</td>
            </tr>
			
          	<tr>
            <td align="left" bgcolor="#F5CBAE" colspan="3" class="BDJLabelText" style="padding-left:15px;height:25px;">Do you have relative in Banglalink?</td>
            <td align="left" class="BDJBlackColorText" bgcolor="#F5E1D3">
			<%
			If arrPersonal(28,0) <> "" Then
			   If CBool(arrPersonal(28,0)) = True Then
			      Response.Write("Yes")
			   Else
			      Response.Write("No")
			   End If	  
			End If
			%>
			</td>
            </tr>          	
			<%If arrPersonal(28,0) <> "" Then%>
			     <%If CBool(arrPersonal(28,0)) = True Then%>
				      <tr>
                      <td align="right" bgcolor="#F5CBAE" colspan="3" class="BDJLabelText" style="height:25px;"></td>
                      <td align="left" class="BDJBlackColorText" bgcolor="#F5E1D3">
			          <%			
			           Response.Write("Relative Name : " & arrPersonal(29,0) & "<br>") 
					    Response.Write("Designation : " & arrPersonal(45,0) & "<br>") 
				       Response.Write("Relationship : " & arrPersonal(30,0)) 
			     	  %>
					  </td>		  			 
					  </tr>
				 <%End If%>
			<%End If%>						
<!--          	<tr>
            <td align="left" bgcolor="#F5CBAE" colspan="3" class="BDJLabelText" style="padding-left:15px; height:25px;">
			Have you been interviewed before in Banglalink ?
			</td>
            <td align="left" class="BDJBlackColorText" bgcolor="#F5E1D3">
			<%
			'If arrPersonal(31,0) <> "" Then
'			   If CBool(arrPersonal(31,0)) = True Then
'			      Response.Write("Yes")
'			   Else
'			   	  Response.Write("No")
'			   End If
'			End If
			%>			</td>
            </tr>-->
			
			<%If arrPersonal(31,0) <> "" Then%>
			     <%If CBool(arrPersonal(31,0)) = True Then%>
          	          <tr>
                      <td align="right" bgcolor="#F5CBAE" style="height:25px;" colspan="3" class="BDJLabelText">&nbsp;</td>
            		  <td align="left" class="BDJBlackColorText" bgcolor="#F5E1D3">
					  <%
					    If IsDate(arrPersonal(33,0)) = True Then 
						   strInterviewDate = MonthName(Month(arrPersonal(33,0))) & ", " & Year(arrPersonal(33,0))
						End If
						Response.Write("Position : " & arrPersonal(32,0) & "<br>")
						Response.Write("Interview Date : " & strInterviewDate)'Mid(FormatDateTime(arrPersonal(46,0),1), InStr(FormatDateTime(arrPersonal(46,0),1), ", ")+1))																
					  %>
					  </td>
            		  </tr>			
				<%End If%>
			<%End If%>
          <!--	<tr>
            <td align="left" bgcolor="#F5CBAE" colspan="3" class="BDJLabelText" style="padding-left:15px; height:25px;">
			Have you ever suffered from serious illness ?
			</td>
            <td align="left" class="BDJBlackColorText" bgcolor="#F5E1D3">
			<%
'			If arrPersonal(24,0) = "" Then
'			   Response.Write("No")
'			Else
'			   Response.Write(arrPersonal(24,0))
'			End If   
			%>
			</td>
            </tr>-->
			<%
		 	  Dim strJobLocation
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
			%>          	
			<tr>
          	<td align="left" bgcolor="#F5CBAE" colspan="3" class="BDJLabelText" style="padding-left:15px; height:25px;">Preferred Job Location</td>
          	<td align="left" class="BDJBlackColorText" bgcolor="#F5E1D3"><%=strJobLocation%></td>
       	    </tr>			
        </table>
		</td>
    	</tr>
  </table> 
</FORM>

<FORM  method ="post" name="personal" action="application.asp#S">
<table width="86%" border="0" cellspacing="1" cellpadding="2" align="center" bgcolor="#F47820">
   <!--	<tr> 
    <td height="31" colspan="3" bgcolor="#F47820" class="BDJSectionHeadLine" style="padding-left:15px;">Skills & Achievements</td>
    <td height="31" bgcolor="#F47820" align="right">
	<input type="hidden" name="ID" value="<%'=ID%>">
	<input type="hidden" name="PASS" value="<%'=PASS%>">
	<input type="submit" name="psubmit" value="Edit" class="button2" style="cursor:hand; width:100;">
	</td>
    </tr>-->

	<tr> 
    <td colspan="4" bgcolor="#F5CBAE"  class="BDJLabelText" style="padding-left:10px; height:25px;">Academic Distinctions :</td>
    </tr>
	
	<tr> 
    <td colspan="4" bgcolor="#F5E1D3" style="height:50px;"  class="BDJBlackColorText">
	<%
	If arrPersonal(35,0) <> "" And IsNull(arrPersonal(35,0)) = False Then
	   Response.Write(arrPersonal(35,0))
	Else
	   Response.Write("NA") 	 
	End If
	%>
	</td>
	</tr>
	
	<!--tr bgcolor="#F3F3F3"><td colspan="4" height="2">&nbsp;</td></tr-->
						
	<tr> 
    <td colspan="4" bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:10px; height:25px;">Extra curricular activities :</td>
    </tr>
    	
	<tr> 
    <td colspan="4" bgcolor="#F5E1D3"  class="BDJBlackColorText" style="height:50px;">
    <%If arrPersonal(13,0) <> "" and IsNull(arrPersonal(13,0)) = False Then%>
       	 <%=arrPersonal(13,0) %> 
    <%Else%>
       	 <%="NA"%>
    <%End If%>
    </td>
    </tr>
    	
	<!--tr bgcolor="#F3F3F3"><td colspan="4" height="2">&nbsp;</td></tr-->
    	
	<!--<tr> 
    <td colspan="4" bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:10px; height:25px">Language Skills :</td>
    </tr>
    	
	<tr> 
    <td colspan="4" bgcolor="#F5E1D3" style="height:30px;"class="BDJBlackColorText"> -->
    <%
	' If Not arrPersonal(36,0) = "" And IsNull(arrPersonal(36,0)) = False Then
'	    arrLanguage1 = Split(arrPersonal(36,0), ",")
'        Response.Write(arrLanguage1(0))
'	    If InStr(arrPersonal(36,0), "1") > 0 Then
'       	   Response.Write(" : " & "Excellent.")
'		End If
'		
'		If InStr(arrPersonal(36,0),"2") > 0 Then
'		   Response.Write(" : " & "Good.")
'		End If 	
'		
'		If InStr(arrPersonal(36,0),"3") > 0 Then
'		   Response.Write(" : " & "Average.")
'		End If		
'		
'		If InStr(arrPersonal(36,0),"4") > 0 Then
'		   Response.Write(" : " & "Poor.")
'		End If		
'		'If InStr(arrPersonal(49,0), "5") > 0 Then
'		'   Response.Write(" : " & "Fluent - social and business")
'		'End If			
'		'If InStr(arrPersonal(49,0), "6") > 0 Then
'		'   Response.Write( " : " & "Native")
'		'End If			
'	    Response.Write("&nbsp;&nbsp;")     				
'	 End If
'		 
'	 If Not arrPersonal(37,0) = "" And IsNull(arrPersonal(37,0)) = False Then
'	    arrLanguage1 = Split(arrPersonal(37,0), ",")
'        Response.Write(arrLanguage1(0))
'	    If InStr(arrPersonal(37,0), "1") > 0 Then
'       	   Response.Write(" : " & "Excellent.")
'		End If
'		If InStr(arrPersonal(37,0),"2") > 0 Then
'		   Response.Write( " : " & "Good.")
'		End If 	
'		If InStr(arrPersonal(37,0),"3") > 0 Then
'		   Response.Write(" : " & "Average.")
'		End If		
'		If InStr(arrPersonal(37,0),"4") > 0 Then
'		   Response.Write( " : " & "Poor.")
'		End If
'		
'		'If InStr(arrPersonal(50,0), "5") > 0 Then
'		'   Response.Write( " : " & "Fluent - social and business")
'		'End If			
'		'If InStr(arrPersonal(50,0), "6") > 0 Then
'		'   Response.Write(" : " & "Native")
'		'End If	
'		Response.Write("&nbsp;&nbsp;")			
'	 End If				 
'
'	 If Not arrPersonal(38,0) = "" And IsNull(arrPersonal(38,0)) = False Then
'	    arrLanguage1 = Split(arrPersonal(38,0), ",")
'        Response.Write(arrLanguage1(0))
'		If InStr(arrPersonal(38,0), "1") > 0 Then
'           Response.Write(" : " & "Excellent.")
'		End If
'		If InStr(arrPersonal(38,0),"2") > 0 Then
'		   Response.Write(" : " & "Good.")
'		End If 	
'		If InStr(arrPersonal(38,0),"3") > 0 Then
'		   Response.Write(" : " & "Average.")
'		End If		
'		If InStr(arrPersonal(38,0),"4") > 0 Then
'		   Response.Write(" : " & "Poor.")
'		End If		
'		'If InStr(arrPersonal(51,0), "5") > 0 Then
'		'   Response.Write(" : " & "Fluent - social and business")
'		'End If			
'		'If InStr(arrPersonal(51,0), "6") > 0 Then
'		'   Response.Write(" : " & "Native")
'		'End If
'		Response.Write("&nbsp;&nbsp;")			
'	End If		 
	%>
   <!--</tr>-->
    <%'If arrComputerSkill(0,0) <> "Nothing" Then%>
   	     <!--<tr> 
         <td colspan="4" bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:10px; height:25px;">Computer Literacy :</td>	
    	 </tr>
		 
		 <tr>
		 <td colspan="4" bgcolor="#F5E1D3" style="height:30px;" class="BDJBlackColorText">-->
		 <%
		 	'Dim strComputerSkill
'			strComputerSkill = ""
'			For i=0 To UBound(arrComputerSkill,2)
'			    If strComputerSkill = "" Then
'				   strComputerSkill = arrComputerSkill(0,i)
'				Else
'				   strComputerSkill = strComputerSkill & "," & arrComputerSkill(0,i)  
'				End If  
'			Next
'			If strComputerSkill = "-1" Then
'			   Response.Write("No Computer Literacy.")
'			Else   
'			   Response.Write(strComputerSkill)
'			End If
		 %>
		 </td>
		 </tr>
	<%'End If%>	 
</table>
</FORM>
