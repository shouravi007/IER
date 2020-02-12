  <div class="col-sm-4">
	<label for="CellPhone">Emergency Contact Number 
	  <!--<span id="txtCellPhoneEsteric" style="color:#FF0000;">*</span>-->
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	   <input placeholder="Emergency Contact Number " name="txtCellPhone" id="txtCellPhone" type="text" class="form-control"<%If strCellPhone = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="11" value="<%=strCellPhone%>" onKeyUp="changeEstericColor(this.id);" onKeyPress="return intonly(this, event)"/> 
      
	</div>
  </div>