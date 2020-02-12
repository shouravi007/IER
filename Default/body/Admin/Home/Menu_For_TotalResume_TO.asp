                            <form id="frm_jobwise_to" action="?<%=Encode("Location=Admin&FormAction=JobWiseResume_TO")%>"   method="POST">
                            <script>
                            function JobWiseResume_TO()
							{
								document.getElementById('frm_jobwise_to').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="2" />
                            <input type="hidden" id="jobid" name="jobid" value="2" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

								<a id="jobApply" class="box-wrap" title="Job Apply" onclick="JobWiseResume_TO();">
									<i class="fa fa-user icon" aria-hidden="true"></i>
									<h3 class="title">Date wise resume for TO </h3>
								</a>                            
                          
                            </form>	
 						
