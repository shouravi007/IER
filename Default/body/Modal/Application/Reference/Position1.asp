  <div class="col-sm-4">
      <label for="ref1Position">Position
        <span id="txtReferencePosition1Esteric" style="color:#FF0000;">*</span>
      </label>
    </div>
    <div class="col-sm-8">
      <div class="required">
     
        
        <input type="text"  name="txtReferencePosition1" maxlength="50" id="txtReferencePosition1" class="form-control" placeholder="Position" value="<%=strRefPos%>" onKeyUp="changeEstericColor(this.id);" />
	 <span id="txtReferencePosition1_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
        
      </div>
    </div>