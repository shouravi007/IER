  <div class="col-sm-4">
	<label for="ContactPhone">Contact Mobile
	  <span id="txtContactPhoneEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
    <%if system = "ksb" then%>
	 <input placeholder="Contact Phone" name="txtContactPhone" id="txtContactPhone" type="text" class="form-control"<%If strContactPhone <> 0 Then%> readonly <%End If%> maxlength="11"  onKeyUp="changeEstericColor(this.id);" value="<%=strContactPhone%>" onKeyPress="return intonly(this, event)"/>    
    <%else%>
	  <input placeholder="Contact Phone" name="txtContactPhone" id="txtContactPhone" type="text" class="form-control"<%If strContactPhone = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="11"  onKeyUp="changeEstericColor(this.id);" value="<%=strContactPhone%>" onKeyPress="return intonly(this, event)"/>
    <%end if%>  
	</div>
  </div>