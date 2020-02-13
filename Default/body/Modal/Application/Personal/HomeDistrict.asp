  <div class="col-sm-4">
	<label for="HomeDistrict">Home District
	  <span id="spnHomeDistrict" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	
<select id="ddlHomeDistrict" name="ddlHomeDistrict" class="form-control" onChange="ChangeEstaricColor(this, 'spnHomeDistrict');LoadThana(this.value);">
  <option value="S" selected="selected">Select</option>
  <%for dis = 0 to ubound(arrSqlForDistrict,2)
  'response.Write(strHomeDistrict)
  %>
  <option value='<%=arrSqlForDistrict(0,dis)%>'<%If cstr(strHomeDistrict) = cstr(arrSqlForDistrict(0,dis)) Then%> selected="selected"<%End If%>><%=arrSqlForDistrict(1,dis)%></option>
  <%
  next
  %>
</select>
    
    <span id="ddlHomeDistrict_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

	</div>
  </div>
  
<script type="text/javascript">

function LoadThana(pid)
{
	$.post("?<%=Encode("Location=Ajax&FormAction=GetThana")%>",
	 {
		 q : pid
	 },
	 function(data,status)
	 {
		if (data != "")
		{
		   $("#ddlThanaPrmDist").html(data);
		}
	 });
}
</script>