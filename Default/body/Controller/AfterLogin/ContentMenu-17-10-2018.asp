
                  <form id="form1" action="?<%=Encode("Location=Controller&FormAction=Apply")%>" method="POST">
                  <script>
                  function MyFunction()
               {
				
      var x = confirm(" Are you sure to apply for <%=strMsgApply%>?\n if yes then click to 'OK'\n Otherwise click to 'Cancel'\n Becarefull your job application can not be changed ! ");
								
							if ( x == true )
							 {
								document.getElementById('form1').submit();
							 }
							 else
							 {
								 alert("Thanks job position unchanged!");
							 }
								return false;				
				
				
			   }
			   
				  </script>
                    <input type="hidden" id="position" name="position" value="<%=position%>" />
                  <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                    
                  <input type="hidden" id="txtTrackingNo" name="txtTrackingNo" value="<%=TrackNo%>">
                
                  <input type="hidden" id="TrackNoNew" name="TrackNoNew" value="<%=TrackNoNew%>"/>  
                  
                  <input type="hidden" id="txtPassword" name="txtPassword" value="<%=strPassword%>">
                  <!--  <a id="jobApply" title="Job Apply" href="#" onClick="MyFunction();return false;">
                  <img src="http://ers.bdjobs.com/applications/images/apply.png" alt=""><h2>Job Applied</h2></a>-->
                  </form>	
  

<%
imageName = "SJIBL"&TrackNo&".jpg"
%>
    
    
    
<%if checkDevice = true then %>

                  <form id="form2" action="http://ers.bdjobs.com/applications/ImageResize/php/SJIBL/dev/uploader.php" method="POST" >
                  <input type="hidden" id="txtPassword" name="txtPassword" value="<%=strPassword%>">
                  
                  <input type="hidden" id="TrackNoNEW" name="TrackNoNEW" value="<%=TrackNoNew%>"/>  
              
              <input type="hidden" id="TrackNo" name="TrackNo" value="<%=TrackNo%>"/>     
    <input type="hidden" id="pageName" name="pageName" value="<%=Request.ServerVariables("URL")%>"/>                  
                
                  <input type="hidden" id="Name" name="Name" value="<%=strName%>"/>  
                  <input type="hidden" id="PostedOn" name="PostedOn" value="<%=postedOn%>"/>  
                  <input type="hidden" id="UpdatedOn" name="UpdatedOn" value="<%=updatedOn%>"/>  
                  <input type="hidden" id="imgSrc" name="imgSrc" value="<%=imgSrc%>"/>  
                  
            <input type="hidden" id="imageName" name="imageName" value="<%=imageName%>"/>  
            
            <input type="hidden" id="systemName" name="systemName" value="SJIBL_<%=year(now)%>" >

            
            <input type="hidden" id="now" name="now" value="<%=now%>"/>
    
<button class="btn-style" type="submit">
<i class="fa fa-pencil-square-o" aria-hidden="true"></i>Continue
</button>
                
                  </form> 

<%else%>   



                  <form id="form2" action="http://ers.bdjobs.com/applications/ImageResize/php/SJIBL/Edit_ImageProcess.php?track_no=<%=TrackNo%>&pass=<%=strPassword%>&imageName=<%=imageName%>&pageName=<%=Request.ServerVariables("SCRIPT_NAME")%>&TrackNoNew=<%=TrackNoNew%>" method="POST" >
                  <input type="hidden" id="TrackNoNEW" name="TrackNoNEW" value="<%=TrackNoNew%>"/>   
                  <!--<a href="#"  onClick="document.getElementById('form2').submit();return false;"><img src="http://ers.bdjobs.com/applications/images/change-photo.png" alt=""><h2>Change Photo</h2></a>-->
                  
                  <input type="hidden" id="txtPassword" name="txtPassword" value="<%=strPassword%>">
                  
                  <input type="hidden" id="TrackNoNEW" name="TrackNoNEW" value="<%=TrackNoNew%>"/>  
              
              <input type="hidden" id="TrackNo" name="TrackNo" value="<%=TrackNo%>"/>     
    <input type="hidden" id="pageName" name="pageName" value="<%=Request.ServerVariables("URL")%>"/>                  
                
                  <input type="hidden" id="Name" name="Name" value="<%=strName%>"/>  
                  <input type="hidden" id="PostedOn" name="PostedOn" value="<%=postedOn%>"/>  
                  <input type="hidden" id="UpdatedOn" name="UpdatedOn" value="<%=updatedOn%>"/>  
                  <input type="hidden" id="imgSrc" name="imgSrc" value="<%=imgSrc%>"/>  
                  
            <input type="hidden" id="imageName" name="imageName" value="<%=imageName%>"/>  
            
            <input type="hidden" id="systemName" name="systemName" value="SJIBL_<%=year(now)%>" >

            
            <input type="hidden" id="now" name="now" value="<%=now%>"/> 
                  
                  
                  
                  </form>
  
<%End If%>

              
                <%'If Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("SERVER_NAME") = "server-ers" Then  %> 
                  
                  
                  <form id="form3" action="?<%=Encode("Location=Edit&FormAction=EditResume")%>" method="POST">
                  <input type="hidden" id="position" name="position" value="<%=position%>" />
                  <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                    
                  <input type="hidden" id="txtTrackingNo" name="txtTrackingNo" value="<%=TrackNo%>">
                
                  <input type="hidden" id="TrackNoNew" name="TrackNoNew" value="<%=TrackNoNew%>"/>  
                  
                  <input type="hidden" id="txtPassword" name="txtPassword" value="<%=strPassword%>">
                    <!--<a href="#" onClick="document.getElementById('form3').submit();return false;"><img src="http://ers.bdjobs.com/applications/images/update-resume.png" alt=""><h2>Edit Resume</h2></a> -->
                  </form>
  
              
                <%'Else%>
                  <!-- <h2>Edit Resume will be available from 19 March, 2018 </h2>-->          
                
                <%'End If%>
              
              
                  <form id="form4" action="?<%=Encode("Location=View&FormAction=ViewResume")%>" method="POST">
                
                
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
