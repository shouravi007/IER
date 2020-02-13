 
<!--#include File = "CheckSession.asp" -->

<%
	strModuleName = "View ShortlistTO" 
	strDescription = "view shortlist candidates list for TO : "&strUserName&"##"&strPassword
	strAction = "Total Resume View for  "
%>
<!--#include File = "UserLog.asp" -->
 
 
 
  <%
   sql = ""
   rest = trim(request.Form("rest"))
   if rest = "" then
   sql = "select top 1500 p.id,j.trackingno,p.photourl,(p.firstname+ ' '+p.lastname) as name,p.cellphone,p.email,r.rollno from personal p inner join jobpos j on j.personalid = p.id inner join roll r on r.personalid = p.id  where p.shortlisted = 1 and p.jobid = 7 and j.change is null and r.jobid = 7  order by r.rollno asc  "
   else
   sql = "SELECT * FROM (  select  p.id,j.trackingno,p.photourl,(p.firstname+ ' '+p.lastname) as name,p.cellphone,p.email ,r.rollno , ROW_NUMBER() OVER (order by r.rollno asc )  as rownum from personal p inner join jobpos j on j.personalid = p.id  inner join roll r on r.personalid = p.id where p.shortlisted = 1 and p.jobid = 7 and j.change is null and r.jobid = 7 ) seq WHERE seq.rownum > 1500 "
   end if 
   arrUserLog = objERS.RetrieveData(sql, errMsg)
   
  
  %>

				<div class="col-sm-12">
					<div class="login-form bg-style">
						
							<fieldset>
								<legend>Applicants List  for TO(Shortlisted):</legend>
								<div class="row">
									<div class="col-sm-12">
										<div class="form-group">
											<div class="row">
                                            
                                            
                                               <div class="col-sm-1">
													<label for="userName">SL
                                                    
													</label>
												</div>
												<div class="col-sm-1">
													<label for="userName">Tracking No
                                                    
													</label>
												</div>
												<div class="col-sm-1">
													<label for="userName">Roll No
                                                    
													</label>
												</div>
                                                
                                                
												<div class="col-sm-2">
													<div class="required">
													<label for="userName"> Name
                                                    
													</label>
               
                                                      </div>
												</div>
                                                
												<div class="col-sm-2">
													<div class="required">
													<label for="userName">Cell Phone
                                                    
													</label>
               
                                                      </div>
												</div>



												<div class="col-sm-3">
													<div class="required">
													<label for="userName">Email
                                                    
													</label>
               
                                                      </div>
												</div>
                                                
                                                
												<div class="col-sm-2">
													<div class="required">
													<label for="userName">Photo
                                                    
													</label>
               
                                                      </div>
												</div>
                                                                                            
                                            
                                            
                                            </div>
										

			<%For i = 0 to ubound(arrUserLog, 2 ) %>				
                            
          <div class="row">
          
          
                                               <div class="col-sm-1">
													<label for="badge">
													<%if rest = "" then %>
													<%=i+1%>
                                                    <%else%>
                                                    <%=i+1501%>
                                                    <%end if%>
                                                    
													</label>
												</div>          
          
          
          
												<div class="col-sm-1">
													<label for="userName"><%=arrUserLog(1,i)%>
                                                    
													</label>
												</div>
												<div class="col-sm-1">
													<label for="userName"><%=arrUserLog(6,i)%>
                                                    
													</label>
												</div>
                                                                                                
                                                
												<div class="col-sm-2">
													<div class="required">
													<label for="userName"><%=arrUserLog(3,i)%>
                                                    
													</label>
               
                                                      </div>
												</div>
                                                
												<div class="col-sm-2">
													<div class="required">
													<label for="userName"><%=arrUserLog(4,i)%>
                                                    
													</label>
               
                                                      </div>
												</div>



												<div class="col-sm-3">
													<div class="required">
													<label for="userName"><%=arrUserLog(5,i)%>
                                                    
													</label>
               
                                                      </div>
												</div>
                                                
                                                
												<div class="col-sm-2">
													<div class="required">
													<label for="userName"><img src="<%=arrUserLog(2,i)%>" width="50" height="50" class="img-responsive" />
                                                    
													</label>
               
                                                      </div>
												</div>
                                                                                            </div>
                            
                                  <%next%>
                            
                            
                            <form id="RestOf" name="Restof" action="" method="post"> 
                            <button type="submit" class="btn btn-primary">
                              Click To Rest of All 
                            </button>
                            <input type="hidden" id="rest" name="rest" value="yes" />
                            </fieldset>
						
					</div>
				</div>
			</div>
		      
      
