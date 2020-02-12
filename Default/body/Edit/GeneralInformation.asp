<%
hidTrackNoNew = Trim(Request.Form("TrackNoNew"))
hidPassword = Trim(Request.Form("txtPassword"))
hidjobid = Trim(Request.Form("jobid"))
hidName = Trim(Request.Form("Name"))

hidPostedOn = Trim(Request.Form("PostedOn"))
hidUpdatedOn = Trim(Request.Form("UpdatedOn"))
imgSrc = Trim(Request.Form("imgSrc"))
'hidName = Trim(Request.Form("Name"))

	intTrackingNo = TrackNo
					
   %>
          <!-- photo view in page ---  
               parameter list  >  IsPhoto , IsBdjPhoto , BdjobsId, onlyPhotoSrc, strPhotoFolder 
               this variable should be used in earliar before include the page 
               strPhotoFolder > came from system.asp  
          -->
          <!--  include virtual = '/applications/common/photo_upload/photo_view.asp' -->  
         <!--#include virtual = '/applications/common/photo_upload_ers/photo_view_ers_db.asp' -->
    
    	

<fieldset>
    <legend>General Information</legend>
    <div class="row vertical-align-items">
        <div class="col-sm-8 item-1">
            <div class="form-group">
                <h3><%=hidName%></h3>
            </div>
            <div class="form-group">
                <h4>Login ID : <%=intTrackingNo%></h4>
            </div>
            <div class="form-group">
                Applied Position <hr />
                <br />												
                
                <h4><%=position%></h4>
            </div>           
           
            <div class="form-group">
                <h5>Resume Posted on : <%=hidPostedOn%></h5>
            </div>
            <div class="form-group">
                <h5>Resume Updated on : <%=hidUpdatedOn%></h5>
            </div>
        </div>
        <div class="col-sm-4 item-2">
           
            <img src="<%=imgSrc%>?<%=rnd&time%>" class="img-responsive">
        </div>
    </div>
</fieldset>
