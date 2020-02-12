<!--#include File = 'Personal\BL.asp' -->

     <%  jobid = Request.Form("JOB_ID") 
         sql = ""
		 sql = " select jobtitle from jobposting where id = "&jobid
         'response.Write("sql:"&sql)
		 err.clear 
         arrJobTitle = objERS.RetrieveData(sql,errMsg)
		 
		 if arrJobTitle(0,0) <> "Nothing" then 
	       job_position = arrJobTitle(0,0)
	     End IF
	 %>
   
    <div class="col-sm-12">
          <div class="appli-form-wrap bg-style">
            <h1 class="post-name">Application for <%=job_position%> </h1>
   
   
              <div class="wrapper">
                  <div class="row vertical-align-items">

                    <!--#include virtual = '/applications/common/photo_upload_ers_sig_cert/pre_upload/photo_and_certificate_pre_upload.asp' -->
                    
                    <!--include virtual = '/applications/common/photo_upload/pre_upload/photo_pre_upload.asp' -->
                   
              <div class="row">
                <div class="col-sm-12">
                  <div class="appli-form">
                
<form action="?<%=Encode("Location=Controller&FormAction=ApplicationInsert")%>" method="post" name="frmApplication" id="frmApplication">
                      
                 <input type="hidden" id="ID" name="ID" value="<%=ID%>"/>
                 <input type="hidden" id="PHOTOURL" name="PHOTOURL" value="<%=PHOTOURL%>"/>

                  
                    <fieldset>
                      <legend>Personal Information:</legend>
                      <div class="uf">

                        <div class="row">

                          <div class="col-sm-12">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\Name_bn.asp' --> 
                                  </div>
                              </div>
                          </div>

                       </div> 

 
                        <div class="row">

                          <div class="col-sm-12">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\FirstName.asp' --> 
                                  </div>
                              </div>
                          </div>

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\LastName.asp'-->                                  
                                     </div>
                              </div>
                          </div>
                          
                       </div>
                       
                       
                        <div class="row">

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\FatherName.asp' --> 
                                    </div>
                              </div>
                          </div>

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\MotherName.asp' --> 
                                  </div>
                              </div>
                          </div>
                       </div>
                       



                        <div class="row">

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\FathersProfession.asp' -->                                 </div>
                              </div>
                          </div>

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\MothersProfession.asp' -->                                 </div>
                              </div>
                          </div>
                       </div>






                        <div class="row">

                           <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                   <!--#include File = 'Personal\Gender.asp' -->
                                 </div>
                              </div>
                          </div>

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\DateOfBirth.asp' -->                                 </div>
                              </div>
                          </div>
                       </div>
                        
   
   
                        <div class="row">

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\MaritalStatus.asp' -->                                 </div>
                              </div>
                          </div>

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\Religion.asp' -->
                                  </div>
                              </div>
                          </div>
                       </div>
   
   
                        <div class="row">

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\Nationality.asp' -->                                 </div>
                              </div>
                          </div>

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\NationalID.asp' -->
                                  </div>
                              </div>
                          </div>
                       </div>
          
       
                        <div class="row">

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <%'If system = "ksb" then%>
									
									<!--include File = 'Personal\ContactPhone.asp' -->
									
									<%'else%>
									
									<!--#include File = 'Personal\BloodGroup.asp' -->
                                    
									<%'end if%>
									
                                    </div>
                              </div>
                          </div>

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                  <!--#include File = 'Personal\Email.asp' -->
                                 </div>
                              </div>
                          </div>
                       </div>       
       
       				 <%'If system <> "ksb" then%>
                        
                        <div class="row">

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\ContactPhone.asp' -->                                 </div>
                              </div>
                          </div>

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\CellPhone.asp' -->
                                  </div>
                              </div>
                          </div>
                       </div>     
       				   
                       <%'end if%>
       
   
                        <div class="row">

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\ContactAddress.asp' -->                         </div>
                              </div>
                          </div>

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\PermanentAddress.asp' -->                         </div>
                              </div>
                          </div>
                       </div> 
                                            
                     
                     <div class="row">


                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                   
									<!--#include File = 'Personal\HomeDistrict2.asp' -->                            </div>
                              </div>
                          </div>
                          
                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\HomeDistrict.asp' -->                             </div>
                              </div>
                          </div>
                          
                          
                       </div>              
                     
                     <%'If system <> "ksb" then%>
                      
                      <div class="row">

                           <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\Current_Occupation.asp' -->                                
                                  </div>
                              </div>
                          </div>

                          <div class="col-sm-6">
                              <div class="form-group">
                                 <div class="row">
                                    <!--#include File = 'Personal\ThanaUnderPermanentDistrict.asp' -->                                
                                  </div>
                              </div>
                          </div>
                          
                       </div>         
                     <%'end if%>
                       
                    </fieldset>                