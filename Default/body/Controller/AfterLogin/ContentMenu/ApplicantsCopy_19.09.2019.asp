
              
                  <form id="form6" action="?<%=Encode("Location=View&FormAction=ApplicantsCopy")%>" method="POST" target="_blank">
                
                
                  <!-- <a href="#" onClick="document.getElementById('form4').submit();return false;"><img src="http://ers.bdjobs.com/applications/images/view-resume.png" alt=""><h2>View Resume</h2></a>-->
                    <input type="hidden" id="TrackNo" name="TrackNo" value="<%=TrackNo%>"/>
                    
                    <input type="hidden" id="position" name="position" value="<%=position%>" />
                  <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                    
                  <input type="hidden" id="txtTrackingNo" name="txtTrackingNo" value="<%=TrackNo%>">
                
                  <input type="hidden" id="TrackNoNew" name="TrackNoNew" value="<%=TrackNoNew%>"/>  
                  
                  <input type="hidden" id="txtPassword" name="txtPassword" value="<%=strPassword%>">
                    
                  </form>
  
              
              
                <%'If Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("SERVER_NAME") = "server-ers" Then  %> 
                
                
              <%'End If%>
