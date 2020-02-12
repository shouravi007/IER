<fieldset>
    <legend>Upload Photo</legend>                      
        <div class="row">
          <div class="col-md-12">
              <ul style="list-style:none; font-size:12px; margin-bottom: 5px;">
                  <li>File format must be .gif, .jpg or .png </li>
                  <li>Size should not exceed 1MB</li>
                  <li>Dimension preferable 300 X 300 px</li>
              </ul>
          </div>
        </div>                   
       
  <img id="imgUser" name="imgUser" src="<%=image%>" width="300" height="300" />
  <p id="processing"> </p>
  <p id="photo_data" align="center"> </p>
  
     <%If strPhotoName <> "" Then%>
               <br /> <h6 style="color:#930;">Bdjobs Shared Photo.<br />( if you want to share this photo for <%=strSystemName%> , then dont delete your photo from bdjobs account otherwise you will be rejected for this post!)</h6>  
      <p id="bdj_to_ers_photo_data" align="center"> </p>
               
     <%Else%> 
          
           <form id="imageUploadForm" action="" method="post" enctype="multipart/form-data" > 

          	<input type='file' id="File1" name="File1" value=""  onchange="return CheckImage();"  />
           
     <%End If%>

</fieldset>
                 
                  </div>
                     
                     <div class="col-md-6">
                      <fieldset>
                        <legend>Upload Signature</legend>
                     
                      <div class="row">
                        <div class="col-md-12">
                        
                        <ul style="list-style:none;">
						<li>File format must be .gif, .jpg or .png </li>
						<li>Size should not exceed 1MB</li>
						<li>Dimension preferable 300 X 80 px</li>  
                        </ul>
                 
                        
                        </div>
                      </div>
                     <br />
               
                     <img id="imgUser2" name="imgUser2" src="<%=image2%>" width="300" height="80" />
                  <p id="processing2"> </p>
                  <p id="photo_data2" align="center"> </p>
                  
                     <%If strPhotoName2 <> "" Then%>
                             
                      <p id="bdj_to_ers_photo_data2" align="center"> </p>
                               
					 <%Else%> 
                           <br /> <!--<h6 style="color:#930;">Photo will be taken after continue</h6>  -->
                            <!--#include File = 'Signature.asp' -->
                     <%End If%>
                       <br />
                  </fieldset>
                  
                    </div>
                  </div>
             
                </div>
              </div>