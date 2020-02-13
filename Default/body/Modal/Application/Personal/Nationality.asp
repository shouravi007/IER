  <div class="col-sm-4">
	<label for="Nationality">Nationality
	  <span id="txtNationalityEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	 
     <input  placeholder="Nationality" name="txtNationality" id="txtNationality" type="text" class="form-control"<%If strNationality = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="20" value="<%=strNationality%>" onKeyUp="changeEstericColor(this.id);" />
     
<span id="txtNationality_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
      
	</div>
  </div>
  
  
 