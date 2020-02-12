<div class="form-group">
        <div class="row">
          <div class="col-sm-3">
            <label for="experience">Orphan  Quota(if any)</label>
          </div>
          <div class="col-sm-9">
            <div class="form-group">
              <div class="required">
                        
                        
<div class="radio">
<input  type="radio" name="ddlOQ" id="ddlOQY" value="1"<%if strOrphan = "True" Then Response.Write("Checked")%>/>Yes
</div>   
  
<div class="radio">
<input  type="radio" name="ddlOQ" id="ddlOQN" value="0"<%if strOrphan = "False" Then Response.Write("Checked")%>/>No 
</div>
                            
           </div>
        </div>
      </div>
      
    </div>
  </div>






