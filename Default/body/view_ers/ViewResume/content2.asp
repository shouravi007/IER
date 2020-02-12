<%
'Response.End()
If IsPersonal = True Then
%>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
     <tr>
      <td colspan="2" align="left">
      <div id="paraPrintTop">
	<p align="left">
       <!-- <img src="http://ers.bdjobs.com/applications/images/print.png" width="98" height="45" onclick="printIT();"/>&nbsp;&nbsp;&nbsp;	-->
            <!--<img src="http://ers.bdjobs.com/applications/images/close_2.png" width="98" height="45" onclick="closeIT();"/>-->
<!--        <a href="#" style="text-decoration:none;" onclick="javascript:window.close()">
        </a>-->
	</p>
</div>
      </td>
     </tr>
    
      <tr>
        <td width="16%" valign="top">
			<font class="style22"><b><%=Replace(strName,"~"," ")%></b></font>
			<br />
			<font class="style22">
			<%=Replace(strContactAddress,"~",", ")%>
			</font>
			<br />
			<span class="style22">
			<%If strContactPhone <> "" Then%><%=strContactPhone%><%End If%><%If strCellPhone <> "" AND strCellPhone <> "0" Then%><%If strContactPhone <> "" Then%>, <%End If%><%=strCellPhone%><%End If%>
			</span>
			<br />
			<a href="mailto:<%=strEmail%>" class="style22"><%=strEmail%></a>
		</td>
        
        <td width="13%" class="style22" align="right">
        
		
<%
		'If strPhotoName <> "" Then
			'strPhotoPath = "http://207.56.111.185/resumes/photos/Trustbank/P" & intTrakingNo & ".jpg"
			' strPhotoPath = "http://my.bdjobs.com/photos/"&strPhotoName
			 
%>			
<!--			<img alt="Your photo" src="<%'=strPhotoPath%>" width="120" height="120" />
-->            
<%
		'End If

		'If IsPhoto = True Then
			'strPhotoPath = "http://207.56.111.185/resumes/photos/dhakabank/DB" & intTrakingNo & ".jpg"
			'strPhotoPath = "http://ers.bdjobs.com/applications/ImageResize/photos/dhakabank/2016/DB_MTO_"&intTrakingNo&".jpg"
%>
			<img alt="Your photo" src="<%=imgSrc%>" width="120" height="120" />

<%
		'End If
%>
            <br/>
     <p align="right" style="padding-right:0px;">       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Login ID .: <%=intTrakingNo%>

<%
'If admin = "true" Then

'	if arr(0, 0) <> "Nothing" then 
	  
'		for rl = 0 to ubound(arr,2)
'			rollno = "Roll NO : "&arr(0, rl)
'			intRollNumber = arr(0, rl)
%>     
     <!--<br /> 
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%'=rollno%><br />-->

<%'if rollno <> "" and isempty(rollno) = false and isnull(rollno) = false then %>

<%
	
'			If intRollNumber >=1001 and intRollNumber < 6000 Then
%>
				<!--<a class="btn btn-primary" href="ViewAdmit_ezone.asp?admin=true&TrakingNo=<%=Encode(intTrakingNo)%>" target="_blank">View Admit (TSO)</a>-->
<%
			'End If
			
			'If intRollNumber >=6001 Then			
%>
		    	<!--<a class="btn btn-primary" href="ViewAdmit_TO.asp?admin=true&TrakingNo=<%=Encode(intTrakingNo)%>" target="_blank">View Admit (TO)</a>-->
	<%
			'End If

'		next
		        
'	else
	  'rollno = " Roll not found ! "
'	end if 

'end if
%>

     
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
    	</p>
        </td>
      </tr>
     
      <tr>
        <td colspan="2">&nbsp;</td>
        </tr>
    </table></td>
  </tr>
  <tr>
	<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td colspan="2"><span class="style24">Job Application</span><hr align="center" color="#666666" width="100%" style="height:1px;"></td>
      </tr>
	  <tr>
	    <td colspan="2"><strong><%=position%></strong><br /></td>
      </tr>
	  <tr>
	    <td colspan="2">&nbsp;</td>
      </tr>
	  <tr>
		<td colspan="2"><span class="style24">Academic Qualification</span></td>
	  </tr></table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		 <tr><hr align="center" color="#666666" width="100%" style="height:1px;"></tr>
