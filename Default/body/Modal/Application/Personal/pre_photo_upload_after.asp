<!--#include File = 'pre_photo_upload_after\css_js.asp' --> 
<%
imgName123 = time&rnd
imgName123 = trim(imgName123)
imgName123 = replace(imgName123," ","")
imgName123 = replace(imgName123,":","")
imgName123 = replace(imgName123,".","")

%>

  <fieldset>
   
    <legend>Photograph</legend>
    
  
    <div class="panel-group resume-panel-group photograph" id="accordion5" role="tablist" aria-multiselectable="true">
	  <div class="panel">
		  <div id="collapseOne2" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">

             <div class="panel-body"> 
				<!-- If no information found then show this message -->
				<div class="all-info">
					<div class="empty-message m-t-20 photo-upload">
					
                        <div class="img-mobile">
                            <div class="user-photo" id="changeImage" align="center"> 
                                <img id="userImg" src="" class="img-responsive" alt="User Photo" /> 
                            </div>
                        </div>
    
							
                        
                        	<div class="row">
								<div class="col-md-12">
                              	
                                    <button type="button" class="btn btn-primary btn-upload" onclick="skipCropingImage();" id="skipCroppingPhoto" style="display:none;" disabled>Skip Cropping</button>
									
                                    <button type="button" class="btn btn-primary btn-upload" onclick="return UploadFunction();" id="cropNuploadPhoto" style="display:none;" disabled>Crop & Upload Photo</button>
									
									
									<button class="btn btn-primary btn-upload" id="uploadPhoto" type="button" onclick="return UploadFunction();" <%if(strButton="Upload Photo") then%>style="display:inline-block;" <%else%>style="display:none;" <%end if%> disabled><i class="icon-upload">&nbsp;</i>Upload Photo</button>
									
									<button type="button" class="btn btn-primary btn-delete" id="btnDelete" value="Upload Photo" onclick="return confirmation('<%=Path%>');" <%if(strButton="Upload Photo") then%> style="display: inline" <%else%>style="display:none;" <%end if%>><i class="icon-trush-can">&nbsp;</i>Delete</button>
									<button type="button" class="btn btn-primary btn-cancel" id="btnCancel" style="display: none;" onclick="Cancel();">Cancel </button>
                              
                              
                   <p id="processing"> </p>
                  <p id="photo_data" align="center"> </p>
                             
  

<input type="hidden" id="txtTrackingNo" name="txtTrackingNo" value=""/>     
<input type="hidden" id="pageName" name="pageName" value=""/>                  

<input type="hidden" id="Name" name="Name" value=""/>  
<input type="hidden" id="PostedOn" name="PostedOn" value=""/>  
<input type="hidden" id="UpdatedOn" name="UpdatedOn" value=""/>  
<input type="hidden" id="imgSrc" name="imgSrc" value=""/>  


<input type="hidden" id="imageName" name="imageName" value="<%=imgName123%>.jpg"/>  

<input type="hidden" id="systemName" name="systemName" value="<%=strSystemName%>" >
<input type="hidden" id="folderName" name="folderName" value="<%=strPhotoFolder%>" >

<input type="hidden" id="now" name="now" value="<%=now%>"/> 
<input type="hidden" id="photo_upload" name="photo_upload" value="pre_upload"/> 


<input name="hUpload" type="hidden" id="hUpload" value="YES/NO">
<input type="hidden" name="X" id="X" />
<input type="hidden" name="Y" id="Y" />
<input type="hidden" name="W" id="W" />
<input type="hidden" name="H" id="H" /> 

 
                     
</form>	
                                            
                              
                              
                              
                              
                              
                         </div>             
                      </div>     
                   </div>
                
                </div>             
              </div>     
           </div>
                
        </div>     
    </div>