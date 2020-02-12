                        <div class="col-sm-6">
                            <label for="firstName">
                                <h4>Passing Year
                                    <span>*</span>
                                </h4>
                            </label>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group passing-year"> <select id="ddlPassingYear1" name="ddlPassingYear1" class="<%=frmcon%>" >
  <option value="S" selected="selected">Select  Passing Year</option>
<%For i = Year(Date)+3 To Year(Date)-50 Step -1%>
<option value="<%=i%>" <%If cstr(intPassYear) = cstr(i) Then%> selected="selected" <%End If%>><%=i%></option>
<%Next%>
</select>
                            </div>
                        </div>
