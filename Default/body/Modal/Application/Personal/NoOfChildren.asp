  <div class="col-sm-4">
	<label for="NoofChildren">No. of Children
	  <span id="txtFirstNameEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	 <select name="ddlNoOfChildren" id="ddlNoOfChildren" class="form-control"<%If strNoOfChildren = "S" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> onChange="ChangeEstaricColor(this, 'ddlDateOfBirth');">
                <option value="-1" >Select</option>
                <%
                For a=1 To 10
                %>
                <option value="<%=a%>" <%If a=intNoOfClildren Then%>selected<%End If%>><%=a%> </option>
                <%
                Next
                %>
      </select>
     
     
	</div>
  </div>