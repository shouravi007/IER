      <form id="Roll_Generate_Problem" action="?<%=Encode("Location=Admin&FormAction=Roll_Generate_Problem")%>"   method="POST">
                            <script>
                            function Roll_Problem()
							{
								document.getElementById('Roll_Generate_Problem').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="Roll" class="box-wrap" title="Roll Generation" onclick="Roll_Problem();">
									<i class="fa fa-trello icon" aria-hidden="true"></i>
									<h3 class="title">Roll Generate for Problems</h3>
</a>                          
                           
  </form>
 