

	  <table  class="table-striped"   width="100%" border="0" cellpadding="0" cellspacing="0" >
	    <tr>
		  <td valign="top"></td>
		  </tr>
        <tr>
          <td class="bodyTextHeader">CV Type</td>
          <!--<td class="bodytext">&nbsp;</td>-->
          <td class="bodyTextHeader">Tracking Number </td>
          <!--<td class="bodyTextHeader">&nbsp;</td>-->
           <td class="bodyTextHeader">Roll No</td>
        </tr>
        <tr>
    <td width="13%" valign="top"><select name="rdoCVType" id="rdoCVType" class="form-control" >
      <option value="All" selected="selected">All</option>
      <option value="Shortlisted"<%If strCvtype = "Shortlisted" Then %> selected="selected"<%End If%>>ShortListed</option>
      <option value="NotShortListed"<%If strCvtype = "NotShortListed" Then %> selected="selected"<%End If%>>Not ShortListed</option>
    </select></td>
    <!-- <td width="4%" valign="top" class="bodytext">&nbsp;</td>-->
    <td width="15%" valign="top" ><input name="txtTrakingNumber" type="text"  id="txtTrakingNumber" value="<%=intTrakingNumber%>" class="form-control" size="10" />
    </td>
   <!-- <td width="4%" valign="top" class="bodytext">&nbsp;</td>-->
    <td width="15%" valign="top" ><input name="txtRollNumber" type="text"  id="txtRollNumber" value="<%=intRollNo%>" class="form-control" size="10" />
    <input type="hidden" name="ddlPhoto" id="ddlPhoto"  value="1"  />
    
    </td>
        </tr>

       
</table>
