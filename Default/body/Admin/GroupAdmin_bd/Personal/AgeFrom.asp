            <select name="ddlAgeFrom" class="text" id="ddlAgeFrom" style="width:55px;" >
                <option value="S" >From</option>
                <%=intAgeFrom&intAgeTo%>
				<%For i = 18 To 35%>
                <option value="<%=i%>" <%If i = Cint(intAgeFrom) Then %>selected="selected" <%End if%>><%=i%></option>
                <%Next%>
              </select>
