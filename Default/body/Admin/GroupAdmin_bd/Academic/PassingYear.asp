Passing Year
        <select name="ddlPassingYear<%=diffedulevel%>"  id="ddlPassingYear<%=diffedulevel%>" style="WIDTH:100px">
          <option value="S" >Select</option>
          <%For i = Year(Date) To Year(Date)-25 Step -1%>
          <option value="<%=i%>" <% If  strGroupName <> ""  Then  %> <%  If  intPassingYear(diffedulevel)  <>  ""  Then  %> <%   If i =  Cint(intPassingYear(diffedulevel))  Then %>     selected="selected"  <%End if  %>  <% End if  %>  <%  End if%>> <%=i%>  </option>
          <%Next%>
        </select>