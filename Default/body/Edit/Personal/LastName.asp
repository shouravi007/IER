  <div class="col-sm-4">
    <label for="lastName">Last Name
      <span id="txtLastNameEsteric" style="color:#FF0000;">*</span>
    </label>
  </div>
  <div class="col-sm-8">
    <div class="required">
       <input name="txtLastName" id="txtLastName" type="text" <%If strLastName = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="50" value="<%=strLastName%>"  class="form-control" onKeyUp="changeEstericColor(this.id);" placeholder="Last Name" />
    </div>
  </div>
