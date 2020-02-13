 <%
ValuePrint strInstitute1, "strInstitute1-1"
ValuePrint strInstitute2, "strInstitute2-1"
ValuePrint strInstitute3, "strInstitute3-1"
ValuePrint strInstitute4, "strInstitute4-1"
 
 
    strInstitute = "" 
	If i =1 Then
		 strInstitute = strInstitute1
	ElseIf i = 2 Then 
		 strInstitute = strInstitute2
	ElseIf i = 3 Then 
		 strInstitute = strInstitute3
	ElseIf i = 4 Then 
		 strInstitute = strInstitute4
	ElseIf i = 5 Then 
		 strInstitute = strInstitute5
	Else
		 strInstitute = ""
		 
	End If
	
	
	If strInstitute = "" Then 
    	 'bgColorInstitute = " background-color: #FF0000;" 
	Else 
	     bgColorInstitute = ""
	End If 
%>

<div class="col-sm-4">
<label for="degreelvl">
<%If i =1 or i = 2 Then%>
	Institute
<%else%>
	Institute / Faculty
<%end if%>    

</label>
</div>

<div class="col-sm-8">
  <div class="form-group">
<input name="txtInstitute<%=i%>" type="text" class="form-control input-sm" id="txtInstitute<%=i%>" style="<%=bgColorInstitute%>" size="10" maxlength="255" value="<%=strInstitute%>"/>
  </div>
</div>