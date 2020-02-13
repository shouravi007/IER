  <div class="col-sm-4">
	<label for="ContactPhone">Contact Mobile
	  <span id="txtContactPhoneEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
    <%
	If system = "ksb" then
		strReadOnly = ""
		If strContactPhone <> "" then	
			sqlChkPaymentS = "SELECT JRID, APP_MOBILE FROM [CheckPmntStatus] WHERE APP_MOBILE='"& strContactPhone&"'"
	
			arrsqlChkPaymentS = objERS.RetrieveData(sqlChkPaymentS, strErr)
			ErrorMessage "15", errMsg, 0
			
			If arrsqlChkPaymentS(0,0) = "Nothing" Then
				strReadOnly = ""
			Else
				strReadOnly = "readonly"
			End If
			
		End If
		
	%>
	 <input placeholder="Contact Phone" name="txtContactPhone" id="txtContactPhone" type="text" class="form-control"  <%=strReadOnly%> maxlength="11"  onKeyUp="changeEstericColor(this.id);" value="<%=strContactPhone%>" onKeyPress="return intonly(this, event)"/>    
    <%else%>
	  <input placeholder="Contact Phone" name="txtContactPhone" id="txtContactPhone" type="text" class="form-control"<%If strContactPhone = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="11"  onKeyUp="changeEstericColor(this.id);" value="<%=strContactPhone%>" onKeyPress="return intonly(this, event)"/>
    <%end if%>  
	</div>
  </div>