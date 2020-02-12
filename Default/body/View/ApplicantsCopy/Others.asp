	<!--  <tr>
	    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2"><span class="style24">English Language proficiency</span>
          </td></tr></table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tr><td><hr align="center" color="#666666" width="100%" style="height:1px;"></td></tr>

			 <tr>
			   <td class="style22">
			   <strong>Reading-</strong> <%'=strReading%>
               , <strong>Writing-</strong> <%'=strWriting%>
               , <strong>Speaking-</strong> <%'=strSpeaking%>
               , <strong>Listening-</strong> <%'=strListening%>
			   </td>
		    </tr>-->

		<tr>
	   		 <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                    <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>			
                    <%If strComputerSkill <> "" Then %>
                    
                    <tr>
                    <td><span class="style24">Computer Skills</span></td>
                    </tr>
                </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
             <tr><td><hr align="center" color="#666666" width="100%" style="height:1px;"></td></tr>
                
                <tr>
               <td class="style22"> <%=strComputerSkill%></td>
            </tr>
            <%End IF %>
        </table>	
    </td> </tr>
    





		<tr>
	   		 <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                    <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>			
                    <%If strKeySkill <> "" Then %>
                    
                    <tr>
                    <td><span class="style24">Key Skills</span></td>
                    </tr>
                </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
             <tr><td><hr align="center" color="#666666" width="100%" style="height:1px;"></td></tr>
                
                <tr>
               <td class="style22"><ol><%If InStr(strKeySkill, "S") > 0 Then%><li>A Self Starter with drive & Initiatives  </li><%End If%>
<%If InStr(strKeySkill, "A") > 0 Then%><li>Analytical ability</li> <%End If%>
  <%If InStr(strKeySkill, "I") > 0 Then%><li>Ability to Influence people & gaining Commitment</li><%End If%>    
              <%If InStr(strKeySkill, "T") > 0 Then%><li> A team worker believes in team Commitment</li><%End If%>
			  <%If InStr(strKeySkill, "CR") > 0 Then%><li> A creative person(doing things differently)</li><%End If%></ol>
  <%'=strKeySkill%></td>
            </tr>
            <%End IF %>
        </table>	
    </td> </tr>
    
    



		<tr>
	   		 <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                    <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>			
                    <%If strExperience <> "" Then %>
                    
                    <tr>
                    <td><span class="style24">Experience</span></td>
                    </tr>
                </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
             <tr><td><hr align="center" color="#666666" width="100%" style="height:1px;"></td></tr>
                
                <tr>
               <td class="style22"> <%=strExperience%></td>
            </tr>
            <%End IF %>
        </table>	
    </td> </tr>
    
    
    
    
 
		<tr>
	   		 <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                    <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>			
                    <%If strProfessionalQualification <> "" Then %>
                    
                    <tr>
                    <td><span class="style24">Professional Qualification</span></td>
                    </tr>
                </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
             <tr><td><hr align="center" color="#666666" width="100%" style="height:1px;"></td></tr>
                
                <tr>
               <td class="style22"> <%=strProfessionalQualification%></td>
            </tr>
            <%End IF %>
        </table>	
    </td> </tr>
    
    
    
    

		<tr>
	   		 <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                    <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>			
                    <%If strAcademicDistinctions <> "" Then %>
                    
                    <tr>
                    <td><span class="style24">Academic Distinctions</span></td>
                    </tr>
                </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
             <tr><td><hr align="center" color="#666666" width="100%" style="height:1px;"></td></tr>
                
                <tr>
               <td class="style22"> <%=strAcademicDistinctions%></td>
            </tr>
            <%End IF %>
        </table>	
    </td> </tr>
    


		<tr>
	   		 <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                    <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>			
                    <%If strExtraCurricularActivities <> "" Then %>
                    
                    <tr>
                    <td><span class="style24">Extra Curricular Activities</span></td>
                    </tr>
                </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
             <tr><td><hr align="center" color="#666666" width="100%" style="height:1px;"></td></tr>
                
                <tr>
               <td class="style22"> <%=strExtraCurricularActivities%></td>
            </tr>
            <%End IF %>
        </table>	
    </td> </tr>
    




		<tr>
	   		 <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                    <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>			
                    <%If strOtherDisclose <> "" Then %>
                    
                    <tr>
                    <td><span class="style24">Other Disclose</span></td>
                    </tr>
                </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
             <tr><td><hr align="center" color="#666666" width="100%" style="height:1px;"></td></tr>
                
                <tr>
               <td class="style22"> <%=strOtherDisclose%></td>
            </tr>
            <%End IF %>
        </table>	
    </td> </tr>
    






	  <tr>
	    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2">&nbsp;</td>
          </tr>

			<tr>
			   <td class="style22">&nbsp;</td>
			</tr>
			<tr>
			  <td class="style22" align="center"><input type="button" class="style22" value="Close" onclick="window.close();"></td>
	  </tr>
	</table>	
    </td> </tr>
