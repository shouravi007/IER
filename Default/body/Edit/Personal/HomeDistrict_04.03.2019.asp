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
        
	</div>
  </div>
  
  <script type="text/javascript">
function LoadThana(pid)
{
//alert(pid);
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
	xmlhttp.onreadystatechange=function()
  {
  if (this.readyState==4 && this.status==200)
    {
    document.getElementById("ddlThanaPrmDist").innerHTML=this.responseText;
	//alert( document.getElementById("ddlThanaPrmDist").innerHTML);
    }
  }
	xmlhttp.open("GET","Default/GetThana.asp?q="+pid,true);
	xmlhttp.send();
}
</script>