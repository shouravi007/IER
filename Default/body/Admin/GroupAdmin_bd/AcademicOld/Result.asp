<div class="col-sm-4">
    <label>Result</label>

<select name="RESULT<%=diffedulevel%>" class="text form-control select-result" id="RESULT<%=diffedulevel%>"  disabled="disabled">
        <option value="S" >Select</option>
        <%If  diffedulevel > 2 Then %>
        <option value="15">First</option>
        <%eND iF %>
       
        <option value="0">Grade</option>
        <%If  diffedulevel >= 5 Then %>
       <option value="14" >Second</option>
        <option value="12">Appeared</option>
        <%eND iF %>
        </select>


    <div class="row">
        <div class="col-md-6">
           <div class="form-group">
            <input disabled="disabled" type="text" name="txtPercentFrom<%=diffedulevel%>" id="txtPercentFrom<%=diffedulevel%>" class="form-control" maxlength="5" size="5" placeholder = "From">
            </div>
        </div>
        
        <div class="col-md-6">
           <div class="form-group">
            <input disabled="disabled" type="text" name="txtPercentTo<%=diffedulevel%>" id="txtPercentTo<%=diffedulevel%>" class="form-control" value="" maxlength="5" size="5" placeholder="To">
           </div>
        </div>
    </div>
</div>

<div class="col-sm-4">
    <label>Result</label>
    <select disabled="disabled" name="RESULT<%=diffedulevel%>_" class="text form-control select-result" id="RESULT<%=diffedulevel%>_">
        <option value="S">Select</option>
        
        <%If  diffedulevel > 2 Then %>
        <option value="15">First</option>
        <%eND iF %>
        <option value="0">Grade</option>
    
        <%If  diffedulevel >= 5 Then %>
         <option value="14">Second</option>
         <option value="12">Appeared</option>     
        <%eND iF %>
    </select>
   
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
            <input disabled="disabled" type="text" name="txtPercentFrom<%=diffedulevel%>_" id="txtPercentFrom<%=diffedulevel%>_" class="form-control" maxlength="5" size="5" placeholder="From">
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
            <input disabled="disabled" type="text" name="txtPercentTo<%=diffedulevel%>_" id="txtPercentTo<%=diffedulevel%>_" class="form-control" value="" maxlength="5" size="5" placeholder="To">
            </div>
        </div>
    </div>
</div>

<br>


