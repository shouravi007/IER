  <div class="col-sm-4">
	<label for="Nationality">Nationality
	  <span id="txtNationalityEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	 
     <input  placeholder="Nationality" name="txtNationality" id="txtNationality" type="text" class="form-control"<%If strNationality = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="50" value="<%=strNationality%>" onKeyUp="changeEstericColor(this.id);" />
     
      
	</div>
  </div>