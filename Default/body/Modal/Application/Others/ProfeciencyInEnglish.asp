                      <div class="row">
                        <div class="col-sm-12">
                          <div class="form-group">
                            <label for="exampleInputEmail1">
                              <h4 class="title">Proficiency in English</h4>
                            </label>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-sm-4">
                          <div class="form-group">
                            <div class="row">
                              <div class="col-sm-4">
                                <label for="reading">Reading
                                 <!-- <span id="spnReading" style="color:#FF0000;">*</span>-->
                                </label>
                              </div>
                              <div class="col-sm-8">
                               
<select name="ddlReading" id="ddlReading" class="form-control input-sm"><!--onChange="ChangeEstaricColor(this, 'spnReading');"-->
<option value="S" selected="selected">Select</option>
<option value="High" <%If strReading = "High" Then%> selected="selected"<%End If%>>High</option>
<option value="Medium" <%If strReading = "Medium" Then%> selected="selected"<%End If%>>Medium</option>
<option value="Low" <%If strReading = "Low" Then%> selected="selected"<%End If%>>Low</option>
</select>                    <span id="ddlReading_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>


                               </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-sm-4">
                          <div class="form-group">
                            <div class="row">
                              <div class="col-sm-4">
                                <label for="writting">Writing
                                 <!-- <span id="spnWriting" style="color:#FF0000;">*</span>-->
                                </label>
                              </div>
                              <div class="col-sm-8">
                                
<select name="ddlWriting" id="ddlWriting" class="form-control input-sm"><!--onChange="ChangeEstaricColor(this, 'spnWriting');"-->
<option value="S" selected="selected">Select</option>
<option value="High" <%If strWriting = "High" Then%> selected="selected"<%End If%>>High</option>
<option value="Medium" <%If strWriting = "Medium" Then%> selected="selected"<%End If%>>Medium</option>
<option value="Low" <%If strWriting = "Low" Then%> selected="selected"<%End If%>>Low</option>
</select>
                    <span id="ddlWriting_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

                                </div>
                            </div>
                          </div>
                        </div>

                        <div class="col-sm-4">
                          <div class="form-group">
                            <div class="row">
                              <div class="col-sm-4">
                                <label for="speaking">Speaking

<!--<span id="spnSpeaking" style="color:#FF0000;">*</span>-->
                                </label>
                              </div>
                              <div class="col-sm-8">
                               

<select name="ddlSpeaking" id="ddlSpeaking" class="form-control input-sm"><!--onChange="ChangeEstaricColor(this, 'spnSpeaking');"-->
<option value="S" selected="selected">Select</option>
<option value="High" <%If strSpeaking = "High" Then%> selected="selected"<%End If%>>High</option>
<option value="Medium" <%If strSpeaking = "Medium" Then%> selected="selected"<%End If%>>Medium</option>
<option value="Low" <%If strSpeaking = "Low" Then%> selected="selected"<%End If%>>Low</option>
</select>                    <span id="ddlSpeaking_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

                                </div>
                            </div>
                          </div>
                        </div>
                      </div>