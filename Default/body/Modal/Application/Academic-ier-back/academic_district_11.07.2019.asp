<%
If i =1 or i = 2 Then
'response.Write(strAcademicDist1)
%>

<div class="col-sm-4">
<label for="degreelvl">District of the institution</label>
</div>

<div class="col-sm-8">
   <div class="form-group">
<select id="ddlAcademicDist<%=i%>" name="ddlAcademicDist<%=i%>" class="form-control">
<option value="S">Select</option>
<%for aDist = 0 to ubound(arrSqlForDistrict,2)
%>
<option value='<%=arrSqlForDistrict(0,aDist)%>'<%If Request.Form("ddlAcademicDist"&i) = cstr(arrSqlForDistrict(0,aDist)) Then%> selected="selected" <%End If%>><%=arrSqlForDistrict(1,aDist)%></option>
<%
next
%>
</select>
   
   </div>
</div>
<%
Else
%>
<input type="hidden" id="ddlAcademicDist<%=i%>" name="ddlAcademicDist<%=i%>" value="0" />
<%
end if
%>
