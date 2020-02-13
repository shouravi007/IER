  <div class="col-sm-4">
	<label for="MaritalStatus">Marital Status
	  <span id="spnMaritalStatus" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	  <select name="ddlMaritalStatus" id="ddlMaritalStatus" class="form-control" <%If strMaritalStatus = "S" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> onChange="ChangeEstaricColor(this, 'spnMaritalStatus');">
            <option value="S" >Select</option>
            <option value="Unmarried" <%If strMaritalStatus = "Unmarried" Then%>selected<%End If%>>Unmarried</option>
            <option value="Married" <%If strMaritalStatus = "Married" Then%>selected<%End If%>>Married</option>
    </select> 
   
   
   
                                              
	</div>
  </div>