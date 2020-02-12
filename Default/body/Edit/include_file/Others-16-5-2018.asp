<FORM  method ="post" name="others" action="?<%=Encode("Location=Edit&FormAction=others")%>">
	<table class="table-striped" border="0" width="100%" cellpadding="2" cellspacing="1" align="center" bgcolor="#E8EEFA">
  		<tr bgcolor="#E8EEFA"> 
  		<td  colspan="2" align="left" class="BDJSectionHeadLine" style="padding-left:15px;"> 
        <table>
         <tbody>
          <tr> 
           <td width="90%">
     	<img src="images/Other-Information.jpg" width="870" height="27">
         
          <!--#include File = 'HiddenValue.asp' -->       

         </td>
         <td width="10%" align="right">
		<button type="submit" name="psubmit" class="btn btn-danger"  value="Edit">
		    Edit</button>
             </td>
            </tr>
           </tbody>
          </table>
         </td>
            
            </td>
  		</tr>
  		
		<tr> 
    	<td width="35%" valign="top" align="left" bgcolor="" class="BDJLabelText" style="padding-left:15px;height:25px;"> <strong>Experience</strong>	:</td>
    	<td width="65%" valign="top" bgcolor="" class="BDJBlackColorText"><p style="word-wrap:break-word;"><%=strExperience%></p></td>
        </tr>
        <tr>
    	<td width="35%" valign="top" bgcolor="" style="padding-left:15px;height:25px;" class="BDJLabelText">  <strong>Professional Qualification</strong> :</td>
    	<td width="65%" valign="top" bgcolor="" class="BDJBlackColorText">
	<p style="word-wrap:break-word;"><%=strProfessionalQualification%></p>
		</td>
  		</tr>
        

		<tr> 
    	<td width="35%" valign="top" align="left" bgcolor="" class="BDJLabelText" style="padding-left:15px;height:25px;"> <strong>Academic Distinctions</strong></td>
    	<td width="65%" valign="top" bgcolor="" class="BDJBlackColorText"><p style="word-wrap:break-word;"><%=strAcademicDistinctions%></p>   
		</td>
        </tr>
        <tr>
    	<td width="35%" valign="top" bgcolor="" style="padding-left:15px;height:25px;" class="BDJLabelText"><strong>Extra Curricular Activities</strong></td>
    	<td width="65%" valign="top" bgcolor="" class="BDJBlackColorText">
<p style="word-wrap:break-word;">		<%=strExtraCurricularActivities%></p>
		</td>
  		</tr>

		<tr> 
        <td width="35%" valign="top" bgcolor="" align="left" class="BDJLabelText" style="padding-left:15px;height:25px;"> <strong>Computer Skills</strong>	</td>
        <td width="65%" valign="top" bgcolor="" class="BDJBlackColorText"><p style="word-wrap:break-word;"><%=strComputerSkills%></p></td>
        </tr>
        <tr>
        <td width="35%" valign="top" align="left" bgcolor="" class="BDJLabelText" style="padding-left:15px;height:25px;"><strong>Other Disclose</strong></td>
        <td width="65%" valign="top" bgcolor="" class="BDJBlackColorText"><p style="word-wrap:break-word;"><%=strOtherDisclose%></p></td>
  	    </tr>
						
  		<tr> 
    	<td width="23%" valign="top" align="left" bgcolor="" class="BDJLabelText" style="padding-left:15px;height:25px;"></td>
    	<td width="34%" valign="top" bgcolor="" class="BDJBlackColorText">
		
		</td>
    	<td width="23%" valign="top" bgcolor="" class="BDJLabelText"></td>
    	<td width="34%" valign="top" bgcolor="" class="BDJBlackColorText">
			    
		</td>
  		</tr>
		
  		<tr> 
    	<td width="23%" bgcolor="" valign="top" align="left" class="BDJLabelText" style="padding-left:15px;height:25px;">English Language Profeciency:</td>
    	<td width="34%" valign="top" bgcolor="" class="BDJBlackColorText"> <strong>Reading-</strong> <%=strReading%>
               , <strong>Writing-</strong> <%=strWriting%>
               , <strong>Speaking-</strong> <%=strSpeaking%></td>
    	<td width="23%" valign="top" bgcolor="" class="BDJLabelText"></td>
    	<td width="34%" valign="top" bgcolor="" class="BDJBlackColorText"></td>
  		</tr>
	</table>
</FORM>
