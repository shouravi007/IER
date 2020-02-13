<div class="col-sm-4">
  <div class="form-group">
    <label>Passing Year</label>

<select name="ddlPassingYear<%=diffedulevel%>" class="text form-control" id="ddlPassingYear<%=diffedulevel%>" disabled="disabled">
      <option value="S" >Select</option>
      <%For i = Year(Date) To Year(Date)-25 Step -1%>
      <option value="<%=i%>" <% If  strGroupName <> ""  Then  %> <%  If  intPassingYear(diffedulevel)  <>  ""  Then  %> <%   If i =  Cint(intPassingYear(diffedulevel))  Then %>     selected="selected"  <%End if  %>  <% End if  %>  <%  End if%>> <%=i%>  </option>
      <%Next%>
    </select>
   </div>
</div>