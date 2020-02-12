  <div class="col-sm-4">
	<label for="MaritalStatus">Marital Status
	  <span id="spnMaritalStatus" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	  <select name="ddlMaritalStatus" id="ddlMaritalStatus" class="form-control" <%If strMaritalStatus = "S" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> onChange="ChangeEstaricColor(this, 'spnMaritalStatus');">
            <option value="S" >Select</option>
            <option value="Unmarried" <%If strMaritalStatus = "Unmarried" Then%>selected<%End If%>>Unmarried</option>
            <option value="Married" <%If strMaritalStatus = "Married" Then%>selected<%End If%>>Married</option>
    </select> 
   
   
    <%
if strMaritalStatus = "Married" then 
	strDisplay_spouse = "display:block;"  
else
	strDisplay_spouse = "display:none;"
	 
end if
%>
  		<div style="<%=strDisplay_spouse%>" id="spnSpouse">
                    <label for="SpouseName">Spouse Name
                         <span id="spnSpouseName" style="color:#FF0000;">*</span>
                    </label>
                    
                	<input class="form-control input-sm" name='txtSpouseName' type='text' id='txtSpouseName' value="<%=strSpouseName%>" onChange="ChangeEstaricColor(this, 'spnSpouseName');" placeholder="type here spouse name "  maxlength="70"/>
		
        
                     <label for="SpouseProfession">Spouse Profession
                         <span id="spnSpouseProfession" style="color:#FF0000;">*</span>
                    </label>
                    
                	<input class="form-control input-sm" name='txtSpouseProfession' type='text' id='txtSpouseProfession' value="<%=strSpouseProfession%>" onChange="ChangeEstaricColor(this, 'spnSpouseProfession');"  placeholder="type here spouse profession "  maxlength="70"/>
		
   
  
  
        
        </div>
       
   
   
                                              
	</div>
  </div>