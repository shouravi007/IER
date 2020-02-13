                            <form id="form000" action="?<%=Encode("Location=Admin&FormAction=TrackingSearch")%>"   method="POST" target="_blank">
                            <script>
                            function TrackingResume()
							{
								document.getElementById('form000').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

								<a id="Tracking" class="box-wrap" title="Tracking" onclick="TrackingResume();">
									<i class="fa fa-user icon" aria-hidden="true"></i>
									<h3 class="title">Tracking Search</h3>
								</a>                            
                          
                            </form>	
 						
