		<tr>
		<td valign="top"><input type="hidden" name="hidEducationID<%=i%>" id="hidEducationID<%=i%>" value="-1" />
		<select name="ddlEducationLevel<%=i%>" id="ddlEducationLevel<%=i%>" class="newSelect" style="WIDTH:100px;" onChange="return LoadDegree(this,<%=i%>);">
		<option value="-1" selected="selected">Select</option>
<%
		flag_edulevel = False
		If arrEduLevel(0, 0) <> "Nothing" Then
			        If i>4 Then
						intSeed = AcademicUB -1
					Else
						intSeed = AcademicUB
					End If
					For eduIndex = intSeed To UBound(arrEduLevel, 2)					
						flag_edulevel = True				
			%>
				<option value="<%=arrEduLevel(0, eduIndex)%>" ><%=arrEduLevel(1, eduIndex)%></option>
			<%
	            If i=4 Then Exit For
			Next
			
		End If
%>
		</select>		</td>
		<td valign="top"><div id="spnDegree<%=i%>">
		<select name="ddlDegreeName<%=i%>" id="ddlDegreeName<%=i%>" class="newSelect" onChange="return LoadJubject(this,<%=i%>);" style="WIDTH:70px;">
		<option value="S" selected="selected">Select</option>
		</select>
		</div>
		<div id="spnDoctorate<%=i%>"> </div></td>
		<td valign="top">
        <select id="ddlPassingYear<%=i%>" name="ddlPassingYear<%=i%>" class="newSelect" style="WIDTH:60px;">
		<option value="S" selected="selected">year</option>
<%
		For j=CInt(Year(Date)) to (CInt(Year(Date))-20) Step -1
		%>
		<option value="<%=j%>" ><%=j%></option>
		<%
		Next
%>
		</select> </td>
		<td valign="top">
        <input name="txtInstitute<%=i%>" type="text" id="txtInstitute<%=i%>" maxlength="255" class="newText" /></td>

		<td valign="top">
        <select id="ddlUniversity<%=i%>" name="ddlUniversity<%=i%>" class="newSelect" style="WIDTH:170px;" onChange="return createEdu(this,<%=i%>);">
		
			<%
               If i < 3 Then					   
            %>
              <option value="S" selected="selected">Select</option>
          	  <%For d = 0 To Ubound(arrBoardNameList,1) %>
	           <option value="<%=arrBoardNameList(d)%>" <%If Cstr(strUniName) = Cstr(arrBoardNameList(d)) Then%> selected="selected" <%End If%>><%=arrBoardNameList(d)%></option>
	          <%Next%>
              <% Else%>
		<option value="S">Select</option>
       <option value="BIBM-Dhaka University">BIBM-Dhaka University</option>

  <%

	strPath = "UNIVERSITY"	
	errLog=""
	LoadDataFromXML arrUni,strPath,"ID_uni","name_uni"

If arrUni(0,0) <> "Nothing" Then 

	For f = 0 To Ubound(arrUni,1)
			%>
        <option value="<%=arrUni(f,1)%>"><%=arrUni(f,1)%></option>    
			
<%
	Next 			   
End If 						
%>
         
		<option value="S">----------------------------------------------------------------</option>
        			<%
					End If
					%>
		<option value="Foreign">Foreign Institute</option>
		<option value="Others">Others</option>
		</select>
		<div id="sp_edu<%=i%>"></div></td>
		<td valign="top">
		<div id="spnResult<%=i%>">
		<select name="ddlResult<%=i%>" id="ddlResult<%=i%>" onChange="return createGrd(this,<%=i%>);" class="newSelect">
		<option value="-1" selected="selected">Select</option>
		</select>
		</div>
		<div id="sp_grd<%=i%>"></div></td>
		<td valign="top" align="center">
		<table width="100%">
                                     <tbody>
                                      <tr> 
                                       <td width="50%"> 
                                  
   <input type="text" name="txtResultPoint<%=i%>" id="txtResultPoint<%=i%>" class="newText" style="WIDTH:50px;" maxlength="5" onKeyPress="return resultPoint(this, event)"  onClick="valueRemove(this);" disabled/>
                                   </td>
                                   <td width="50%">
					                <select id="ddlCGPAScale<%=i%>" name="ddlCGPAScale<%=i%>" class="newSelect" style="WIDTH:60px;visibility:hidden;">
					                  <option value="-1" selected="selected">Out of</option>
					                  <option value="5">5</option>
					                  <option value="4">4</option>
				                    </select></td>
                                    </tr>
                                    </tbody>
                                   </table>
                </td>
        
        <td valign="top"><div id="spnSubject<%=i%>">
		<select name="ddlSubject<%=i%>" id="ddlSubject<%=i%>" class="newSelect" style="WIDTH:130px;" onChange="return LoadOthers(this,<%=i%>);">
		<option value="S" selected="selected">Select</option>
		</select>
		</div>
		<div id="spnOthers<%=i%>"> </div></td>
		</tr>
