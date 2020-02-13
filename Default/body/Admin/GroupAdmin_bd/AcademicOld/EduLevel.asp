<div class="col-sm-12">
    <h4>
<input type="checkbox"  name="ddlEducationLevel<%=diffedulevel%>" class="text" id="ddlEducationLevel<%=diffedulevel%>" onclick="Enable(this,<%=diffedulevel%>);" 
         
          <% If  diffedulevel = 1 Then %>
           value="1" ><label for="">Secondary</label>
          <%End if %>
          <%If  diffedulevel = 2 Then %>
           value="2" ><label for="">Higher Secondary</label>
          <%End if %>
          <%If  diffedulevel = 3 Then %>
          value="3" ><label for="">Graduation</label>
          <%End if %>
          <%If  diffedulevel = 4 Then %>
          value="4"><label for="">Post Graduation</label>
          <%End if %>
          <%If  diffedulevel = 5 Then %>
           value="5"><label for="">Post Graduation - 2 </label>
          <%End if %>
    </h4>
</div>