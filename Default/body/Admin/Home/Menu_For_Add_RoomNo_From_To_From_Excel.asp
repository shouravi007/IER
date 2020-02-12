      <form id="frm_AddRoomFromExcel" action="?<%=Encode("Location=attendance&FormAction=AddRoomFromExcel")%>"   method="POST">
                            <script>
                            function AddRoomFromExcel()
							{
								document.getElementById('frm_AddRoomFromExcel').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="Roll" class="box-wrap" title="Roll Generation" onclick="AddRoomFromExcel();">
									<i class="fa fa-trello icon" aria-hidden="true"></i>
									<h3 class="title">Add Room details From Excel</h3>
</a>                          
                           
  </form>
 