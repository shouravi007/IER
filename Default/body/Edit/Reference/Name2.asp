                                <div class="col-sm-4">
                                  <label for="ref2rence">Name
                                    <span id="txtReferenceName2Esteric" style="color:#FF0000;">*</span>
                                  </label>
                                </div>
                                <div class="col-sm-8">
                                  <div class="required">
                                   
                                   <input type="hidden" name="hidReferenceId2" id="hidReferenceId2" value="<%=intRefID2%>" />
				 	<input type="text"  class="form-control" placeholder="Name" name="txtReferenceName2" maxlength="255" id="txtReferenceName2"  value="<%=strRefName2%>" onKeyUp="changeEstericColor(this.id);" />
                    
                                  </div>
                                </div>
