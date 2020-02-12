 <%
ValuePrint strAcademicDist1, "strAcademicDist1-1"
ValuePrint strAcademicDist2, "strAcademicDist2-1"
ValuePrint strAcademicDist3, "strAcademicDist3-1"
ValuePrint strAcademicDist4, "strAcademicDist4-1"
 
 
    strAcademicDist = "" 
	If i =1 Then
		 strAcademicDist = strAcademicDist1
	ElseIf i = 2 Then 
		 strAcademicDist = strAcademicDist2
	ElseIf i = 3 Then 
		 strAcademicDist = strAcademicDist3
	ElseIf i = 4 Then 
		 strAcademicDist = strAcademicDist4
	ElseIf i = 5 Then 
		 strAcademicDist = strAcademicDist4
	Else
		 strAcademicDist = ""
		 
	End If
	
	
	If strAcademicDist = "" Then 
    	 'bgColorInstitute = " background-color: #FF0000;" 
	Else 
	    ' bgColorInstitute = ""
	End If 
%>




<%
If i =1 or i = 2 Then
'response.Write(strAcademicDist)
%>

<div class="col-sm-4">
<label for="degreelvl">District of the institution</label>
</div>

<div class="col-sm-8">
   <div class="form-group">
<select id="ddlAcademicDist<%=i%>" name="ddlAcademicDist<%=i%>" class="form-control">
<option value="S">Select</option>
<%for aDist = 0 to ubound(arrSqlForDistrict,2)
'= Request.Form("ddlAcademicDist"&i) 
%>
<option value='<%=arrSqlForDistrict(0,aDist)%>'<%If cstr(strAcademicDist) = cstr(arrSqlForDistrict(0,aDist)) Then%> selected="selected" <%End If%>><%=arrSqlForDistrict(1,aDist)%></option>
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
