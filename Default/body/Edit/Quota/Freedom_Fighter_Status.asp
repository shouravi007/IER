 
  <div class="form-group">
    <div class="row">
      
      <div class="col-sm-3">
        <label for="experience">Freedom Fighter Quota(if any)</label>
      </div>
      
<div class="col-sm-9">
	<div class="form-group">
  		<div class="required">
                

    <div class="radio">    
    	<input  type="radio"   name="ddlFFQ" id="ddlFFQY"  value="1"<%if strFredomFighter = "C" or strFredomFighter = "GC" Then%>Checked<%End If%>/>Yes
    </div>
    
    <div class="row" id="fredom" style="<%If strFredomFighter = "C" or strFredomFighter = "GC" Then%>display:block;<%else%>display:none;<%End IF%>">
                
         <div class="radio">
<input  type="radio"  name="ddlFF" id="ddlFFC" value="C" <%if strFredomFighter = "C" Then%>Checked<%End If%>/>
          Child
          </div>
           <div class="radio">
<input  type="radio" name="ddlFF" id="ddlFFGC" value="GC"<%if strFredomFighter = "GC" Then%>Checked<%End If%>/>
            Grand Child
          </div>
                             
    </div>
                          
    <div class="radio">
 <input  type="radio" name="ddlFFQ" id="ddlFFQN" value="0" <%if strFredomFighter = "0" Then%>Checked<%End If%>/>No
 </div>                      
 
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
