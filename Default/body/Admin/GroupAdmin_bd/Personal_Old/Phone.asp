  <input class="text" type="text" name="txtPhone" id="txtPhone" value="<%=strPhone%>" style="width:150px;" />
            <input type="radio" name="rdoPhone" id="rdoCellPhone" style="border:0px;" value="Cell Phone" <%If strPhoneType = "Cell Phone" Then  %> checked="checked" <%End if%>/>
Mobile
<input type="radio" name="rdoPhone" id="rdoHomePhone" style="border:0px;" value="Home Phone"  <%If strPhoneType = "Home Phone" Then  %> checked="checked" <%End if%> />
Home