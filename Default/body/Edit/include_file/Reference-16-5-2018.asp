<%If arrReference(0,0) = "Nothing" Then%>
     <FORM  method ="post" name="Refference" action="?<%=Encode("Location=Edit&FormAction=Refference")%>">
  	 <table class="table-striped" width="100%" border="0" cellspacing="0" cellpadding="1" align="center" bgcolor="#E8EEFA">
		 <tr>
		 <td height="33" class="BDJSectionHeadLine" style="padding-left:15px;">No Reference Information Submitted by Applicant.</td>
		 <td align="right">
		   <input type="hidden" id="TrackNoNew" name="TrackNoNew" value="<%=TrackNoNew%>"/> 
        <INPUT type="hidden" name="txtTrackingNo" value="<%=TrackNo%>">
		<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">		
                     <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>"  /> 

         <INPUT class="btn btn-danger" type="submit" name="pedu" value="Add" >	
		 </td>
		 </tr>
     </table>
	 </FORM>
<%Else%>



	
<table class="table-striped" width="100%" align="center" cellpadding="2" cellspacing="1" style="margin-top:10px;background-color:#E8EEFA;">
 	 	 <FORM  method ="post" name="Refference" action="?<%=Encode("Location=Edit&FormAction=Refference")%>">
		 <tr>
		 <td colspan="7" align="left" class="BDJSectionHeadLine" style="background-color:#E8EEFA;color:#FFFFFF;padding-left:15px;">
		 <img src="images/Reference.jpg" width="870" height="27">

		 </td>
		 <td align="left" class="BDJSectionHeadLine" style="background-color:#E8EEFA;color:#FFFFFF">&nbsp;</td>
		 <td align="left" class="BDJSectionHeadLine" style="background-color:#E8EEFA;color:#FFFFFF">&nbsp;</td>
		 <td align="right" class="BDJSectionHeadLine" style="background-color:#E8EEFA;color:#FFFFFF">
		   <input type="hidden" id="TrackNoNew" name="TrackNoNew" value="<%=TrackNoNew%>"/> 
        <INPUT type="hidden" name="txtTrackingNo" value="<%=strID%>">
		<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">	
             	 <button type="submit" name="expsubmit" value="Edit"  class="btn btn-danger">
                      Edit </button>		  
		 </td>
 	 	 </tr>
		 </FORM>
		 <tr class="BDJLabelText">
		 <td width="33%" align="center" bgcolor="" style="height:25px;">&nbsp;</td>
	
		 <td width="33%" bgcolor="" align="left">
		 <U>Reference 1</U>		 </td>	
		 <td width="34%" bgcolor="" align="left">
		 <U>Reference 2</U>		 </td>

</tr>
		
		<tr class="BDJBlackColorText">
		<td width="25%" height="25" bgcolor="" align="left" class="BDJLabelText" style="padding-left:10px;">Name</td>
		<td width="25%" bgcolor="" align="left"><%=strRefName%></td>
		<td width="25%" bgcolor="" align="left"><%=strRefName2%></td>		
</tr>

		<tr class="BDJBlackColorText">
		<td width="25%" height="25" bgcolor="" class="BDJLabelText" align="left" style="padding-left:10px;"><font face="Verdana, Arial, Helvetica, sans-serif">Address</font></td>
		<td width="25%" bgcolor="" align="left"><%=strRefAdd%></td>
		<td width="25%" bgcolor="" align="left"><%=strRefAdd2%></td>		
		</tr>
	
		<tr class="BDJBlackColorText">
		<td width="25%" height="25" bgcolor="" class="BDJLabelText" align="left" style="padding-left:10px;">Designation/Profession</td>
		<td width="25%" bgcolor="" align="left"><%=strRefPos%></td>
		<td width="25%" bgcolor="" align="left"><%=strRefPos2%></td>		
		</tr>


	
<tr class="BDJBlackColorText">
		<td width="25%" height="25" bgcolor="" class="BDJLabelText" align="left" style="padding-left:10px;">Phone</td>
		<td width="25%" bgcolor="" align="left"><%=strRefPhone%></td>
		<td width="25%" bgcolor="" align="left"><%=strRefPhone2%></td>		
		</tr>
	
		<tr class="BDJBlackColorText">
		<td width="25%" height="25" bgcolor="" class="BDJLabelText" align="left" style="padding-left:10px;">E-Mail</td>
		<td width="25%" bgcolor="" align="left"><%=strRefEmail%></td>
		<td width="25%" bgcolor="" align="left"><%=strRefEmail2%></td>		
		</tr>

</table>
<%End If%>	      	 
