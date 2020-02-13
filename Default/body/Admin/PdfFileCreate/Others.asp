<br>
<%If arrProEducation(0,0) = "Nothing" Then%>
	 <FORM  method ="post" name="app_pedu" action="app_pedu.asp">
	 <table width="86%" border="0" cellspacing="0" cellpadding="1" align="center" bgcolor="#F47820">
	 	   <tr>
		   <td height="32" class="BDJSectionHeadLine" style="padding-left:15px;">No Professional Qualification Submitted by Applicant.</td>
	  	   <td align="right">
		   <INPUT type="hidden" name="ID" value="<%=ID%>">
		   <INPUT type="hidden" name="PASS" value="<%=PASS%>">
            <%if admin = "" then%>
		   <INPUT type="submit" name="pedu" value="Add" style="cursor:hand; width:100;" class="button2">
            <%end if%>	
		   </td>
		   </tr>
	 </table>
	 </FORM>	
<%Else%>
    <table border="0" width="86%" align="center" cellspacing="1" cellpadding="2" bgcolor="#F47820">
		<FORM method ="post" name="frmProQualification" id="frmProQualification" action="app_pedu.asp">
    	<tr > 
        <td height="20" colspan="4" class="BDJSectionHeadLine" style="padding-left:15px;">Professional Qualification</td>
        <td align="right">		
		<INPUT type="hidden" name="ID" value="<%=ID%>">
		<INPUT type="hidden" name="PASS" value="<%=PASS%>">
		<INPUT type="hidden" name="txtBlockName" id="txtBlockName" value="ProQualification">
         <%if admin = "" then%>
		<INPUT type="submit" name="cmdEditProQualification" value="Edit" style="cursor:hand; width:50px;" class="button2">
		<INPUT type="submit" name="cmdDeleteProQualification" value="Delete" style="cursor:hand; width:50px;" class="button2" onClick="return SetAction_Delete('<%=UBound(arrProEducation,2)%>', 'ProQualification');">
		 <%end if%>
        </td>
        </tr>
				
		<tr bgcolor="#F5CBAE" class="BDJBlackColorText"> 
        <td height="25" colspan="2" align="center">Name of Degree/Certificate</td>        
		<td align="center">Place</td>
        <td width="12%" align="center">Year</td>
        <td align="center">Subjects</td>
        </tr>        
		<%For i=0 To UBound(arrProEducation,2)%> 
   			  <tr class="BDJBlackColorText"> 
              <td width="3%" style="height:25px;" align="center" bgcolor="#F5E1D3">
			  <%if admin = "" then%>
              <INPUT type="checkbox" name="chkProQualification" id="chkRecordItemProQualification<%=i%>" value="<%=arrProEducation(1,i)%>">
			   <%end if%>
              </td>			  
              <td width="24%" style="height:25px;" align="center" bgcolor="#F5E1D3"><%=arrProEducation(2,i)%></td>
              <td width="27%" align="center" bgcolor="#F5E1D3"><%=arrProEducation(3,i)%></td>
              <td align="center" bgcolor="#F5E1D3"><%=arrProEducation(4,i)%></td>
              <td width="34%" align="center" bgcolor="#F5E1D3"><%=arrProEducation(5,i)%></td>
              </tr>   			  			  
		<%Next%> 
		<tr class="BDJBlackColorText">
   		<td colspan="5" align="left" bgcolor="#F5E1D3" style="height:25px;">
		<font face="Verdana, Arial, Helvetica, sans-serif" size="1" color="#000000">
		<SPAN class="BDJStar">*</SPAN>&nbsp;To delete your Professional Qualification, select a record and click  the delete button.
		</font>			  
		</td>
	    </tr>		
		</FORM>        
    </table>
<%End If%>
<br>
<%If arrTraining(0,0) = "Nothing" then%> 
	 <FORM  method ="post" name="app_pedu" action="app_pedu.asp">
	 <table width="86%" border="0" cellspacing="0" cellpadding="1" align="center" bgcolor="#F47820">
		 <tr>
		 <td height="32" class="BDJSectionHeadLine" style="padding-left:15px;">
		 No Training Information Submitted by User.		 </td>
		 <td align="right">
		 <INPUT type="hidden" name="ID" value="<%=ID%>">
		 <INPUT type="hidden" name="PASS" value="<%=PASS%>">
		  <%if admin = "" then%>
         <INPUT type="submit" name="pedu" value="Add" style="cursor:hand; width:100;" class="button2">	
          <%end if%>
		 </td>
		 </tr>
	 </table>
	 </FORM>	
