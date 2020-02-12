<%strPassword = Request.Form("txtPassword")%>


    <fieldset>
    
                      <legend>Password</legend>
                      <div class="row">
                        <div class="col-sm-12">
                          <div class="acceptCheckbox-wrap">
                         
  <input type="checkbox" name="chkDeclaration" id="chkDeclaration"<%If IsDeclaration = True Then%> checked="checked"<%End If%> onClick="ChangeEstaricColorOfCheck(this.id);"/>
  <label for="acceptCheckbox">The above information is correct and I would like to go to the next step.</label><label id="chkDeclarationEsteric" style="color:#FF0000;">*</label>
  
      <span id="chkDeclaration_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
                            
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-sm-6">
                          <div class="form-group">
                            <div class="row">
                              <div class="col-sm-3">
                                <label for="pass">Password
                                  <span id="txtPasswordEsteric" style="color:#FF0000;">*</span>
                                </label>
                              </div>
                              <div class="col-sm-9">
                                <div class="form-group">
                                  <div class="required">
                                    <input name="txtPassword" type="password" id="txtPassword"   value="<%=strPassword%>" maxlength="12" onKeyUp="changeEstericColor(this.id);" onKeyPress="return CorrectChar(this, event)"  class="form-control" placeholder="Password">(Maximum 12 characters)
                                   <span id="txtPassword_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

                               
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-sm-6">
                          <div class="form-group">
                            <div class="row">
                              <div class="col-sm-3">
                                <label for="rePass">Re-enter Password (for confirmation)
                                  <span id="txtConfirmPasswordEsteric" style="color:#FF0000;">*</span>
                                </label>
                              </div>
                              <div class="col-sm-9">
                                <div class="form-group">
                                  <div class="required">
                                    <input name="txtConfirmPassword" type="password" id="txtConfirmPassword"  value="<%=strConfirmPassword%>" maxlength="12" onKeyUp="changeEstericColor(this.id);"  onKeyPress="return CorrectChar(this, event)" class="form-control" placeholder="Re-enter Password">(Maximum 12 characters)        
                                        <span id="txtConfirmPassword_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

                                    
                                    
                                    
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                      </div>
                    </fieldset>