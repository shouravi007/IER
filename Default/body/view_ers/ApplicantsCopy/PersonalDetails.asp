
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
			
             <tr>
			   <td class="style22"> 
               <strong>Date of Birth</strong>			   </td>
			   <td class="style22">
			   <strong>:</strong>&nbsp;<%=FormatDateTime(dtmDateOfBirth, 1)%>			   </td>
			</tr>
			
            <tr>
			   <td class="style22"> 
               <strong>Blood Group</strong>			   </td>
			   <td class="style22">
			   <strong>:</strong>&nbsp;<%if strBloodGroup = "S" Then 
			                                Response.Write("N/A")
									     else
										    Response.Write(strBloodGroup) 
										 end if 
			   
			   %>			   </td>
			</tr>
			
            <tr>
			   <td class="style22"> 
               <strong>Gender</strong>			   </td>
			   <td class="style22"><strong>:</strong>
			   <%=strGender%>			   </td>
			</tr>
 <tr>
			   <td class="style22"> 
               <strong>Home District</strong></td>
			   <td class="style22">
			   <strong>:</strong>&nbsp;<%=strHomeDistrict%>	 </td>
			</tr>             
            <tr>
			   <td class="style22"> 
               <strong>Nationality</strong>			   </td>
			   <td class="style22">
			   <strong>:</strong>&nbsp;<%=strNationality%>			   </td>
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
		      <%If strContactPhone <> "" Then%><%=strContactPhone%><%End If%><%If strCellPhone <> "" Then%><%If strContactPhone <> "" Then%>, <%End If%><%=strCellPhone%><%End If%></td>
            </tr>
			
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
%>	
