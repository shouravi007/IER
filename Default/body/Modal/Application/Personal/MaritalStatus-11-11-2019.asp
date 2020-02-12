  <div class="col-sm-4">
	<label for="MaritalStatus">Marital Status
	  <span id="spnMaritalStatus" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	  <select name="ddlMaritalStatus" id="ddlMaritalStatus" class="form-control" <%If strMaritalStatus = "S" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> onChange="ChangeEstaricColor(this, 'spnMaritalStatus');Spouse(this);">
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
  
  
    <script>
	
	function Spouse(obj)
	{
		if(obj.value == 'Married')
		{
			$('#spnSpouse').show();
		}
		else
		{
			$('#spnSpouse').hide();
		}
	}
	
	
	
	
    $("#ddlMaritalStatus").blur(function()
	 {
        var strFirstName = $('#txtFirstName').val();
        var strLastName = $('#txtLastName').val();
        var strFatherName = $('#txtFatherName').val();
        var strMotherName = $('#txtMotherName').val();
        var strBirthDay = $('#ddlDateOfBirthDay').val();
        var strBirthMonth = $('#ddlDateOfBirthMonth').val();
        var strBirthYear = $('#ddlDateOfBirthYear').val();
		
		
        if ( strFirstName != '' && strLastName != '' && strFatherName != '' && strMotherName != '' && strBirthDay != '' && strBirthMonth != ''  && strBirthYear != ''  ) 
        {		 
		 
		$.post("ajax_duplicate.asp",
		 {
			 ajax : "duplicate_resume" ,
			 txtFirstName : $("#txtFirstName").val(),
			 txtLastName : $("#txtLastName").val(),
			 txtFatherName : $("#txtFatherName").val(),
			 txtMotherName : $("#txtMotherName").val(),
			 ddlDateOfBirthDay : $("#ddlDateOfBirthDay").val(),
			 ddlDateOfBirthMonth : $("#ddlDateOfBirthMonth").val(),
			 ddlDateOfBirthYear : $("#ddlDateOfBirthYear").val()
			 
		 },
		 function(data,status)
		 {
			//alert("data:"+data+"\nstatus"+status); 
			
			if (data != "")
			{
			   alert(data);
			   $("#cname").text(data);
			   //$("#cname").style("display","block");
			    $("#cname").show();
			   return false; 	
			}
			else
			{
			   $("#cname").text("");
			   $("#cname").hide();
			}
		 });
		}
	    else
		{
			   $("#cname").text("");
			   $("#cname").hide();
		}
	 });
  </script>