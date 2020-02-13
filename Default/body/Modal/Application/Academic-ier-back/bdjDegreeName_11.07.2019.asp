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
                    If i = 1 Then
                    %>
                    <option value='SSC' <%If InStr(lcase(strDegreeName1),"ssc") > 0 Then%> selected="selected" <%End If%>>SSC</option>
                    <option value='Dakhil' <%If InStr(lcase(strDegreeName1),"dakhil") > 0 Then%> selected="selected" <%End If%>>Dakhil</option>
                    <option value='O Level' <%If InStr(lcase(strDegreeName1),"o lev") > 0 Then%> selected="selected" <%End If%>>O Level</option>
                    <option value='Vocational' <%If InStr(lcase(strDegreeName1),"vocat") > 0 Then%> selected="selected" <%End If%>>Vocational</option>
                    <option value='Equivalent' <%If InStr(lcase(strDegreeName1),"equivalent") > 0 Then%> selected="selected" <%End If%>>Equivalent</option>
                    <%
                    ElseIf i = 2 Then
                    %>
                    <option value='HSC' <%If InStr(lcase(strDegreeName2),"hsc") > 0 Then%> selected="selected" <%End If%>>HSC</option>
                    <option value='Alim' <%If InStr(lcase(strDegreeName2),"alim") > 0 Then%> selected="selected" <%End If%>>Alim</option>
                    <option value='Business Management' <%If InStr(lcase(strDegreeName2),"business") > 0 Then%> selected="selected" <%End If%>>Business Management</option>
                 
                    <option value="Diploma"<%If InStr(lcase(strDegreeName2),"dip") > 0 Then%> selected="selected" <%End If%>>Diploma</option>
                    <option value='A Level' <%If InStr(lcase(strDegreeName2),"a lev") > 0 Then%> selected="selected" <%End If%>>A Level</option>
                    <option value='Equivalent' <%If InStr(lcase(strDegreeName2),"equivalent") > 0 Then%> selected="selected" <%End If%>>Equivalent</option>
                  
                    <%					
                    ElseIf i = 3 Then
                    %>
                  
                    <option value='BA(Hons.)' <%If InStr(lcase(strDegreeName3),"ba(hon") > 0  Then%> selected="selected" <%End If%>>BA(Hons.)</option>
                    
                    <option value='BBA' <%If InStr(lcase(strDegreeName3),"bba") > 0 Then%> selected="selected" <%End If%>>BBA</option>                 
                   
                    <option value='BBS(Hons.)' <%If InStr(lcase(strDegreeName3),"bbs(hon") > 0  Then%> selected="selected" <%End If%>>BBS(Hons.)</option>
                    
                      <option value='BCom(Hons.)' <%If InStr(lcase(strDegreeName3),"bcom(hon") > 0  Then%> selected="selected" <%End If%>>BCom(Hons.)</option>
                    
                    <option value='BSc(Hons.)' <%If InStr(lcase(strDegreeName3),"bsc(hon") > 0  Then%> selected="selected" <%End If%>>BSc(Hons.)</option>
                    <option value='BSc(Engg)' <%If InStr(lcase(strDegreeName3),"bsc(eng") > 0  Then%> selected="selected" <%End If%>>BSc(Engg)</option>
                    <option value='BSS(Hons.)' <%If InStr(lcase(strDegreeName3),"bss(hon") > 0  Then%> selected="selected" <%End If%>>BSS(Hons.)</option>
                     <option value='B.Ed(Hons.)' <%If InStr(lcase(strDegreeName3),"bed(hon") > 0  Then%> selected="selected" <%End If%>>B.Ed(Hons.)</option>                   
                    
                    <option value='LLB(Hons.)' <%If InStr(lcase(strDegreeName3),"llb(hon") > 0  Then%>  selected="selected" <%End If%>>LLB(Hons.)</option>
                   
                   <%'If strJobId = "6" or strJobId = "7" Then %>
                   
                   <option value='BA(Pass)' <%If InStr(lcase(strDegreeName3),"ba(pas") > 0  Then%> selected="selected" <%End If%>>BA(Pass)</option>
                   <option value='BSS(Pass)' <%If InStr(lcase(strDegreeName3),"bss(pas") > 0  Then%> selected="selected" <%End If%>>BSS(Pass)</option>                   
                   <option value='BSc(Pass)' <%If InStr(lcase(strDegreeName3),"bsc(pas") > 0  Then%> selected="selected" <%End If%>>BSc(Pass)</option>     
                   <option value='BBS(Pass)' <%If InStr(lcase(strDegreeName3),"bbs(pas") > 0  Then%> selected="selected" <%End If%>>BBS(Pass)</option>                   
                  
                   <option value='BCom(Pass)' <%If InStr(lcase(strDegreeName3),"bcom(pas") > 0  Then%> selected="selected" <%End If%>>BCom(Pass)</option>

                    <option value='B.Ed(Pass)' <%If InStr(lcase(strDegreeName3),"bed(pas") > 0  Then%> selected="selected" <%End If%>>B.Ed(Pass)</option>
                  
                    <option value='LLB(Pass)' <%If InStr(lcase(strDegreeName3),"llb(pas") > 0  Then%>  selected="selected" <%End If%>>LLB(Pass.)</option>
                    
                     <option value='Fazil' <%If InStr(lcase(strDegreeName3),"fazil") > 0  Then%>  selected="selected" <%End If%>>Fazil</option>
 

                   <%'End If%>
                   
                   
                    <%					
                    ElseIf  i = 4  Then
                    %>
                    <option value='MA' <%If InStr(lcase(strDegreeName4),"ma" )> 0 Then%> selected="selected" <%End If%>>MA</option>            
                    <option value='MBA' <%If InStr(lcase(strDegreeName4),"mba") > 0 Then%> selected="selected" <%End If%>>MBA</option>                         
                    <option value="MBM" <%If InStr(lcase(strDegreeName4),"mbm") > 0 Then%> selected="selected" <%End If%>>MBM</option>
                    <option value="MBS" <%If InStr(lcase(strDegreeName4),"mbs") > 0 Then%> selected="selected" <%End If%>>MBS</option>            
                    <option value='MS' <%If InStr(lcase(strDegreeName4),"ms") > 0 Then%>  selected="selected" <%End If%>>MS</option>
                    <option value='MSc' <%If InStr(lcase(strDegreeName4),"msc") > 0 Then%> selected="selected" <%End If%>>MSc</option>
                    <option value='MSc(Engg)' <%If InStr(lcase(strDegreeName4),"msc(eng") > 0 Then%> selected="selected" <%End If%>>MSc(Engg)</option>
                   
                    <option value='MSS' <%If InStr(lcase(strDegreeName4),"mss") > 0  Then%> selected="selected" <%End If%>>MSS</option>
                    <option value='LLM' <%If InStr(lcase(strDegreeName4),"llm") > 0 Then%>  selected="selected" <%End If%>>LLM</option>     
                    <option value='Kamil' <%If InStr(lcase(strDegreeName4),"kamil") > 0 Then%>  selected="selected" <%End If%>>Kamil</option>  
                              
                    <%					
                    ElseIf  i = 5 Then
                    %>
                     <option value='MA' <%If InStr(lcase(strDegreeName5),"ma" )> 0 Then%> selected="selected" <%End If%>>MA</option>            
                    <option value='MBA' <%If InStr(lcase(strDegreeName5),"mba") > 0 Then%> selected="selected" <%End If%>>MBA</option>                         
                    <option value="MBM" <%If InStr(lcase(strDegreeName5),"mbm") > 0 Then%> selected="selected" <%End If%>>MBM</option>
                    <option value="MBS" <%If InStr(lcase(strDegreeName5),"mbs") > 0 Then%> selected="selected" <%End If%>>MBS</option>            
                    <option value='MS' <%If InStr(lcase(strDegreeName5),"ms") > 0 Then%> selected="selected" <%End If%>>MS</option>
                    <option value='MSc' <%If InStr(lcase(strDegreeName5),"msc") > 0 Then%> selected="selected" <%End If%>>MSc</option>
                    <option value='MSc(Engg)' <%If InStr(lcase(strDegreeName5),"msc(eng") > 0 Then%> selected="selected" <%End If%>>MSc(Engg)</option>
                   
                    <option value='MSS' <%If InStr(lcase(strDegreeName5),"mss") > 0  Then%> selected="selected" <%End If%>>MSS</option>
                    <option value='LLM' <%If InStr(lcase(strDegreeName5),"llm") > 0 Then%> selected="selected" <%End If%>>LLM</option>     
                    <option value='Kamil' <%If InStr(lcase(strDegreeName5),"kamil") > 0 Then%> selected="selected" <%End If%>>Kamil</option>  
                                  
                    <%					
                    Else
                    %>
                   
                    <%
                    End If
                    %>
	                 
                      </select>
	                </div>
	                <div id="spnDoctorate<%=i%>"> </div>
          </div>
     </div>