<%Else%>	  
	<table align="center" width="86%" cellpadding="2" cellspacing="1" bgcolor="#F47820">
	 <FORM  name="frmTraining" id="frmTraining" method="post" action="app_pedu.asp">		
		<tr>
		<td colspan="5">
	    <table width="100%" cellpadding="0" cellspacing="0" align="center">
			<tr bgcolor="#F47820">
			<td width="76%" height="25" align="left" class="BDJSectionHeadLine" style="padding-left:15px;">Perticipated Training</td>
			<td width="24%" align="right">		  	
			<INPUT type="hidden" name="ID" value="<%=ID%>">
			<INPUT type="hidden" name="PASS" value="<%=PASS%>">
			<INPUT type="hidden" name="txtBlockName" id="txtBlockName" value="Training">	
             <%if admin = "" then%>		
			<INPUT type="submit" name="cmdEditTraining" id="cmdEditTraining" value="Edit" style="cursor:hand; width:50px;" class="button2">
			<INPUT type="submit" name="cmdDeleteTraining" id="cmdDeleteTraining" value="Delete" style="cursor:hand; width:50px;" class="button2" onClick="return SetAction_Delete('<%=UBound(arrTraining,2)%>', 'Training');">			
			 <%end if%>
            </td>
			</tr>
	    </table>
		</td>
		</tr>
		
		<%For i = 0 To UBound(arrTraining,2)%>
			<tr>
			<td  bgcolor="#F5CBAE" align="center" style="font-size:12px; font-weight:bold; padding-top:5px; padding-bottom:5px; height:25px;">&nbsp;</td>
			<td colspan="4" align="center"  bgcolor="#F5E1D3" style="font-size:12px; font-weight:bold; padding-top:5px; padding-bottom:5px; height:25px;">
			 <%if admin = "" then%>
            <INPUT type="checkbox" name="chkTraining" id="chkRecordItemTraining<%=i%>" value="<%=arrTraining(1,i)%>">
             <%end if%>
			<U>Training :<%=i+1%></U>
			</td>
			</tr>
				
			<tr>
			<td width="19%" height="24" bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:15px; height:25px;">Training Title :</td>
			<td colspan="4" class="BDJBlackColorText" align="left" bgcolor="#F5E1D3"><%=arrTraining(2,i)%></td>
			</tr>
				
			<tr>
			<td height="24" class="BDJLabelText" bgcolor="#F5CBAE"  style="padding-left:15px; height:25px;">Training Period : </td>
			<td width="9%" align="left" class="BDJBlackColorText" bgcolor="#F5E1D3">Duration:</td>
		    <td width="10%" class="BDJBlackColorText" bgcolor="#F5E1D3"><%=arrTraining(4,i)%> days</td>
		    <td width="5%" align="right" bgcolor="#F5E1D3" class="BDJBlackColorText">Year:</td>
		    <td width="57%" class="BDJBlackColorText" bgcolor="#F5E1D3"><%=arrTraining(3,i)%></td>
		    </tr>
				
			<tr>
			<td height="24" class="BDJLabelText" bgcolor="#F5CBAE" style="padding-left:15px; height:25px;">Name of Institute: </td>
			<td colspan="4" class="BDJBlackColorText" bgcolor="#F5E1D3"><%=arrTraining(5,i)%></td>
		    </tr>
				
			<tr>
			<td height="24" class="BDJLabelText"  bgcolor="#F5CBAE" style="padding-left:15px; height:25px;">City:</td>
			<td colspan="4" class="BDJBlackColorText" bgcolor="#F5E1D3"><%=arrTraining(6,i)%></td>
		    </tr>
				
			<tr>
			<td height="24" class="BDJLabelText" bgcolor="#F5CBAE"  style="padding-left:15px; height:25px;">Country:</td>
			<td colspan="4" class="BDJBlackColorText" bgcolor="#F5E1D3"><%=arrTraining(7,i)%></td>
		    </tr>									
		<%Next%>
		<tr>
		<td colspan="5" align="left" bgcolor="#F5E1D3" style="height:25px; padding-left:10px;">
		<font face="Verdana, Arial, Helvetica, sans-serif" size="1" color="#000000">
		<SPAN class="BDJStar">*</SPAN>&nbsp;To delete your Training information, select a record and click  the delete button.
		</font>			  			
		</td>
		</tr>							
	 </FORM>			
