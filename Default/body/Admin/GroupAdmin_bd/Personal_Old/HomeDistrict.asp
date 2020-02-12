          <select name="txtDistrict" id="txtDistrict" class="text">
            <option value="S" selected="selected">Select</option>
            <%
         For d = 1  To 64
        %>
            <option value="<%=d%>" <%If arrDist(d)= varHomeDist Then%>selected<%End If%>><%=arrDist(d)%></option>
            <%
        Next
        %>
          </select>
