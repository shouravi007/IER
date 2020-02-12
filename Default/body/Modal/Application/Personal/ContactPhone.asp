  <div class="col-sm-4">
	<label for="ContactPhone">Contact Mobile
	  <span id="txtContactPhoneEsteric" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	  <input placeholder="017XXXXXXXX" name="txtContactPhone" id="txtContactPhone" type="text" class="form-control"<%If strContactPhone = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> maxlength="11" minLength = "11" onKeyUp="changeEstericColor(this.id);" value="<%=strContactPhone%>" onKeyPress="return intonly(this, event)"/>
      <label for="cphone" id="cphone" style="display:none;color:#e60278;"></label>
<span id="txtContactPhone_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
    
    </div>
  </div>
  
  
  <script>
    $("#txtContactPhone").blur(function()
	 {
        var dvElement = $('#txtContactPhone').val();
        if ( dvElement != '' ) 
        {		 
		 
		$.post("?<%=Encode("Location=Ajax&FormAction=ajax")%>",
		 {
			 ajax : "duplicate_phone" ,
			 txtContactPhone : $("#txtContactPhone").val()
		 },
		 function(data,status)
		 {
			//alert("data:"+data+"\nstatus"+status); 
			
			if (data != "")
			{
			   alert(data);
			   $("#cphone").text(data);
			   //$("#cphone").style("display","block");
			    $("#cphone").show();
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