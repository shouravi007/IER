                            <form id="form00000111" action="?<%=Encode("Location=Admin&FormAction=Support")%>"   method="POST">
                            <script>
                            function Support()
							{
								document.getElementById('form00000111').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

								<a id="jobApply" class="box-wrap" title="Job Apply" onclick="Support();">
									<i class="fa fa-user icon" aria-hidden="true"></i>
									<h3 class="title">Applicants Support</h3>
								</a>                            
                          
                            </form>	
 						
