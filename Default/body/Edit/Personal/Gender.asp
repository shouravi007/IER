  <div class="col-sm-4">
	<label for="Gender">Gender
	  <span id="spnGender" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	    <select name="ddlGender" id="ddlGender" class="form-control"   <%If strGender = "S" And IsBlank = "True" Then%>"background-color:#FFCA95;"<%End If%> onChange="ChangeEstaricColor(this, 'spnGender');">
        <option value="S" >Select</option>
        <option value="Male" <%If strGender = "Male" Then%>selected<%End If%>>Male</option>
        <option value="Female" <%If strGender = "Female" Then%>selected<%End If%>>Female</option>
      	</select>
      
	</div>
  </div>