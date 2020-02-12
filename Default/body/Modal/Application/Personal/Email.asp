  <div class="col-sm-4">
	<label for="E-mail">E-mail
	  <%if system <> "ksb" then%>
      <span id="txtEmailEsteric" style="color:#FF0000;">*</span>
      <%end if%>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
    
     <input placeholder="E-mail"  name="txtEmail" id="txtEmail" type="text" class="form-control" <%If strEmail = "" And IsBlank = "True" Then%>"background-color:#FFCA95;"<%End If%> maxlength="50" value="<%=strEmail%>" onKeyUp="changeEstericColor(this.id);" />
          <label for="cemail" id="cemail" style="display:none;color:#e60278;"></label>

<span id="txtEmail_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>

	</div>
  </div>
  

  
  
  <script>
    $("#txtEmail").blur(function()
	 {
        var dvElement = $('#txtEmail').val();
        if ( dvElement != '' ) 
        {		 
		 
		$.post("?<%=Encode("Location=Ajax&FormAction=ajax")%>",
		 {
			 ajax : "duplicate_email" ,
			 txtEmail : $("#txtEmail").val()
		 },
		 function(data,status)
		 {
			//alert("data:"+data+"\nstatus"+status); 
			
			if (data != "")
			{
			   alert(data);
			   $("#cemail").text(data);
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
  
  
  