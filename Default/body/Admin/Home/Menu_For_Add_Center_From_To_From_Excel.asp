      <form id="frm_AddCenterFromExcel" action="?<%=Encode("Location=attendance&FormAction=AddCenterFromExcel")%>"   method="POST">
                            <script>
                            function AddCenterFromExcel()
							{
								document.getElementById('frm_AddCenterFromExcel').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="Roll" class="box-wrap" title="Roll Generation" onclick="AddCenterFromExcel();">
									<i class="fa fa-trello icon" aria-hidden="true"></i>
									<h3 class="title">Add Center name,rollfrom to From Excel</h3>
</a>                          
                           
  </form>
 