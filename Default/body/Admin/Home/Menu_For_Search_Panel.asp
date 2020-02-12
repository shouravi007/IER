      <form id="GroupAdmin_bd" action="?<%=Encode("Location=Admin&FormAction=GroupAdmin_bd")%>"   method="POST">
                            <script>
                            function Search()
							{
								document.getElementById('GroupAdmin_bd').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="jobApply" class="box-wrap" title="Job Apply" onclick="Search();">
									<i class="fa fa-search icon" aria-hidden="true"></i>
									<h3 class="title">Search Panel</h3>
</a>                          
                           
  </form>	
 
 
 