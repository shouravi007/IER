      <form id="Roll_Delete_All" action="?<%=Encode("Location=Admin&FormAction=Roll_Delete_All")%>"   method="POST">
                            <script>
                            function Roll_Delete_All()
							{
								document.getElementById('Roll_Delete_All').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="Roll" class="box-wrap" title="Roll Generation" onclick="Roll_Delete_All();">
									<i class="fa fa-trello icon" aria-hidden="true"></i>
									<h3 class="title">Roll Delete all </h3>
</a>                          
                           
  </form>
 