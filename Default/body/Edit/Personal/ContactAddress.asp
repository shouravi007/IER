  <div class="col-sm-4">
	<label for="CorrespondenceAddress">Present  Address
	  <span id="txtContactAddressEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
    
    <textarea placeholder="Present  Address"  class="form-control"  name="txtContactAddress" id="txtContactAddress" cols="56" rows="3" onKeyUp= "countLetter(this.form, this.name,250); changeEstericColor(this.id);" onChange="countLetter(this.form, this.name,255)" <%If strContactAddress = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> ><%=strContactAddress%></textarea>
	  
	</div>
  </div>