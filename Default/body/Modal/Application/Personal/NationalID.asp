  <div class="col-sm-4">
	<label for="NationalID">National ID
	  <!--<span id="txtFirstNameEsteric" style="color:#FF0000;">*</span>-->
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	 <input placeholder="National ID"  name="txtNationalId" id="txtNationalId" type="text" class="form-control" maxlength="25" value="<%=intNationalId%>" onKeyPress="return intonly(this, event)"/>
     
<span id="txtNationalId_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

	</div>
  </div>