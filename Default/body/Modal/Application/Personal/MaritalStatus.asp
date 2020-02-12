  <div class="col-sm-4">
	<label for="MaritalStatus">Marital Status
	  <span id="spnMaritalStatus" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	  <select name="ddlMaritalStatus" id="ddlMaritalStatus" class="form-control" <%If strMaritalStatus = "S" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> onChange="ChangeEstaricColor(this, 'spnMaritalStatus'); ">
            <option value="S" >Select</option>
            <option value="Unmarried" <%If strMaritalStatus = "Unmarried" Then%>selected<%End If%>>Unmarried</option>
            <option value="Married" <%If strMaritalStatus = "Married" Then%>selected<%End If%>>Married</option>
    </select> 
    
<span id="ddlMaritalStatus_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
    
                                              
	</div>
  </div>
  
  
    <script>
	
	
	
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
		 
		$.post("?<%=Encode("Location=Ajax&FormAction=ajax_duplicate")%>",
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