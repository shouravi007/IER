     <select name="ddlAgeTo" class="text" id="ddlAgeTo" style="width:55px;" >
              <option value="S" selected="selected">To</option>
              <%For i = 18 To 35%>
              <option value="<%=i%>" <%If i = Cint(intAgeTo) Then %> selected="selected" <%End if%>><%=i%></option>
              <%Next%>
            </select>
           