<label>Home District</label>
<div style="height: 112px; overflow-y: scroll;" class="form-control">       
<%
For d = 1  To 64
%>
  <div class="home-district">
<input name="txtDistrict" id="txtDistrict<%=d%>" value="'<%=d%>'" type="checkbox"> <label for="txtDistrict<%=d%>"><%=arrDist(d)%> </label>
   </div>
<%
Next
%>   
</div>
