  <div class="form-group">
                        <div class="row">
                          <div class="col-sm-3">
                            <label for="experience">Experience (if any)</label>
                          </div>
                          <div class="col-sm-9">
                            <div class="form-group">
                              <div class="required">
                             
                       <textarea name="txtExperience" cols="60" rows="4" id="txtExperience" class="form-control noresize" onChange="countLetter('frmApplication', this.id, 2000)" onKeyUp="countLetter('frmApplication', this.id, 2000)"><%=Replace(strExperience,"~~","<BR>")%></textarea>
                  <small>(maximum of 2000 characters)</small>  <span id="txtExperience_sp1" name="txtExperience_sp1" style="position:relative; left: -1px;"></span>     
                              
                              
                               
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>