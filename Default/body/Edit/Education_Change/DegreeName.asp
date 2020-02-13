              <%
			  If InStr(lcase(strEducation),"o level") > 0 or InStr(lcase(strEducation),"a level") > 0  Then
			     funct_for_change = "LoadJubject_Edit"
				
			  else
			     funct_for_change = "LoadJubject_Edit_1"   
			  end if 
			  
			  %> 
 
 
                        <div class="col-sm-6">
                            <label for="firstName">
                                <h4>Exam / Degree Title
                                    <span>*</span>
                                </h4>
                            </label>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group exam-name">
                            <div id="spnDegree1">
                                 <select id="ddlDegreeName1" name="ddlDegreeName1" class="<%=frmcon%>" onchange="LoadResultOption(this,1);<%=funct_for_change%>(this,<%=i%>);">  
                                 <option value="S" selected="selected">Select Degree Name</option>                         
<%                     
If bytEduLevel = 1 Then 
%>

<%For d = 0 To Ubound(arrDegreeNameSec,1) %>
<option value="<%=arrDegreeNameSec(d)%>" <%If Cstr(strEducation) = Cstr(arrDegreeNameSec(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNameSec(d)%>
</option>
<%Next%>

<%
ElseIf bytEduLevel = 2 Then 
'ElseIf strEduLevel = "2" Then		
%>
<%For d = 0 To Ubound(arrDegreeNameHigh,1) %>
<option value="<%=arrDegreeNameHigh(d)%>" <%If Cstr(strEducation) = Cstr(arrDegreeNameHigh(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNameHigh(d)%></option>
<%Next%>
<%
ElseIf bytEduLevel = 3 Then 					
'ElseIf strEduLevel = "3" Then
%>		
<%For d = 0 To Ubound(arrDegreeNameGrad,1) %>
<option value="<%=arrDegreeNameGrad(d)%>" <%If Cstr(strEducation) = Cstr(arrDegreeNameGrad(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNameGrad(d)%></option>
<%Next%>
<%					
ElseIf bytEduLevel = 4 or bytEduLevel = 5  Then 
'ElseIf  strEduLevel = "4" Then
%>
<%For d = 0 To Ubound(arrDegreeNamePostGrad,1) %>
<option value="<%=arrDegreeNamePostGrad(d)%>" <%If Cstr(strEducation) = Cstr(arrDegreeNamePostGrad(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNamePostGrad(d)%></option>
<%Next%>

<%End if%>
 
</select>
                             
                              </div>

                            </div>
                        </div>
