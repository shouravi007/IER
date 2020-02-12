  <div class="col-sm-12">
      <div class="form-group" data-visual-label="A LEVEL (Mention top 2 grades)">


  <div class="row">
    <div class="col-sm-12">
        <div class="aca-sub">
            <fieldset>
                <legend>A LEVEL <span>(Mention top 2 grades)</span></legend>
                <div class="row hidden-xs">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-2">
                      <label>Subject1</label>
                    </div>
                    <div class="col-sm-2">
                      <label>Grade1</label>
                    </div>
                    <div class="col-sm-2">
                      <label>Subject2</label>
                    </div>
                    <div class="col-sm-2">
                      <label>Grade2</label>
                    </div>                                            
                    <div class="col-sm-2">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-2">
                    </div>                                            
                    <div class="col-sm-2">
                        <div class="form-group" data-visual-label="Subject1">
            <input type="hidden" name="hidAuto_A1" id="hidAuto_A1" value="-1" />
            <input id="txtSubA1" name="txtSubA1" type="text" class="form-control" maxlength="50" value="<%=strSubject_A1%>">
                       
                       <span id="txtSubA1_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group" data-visual-label="Grade1">
                <select name="txtLevel_A1" id="txtLevel_A1" class="form-control input-sm">
                    <option value=""<%If resultLevel_A1 = "" Then%> selected="selected"<%End If%>>Select</option>
                    <option value="5"<%If resultLevel_A1 = "5" Then%> selected="selected"<%End If%>>A</option>
                   
                    <option value="4"<%If resultLevel_A1 = "4" Then%> selected="selected"<%End If%>>B</option>
                  
                </select>
                       <span id="txtLevel_A1_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

                       
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group" data-visual-label="Subject2">
                        <input type="hidden" name="hidAuto_A2" id="hidAuto_A2" value="-1" />
                        <input id="txtSubA2" name="txtSubA2" type="text" class="form-control" maxlength="50" value="<%=strSubject_A2%>">
                       
                       <span id="txtSubA2_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group" data-visual-label="Grade2">
                <select name="txtLevel_A2" id="txtLevel_A2" class="form-control input-sm">
                    <option value=""<%If resultLevel_A2 = "" Then%> selected="selected"<%End If%>>Select</option>
                    <option value="5"<%If resultLevel_A2 = "5" Then%> selected="selected"<%End If%>>A</option>
                    
                    <option value="4"<%If resultLevel_A2 = "4" Then%> selected="selected"<%End If%>>B</option>
                  
                 </select>
                       <span id="txtLevel_A2_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

                       
                        </div>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
  </div>

   </div>
  </div>

