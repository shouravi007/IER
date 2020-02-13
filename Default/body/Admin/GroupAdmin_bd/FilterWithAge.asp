
<fieldset>
    <legend>Filter with Age:</legend>
    <div class="row job-list-row">
        <div class="col-sm-6 col-md-4 col-md-offset-1">
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-3">
                        <label for="firstName">Age From</label>
                    </div>

	            <div class="col-sm-9">
 <select id="txtAgeFrom" name="txtAgeFrom" class="form-control">
   <%For i = 18 to 35 %>
     <option value="<%=i%>"><%=i%> </option>
    
   <%next %>
 </select>
</div>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-4 col-md-offset-2">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-3">
                    <label for="firstName">Age To</label>
                </div>
                <div class="col-sm-9"> 
 <select id="txtAgeTo" name="txtAgeTo" class="form-control">
   <%For i = 18 to 35 %>
     <option value="<%=i%>"><%=i%> </option>
    
   <%next %>
 </select>

</div>
										</div>
									</div>
								</div>
							</div>
						</fieldset>