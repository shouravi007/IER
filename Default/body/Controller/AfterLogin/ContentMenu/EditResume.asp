         <%'If Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("SERVER_NAME") = "server-ers" Then  %> 
                  
                  
                  <form id="form4" action="?<%=Encode("Location=Edit&FormAction=EditResume")%>" method="POST" target="_blank">
                  <input type="hidden" id="position" name="position" value="<%=position%>" />
                  <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                    
                  <input type="hidden" id="txtTrackingNo" name="txtTrackingNo" value="<%=intTrackingNo%>">
                
                 
                  <input type="hidden" id="txtPassword" name="txtPassword" value="<%=strPassword%>">
                   
                  </form>
  
              
                <%'Else%>
                  <!-- <h2>Edit Resume will be available from 19 March, 2018 </h2>-->          
                
                <%'End If%>
              