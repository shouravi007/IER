  <div class="col-sm-4">
	<label for="CellPhone2">Cell Phone 2
	  <span id="txtCellPhone2" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	 <input placeholder="Cell Phone 2" name="txtCellPhone2" id="txtCellPhone2" type="text" class="form-control"<%If strCellPhone2 = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="50" value="<%=strCellPhone2%>"/>
     
	</div>
  </div>