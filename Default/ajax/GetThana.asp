<%
intDistId = trim(Request.Form("q"))
	
If intDistId = "S" Then
%>
<select id="ddlThanaPrmDist" name="ddlThanaPrmDist" class="form-control"  onChange="ChangeEstaricColor(this, 'spnThanaPrmDist');">
	<option value="S">Select</option>
</select>
<%
Else
	sqlForThana = "SELECT L_ID, L_Name FROM Locations WHERE ParentID >= 1 And ParentID < 100 And ParentID = "&intDistId&" ORDER BY L_Name"
	arrSqlForThana = objResumeServer.RetrieveData(sqlForThana, errMsg)

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
<%for th = 0 to ubound(arrSqlForThana,2)
'strThanaPrmDist = arrSqlForThana(0,th)
%>
  <option value='<%=arrSqlForThana(0,th)%>'<%If strThanaPrmDist = arrSqlForThana(0,th) Then%> selected="selected"<%End If%>><%=arrSqlForThana(1,th)%></option>
  <%
  next
  %>
</select>
    
 <%
 End If
 %>   
	</div>
  </div>
