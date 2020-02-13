   
        <form id="admitCountDailyACO" action="?<%=Encode("Location=Admin&FormAction=admitCountDailyACO")%>"    method="POST">
                            <script>
                            function admitcountACO()
							{
								document.getElementById('admitCountDailyACO').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="admitcountACO" class="box-wrap" title="Job Apply" onclick="admitcountACO();">
									<i class="fa fa-download icon" aria-hidden="true"></i>
									<h3 class="title">Admit Download Counter ACO </h3>
</a>                          
                           
  </form>	
     