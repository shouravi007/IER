                            <form id="form999222" action="?<%=Encode("Location=Admin&FormAction=DownloadResume")%>"   method="POST">
                            <script>
                            function DownloadResume()
							{
								document.getElementById('form999222').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

								<a id="DownloadApply" class="box-wrap" title="Download" onclick="DownloadResume();">
									<i class="fa fa-user icon" aria-hidden="true"></i>
									<h3 class="title">Download resume</h3>
								</a>                            
                          
                            </form>	
 						
