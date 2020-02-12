
        <form id="SignatureTO" action="?<%=Encode("Location=Admin&FormAction=AttendenceTO")%>"   method="POST" target="_blank">
                            <script>
                            function SignatureTO()
							{
								document.getElementById('SignatureTO').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="SignatureTO" class="box-wrap" title="Signature Sheet TO" onclick="SignatureTO();">
									<i class="fa fa-users icon" aria-hidden="true"></i>
									<h3 class="title">Signature sheet TO (CASH)</h3>
</a>                          
                           
  </form>	
  
     

  
  