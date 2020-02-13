<%
	intDistId = strHomeDistrict
	'response.Write("mybdjobs"&intDistId)
	
	If intDistId <> "" Then
		sqlForThana = "SELECT L_ID, L_Name FROM Locations WHERE ParentID >= 1 And ParentID < 100 And ParentID = "&intDistId&" ORDER BY L_Name"
	
	ElseIf strThanaPrmDist <> "" Then
		
		sqlForThana = "SELECT L_ID, L_Name FROM Locations WHERE L_ID = "&strThanaPrmDist&" ORDER BY L_Name"		
	End If
	    err.clear 
		arrSqlForThana = objResumeServer.RetrieveData(sqlForThana, errMsg)
		'response.Write(errMsg)

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
	If arrSqlForThana(0,0) <> "Nothing" Then
		for th = 0 to ubound(arrSqlForThana,2)
%>
    <option value='<%=arrSqlForThana(0,th)%>'<%If Request.Form("ddlThanaPrmDist") = cstr(arrSqlForThana(0,th)) Then%>selected="selected"<%End If%>><%=arrSqlForThana(1,th)%></option>
<%
		next
	End If
End If
%>
</select>
    
    <span id="ddlThanaPrmDist_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

	</div>
  </div>