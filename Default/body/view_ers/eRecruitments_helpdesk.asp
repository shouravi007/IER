<!--#include File = 'helpdesk\form_value_processing.asp' -->
<!--#include File = 'helpdesk\content_manager.asp' -->
	
    <div class="col-sm-12">
        <div class="help-desk-result bg-style">
            <h1 class="post-name">Help Desk Result-<%=strSystemName%></h1>
                <div class="wrapper">
                     <div class="row">
                         <button class="btn btn-primary" onclick="myFunction()">Click For Total Apply And Click Again to Hide </button>     
                       </div>
                         
                         <div class="row"> 
                           <br /><br />
                            <div style="display:none;" id="myDIV" class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="?Y1pn6v10=Nqzv0&S14zNp6v10=W1ojv5rer57zr"></iframe>
                            </div>
                         </div>


                        
			
                 
                 
                    <!--#include File = 'helpdesk\content_db_value.asp' -->

                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                
									<%
									
									IsPhoto = arrUserInfo(5,0)
									IsBdjPhoto = arrUserInfo(10,0)
									BdjobsId = arrUserInfo(11,0)
									'
																	
									onlyPhotoSrc = arrUserInfo(15,0)	

									imgSrc = "" 
									
									If IsBdjPhoto = true then
									
									
									%>
                                    
                                    <!-- photo view in page ---  
                                    parameter list  >  IsPhoto , IsBdjPhoto , BdjobsId, onlyPhotoSrc, strPhotoFolder 
                                    this variable should be used in earliar before include the page 
                                    strPhotoFolder > came from system.asp  
                                    -->
                                    
                                    <!-- include virtual = '/applications/common/photo_upload/photo_view.asp' -->  


                       <!--#include virtual = '/applications/common/photo_upload_ers/photo_view_ers_all_condition.asp' -->  


<%
									else
									
										imgSrc = arrUserInfo(8,0)	
									
									end if									
%>
                                     
                                     
                                
                                    <img src="<%=imgSrc%>" class="img-responsive" width="100" height="119"/>

                                 </div>
                                
                                 <div class="col-sm-6">
 
                                <!--#include Virtual = '/applications/common/signature/showsignature.asp' -->
                                  
                                </div>
                                
                            </div>
                        </div>
              
                        
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Login ID </p>
                                </div>
                                <div class="col-sm-9">
                                    <p><%=arrUserInfo(6,0)%></p>
                                </div>
                            </div>
                        </div>
                        
                         <div class="form-group">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Password</p>
                                </div>
                                <div class="col-sm-9">
                                    <p><%=arrUserInfo(4,0)%></p>
                                </div>
                            </div>
                        </div>
                                   
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-3">
                                <p>Roll No </p>
                            </div>
                            <div class="col-sm-9">
                                <p><strong><%=intRollNo%></strong></p>
                            </div>
                        </div>
                    </div>
                                                        

                                    
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-3">
                            <p>Name</p>
                        </div>
                        <div class="col-sm-9">
                            <p><%=arrUserInfo(0,0)%></p>
                        </div>
                    </div>
                </div>
                                    
                                    

                 <div class="form-group">
                 <div class="row">
                  <div class="col-sm-12">
                Applied Position <hr />
                <br />												
                
                <h4><%=position%></h4>
                   </div>
                 </div>
                </div> 
                       
            
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-3">
                        <p>Date of Birth </p>
                    </div>
                    <div class="col-sm-9">
                        <p>				
                        <%If arrUserInfo(1,0) <> "" Then%>
<%=Mid(FormatDateTime(arrUserInfo(1,0),1), InStr(FormatDateTime(arrUserInfo(1,0),1), ", ")+1)%>
                       <%End If%>
                        </p>
                    </div>
                </div>
            </div>
            
            
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-3">
                        <p>Email</p>
                    </div>
                    <div class="col-sm-9">
                        <p><%=arrUserInfo(2,0)%></p>
                    </div>
                </div>
            </div>
            
            
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-3">
                        <p>Contact Mobile</p>
                    </div>
                    <div class="col-sm-9">
                        <p><%=arrUserInfo(3,0)%></p>
                    </div>
                </div>
            </div>
            
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-3">
                        <p>Home Mobile</p>
                    </div>
                    <div class="col-sm-9">
                        <p><%=arrUserInfo(12,0)%></p>
                    </div>
                </div>
            </div>                                    
            
           
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-3">
                        <p>Photo</p>
                    </div>
                    <div class="col-sm-9">
                        <p>
							<%
                            If arrUserInfo(5,0) = "True" or  arrUserInfo(5,0) = 1  or  arrUserInfo(5,0) =  true  or  arrUserInfo(10,0) = "True"  or   arrUserInfo(10,0) = 1  or  arrUserInfo(10,0)= true  Then
                            strPhoto = "Yes"
                            Else   ' If arrUserInfo(5,s) = "False" or IsNull(arrUserInfo(5,s)) Then
                            strPhoto = "No"
                            End If
                            %>		  
                            <%=strPhoto%>                                                
                        </p>
                    </div>
                </div>
            </div>
								
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="btn-wrap">
                           <!--#include File = 'helpdesk\action_activated_form.asp' -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

                       
                        <div class="row">
                            <br /><br />
                         <button class="btn btn-primary" onclick="myFunction2()">Click For More information of this applicants and Click Again to Hide </button>     
                         </div>
                         
    
                  
                  <div class="row"> 
                         
                            <div style="display:none;" id="myDIV2" class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="?Y1pn6v10=Rqv6&S14zNp6v10=Rqv6er57zr"></iframe>
                            </div>
                         </div>
                                                
                        </div>
					</div>
				</div>