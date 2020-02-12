  <div class="col-sm-4">
	<label for="E-mail">E-mail
    <%if system <> "ksb" then%>
	  <span id="txtEmailEsteric" style="color:#FF0000;">*</span>
    <%end if%>  
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
    
     <input placeholder="E-mail"  name="txtEmail" id="txtEmail" type="text" class="form-control" <%If strEmail = "" And IsBlank = "True" Then%>"background-color:#FFCA95;"<%End If%> maxlength="100" value="<%=strEmail%>" onKeyUp="changeEstericColor(this.id);"/>
    
	</div>
  </div>