<%          
		If IsAcademic = True Then
		
		 For i=0 To AcademicUB
%>
			 <tr>
			   <td class="style22">
			   <strong>
<% 
If arrDegreeName(i) <> "" Then%> 
 
<%
	If Right(arrDegreeName(i), 3) = "@@@" Then
		strDoctorate = Replace(arrDegreeName(i), "@@@", "")
%>
		Doctoral, <%=strDoctorate%>
<%
	Else
%>
		<%=arrDegreeName(i)%>
<%
	End If

Else
%>
	UNKNOWN
<%
End If
%> 
			   
<%
				If Right(arrSubject(i), 3) = "@@@" Then
				
					strSubject = Replace(arrSubject(i), "@@@", "")
					
				Else
				
					strSubject = arrSubject(i)
					
				End If	
							   
				'  olevel and a level
				If arrDegreeName(i) = "O Level" Or arrDegreeName(i) = "A Level" Then
		
					if arrSQLAcademic_OALevel(0,0) <> "Nothing" Then
						
						response.Write(" in ") 
						
						for a = 0 to ubound(arrSQLAcademic_OALevel,2)
							
							strSubjectOAL	= arrSQLAcademic_OALevel(0,a)
							
							response.Write(strSubjectOAL&", ") 
							
						next
						
					End If
											
				End If ' olevel and a level
				
								
			    If strSubject <> "" And strSubject <> "NA" and strSubject <> "Not Applicable" and strSubject <> "S" Then ' normally subject
				
					Response.Write(" in "& strSubject) 
				
				End If
%>                
			   
			   <%If Right(arrSubject2(i), 3) = "@@@" Then
					strSubject2 = Replace(arrSubject2(i), "@@@", "")
				Else
					strSubject2 = arrSubject2(i)
				End If	
			    
				If strSubject2 <> "S" And strSubject2 <> "0" Then%> and <%= strSubject2 %> <%End If%> 
                &nbsp;<%= arrPassingYear(i) %>  &nbsp;

        		<!--#include File = 'content5.asp' -->
                        
                <%				
					'response.Write(arrAcademicDist(i)&"<br>")
					
					If arrAcademicDist(i) = 0 or arrAcademicDist(i) = "0" Then
					
					else
%>					
						(<%=ssc_hsc_dist_name%>)
<%
					End If
%>
               
               
               
               </strong>
              
			  <br />
			  <%If arrInstitute(i) <> "" Then
			  	strUniversity = Replace(arrUniversity(i), "@***@", ", ")
			  %>
			   	<%=arrInstitute(i)%>, <%If strUniversity <> "" Then%><%=strUniversity%><%End If%>
			   <%End if%>
			   
			   <%If arrResult(i) = 15 Then%>
               <br />
               First division (<%= arrResultPoint(i) %>%)
               <%End If%>
               
			   <%If arrResult(i) = 14 Then%>
               <br />
               Second division (<%= arrResultPoint(i) %>%)
               <%End If%>
               
                <%If arrResult(i) = 13 Then%>
                <br />
               Third division (<%= arrResultPoint(i) %>%)
               <%End If%>
               
               <%If arrResult(i) = 12 Then%>
               <br />
               Appeared
               <%End If%>
               
                <%If arrResult(i) < 12 Then%>
                <br />
               CGPA: <%=arrResultPoint(i)%>
               <%End If%>
               
               </td>
			</tr>
			 
            <tr>
			   <td class="style22"><%=strInstitute%></td>
			</tr>
    
			<tr>
			   <td class="style22">&nbsp;</td>
			</tr>
<%		
		Next
%> 
		</table></td></tr>
		
		<tr>
          <td colspan="4" class="style22">&nbsp;
          
          </td>
        </tr>
<%        
	End If	
		  
	'Response.End()
	
       
