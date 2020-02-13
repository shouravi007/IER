<div class="col-sm-6">
    <label for="AcademicDist">
        <h4>Institute / Faculty & District
            <span>*</span>
        </h4>
    </label>
</div>
<div class="col-sm-6">
   <input name="txtInstitute1"  id="txtInstitute1"  value="<%=strInstitute%>"   type="text" class="form-control" />
        
<%
'response.Write(strAcademicDist)
If bytEduLevel =1 or bytEduLevel = 2 Then
%> 
 <br />        
<select id="ddlAcademicDist1" name="ddlAcademicDist1" class="form-control">
<option value="S">Select</option>
<%for aDist = 0 to ubound(arrSqlForDistrict,2)
'response.Write("strAcademicDist: "&strAcademicDist)
%>
<option value='<%=arrSqlForDistrict(0,aDist)%>'<%If cstr(strAcademicDist) = cstr(arrSqlForDistrict(0,aDist)) Then%> selected="selected" <%End If%>><%=arrSqlForDistrict(1,aDist)%></option>
<%
next
%>
</select>
<%
Else
%>
<input type="hidden" id="ddlAcademicDist1" name="ddlAcademicDist1" value="0" />
<%
end if
%>
       
</div>
