<%
ValuePrint strPassingYear1, "strPassingYear1-1"
ValuePrint strPassingYear2, "strPassingYear2-1"
ValuePrint strPassingYear3, "strPassingYear3-1"
ValuePrint strPassingYear4, "strPassingYear4-1"

If i =1 Then
	 intYear = strPassingYear1
ElseIf i = 2 Then 
	 intYear = strPassingYear2
ElseIf i = 3 Then 
	 intYear = strPassingYear3
ElseIf i = 4 Then 
	 intYear = strPassingYear4
ElseIf i = 5 Then 
	 intYear = strPassingYear5

Else
	 intYear = 0
	 'response.Write(intYear)
End If

'ValuePrint intYear, "intYear-1"
'
'If intYear = "" or intYear = "S" Then 
'	'bgColorYear = " background-color: #FF0000;" 
'	strVisibility__publishing_date = "display:none;"
'Else 
'	strVisibility__publishing_date = "display:block;"
'	bgColorYear = ""
'End If


%>
<div class="col-sm-4">
<label for="degreelvl">Passing Year</label>
</div>
<div class="col-sm-8">														
   <div class="form-group">

<select class="form-control input-sm" id="ddlPassingYear<%=i%>" name="ddlPassingYear<%=i%>" style="<%=bgColorYear%> " >
	                <option value="S" <%If intYear = "S" Then%>selected="selected"<%End If%>>year</option>
	                <%
					For j=CInt(Year(Date)) to (CInt(Year(Date))-18) Step -1
                    %>
                	<option value="<%=j%>" <%If cstr(intYear) = cstr(j) Then%> selected='selected'<%End If%>><%=j%></option>
                <%
               		 Next
                %>
	                </select>
    </div>
</div>