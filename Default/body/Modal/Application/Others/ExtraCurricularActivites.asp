 <div class="form-group">
        <div class="row">
          <div class="col-sm-3">
            <label for="extraCuricural">Extra curricular activities(if any)</label>
          </div>
          <div class="col-sm-9">
            <div class="form-group">
              <div class="required">
                <textarea  cols="60" name="txtExtraCurricularActivities" rows="4" id="txtExtraCurricularActivities" class="form-control noresize" onChange="countLetter('frmApplication', this.id, 2000)" onKeyUp="countLetter('frmApplication', this.id, 2000)"><%=strExtraCurricularActivities%></textarea>
  
                <small>(maximum of 2000 characters)</small>
                
                <br> <span id="txtExtraCurricularActivities_sp1" name="txtExtraCurricularActivities_sp1" style="position:relative; left: -1px;"></span><br />       
                <span id="txtExtraCurricularActivities_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

                
              </div>
            </div>
          </div>
        </div>
      </div>

