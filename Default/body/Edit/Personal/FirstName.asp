  <div class="col-sm-4">
	<label for="firstName">Applicant's Name
	  <span id="txtFirstNameEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-12">
	<div class="required">
	  <input name="txtFirstName" id="txtFirstName" type="text" class="form-control" <%If strFirstName = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="50" value="<%=strFirstName%>" onKeyUp="changeEstericColor(this.id);" placeholder="First Name" />
	</div>
  </div>
