
<form method="post" name="form1" id="form1" action="../ViewResume.asp" target="_blank">
	<!--<input type="hidden" name="hidPersonalID" id="hidPersonalID" value="<%'If cvFound = True Then%><%'=TrackNo%><%'Else%>-1<%'End If%>" />-->
	 <table  class="table">
	 
	   <tr>
		 <td width="331"  align="right">Tracking Number</td>
		 <td width="168">
			<input name="txtTrakingNumber" type="text" class="form-control" id="txtTrakingNumber"  size="10" maxlength="100" />			 </td>
		 <td width="353">
			<input type="button" name="btnAdmit" id="btnAdmit" value="View Admit" onClick="ViewAdmit();" class="btn btn-success" />
            &nbsp;&nbsp;
      <input type="button" name="btnView" id="btnView" class="btn btn-primary" value="View Resume" onClick="ViewResume();"  />
            &nbsp;&nbsp;   
            <input type="hidden" id="admin" name="admin" value="true"  />   
            			 </td>
		</tr>
	</table>
</form>
