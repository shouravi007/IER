
  

<%
imageName = "TB"&TrackNo&".JPG"
%>
    
    
    
<%if checkDevice = true then %>

                  <form id="formSignature" action="http://ers.bdjobs.com/applications/ImageResize/php/TRUST_SIGNATURE/dev/uploader.php" method="POST" >
                  <input type="hidden" id="txtPassword" name="txtPassword" value="<%=strPassword%>">
                  
                  <input type="hidden" id="TrackNoNEW" name="TrackNoNEW" value="<%=TrackNoNew%>"/>  
              
              <input type="hidden" id="TrackNo" name="TrackNo" value="<%=TrackNo%>"/>     
    <input type="hidden" id="pageName" name="pageName" value="<%=Request.ServerVariables("URL")%>"/>                  
                
                  <input type="hidden" id="Name" name="Name" value="<%=strName%>"/>  
                  <input type="hidden" id="PostedOn" name="PostedOn" value="<%=postedOn%>"/>  
                  <input type="hidden" id="UpdatedOn" name="UpdatedOn" value="<%=updatedOn%>"/>  
                  <input type="hidden" id="imgSrc" name="imgSrc" value="<%=imgSrc%>"/>  
                  
            <input type="hidden" id="imageName" name="imageName" value="<%=imageName%>"/>  
            
            <input type="hidden" id="systemName" name="systemName" value="TRUST_<%=year(now)%>" >

            
            <input type="hidden" id="now" name="now" value="<%=now%>"/>
    
<button class="btn-style" type="submit">
<i class="fa fa-pencil-square-o" aria-hidden="true"></i>Continue
</button>
                
                  </form> 

<%else%>   



                  <form id="formSignature" action="http://ers.bdjobs.com/applications/ImageResize/php/TRUST_SIGNATURE/Edit_ImageProcess.php?track_no=<%=TrackNo%>&pass=<%=strPassword%>&imageName=<%=imageName%>&pageName=<%=Request.ServerVariables("SCRIPT_NAME")%>&TrackNoNew=<%=TrackNoNew%>" method="POST" >
                  <input type="hidden" id="TrackNoNEW" name="TrackNoNEW" value="<%=TrackNoNew%>"/>   
                 
                  <input type="hidden" id="txtPassword" name="txtPassword" value="<%=strPassword%>">
                  
                  <input type="hidden" id="TrackNoNEW" name="TrackNoNEW" value="<%=TrackNoNew%>"/>  
              
              <input type="hidden" id="TrackNo" name="TrackNo" value="<%=TrackNo%>"/>     
    <input type="hidden" id="pageName" name="pageName" value="<%=Request.ServerVariables("URL")%>"/>                  
                
                  <input type="hidden" id="Name" name="Name" value="<%=strName%>"/>  
                  <input type="hidden" id="PostedOn" name="PostedOn" value="<%=postedOn%>"/>  
                  <input type="hidden" id="UpdatedOn" name="UpdatedOn" value="<%=updatedOn%>"/>  
                  <input type="hidden" id="imgSrc" name="imgSrc" value="<%=imgSrc%>"/>  
                  
            <input type="hidden" id="imageName" name="imageName" value="<%=imageName%>"/>  
            
            <input type="hidden" id="systemName" name="systemName" value="TRUST_<%=year(now)%>" >

            
            <input type="hidden" id="now" name="now" value="<%=now%>"/> 
                  
                  
                  
                  </form>
  
<%End If%>

              
       