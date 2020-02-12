  <div class="form-group">
                        <div class="row">
                          <div class="col-sm-3">
                            <label for="experience">Freedom Fighter  Quota(if any)</label>
                          </div>
                          <div class="col-sm-9">
                            <div class="form-group">
                              <div class="required">
                        
                       <% if cstr(strFormAction) = cstr("EditResume") then %> 
                            <% if FreedomFighter <> "" and isnull(FreedomFighter) = false then 
							     response.Write(FreedomFighter)
							   else 
							     response.Write("Non Freedom Fighter")
							   end if
							   
							%>
                       <% Elseif cstr(strFormAction) = cstr("EditResume") then %>

                       <% Elseif cstr(strFormAction) = cstr("EditResume") then %>
            
                     
                     
                       <% Else%>
					   

                          <div class="radio">
                            <input  type="radio"   name="ddlFFQ" id="ddlFFQY"  value="1" onClick="showEmployee('fredom');"  />                          
                             Yes
                           </div>
                     

    <div class="row" id="fredom" style="<%if  strFredomFighterQuestion = 0  Then%>display:none;<%End IF%>">
        	
                         <div class="radio">
                    <input  type="radio"  name="ddlFF"  id="ddlFFC" value="C" <%if strFredomFighterAnswer = "C" Then Response.Write("Checked")%> />
                          
                          Child
                          </div>
                     
                          
                     
                           <div class="radio">
<input  type="radio" name="ddlFF" id="ddlFFGC" value="GC" <%if strFredomFighterAnswer = "GC" Then Response.Write("Checked")%>    onClick="showEmployee('fredomDetails');"/>
                            Grand Child
                          </div>
                    
                          
   </div>
                      
                      
                      
                           <div class="radio">
 <input  type="radio" name="ddlFFQ" id="ddlFFQN" value="0" />
                            No
                          </div>                      
                      
					
                      <% End if %>   
  
  
  
                                 
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>


         
					     
                      
                      
                      


<script>
function hideEmployee(obj)
{
	document.getElementById(obj).style.display = "none";
}
function showEmployee(obj)
{
	document.getElementById(obj).style.display = "block";
}// JavaScript Document
</script>
