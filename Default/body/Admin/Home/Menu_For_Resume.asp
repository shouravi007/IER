            
        <form id="form222" action="?<%=Encode("Location=Admin&FormAction=SearchResult_Load")%>"   method="POST">
                            <script>
                            function ViewJobWiseResume()
							{
								document.getElementById('form222').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="1" />
                            <input type="hidden" id="ddlJobPosting" name="ddlJobPosting" value="1" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

								<a id="View" class="box-wrap" title="view cv" onclick="ViewJobWiseResume();">
									<i class="fa fa-user icon" aria-hidden="true"></i>
									<h3 class="title">All Resume for TSO </h3>
								</a>                            
                          
                            </form>	
 						

