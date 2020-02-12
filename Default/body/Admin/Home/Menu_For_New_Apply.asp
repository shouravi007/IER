      <form id="newapply" action="?<%=Encode("Location=Admin&FormAction=NewApply")%>"   method="POST" target="_blank">
                            <script>
                            function newapply22()
							{
								document.getElementById('newapply').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="newapply" class="box-wrap" title="NewApply" onclick="newapply22();">
									<i class="fa fa-briefcase icon" aria-hidden="true"></i>
									<h3 class="title">New Apply</h3>
</a>                          
                           
  </form>	
 
 
 