</table>	  		
<%End If%>
<BR>
<%If arrPersonal(0,0) <> "Nothing" Then%>
     <%If arrPersonal(34,0) <> "" Or IsNull(arrPersonal(34,0)) <> True Then%>
	      <%If CBool(arrPersonal(34,0)) = False Then%>
			   <%If arrExperience(0,0) = "Nothing" then %>
				    <FORM  method ="post" name="app_exp" action="app_exp.asp">
				    <table width="86%" border="0" cellspacing="0" cellpadding="1" align="center" bgcolor="#F47820">
						<tr>
					  	<td height="31" class="BDJSectionHeadLine" style="padding-left:15px;">No Experience Submitted by Applicant.</td>
					  	<td align="right">
					  	<input type="hidden" name="ID" value="<%=ID%>">
					  	<input type="hidden" name="PASS" value="<%=PASS%>">
					  	 <%if admin = "" then%>
                        <input type="submit" name="pedu" value="Add" style="cursor:hand; width:100;" class="button2">	
					  	 <%end if%>
                        </td>
					  	</tr>
				  	</table>
				  	</FORM>	
			   <%Else%> 
				    <table width="86%" align="center" cellpadding="2" cellspacing="1" bgcolor="#F47820">
	      		    <FORM name="frmExperience" id="frmExperience" method="post" action="app_exp.asp">		  
				    <tr>
				    <td colspan="5">
					<table width="100%" align="right" border="0" cellpadding="0" cellspacing="0">
						<tr>
						<td width="76%" align="left" class="BDJSectionHeadLine" style="padding-left:15px;height:25px;">
						Work Experience						</td>
						<td width="24%" align="right">
						<INPUT type="hidden" name="ID" value="<%=ID%>">
						<INPUT type="hidden" name="PASS" value="<%=PASS%>">
						<INPUT type="hidden" name="txtBlockName" id="txtBlockName" value="Experience">		
                         <%if admin = "" then%>				
						<INPUT type="submit" name="cmdEditWorkExperience" id="cmdEditWorkExperience" value="Edit" style="cursor:hand; width:50px;" class="button2">
						<INPUT type="submit" name="cmdDeleteWorkExperience" id="cmdDeleteWorkExperience" value="Delete" style="cursor:hand; width:50px;" class="button2" onClick="return SetAction_Delete('<%=UBound(arrExperience,2)%>', 'Experience');">
                         <%end if%>
						</td>
						</tr>
					</table>
					</td>
				    </tr>
					<%For i=0 To UBound(arrExperience,2)%>		  
						  <tr>
						  <td width="22%" bgcolor="#F5CBAE" align="center"  style="height:25px;">&nbsp;</td>
					      <td bgcolor="#F5E1D3"  colspan="4" align="center" style="font-size:12px; font-weight:bold; padding-top:10px;">
						  <%if admin = "" then%>
                          <INPUT type="checkbox" name="chkExperience" id="chkRecordItemExperience<%=i%>" value="<%=arrExperience(1,i)%>">
                           <%end if%>
						  <u>Work Experience :<%=i+1%></u>
						  </td>
			         	  </tr>
					  
						  <tr>
						  <td height="20" bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:15px; height:25px;">Area of Experience :</td>
						  <td colspan="4" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrExperience(9,i)%></td>
						  </tr>
							
						  <tr>
						  <td bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:15px; height:25px;">Company Name :</td>
						  <td colspan="4" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrExperience(2,i)%></td>
						  </tr>
							
						  <tr>
						  <td bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:15px; height:25px;">Position Held: </td>
						  <td colspan="4" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrExperience(3,i)%></td>
						  </tr>

						<!--  <tr>
						  <td bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:15px; height:25px;">Position as Per Hierarchy: </td>
						  <td colspan="4" bgcolor="#F5E1D3" class="BDJBlackColorText"><%'=arrExperience(13,i)%></td>
						  </tr>-->
														
						  <tr>
						  <td bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:15px; height:25px;">Company Location: </td>
						  <td colspan="4" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrExperience(6,i)%></td>
						  </tr>
							
						  <tr>
						  <td bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:15px; height:25px;">Industry:</td>
						  <td colspan="4" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrExperience(4,i)%></td>
						  </tr>
							
						  <tr>
						  <td bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:15px; height:25px;">Served Form: </td>
						  <td width="20%" bgcolor="#F5E1D3" class="BDJBlackColorText">
							<%
							If IsNull(arrExperience(7,i)) = False Or arrExperience(7,i) <> "" Then
							   Response.Write(MonthName(Month(arrExperience(7,i))) & "," & Year(arrExperience(7,i)))	     
							End If
							%>						  </td>
						  <td width="9%" bgcolor="#F5E1D3" class="BDJLabelText">Serve Till:</td>
						  <td width="49%" colspan="2" bgcolor="#F5E1D3" class="BDJBlackColorText">
						  <%
							'Response.Write("B=" & arrExperience(8,i))
							If arrExperience(10,i) <> "" Then
							   If CBool(arrExperience(10,i)) = True Then
								  Response.Write("Continuing")
							   Else
									if IsDate(Trim(arrExperience(8,i))) then	
										  Response.Write(MonthName(Month(arrExperience(8,i))) & "," & Year(arrExperience(8,i))) 	  
									end if
							   End If
							Else
								if IsDate(Trim(arrExperience(8,i))) then	
									   Response.Write(MonthName(Month(arrExperience(8,i))) & "," & Year(arrExperience(8,i)))
								end if
							End If
						  %>						  </td>
						  </tr>
							
						  <tr>
						  <td bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:15px; height:25px;">Major Responsibilities:</td>
						  <td colspan="4" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrExperience(5,i)%></td>
						  </tr>
							
						  <tr>
						  <td height="20" bgcolor="#F5CBAE" class="BDJLabelText" style="padding-left:15px; height:25px;">Experience Type: </td>
						  <td colspan="4" bgcolor="#F5E1D3" class="BDJBlackColorText"><%=arrExperience(12,i)%></td>
						  </tr>			
					<%Next%>
					<tr bgcolor="#F3F3F3">
					<td colspan="5" height="20" bgcolor="#F5E1D3" align="left" style="padding-left:10px; height:25px;">
					<font face="Verdana, Arial, Helvetica, sans-serif" size="1" color="#000000">
					<SPAN class="BDJStar">*</SPAN>&nbsp;To delete your Experience information, select a record and click  the delete button.					</font>					</td>
					</tr>									
					</FORM>
				  </table>
			   <%End If%>
		   <%End If%>	   
	 <%End If%>
