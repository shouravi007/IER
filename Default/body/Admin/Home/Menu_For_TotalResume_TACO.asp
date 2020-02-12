                            <form id="frm_jobwise_taco" action="?<%=Encode("Location=Admin&FormAction=JobWiseResume_TACO")%>"   method="POST">
                            <script>
                            function JobWiseResume_TACO()
							{
								document.getElementById('frm_jobwise_taco').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="2" />
                            <input type="hidden" id="jobid" name="jobid" value="2" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

								<a id="jobApply" class="box-wrap" title="Job Apply" onclick="JobWiseResume_TACO();">
									<i class="fa fa-user icon" aria-hidden="true"></i>
									<h3 class="title">Date wise resume for TACO </h3>
								</a>                            
                          
                            </form>	
 						
