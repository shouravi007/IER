<div class="col-sm-4">
  <label for="ref1Name">Name
    <span id="txtReferenceName1Esteric" style="color:#FF0000;">*</span>
  </label>
</div>
<div class="col-sm-8">
  <div class="required">
   <input type="hidden" name="hidReferenceId1" id="hidReferenceId1" value="<%=intRefID%>" />
<input type="text"  name="txtReferenceName1" maxlength="255" id="txtReferenceName1" class="form-control" placeholder="Name" value="<%=strRefName%>" onKeyUp="changeEstericColor(this.id);" />
	 <span id="txtReferenceName1_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

  </div>
</div>

