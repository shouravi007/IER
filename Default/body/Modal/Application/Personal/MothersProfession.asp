  <div class="col-sm-4">
	<label for="MothersProfession">Mother's Profession
	  <span id="txtMothersProfessionEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
    
    <input placeholder="Mother's Profession"  name="txtMothersProfession" id="txtMothersProfession" type="text" class="form-control"<%If strMothersProfession = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="100" value="<%=strMothersProfession%>" onKeyUp="changeEstericColor(this.id);" />
	  
<span id="txtMothersProfession_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
    
    
    </div>
  </div>