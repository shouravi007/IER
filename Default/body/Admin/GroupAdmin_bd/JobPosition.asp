<div class="col-sm-4">

<p>
     <strong>Position Advertised</strong>
</p>
 

<select name="ddlJobPosting" id="ddlJobPosting" class="text form-control">
  <option value="S"  >Select a position</option>
  <%if arrJobPosting( 0, 0) <> "Nothing" then %>
  <%For i = 0 to ubound(arrJobPosting, 2)%>
  <option value="<%=arrJobPosting(0, i)%>" selected="selected" ><strong><%=arrJobPosting(1, i)%></strong>--<i>(Deadline : <%=arrJobPosting(2, i)%>)</i></option>
   <%next
    end if
  %>
</select>

</div>
          
          
