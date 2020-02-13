<%    
'Response.End()

'**************************** Others Details End ********************************************************* 

'****************************  Personal Details Start *********************************************************     
%>	
	  <tr>
	    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2"><span class="style24">Personal Details</span></td>
          </tr></table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tr><td colspan="2"><hr align="center" color="#666666" width="100%" style="height:1px;"></td></tr>

			 <tr>
			   <td class="style22"> 
               <strong>Father's Name</strong>			   </td>
			   <td class="style22"> 
			   	<strong>:</strong>&nbsp;<%=strFatherName%>			   </td>
			</tr>
			
			 <tr>
			   <td class="style22"> 
               <strong>Mother's Name</strong>			   </td>
			   <td class="style22">
			   <strong>:</strong>&nbsp;<%=strMotherName%>			   </td>
			</tr>
            
            <%if system <> "ksb" then%>
            
			 <tr>
			   <td class="style22"> 
               <strong>Father's Profession</strong>			   </td>
			   <td class="style22"> 
			   	<strong>:</strong>&nbsp;<%=FathersProfession%>			   </td>
			</tr>
			
			 <tr>
			   <td class="style22"> 
               <strong>Mother's Profession</strong>			   </td>
			   <td class="style22">
			   <strong>:</strong>&nbsp;<%=MothersProfession%>			   </td>
			</tr>
			<%end if%>
            
             <tr>
			   <td class="style22"> 
               <strong>Date of Birth</strong>			   </td>
			   <td class="style22">
			   <strong>:</strong>&nbsp;<%=FormatDateTime(dtmDateOfBirth, 1)%>			   </td>
			</tr>
			<%If strBloodGroup <> "" And  strBloodGroup <> "S" Then%>
            <tr>
			   <td class="style22"> 
               <strong>Blood Group</strong>			   </td>
			   <td class="style22">
			   <strong>:</strong>&nbsp;<%=strBloodGroup%>			   </td>
			</tr>
			<%End If%>
            <tr>
			   <td class="style22"> 
               <strong>Gender</strong>			   </td>
			   <td class="style22"><strong>:</strong>
			   <%=strGender%>			   </td>
			</tr>
            
            <tr>
			   <td class="style22"> 
               <strong>Nationlity</strong></td>
			   <td class="style22">
			   <strong>:</strong>&nbsp;<%=strNationality%>	 </td>
			</tr>
            
			<tr>
			   <td class="style22"> 
               <strong>Present District</strong></td>
			   <td class="style22">
			   <strong>:</strong>&nbsp;<%=dist2%>	 </td>
			</tr>            
            
            
            
            <tr>
			   <td class="style22"> 
               <strong>Thana, Home District</strong></td>
			   <td class="style22">
			   <strong>:</strong>&nbsp;<%=strThanaName%>, <%=dist%>	 </td>
			</tr>            
            <%If intNationalID <> "" Then%>
			<%If intNationalID > 0 Then%>
			<tr>
			   <td class="style22"> 
               <strong>National ID</strong>			   </td>
			   <td class="style22">
			   <strong>:</strong>&nbsp;<%=intNationalID%>			   </td>
			</tr>
			<%End If%>
			<%End If%>
            <tr>
			   <td class="style22"> 
               <strong>Marital Status</strong>			   </td>
			   <td class="style22"><strong>:</strong>
			    <%=strMeritalStatus%>
      		   </td>
			</tr>
            
			 <tr>
			   <td class="style22"> 
               <strong>Religion</strong>			   </td>
			   <td class="style22">
			   <strong>:</strong>&nbsp;<%=strReligion%>			   </td>
			</tr>
			
            <tr>
			   <td width="23%" class="style22"> 
               <strong>Permanent Address</strong></td>
			   <td width="77%" class="style22"><strong>:</strong>&nbsp;<%=strPermanentAddress%></td>
            </tr>
			
            <tr>
			   <td width="23%" class="style22"> 
               <strong>Contact Numbers</strong></td>
			   <td width="77%" class="style22"><strong>:</strong>
		      <%If strContactPhone <> "" Then%><%=strContactPhone%><%End If%>
			  <%If strCellPhone <> "" AND strCellPhone <> "0" Then%>
			  	<%If strContactPhone <> "" Then%>, <%End If%>
			  		<b><%=strCellPhone%></b>
				<%End If%>
               </td>
            </tr>
<%if system = "ksb" then%>            
            <tr>
			   <td width="23%" class="style22"> 
               <strong>Quota(If any)</strong></td>
			   <td width="77%" class="style22"><strong>:</strong>&nbsp;<%'=strPermanentAddress%></td>
            </tr>
<%End If%>            
			
            <tr>
			   <td colspan="2" class="style22">&nbsp;</td>
			</tr>
			<tr>
			   <td class="style22" colspan="2">&nbsp;</td>
			</tr>
	</table>	
    </td> </tr>
    
<%    
'Response.End()

'**************************** Personal Details End ********************************************************* 

'****************************  English Language Profeciency Details Start *********************************************************     

If strReading <> "S" OR strWriting <> "S" OR strSpeaking <> "S" Then 
%>	
	  <tr>
	    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2"><span class="style24">English Language Proficiency</span></td>
          </tr></table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tr><td><hr align="center" color="#666666" width="100%" style="height:1px;"></td></tr>

			 <tr>
			   <td class="style22">
			   <strong>Reading-</strong> <%=strReading%>
               , <strong>Writing-</strong> <%=strWriting%>
               , <strong>Speaking-</strong> <%=strSpeaking%>
			   </td>
		    </tr>
			
            <tr>
			   <td class="style22">&nbsp;</td>
			</tr>
			<tr>
			   <td class="style22">&nbsp;</td>
			</tr>
	</table>	
    </td> </tr>

<%
End If
%>    
