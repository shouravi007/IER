  <div class="col-sm-4">
	<label for="HomeDistrict2">Present  District
	  <span id="spnHomeDistrict2" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	
<select id="ddlHomeDistrict2" name="ddlHomeDistrict2" class="form-control" style="<%=bgColorHomeDistrict%> " onChange="ChangeEstaricColor(this, 'spnHomeDistrict2');">
 
 <option value="S" selected="selected">Select</option>
  <%for dis2 = 0 to ubound(arrSqlForDistrict,2)
  'response.Write(strHomeDistrict)
  %>
  <option value='<%=arrSqlForDistrict(0,dis2)%>'<%If cstr(strHomeDistrict2) = cstr(arrSqlForDistrict(0,dis2)) Then%> selected="selected"<%End If%>><%=arrSqlForDistrict(1,dis2)%></option>
  <%
  next
  %> 
</select>

    
	</div>
  </div>