<%End If%>
<BR>
<%If arrPersonal(0,0) <> "Nothing" Then%>
     <%If arrPersonal(25,0) = "" Or IsNull(arrPersonal(25,0)) = True Then%>
          <FORM  method ="post" name="app_exp" action="app_exp.asp">
  	      <table width="86%" border="0" cellspacing="0" cellpadding="1" align="center" bgcolor="#F47820">
			  <tr>
			  <td height="32" class="BDJSectionHeadLine" style="padding-left:15px;">No Preferred Work area in Banglalink Submitted by Applicant.</td>
			  <td align="right">
			  <INPUT type="hidden" name="ID" value="<%=ID%>">
			  <INPUT type="hidden" name="PASS" value="<%=PASS%>">
			   <%if admin = "" then%>
              <INPUT type="submit" name="pedu" value="Add" style="cursor:hand; width:100;" class="button2">	
               <%end if%>
			  </td>
			  </tr>
          </table>
	      </FORM>	
	 <%Else%>
	 	  <%
		  %>
	      <table width="86%" align="center" cellpadding="2" cellspacing="1" bgcolor="#F47820">
			  <FORM  method ="post" name="exp" action="app_exp.asp">		  
			  <tr bgcolor="#F47820">
			  <td width="75%" height="32" align="left" class="BDJSectionHeadLine" style="padding-left:15px;">Preferred Work area in Banglalink</td>
			  <td width="25%" colspan="3" align="right">
			  <input type="hidden" name="ID" value="<%=ID%>">
			  <input type="hidden" name="PASS" value="<%=PASS%>">
			  <%if admin = "" then%>
              <input type="submit" name="expsubmit" value="Edit" style="cursor:hand; width:100;" class="button2">
               <%end if%>
			  </td>
			  </tr>
			  </FORM>
		  	  <tr bgcolor="#F5E1D3">
		      <td colspan="4" class="BDJBlackColorText" style="padding-left:15px; height:40px;">
			  <%			 
			  If arrPersonal(25,0) <> "" Then
				 If InStr(arrPersonal(25,0), ",") > 0 Then
				    strSQL = "SELECT SubDepartment FROM BLSubDepartment WHERE SubDepCode IN (" & arrPersonal(25,0) & ")"
				 Else
					strSQL = "SELECT SubDepartment FROM BLSubDepartment WHERE SubDepCode=" & arrPersonal(25,0)
				 End If		  
				 'ValuePrint strSQL , "strSQL"
				 arrWorkArea = objLookUp.RetrieveData(strSQL, errLog)
				 ErrorMessage "1226", errLog
			  
				 Dim strWorkArea
				 strWorkArea = ""
				 
				 If arrWorkArea(0,0) <> "Nothing" Then
					 For i = 0 To UBound(arrWorkArea,2)
						 If strWorkArea = "" Then
							strWorkArea = arrWorkArea(0,i)
						 Else
							strWorkArea = strWorkArea & ", " & arrWorkArea(0,i)
						 End If
					 Next
					 Response.Write(strWorkArea)
				 End If
			  End If
			  %>
			  </td>
		      </tr>			      
		  </table>	  
	 <%End If%>	 
