                            <form id="form999" action="?<%=Encode("Location=Admin&FormAction=Shortlisted_Load")%>"   method="POST">
                            <script>
                            function JobWiseResume999()
							{
								document.getElementById('form999').submit();
							}
                            </script>
                          <input type="hidden" id="ddlJobPosting" name="ddlJobPosting" value="1" />
                            <input type="hidden" id="jobid" name="jobid" value="1" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

								<a id="jobApply" class="box-wrap" title="Job Apply" onclick="JobWiseResume999();">
									<i class="fa fa-user icon" aria-hidden="true"></i>
									<h3 class="title">Shortlisted resume for JO</h3>
								</a>                            
                          
                            </form>	
 						
