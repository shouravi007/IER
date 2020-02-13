
  <div class="row">
    <div class="col-sm-12">
        <div class="aca-sub" style="padding-bottom:1%;">
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
            <input type="hidden" name="hidAuto_A1" id="hidAuto_A1" value="<%=hidLevelId_A1%>" />
            <input id="txtSubA1" name="txtSubA1" type="text" class="form-control" maxlength="50" value="<%=strSubject_A1%>">
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group" data-visual-label="Grade1">
                <select name="txtLevel_A1" id="txtLevel_A1" class="form-control input-sm">
                    <option value=""<%If resultLevel_A1 = "" Then%> selected="selected"<%End If%>>Select</option>
                    <option value="5"<%If resultLevel_A1 = "5" Then%> selected="selected"<%End If%>>A</option>
                    <option value="4"<%If resultLevel_A1 = "4" Then%> selected="selected"<%End If%>>B</option>
                  <!--  <option value="3"<%'If resultLevel_A1 = "3" Then%> selected="selected"<%'End If%>>C</option>
                    <option value="2"<%'If resultLevel_A1 = "2" Then%> selected="selected"<%'End If%>>D</option>-->
                </select>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group" data-visual-label="Subject2">
                        <input type="hidden" name="hidAuto_A2" id="hidAuto_A2" value="<%=hidLevelId_A2%>" />
                        <input id="txtSubA2" name="txtSubA2" type="text" class="form-control" maxlength="50" value="<%=strSubject_A2%>">
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group" data-visual-label="Grade2">
                <select name="txtLevel_A2" id="txtLevel_A2" class="form-control input-sm">
                    <option value=""<%If resultLevel_A2 = "" Then%> selected="selected"<%End If%>>Select</option>
                    <option value="5"<%If resultLevel_A2 = "5" Then%> selected="selected"<%End If%>>A</option>
                    <option value="4"<%If resultLevel_A2 = "4" Then%> selected="selected"<%End If%>>B</option>
                   <!-- <option value="3"<%'If resultLevel_A2 = "3" Then%> selected="selected"<%'End If%>>C</option>
                     <option value="2"<%'If resultLevel_A2 = "2" Then%> selected="selected"<%'End If%>>D</option>-->
                 </select>
                        </div>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
  </div>
