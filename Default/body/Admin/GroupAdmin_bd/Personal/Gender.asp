<label>Gender</label>
<select name="txtSex" class="text form-control" id="txtSex">
    <option value="S" selected="selected">Select</option>
    <option value="Male"<%if strSex = "Male" Then %> selected="selected" <%End if%>>Male</option>
    <option value="Female" <%if strSex = "Female" Then %> selected="selected" <%End if%>>Female</option>
</select>
