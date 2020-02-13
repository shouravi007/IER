  <%
   sql = ""
   sql = "select top 2000 * from userlog order by actiondate desc "
   
   arrUserLog = objERS.RetrieveData(sql, errMsg)
   
  
  %>

				<div class="col-sm-12">
					<div class="login-form bg-style">
						
							<fieldset>
								<legend>Last 1000 Action in Admin Panel:</legend>
								<div class="row">
									<div class="col-sm-12">
										<div class="form-group">
											<div class="row">
												<div class="col-sm-2">
													<label for="userName">User Name
                                                    
													</label>
												</div>
												<div class="col-sm-2">
													<div class="required">
													<label for="userName">Module Name
                                                    
													</label>
               
                                                      </div>
												</div>
                                                
												<div class="col-sm-5">
													<div class="required">
													<label for="userName">Description
                                                    
													</label>
               
                                                      </div>
												</div>



												<div class="col-sm-1">
													<div class="required">
													<label for="userName">Action
                                                    
													</label>
               
                                                      </div>
												</div>
                                                
                                                
												<div class="col-sm-2">
													<div class="required">
													<label for="userName">Action Date
                                                    
													</label>
               
                                                      </div>
												</div>
                                                                                            
                                            
                                            
                                            </div>
										

			<%For i = 0 to ubound(arrUserLog, 2 ) %>				
                            
          <div class="row">
												<div class="col-sm-2">
													<label for="userName"><%=arrUserLog(2,i)%>
                                                    
													</label>
												</div>
												<div class="col-sm-2">
													<div class="required">
													<label for="userName"><%=arrUserLog(1,i)%>
                                                    
													</label>
               
                                                      </div>
												</div>
                                                
												<div class="col-sm-5">
													<div class="required">
													<label for="userName"><%=arrUserLog(3,i)%>
                                                    
													</label>
               
                                                      </div>
												</div>



												<div class="col-sm-1">
													<div class="required">
													<label for="userName"><%=arrUserLog(5,i)%>
                                                    
													</label>
               
                                                      </div>
												</div>
                                                
                                                
												<div class="col-sm-2">
													<div class="required">
													<label for="userName"><%=arrUserLog(4,i)%>
                                                    
													</label>
               
                                                      </div>
												</div>
                                                                                            </div>
                            
                                  <%next%>
                            
                            
                            
                            
                            </fieldset>
						
					</div>
				</div>
			</div>
		      
      
