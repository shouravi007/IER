  <div class="col-sm-4">
	<label for="FathersProfession">Current Occupation
	  <span id="txtFathersProfessionEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
    
    <input placeholder="Current Occupation" name="txtCurrentOccupation" id="txtCurrentOccupation" type="text" class="form-control" <%If strCurrentOccupation = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="100" value="<%=strCurrentOccupation%>" onKeyUp="changeEstericColor(this.id);" />
    
	 <span id="txtCurrentOccupation_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

	</div>
  </div>