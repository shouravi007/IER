<%
ValuePrint strDegreeName1, "strDegreeName1-1"
ValuePrint strDegreeName2, "strDegreeName2-1"
ValuePrint strDegreeName3, "strDegreeName3-1"
ValuePrint strDegreeName4, "strDegreeName4-1"

If i =1 Then
	 strDegreeName = strDegreeName1
ElseIf i = 2 Then 
	 strDegreeName = strDegreeName2
ElseIf i = 3 Then 
	 strDegreeName = strDegreeName3
ElseIf i = 4 Then 
	 strDegreeName = strDegreeName4
ElseIf i = 5 Then 
	 strDegreeName = strDegreeName5
Else
	 strDegreeName = ""
	 'response.Write(intYear)
End If
 
 
If strDegreeName = "" or strDegreeName = "S" Then 
	' bgColorDegreeName = " background-color: #FF0000;" 
Else 
	 bgColorDegreeName = ""
End If


%>
     
     
<div class="col-sm-4">
<label for="Exam">Exam Name</label>
</div>
<div class="col-sm-8">
  <div class="form-group">     

          <div id="spnDegree<%=i%>">
	                <select class="form-control input-sm" name="ddlDegreeName<%=i%>" id="ddlDegreeName<%=i%>" style="<%=bgColorDegreeName%> " onchange="putValueInHiddenDegreeName(this,<%=i%>);LoadJubject(this,<%=i%>);">
                   <option value="S" selected="selected">Select</option>
					<%           
                    If i = 2 Then
                    %>
                    <option value='SSC' <%If InStr(lcase(strDegreeName1),"ssc") > 0 Then%> selected="selected" <%End If%>>SSC</option>
                    <option value='Dakhil' <%If InStr(lcase(strDegreeName1),"dakhil") > 0 Then%> selected="selected" <%End If%>>Dakhil</option>
                    <option value='O Level' <%If InStr(lcase(strDegreeName1),"o lev") > 0 Then%> selected="selected" <%End If%>>O Level</option>
                    <option value='Vocational' <%If InStr(lcase(strDegreeName1),"vocat") > 0 Then%> selected="selected" <%End If%>>Vocational</option>
                    <option value='Equivalent' <%If InStr(lcase(strDegreeName1),"equivalent") > 0 Then%> selected="selected" <%End If%>>Equivalent</option>
                    <%
                    ElseIf i = 1 Then
                    %>
                    <option value='Junior School Certificate' <%If InStr(lcase(strDegreeName2),"Junior School Certificate") > 0 Then%> selected="selected" <%End If%>>Junior School Certificate</option>
                    <option value='Junior Dhakil Certificate' <%If InStr(lcase(strDegreeName2),"Junior Dhakil Certificate") > 0 Then%> selected="selected" <%End If%>>Junior Dhakil Certificate</option>
                    <option value='8 Pass Certificate' <%If InStr(lcase(strDegreeName2),"8 Pass Certificate") > 0 Then%> selected="selected" <%End If%>>8 Pass Certificate</option>
                 
                    
                   
                    <%
                    End If
                    %>
	                 
                      </select>
	                </div>
	                <div id="spnDoctorate<%=i%>"> </div>
          </div>
     </div>