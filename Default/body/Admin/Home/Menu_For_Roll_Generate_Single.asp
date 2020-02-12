      <form id="Roll_Generate" action="?<%=Encode("Location=Admin&FormAction=Roll_Generate")%>"   method="POST">
                            <script>
                            function Roll()
							{
								document.getElementById('Roll_Generate').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="Roll" class="box-wrap" title="Roll Generation" onclick="Roll();">
									<i class="fa fa-trello icon" aria-hidden="true"></i>
									<h3 class="title">Roll Generate for single applicants</h3>
</a>                          
                           
  </form>
 