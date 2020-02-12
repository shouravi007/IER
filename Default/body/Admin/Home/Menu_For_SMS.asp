   
        <form id="SMSINFO" action="?<%=Encode("Location=Admin&FormAction=SMSINFO")%>"   method="POST">
                            <script>
                            function SMSINFO333()
							{
								document.getElementById('SMSINFO').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="admitcount" class="box-wrap" title="Job Apply" onclick="SMSINFO333();">
									<i class="fa fa-download icon" aria-hidden="true"></i>
									<h3 class="title">SMS info details Row Data for Excel </h3>
</a>                          
                           
  </form>	
 
 
 
   
   
   