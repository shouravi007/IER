                            <form id="form111" action="?<%=Encode("Location=Admin&FormAction=JobWiseResume")%>"   method="POST">
                            <script>
                            function JobWiseResume()
							{
								document.getElementById('form111').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

								<a id="jobApply" class="box-wrap" title="Job Apply" onclick="JobWiseResume();">
									<i class="fa fa-user icon" aria-hidden="true"></i>
									<h3 class="title">Date wise resume</h3>
								</a>                            
                          
                            </form>	
 						
