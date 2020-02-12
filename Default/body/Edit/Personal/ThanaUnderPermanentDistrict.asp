<%
	intDistId = strHomeDistrict
	'response.Write("mybdjobs"&strThanaPrmDist)
	
	If intDistId <> "" Then
		sqlForThanaAll = "SELECT L_ID, L_Name FROM Locations WHERE ParentID >= 1 And ParentID < 100 And ParentID = "&intDistId&" ORDER BY L_Name"
	
	End If
	    err.clear 
		arrSqlForThanaAll = objResumeServer.RetrieveData(sqlForThanaAll, errMsg)
		'response.Write(arrSqlForThanaAll(0,0) & strThanaPrmDist)

%>  
  <div class="col-sm-4">
	<label for="ThanaPrmDist">Thana/Police Station
	  <span id="spnThanaPrmDist" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	
<select id="ddlThanaPrmDist" name="ddlThanaPrmDist" class="form-control"  onChange="ChangeEstaricColor(this, 'spnThanaPrmDist');">
	<option value="S">Select</option>
<%
If intDistId <> "" Then
	If arrSqlForThanaAll(0,0) <> "Nothing" Then
		for th = 0 to ubound(arrSqlForThanaAll,2)
%>
    <option value='<%=arrSqlForThanaAll(0,th)%>'<%If cstr(strThanaPrmDist) = cstr(arrSqlForThanaAll(0,th)) Then%>selected="selected"<%End If%>><%=arrSqlForThanaAll(1,th)%></option>
<%
		next
	End If
End If
%>
</select>
    
    
	</div>
  </div>