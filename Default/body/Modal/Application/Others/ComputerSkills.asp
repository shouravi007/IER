  <div class="form-group">
        <div class="row">
          <div class="col-sm-3">
            <label for="computerSkills">Computer skills (if any)</label>
          </div>
          <div class="col-sm-9">
            <div class="form-group">
              <div class="required">
               <textarea name="txtComputerSkill" cols="60" rows="4" id="txtComputerSkill" class="form-control noresize" onChange="countLetter('frmApplication', this.id, 2000)" onKeyUp="countLetter('frmApplication', this.id, 2000)"><%=strComputerSkills%></textarea>   <small>(maximum of 2000 characters)</small>
                 <br> <span id="txtComputerSkill_sp1" name="txtComputerSkill_sp1" style="position:relative; left: -1px;"></span><br />
                    <span id="txtComputerSkill_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
             
              </div>
            </div>
          </div>
        </div>
      </div>

 
