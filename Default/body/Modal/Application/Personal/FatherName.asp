  <div class="col-sm-4">
	<label for="FathersName">Father's Name
	  <span id="txtFatherNameEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
    
    <input placeholder="Father's Name"  name="txtFatherName" id="txtFatherName" type="text" class="form-control" <%If strFatherName = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="70" value="<%=strFatherName%>" onKeyUp="changeEstericColor(this.id);" />
    
<span id="txtFatherName_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
    
    </div>
  </div>