'****************************  Academic Qualification End *********************************************************

'****************************  Others Details Start *********************************************************     
%>	
	  <tr>
	    <td>
        <%If strExperience <> "" or strProfessionalQualification <> "" or strAcademicDistinctions <> "" or strExtraCurricularActivities <> "" or strComputerSkills <> "" or strOtherDisclose <> "" or strTraining <> "" Then%>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2"><span class="style24">Others Information</span></td>
          </tr>
        </table>
	    
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tr><td><hr align="center" color="#666666" width="100%" style="height:1px;"></td></tr>
			
			
			<%If strProfessionalCertification <> "" and strProfessionalCertification <> "0" Then%>
			 <tr>
			   <td class="style22"> 
               <strong>Professional Certification</strong>			   
			   </td>
		    </tr>
			<tr>
			   <td class="style22"> 
				<%=strProfessionalCertification%>
            	</td>
		    </tr>
			<tr>
			   <td class="style22">&nbsp;</td>
			</tr>
			<%End If%>			
			
			
			
			
			
			<%If strExperience <> "" Then%>
			 <tr>
			   <td class="style22"> 
               <strong>Experience</strong>			   
			   </td>
		    </tr>
			<tr>
			   <td class="style22"> 
				<%=strExperience%>
            	</td>
		    </tr>
			<tr>
			   <td class="style22">&nbsp;</td>
			</tr>
			<%End If%>
			<%If strProfessionalQualification <> "" Then%>
			 <tr>
			   <td class="style22"> 
               <strong>Professional Qualification</strong>			   
			   </td>
		    </tr>
			
			<tr>
			   <td class="style22"> 
				<%=strProfessionalQualification%>
            	</td>
		    </tr>
			<tr>
			   <td class="style22">&nbsp;</td>
			</tr>
			<%End If%>
            
		<%If strTraining <> "" Then%>
			 <tr>
			   <td class="style22"> 
               <strong>Training Information</strong>			   
			   </td>
		    </tr>
			
			<tr>
			   <td class="style22"> 
				<%=strTraining%>
            	</td>
		    </tr>
			<tr>
			   <td class="style22">&nbsp;</td>
			</tr>
			<%End If%>            
            
			<%If strAcademicDistinctions <> "" Then%>
			 <tr>
			   <td class="style22"> 
               <strong>Academic Distinctions</strong>			   
			   </td>
		    </tr>
			
			<tr>
			   <td class="style22"> 
				<%=strAcademicDistinctions%>
            	</td>
		    </tr>
			<tr>
			   <td class="style22">&nbsp;</td>
			</tr>
			<%End If%>
			<%If strExtraCurricularActivities <> "" Then%>
			 <tr>
			   <td class="style22"> 
               <strong>Extra Curricular Activities</strong>			   
			   </td>
		    </tr>
			
			<tr>
			   <td class="style22"> 
				<%=strExtraCurricularActivities%>
            	</td>
		    </tr>
			<tr>
			   <td class="style22">&nbsp;</td>
			</tr>
			<%End If%>
			<%If strComputerSkills <> "" Then%>
			 <tr>
			   <td class="style22"> 
               <strong>Computer Skills</strong>			   
			   </td>
		    </tr>
			
			<tr>
			   <td class="style22"> 
				<%=strComputerSkills%>
            	</td>
		    </tr>
			<tr>
			   <td class="style22">&nbsp;</td>
			</tr>
			<%End If%>
			<%If strOtherDisclose <> "" Then%>
			 <tr>
			   <td class="style22"> 
               <strong>Other Disclose</strong>			   
			   </td>
		    </tr>
			
			<tr>
			   <td class="style22"> 
				<%=strOtherDisclose%>
            	</td>
		    </tr>
			<tr>
			   <td class="style22">&nbsp;</td>
			</tr>
			<%End If%>
            <tr>
			   <td class="style22">&nbsp;</td>
			</tr>
			<tr>
			   <td class="style22">&nbsp;</td>
			</tr>
	</table>
     <%End If%> 	
    </td> </tr>
    
