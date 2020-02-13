   
        <form id="admitCountDaily" action="?<%=Encode("Location=Admin&FormAction=admitCountDaily")%>"   method="POST">
                            <script>
                            function admitcount()
							{
								document.getElementById('admitCountDaily').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="admitcount" class="box-wrap" title="Daily Count TSO" onclick="admitcount();">
									<i class="fa fa-download icon" aria-hidden="true"></i>
									<h3 class="title">Admit Download Counter  </h3>
</a>                          
                           
  </form>	
     