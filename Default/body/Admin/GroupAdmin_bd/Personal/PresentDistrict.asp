<label>Present District</label>
<div style="height: 112px;  overflow-y: scroll;" class="form-control">        
<%
For d = 1  To 64
%> 
   <div class="present-district">
    <input name="txtDistrict2" id="txtDistrict2<%=d%>" value="'<%=d%>'" type="checkbox"> <label for="txtDistrict2<%=d%>"><%=arrDist(d)%> </label>
   </div>
<%
Next
%>   
</div>
