  <div class="col-sm-4">
	<label for="firstName">Applicant's Name (Bengali)
	  <span id="txtFirstNameEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-12">
	<div class="required">
	  <input name="txtName_bn" id="txtName_bn" type="text" class="form-control" <%If strName_bn = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="80" value="<%=strName_bn%>" onKeyUp="changeEstericColor(this.id);" placeholder="Applicant's Name"  />
                <label for="cname" id="cname" style="display:none;color:#e60278;"></label>
<span id="txtName_bn_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

	</div>
  </div>