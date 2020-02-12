  
      <form id="NotDownloadAdmit" action=""   method="POST">
                            <script>
                            function admitcountNotDownloadAdmit()
							{
								document.getElementById('NotDownloadAdmit').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="admitcount" class="box-wrap" title="Job Apply" onclick="admitcountNotDownloadAdmit();">
									<i class="fa fa-close icon" aria-hidden="true"></i>
									<h3 class="title">Not able download list JO </h3>
</a>                          
                           
  </form>	
     
  