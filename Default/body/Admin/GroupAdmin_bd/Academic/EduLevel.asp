Education Level
        <select name="ddlEducationLevel<%=diffedulevel%>"  id="ddlEducationLevel<%=diffedulevel%>" style="WIDTH:120px" >
          <option value="S" selected="selected">Select</option>
          <% If  diffedulevel = 1 Then %>
          <option value="1" <%'If intEducationLevel1 = 1 Then %> <%'End if%> >Secondary</option>
          <%End if %>
          <%If  diffedulevel = 2 Then %>
          <option value="2" <%'If intEducationLevel2 = 2 Then %> <%'End if%> >Higher Secondary</option>
          <%End if %>
          <%If  diffedulevel = 3 Then %>
          <option value="3" <%'If intEducationLevel3 = 3 Then %>  <%'End if%>  >Graduation</option>
          <%End if %>
          <%If  diffedulevel = 4 Then %>
          <option value="4" <%'If intEducationLevel4 = 4 Then %>  <%'End if%> >Post Graduation</option>
          <%End if %>
          <%'If  diffedulevel = 5 Then %>
          <!--<option value="5" <%'If intEducationLevel5 = "5" Then %> selected="selected" <%'End if%> >Doctoral</option>-->
          <%'End if %>
        </select>