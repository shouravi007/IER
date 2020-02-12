  <div class="col-sm-4">
	<label for="E-mail">E-mail
	  <span id="txtEmailEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
    
     <input placeholder="E-mail"  name="txtEmail" id="txtEmail" type="text" class="form-control" <%If strEmail = "" And IsBlank = "True" Then%>"background-color:#FFCA95;"<%End If%> maxlength="50" value="<%=strEmail%>" onKeyUp="changeEstericColor(this.id);" />
          <label for="cemail" id="cemail" style="display:none;color:#e60278;"></label>

	</div>
  </div>
  

  
  
  <script>
  
  
    $("#txtEmail").blur(function()
	 {
        var dvElement = $('#txtEmail').val();
        if ( dvElement != '' ) 
        {		 
		 
		$.post("ajax.asp",
		 {
			 ajax : "duplicate_email" ,
			 txtEmail : $("#txtEmail").val()
		 },
		 function(data,status)
		 {
			//alert("data:"+data+"\nstatus"+status); 
			
			if (data != "")
			{
			   
			   
				var encodedStr = data ;
				
				var parser = new DOMParser;
				var dom = parser.parseFromString(
					'<!doctype html><body>' + encodedStr,
					'text/html');
				var decodedString = dom.body.textContent;			   
			   
			   $("#cemail").html(decodedString);
			   
				var encoded = data; 
				var decoded = $("<div/>").html(encoded).text();
				//alert(decoded);			   
			    alert(decoded.substring(0, decoded.lastIndexOf("<br>"))); 
			   //$("#cphone").style("display","block");
			    $("#cemail").show();
			   return false; 	
			}
			else
			{
			   $("#cemail").text("");
			   $("#cemail").hide();
			}
		 });
		}
	    else
		{
			   $("#cemail").text("");
			   $("#cemail").hide();
		}
	 });
  </script>  
  
  
  