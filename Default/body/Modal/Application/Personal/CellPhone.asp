  <div class="col-sm-4">
	<label for="CellPhone">Emergency Contact Number
	  <span id="txtCellPhoneEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	   <input placeholder="017XXXXXXXX" name="txtCellPhone" id="txtCellPhone" type="text" class="form-control"<%If strCellPhone = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="11" minLength ="11" value="<%=strCellPhone%>" onKeyUp="changeEstericColor(this.id);" onKeyPress="return intonly(this, event)"/> 
   <span id="txtCellPhone_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
   
	</div>
  </div>
     
     
   <script>  
   function mobileValidate()
   {
	    var dvElement = $('#txtContactPhone').val();
	    var dvElement2 = $('#txtEmail').val();
		
        if ( dvElement != '' &&  dvElement2 != '' ) 
        {	
			 
		document.getElementById('wait').style.display = "block"; 
		$.post("?<%=Encode("Location=Ajax&FormAction=ajax2")%>",
		 {

			 ajax : "duplicate_email" ,
			 txtEmail : $("#txtEmail").val(),
			 txtContactPhone : $("#txtContactPhone").val(),
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
	         	document.getElementById('wait').style.display = "none"; 
			    alert(data);
			   //document.getElementById('btnSubmit').disabled = true; 
			   
			    if(data == 'Your email has been already used. Please provide new email account.') 
			    {
			    $("#cemail").text(data);
			   //$("#cphone").style("display","block");
			    $("#cemail").show();
			      return false; 	
				}
			    if ( data == 'Your mobile number has been already used. Please provide new mobile number.') 
				{
			    $("#cphone").text(data);
			   //$("#cphone").style("display","block");
			    $("#cphone").show();
			      return false; 	
				}
			    if ( data == 'Your personal information  already used. please Call to 16479.') 
				{
			    $("#cphone").text(data);
			   //$("#cphone").style("display","block");
			    $("#cphone").show();
			       return false; 	
				}
				
				if(data == "OK")
				{
					document.getElementById('frmApplication').submit();				
					return true;
				}
				

			}
			
			else if( data == "OK")
			{
                document.getElementById('frmApplication').submit();				
				return true;
				
			}			
			else
			{
	         	document.getElementById('wait').style.display = "none"; 
			   //document.getElementById('btnSubmit').disabled = false; 
			   $("#cphone").text("");
			   $("#cphone").hide();
               return false; 
			}
		 });
		}
	    else
		{
			   //document.getElementById('btnSubmit').disabled = false; 
			   $("#cphone").text("");
			   $("#cphone").hide();
			    return false; 
		}

   }
  
       </script>
