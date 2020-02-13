 
  <div class="form-group">
    <div class="row">
      
      <div class="col-sm-3">
        <label for="experience">Freedom Fighter Quota(if any)</label>
      </div>
      
        <div class="col-sm-9">
            <div class="form-group">
                <div class="required">
                        
<%

If Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" or Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("SERVER_NAME") = "server-ers" Then  	   

  ' response.Write("FreedomFighter"& FreedomFighter &"<br>"&Tribal&"<br>"&Disable&"<br>"&Ansarvdp&"<br>"&Orphan)
End If	
		
				
        if FreedomFighter = "C" Then 
            Response.Write("Yes(Child)")
        elseif FreedomFighter = "GC" Then 
            Response.Write("Yes(Grand Child)")
        elseif FreedomFighter = "" or FreedomFighter = 0 Then 
            Response.Write("No")
        end if
        
%>
        
         
                    </div>
                </div>
            </div>
    
	</div>
</div>


<script>

 $(document).ready(function(){
        $("#ddlFFQY"). click(function(){
            $("#fredom").css({"display":"block"});
            $("#ddlFFC"). prop("checked", true);
        });

        $("#ddlFFQN"). click(function(){
            $("#fredom").css({"display":"none"});
        });
    });   

</script>
