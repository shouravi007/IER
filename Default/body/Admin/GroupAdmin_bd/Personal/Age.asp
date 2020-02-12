<div class="col-sm-12">
   <label>Age Range</label>
 </div>

<div class="col-sm-6">
   <div class="form-group">
    <select name="ddlAgeFrom" class="text form-control" id="ddlAgeFrom" >
    <option value="S" >From</option>
    <%=intAgeFrom&intAgeTo%>
    <%For i = 18 To 35%>
    <option value="<%=i%>" <%If i = Cint(intAgeFrom) Then %>selected="selected" <%End if%>><%=i%></option>
    <%Next%>
  </select>
   </div>
</div>


<div class="col-sm-6">
   <div class="form-group">
    <select name="ddlAgeTo" class="text form-control" id="ddlAgeTo"> 
    <option value="S" selected="selected">To</option>
		<%For i = 18 To 35%>
        <option value="<%=i%>" <%If i = Cint(intAgeTo) Then %> selected="selected" <%End if%>><%=i%></option>
        <%Next%>
    </select>
   </div>
</div>

