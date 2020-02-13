
<div class="col-sm-12">
    <div class="summery-view bg-style">
			<h1 class="post-name"><%=strSystemName%> DASHBOARD</h1>
				
    <div class="wrapper">
               
                <!--#include File = 'AfterLogin\Validation.asp'-->                
                
                    <fieldset>
                        <legend>General Information</legend>
                        
                        <div class="row vertical-align-items">
                            
                         <div class="col-sm-8 item-1">
                                                
                            <div class="form-group"><h3><%=strName%></h3></div>                                
                            <div class="form-group"><h4>Login ID : <%=intTrackingNo%></h4></div>
                            <div class="form-group">Applied Position <hr /><br /><h4><%=position%></h4></div>	
                            <div class="form-group"><h5>Resume Posted on : <%=postedOn%> </h5></div>
                            <div class="form-group"><h5>Resume Updated on : <%=updatedOn%></h5></div>
                                    
                         </div>
                                            										
                            <div class="col-sm-4 item-2">
                            
                                <img src="<%=imgSrc%>" class="img-responsive">
                                 
								  <!--#include Virtual = '/applications/common/signature/showsignature.asp'-->
    
                            </div>
                                        
						</div>
					</fieldset>

<fieldset>
	<legend>Login Panel</legend>
<%' If Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" or Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("SERVER_NAME") = "server-ers" Then 
 
 
		'response.Write("<span style='font-family:Verdana, Geneva, sans-serif; color:#F00;'>"& strBlockMessage&"</span>") 
%>
                                    <!--<span style="font-family:Verdana, Geneva, sans-serif; color:#F00;">You can edit your resume after 24<sup>th</sup> January, 2019. </span>-->
<%
'End If
%>
 								
<div class="row">
    <div class="deshboard-wrap bg-style">							
        
        <div class="row">
            <div class="col-sm-12 deshboard">
               
                   
                <a id="ChangePhoto" class="box-wrap" title="ChangePhoto" onclick="document.getElementById('form2').submit();return false;">
                    <i class="fa fa-file-photo-o icon" aria-hidden="true"></i>
                    <h3 class="title">Change Photo</h3>
                </a>
                <a id="ChangeSignature" class="box-wrap" title="ChangeSignature" onclick="document.getElementById('formSignature').submit();return false;">
                    <i class="fa fa-file-photo-o icon" aria-hidden="true"></i>
                    <h3 class="title">Change Certificate</h3>
                </a>                        
               
<%' If Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" or Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("SERVER_NAME") = "server-ers" Then  
%>
                <a id="EditResume" class="box-wrap" title="EditResume" onclick="document.getElementById('form4').submit();return false;">
                    <i class="fa fa-edit icon" aria-hidden="true"></i>
                    <h3 class="title">Edit Resume</h3>                    
                </a>
<%
  ' End If
%>        

<!--<span style="font-family:Verdana, Geneva, sans-serif; color:#00C;">You can edit your resume after 14<sup>th</sup> November, 2019. </span>-->
        
                <a id="ViewResume" class="box-wrap" title="ViewResume" onclick="document.getElementById('form5').submit();return false;">
                    <i class="fa fa-paperclip icon" aria-hidden="true"></i>
                    <h3 class="title">View Resume</h3>
                </a>
                
          
          
            </div>
        </div>
	
    </div>
</div>

</fieldset>
                        
                 <!--#include File= 'AfterLogin\ContentMenu.asp'-->
                     
                </div>
             </div>	
            </div>
			
            </div>
		</div>

<!--  include File= 'PhotoProblem_bdj_to_ers_ksb.asp'-->
<script>
 var TrackNo = "<%=TrackNo%>";
 if ( TrackNo != "")
 {
	 document.getElementById('login').innerHTML = "Logout";
	 //document.getElementById('backMenu').style.display = "block";
	 //document.getElementById('homeMenu').style.display = "block";
//	document.getElementById('printMenu').style.display = "block"; 
 }
 else
 {
	 
 }
</script>
