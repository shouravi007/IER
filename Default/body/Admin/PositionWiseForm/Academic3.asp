
 <!-- <option value='Others'>Others</option> -->   
    <tr>
      <td  valign="top">
        <table  class="table-striped"   width="100%">
          <!--<tr>
            <td width="122"><input name="cmdAdd<%'=diffedulevel%>" type="button"  id="cmdAdd<%'=diffedulevel%>" onclick="append('stxtDegreeName<%'=diffedulevel%>','hidDegreeName<%'=diffedulevel%>','txtDegreeName<%'=diffedulevel%>','100','You cannot add more than 100 area of DegreeName!');" value="Add to list below" />
              <input type="button" name="cmdRemove2" id="cmdRemove2"  style="margin-top:22px;" value="Remove from list" onclick="Remove_Element('hidDegreeName<%'=diffedulevel%>','stxtDegreeName<%'=diffedulevel%>','txtDegreeName<%'=diffedulevel%>');" /></td>
          </tr>-->
          <!--<tr>
            <td><input type="hidden" name="txtDegreeName<%'=diffedulevel%>" id="txtDegreeName<%'=diffedulevel%>" value="" /></td>
          </tr>-->
        </table></td>
      <td colspan="2" valign="top">
        <table  class="table-striped"   width="100%">
          <!--<tr>
            <td width="107"><input name="cmdAdd2" type="button"  id="cmdAdd2" onclick="append('sINSTITUTE<%'=diffedulevel%>','hidINSTITUTE<%'=diffedulevel%>','INSTITUTE<%'=diffedulevel%>','100','You cannot add more than 100 Institute Name!');" value="Add to list below" />
              <input type="button" name="cmdRemove3" id="cmdRemove3"  style="margin-top:22px;" value="Remove from list" onclick="Remove_Element('hidINSTITUTE<%'=diffedulevel%>','sINSTITUTE<%'=diffedulevel%>','INSTITUTE<%'=diffedulevel%>');" /></td>
          </tr>-->
          <!--<tr>
            <td><input name="INSTITUTE<%'=diffedulevel%>" type="hidden" id="INSTITUTE<%'=diffedulevel%>" value="" />
              <input type="hidden" name="txtSelectedSubDepartmentList3" id="txtSelectedSubDepartmentList3" value="<%'=Request.Form("txtSelectedSubDepartmentList")%>" /></td>
          </tr>-->
      </table>
       </td>
      <td colspan="3" valign="top">
        <table  class="table-striped"   width="100%">
          <!--<tr>
            <td width="183"><input name="cmdAdd" type="button"  id="cmdAdd" onclick="append('sSUBJECT<%'=diffedulevel%>','hidSUBJECT<%'=diffedulevel%>','SUBJECT<%'=diffedulevel%>','100','You cannot add more than 100 Subject Name!');" value="Add to list below" />
              <input type="button" name="cmdRemove" id="cmdRemove"  style="margin-top:22px;" value="Remove from list" onclick="Remove_Element('hidSUBJECT<%'=diffedulevel%>','sSUBJECT<%'=diffedulevel%>','SUBJECT<%'=diffedulevel%>');" /></td>
            </tr>-->
          <!--<tr>
            <td><input type="hidden" name="SUBJECT<%'=diffedulevel%>" id="SUBJECT<%'=diffedulevel%>" value="" /></td>
          </tr>-->
          </table>
       </td>
      </tr>
    <tr>
      <td  valign="top">
        <!--<input name="txtDegreeName" type="text"  id="txtDegreeName"  style="width:80px;" value="<%'=strInstituteName%>" size="10" />-->
        <!--<select  name="hidDegreeName<%'=diffedulevel%>"  id="hidDegreeName<%'=diffedulevel%>" style="width:85%;height:<%'=strHight%>px; "  multiple="multiple"  onmousedown="GetCurrentListValues(this);" >
        </select>-->

       
      </td>
      <td colspan="2" valign="top">
    
      <!--<select name="hidINSTITUTE<%'=diffedulevel%>" multiple="multiple"  id="hidINSTITUTE<%'=diffedulevel%>" style="WIDTH:100%;height:<%'=strHight%>px; "  onmousedown="GetCurrentListValues(this);">
      </select>-->
        <div id="sp_edu<%=diffedulevel%>"></div></td>
      <td colspan="3" valign="top">
      <!--<select name="hidSUBJECT<%'=diffedulevel%>"  id="hidSUBJECT<%'=diffedulevel%>" style="WIDTH:100%;height:<%'=strHight%>px; "  onmousedown="GetCurrentListValues(this);"  multiple="multiple" >
      </select>-->      
        <div id="sp_maj<%=diffedulevel%>"></div></td>
      </tr>
    </table>
  </div> 
 
	<br />  
    <% Next %>
    </td></tr></table>
  </div>  
                                   
                            