<%End If%>
<%
strSQL = "SELECT [ReferenceID], [Name], [Address], [Designation], [Organization], [Phone], [Email], [Relationship], [ReferenceType] FROM Reference WHERE ID=" & ID
arrReference = objLookUp.RetrieveData(strSQL, errLog)
ErrorMessage "1251", errLog		  	
%>

<%If arrReference(0,0) = "Nothing" Then%>
     <FORM  method ="post" name="app_exp" action="app_exp.asp">
  	 <table width="86%" border="0" cellspacing="0" cellpadding="1" align="center" bgcolor="#F47820">
		 <tr>
		 <td height="33" class="BDJSectionHeadLine" style="padding-left:15px;">No Reference Information Submitted by Applicant.</td>
		 <td align="right">
		 <INPUT type="hidden" name="ID" value="<%=ID%>">
		 <INPUT type="hidden" name="PASS" value="<%=PASS%>">
		  <%if admin = "" then%>
         <INPUT type="submit" name="pedu" value="Add" style="cursor:hand; width:100;" class="button2">	
          <%end if%>
		 </td>
		 </tr>
     </table>
	 </FORM>
<%Else%>
	 <%
	   For i = 0 To UBound(arrReference,2)
	   	   'ACADEMIC REFERENCE:	
	   	   If arrReference(8,i) = "1" Then
	          strReferenceID1 = arrReference(0,i)
			  strRName1 = arrReference(1,i)
			  strRAddress1 = arrReference(2,i)
			  strRDesignation1 = arrReference(3,i)
			  strROrganization1 = arrReference(4,i)
			  strRPhone1 = arrReference(5,i)
			  strREmail1 = arrReference(6,i)
			  strRRelationship1 = arrReference(7,i)			  
		   End If
		   'PRESENT EMPLOYER REFERENCE:
	   	   If arrReference(8,i) = "2" Then
	          strReferenceID2 = arrReference(0,i)
			  strRName2 = arrReference(1,i)
			  strRAddress2 = arrReference(2,i)
			  strRDesignation2 = arrReference(3,i)
			  strROrganization2 = arrReference(4,i)
			  strRPhone2 = arrReference(5,i)
			  strREmail2 = arrReference(6,i)
			  strRRelationship2 = arrReference(7,i)			  
		   End If
		   'PREVIOUS EMPLOYER REFERENCE:   	  
	   	   If arrReference(8,i) = "3" Then
	          strReferenceID3 = arrReference(0,i)
			  strRName3 = arrReference(1,i)
			  strRAddress3 = arrReference(2,i)
			  strRDesignation3 = arrReference(3,i)
			  strROrganization3 = arrReference(4,i)
			  strRPhone3 = arrReference(5,i)
			  strREmail3 = arrReference(6,i)
			  strRRelationship3 = arrReference(7,i)			  
		   End If	   
	   Next
	 %>
	 <table border="0" width="86%" align="center" cellpadding="2" cellspacing="1" style="margin-top:10px;background-color:#F47820;">
 	 	 <FORM  method ="post" name="app_exp" action="app_exp.asp">
		 <tr>
		 <td align="left" class="BDJSectionHeadLine" style="background-color:#F47820;color:#FFFFFF;padding-left:15px;">
		 Reference		 </td>
		 <td align="left" class="BDJSectionHeadLine" style="background-color:#F47820;color:#FFFFFF">&nbsp;</td>
		 <td align="left" class="BDJSectionHeadLine" style="background-color:#F47820;color:#FFFFFF">&nbsp;</td>
		 <td align="right" class="BDJSectionHeadLine" style="background-color:#F47820;color:#FFFFFF">
		 <input type="hidden" name="ID" value="<%=ID%>">
		 <input type="hidden" name="PASS" value="<%=PASS%>">
		  <%if admin = "" then%>
         <input type="submit" name="expsubmit" value="Edit" style="cursor:hand; width:100;" class="button2">
          <%end if%>		  
		 </td>
 	 	 </tr>
		 </FORM>
		 <tr class="BDJLabelText">
		 <td width="25%" align="center" bgcolor="#F5CBAE" style="height:25px;">&nbsp;</td>
	
		 <td width="25%" bgcolor="#F5E1D3" align="center">
		 <!--<U>Academic Reference</U>-->		 </td>	
		 <td width="25%" bgcolor="#F5E1D3" align="center">
		<!-- <U>Present Employer Reference</U>	-->	 </td>
		
		<td width="25%" bgcolor="#F5E1D3" align="center">
		<!--<U>Previous Employer Reference</U>-->		</td>
	    </tr>
		
		<tr class="BDJBlackColorText">
		<td width="25%" height="25" bgcolor="#F5CBAE" align="left" class="BDJLabelText" style="padding-left:10px;">Name</td>
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strRName1%></td>
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strRName2%></td>		
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strRName3%></td>
	    </tr>

		<tr class="BDJBlackColorText">
		<td width="25%" height="25" bgcolor="#F5CBAE" align="left" class="BDJLabelText" style="padding-left:10px;">Address</td>
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strRAddress1%></td>
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strRAddress2%></td>		
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strRAddress3%></td>
		</tr>
	
		<tr class="BDJBlackColorText">
		<td width="25%" height="25" bgcolor="#F5CBAE" class="BDJLabelText" align="left" style="padding-left:10px;">Designation/Profession</td>
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strRDesignation1%></td>
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strRDesignation2%></td>		
		<td width="25%" bgcolor="#F5E1D3" align="ledt"><%=strRDesignation3%></td>
		</tr>

		<tr class="BDJBlackColorText">
		<td width="25%" height="25" bgcolor="#F5CBAE" class="BDJLabelText" align="left" style="padding-left:10px;">Organization/Institute</td>
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strROrganization1%></td>
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strROrganization2%></td>		
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strROrganization3%></td>
		</tr>
	
		<tr class="BDJBlackColorText">
		<td width="25%" height="25" bgcolor="#F5CBAE" class="BDJLabelText" align="left" style="padding-left:10px;">Phone</td>
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strRPhone1%></td>
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strRPhone2%></td>		
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strRPhone3%></td>
		</tr>
	
		<tr class="BDJBlackColorText">
		<td width="25%" height="25" bgcolor="#F5CBAE" class="BDJLabelText" align="left" style="padding-left:10px;">E-Mail</td>
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strREmail1%></td>
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strREmail2%></td>		
		<td width="25%" bgcolor="#F5E1D3" align="left"><%=strREmail3%></td>
		</tr>

		<tr class="BDJBlackColorText">
		<td width="25%" height="25" bgcolor="#F5CBAE" class="BDJLabelText" align="left" style="padding-left:10px;">Relationship</td>
		<td width="25%" bgcolor="#F5E1D3" align="left">
		<%
		Select Case strRRelationship1
			   Case "-1"
			   		Response.Write("")				
			   Case "1"
					 Response.Write("Department Head")
			   Case "2"
					 Response.Write("Lecturer/Instructor")
			   Case "3"
					 Response.Write("Stuff")					 
		End Select					 
		%>
		</td>
		<td width="25%" bgcolor="#F5E1D3" align="left">
		<%
		Select Case strRRelationship2
			   Case "-1"
			   		Response.Write("")				
			   Case "1"
					 Response.Write("Department Head")
			   Case "2"
					 Response.Write("Line Manager/Supervisor")
			   Case "3"
					 Response.Write("Colleague")					 
		End Select					 
		%>		
		</td>			
		<td width="25%" bgcolor="#F5E1D3" align="left">
		<%
		Select Case strRRelationship3
			   Case "-1"
			   		Response.Write("")		
			   Case "1"
					 Response.Write("Department Head")
			   Case "2"
					 Response.Write("Line Manager/Supervisor")
			   Case "3"
					 Response.Write("Colleague")					 
		End Select					 
		%>				
		</td>
		</tr>		
	</table>
<%End If%>