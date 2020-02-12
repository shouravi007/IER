 <div class="form-group">
    <div class="row">
      <div class="col-sm-3">
        <label for="Training">Training Information (if any)</label>
      </div>
      <div class="col-sm-9">
        <div class="form-group">
          <div class="required">
           <textarea name="txtTraining" cols="60" rows="4" id="txtTraining" class="form-control noresize" onChange="countLetter('frmApplication', this.id, 2000)" onKeyUp="countLetter('frmApplication', this.id, 2000)"><%=Replace(strTraining,"~~","<BR>")%></textarea>                                 
            <small>(maximum of 2000 characters)</small>
          </div>
        </div>
      </div>
    </div>
  </div>	
