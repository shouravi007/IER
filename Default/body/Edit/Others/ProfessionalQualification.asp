 <div class="form-group">
    <div class="row">
      <div class="col-sm-3">
        <label for="professional">Professional Qualification (if any)</label>
      </div>
      <div class="col-sm-9">
        <div class="form-group">
          <div class="required">
           <textarea name="txtProfessionalQualification" cols="60" rows="4" id="txtProfessionalQualification" class="form-control noresize" onChange="countLetter('frmApplication', this.id, 2000)" onKeyUp="countLetter('frmApplication', this.id, 2000)"><%=Replace(strProfessionalQualification,"~~","<BR>")%></textarea>                                 
            <small>(maximum of 2000 characters)</small>
          </div>
        </div>
      </div>
    </div>
  </div>	