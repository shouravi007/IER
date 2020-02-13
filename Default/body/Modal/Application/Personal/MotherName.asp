  <div class="col-sm-4">
	<label for="MothersName">Mother's Name
	  <span id="txtMotherNameEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
    
    <input  placeholder="Mother's Name" name="txtMotherName" id="txtMotherName" type="text" class="form-control"<%If strMotherName = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="70" value="<%=strMotherName%>" onKeyUp="changeEstericColor(this.id);" />
    
<span id="txtMotherName_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
    
    </div>
  </div>