  <div class="col-sm-4">
	<label for="PermanentAddress">Permanent Address
	  <span id="txtPermanentAddressEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
    
     <textarea placeholder="Permanent Address"  name="txtPermanentAddress" id="txtPermanentAddress" cols="56" rows="3" onKeyUp= "countLetter(this.form, this.name,250); changeEstericColor(this.id);" onChange="countLetter(this.form, this.name,255)"<%If strPermanentAddress = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> class="form-control"><%=strPermanentAddress%></textarea>
        <br />
		<span id="txtPermanentAddress_sp1" name="txtPermanentAddress_sp1"></span>		
	</div>
  </div>