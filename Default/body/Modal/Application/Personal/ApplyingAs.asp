  <div class="col-sm-4">
	<label for="Gender">Applying As
	  <span id="spnApplyingAs" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	    <select name="ddlApplyingAs" id="ddlApplyingAs" class="form-control"   <%If strApplyingAs = "S" And IsBlank = "True" Then%>"background-color:#FFCA95;"<%End If%> onChange="ChangeEstaricColor(this, 'spnApplyingAs');">
        <option value="S" >Select</option>
        <option value="General" <%If strApplyingAs = "General" Then%>selected<%End If%>>General</option>
        <option value="FreedomFighter" <%If strApplyingAs = "FreedomFighter" Then%>selected<%End If%>>Freedom Fighter</option>
      	</select>
      
	</div>
  </div>