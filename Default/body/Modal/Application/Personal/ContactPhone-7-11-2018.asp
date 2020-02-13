  <div class="col-sm-4">
	<label for="ContactPhone">Contact Mobile
	  <span id="txtContactPhoneEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	  <input placeholder="017XXXXXXXX" name="txtContactPhone" id="txtContactPhone" type="text" class="form-control"<%If strContactPhone = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="11" minLength = "11" onKeyUp="changeEstericColor(this.id);" value="<%=strContactPhone%>" onKeyPress="return intonly(this, event)"/>
      <label for="cphone" id="cphone" style="display:none;color:#e60278;"></label>
	</div>
  </div>
  
  
  <script>
    $("#txtContactPhone").blur(function()
	 {
        var dvElement = $('#txtContactPhone').val();
        if ( dvElement != '' ) 
        {		 
		 
		$.post("ajax.asp",
		 {
			 ajax : "duplicate_phone" ,
			 txtContactPhone : $("#txtContactPhone").val()
		 },
		 function(data,status)
		 {
			//alert("data:"+data+"\nstatus"+status); 
			
			if (data != "")
			{
			  // alert(data);
			  // $("#cphone").text(data);
			   //$("#cphone").style("display","block");
			  //  $("#cphone").show();
			  
			  
			   
				var encodedStr = data ;
				
				var parser = new DOMParser;
				var dom = parser.parseFromString(
					'<!doctype html><body>' + encodedStr,
					'text/html');
				var decodedString = dom.body.textContent;			   
			   
			   $("#cphone").html(decodedString);
			   $("#cphone").show();
			   
				var encoded = data; 
				var decoded = $("<div/>").html(encoded).text();
				//alert(decoded);			   
			    alert(decoded.substring(0, decoded.lastIndexOf("<br>"))); 			  
			  
			  
			   return false; 	
			}
			else
			{
			   $("#cphone").text("");
			   $("#cphone").hide();
			}
		 });
		}
	    else
		{
			   $("#cphone").text("");
			   $("#cphone").hide();
		}
	 });
  </script>