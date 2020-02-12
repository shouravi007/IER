  <div class="col-sm-4">
	<label for="FathersProfession">Father's Profession
	  <span id="txtFathersProfessionEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
    
    <input placeholder="Father's Profession" name="txtFathersProfession" id="txtFathersProfession" type="text" class="form-control" <%If strFathersProfession = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="100" value="<%=strFathersProfession%>" onKeyUp="changeEstericColor(this.id);" />
    
<span id="txtFathersProfession_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
    
	</div>
  </div>