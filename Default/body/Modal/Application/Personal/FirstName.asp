  <div class="col-sm-4">
	<label for="firstName">Applicant's Name
	  <span id="txtFirstNameEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-12">
	<div class="required">
	  <input name="txtFirstName" id="txtFirstName" type="text" class="form-control" <%If strFirstName = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="80" value="<%=strFirstName%>" onKeyUp="changeEstericColor(this.id);" placeholder="Applicant's Name"  />
                <label for="cname" id="cname" style="display:none;color:#e60278;"></label>
<span id="txtFirstName_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

	</div>
  </div>