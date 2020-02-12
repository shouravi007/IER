 <%if cstr(strFormAction) <> cstr("PositionWiseForm") then %>
  
						<form action="Default.asp?<%=Encode("Location=Admin&FormAction=ValidateLogin")%>" method="post" name="form1" id="form1">
							<fieldset>
								<legend>Login for Admin Panel:</legend>
								<div class="row">
									<div class="col-sm-8 col-sm-offset-2">
										<div class="form-group">
											<div class="row">
												<div class="col-sm-3">
													<label for="userName">User Name
                                                    
                                                    <span>*</span>
													</label>
												</div>
												<div class="col-sm-9">
													<div class="required">
                <input type="text"  name="txtUserName" id="txtUserName" class="form-control" placeholder="type your user name"/>
               
  </div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-sm-3">
													<label for="password">
   
                   Password
														<span>*</span>
													</label>
												</div>
												<div class="col-sm-9">
													<div class="required">
               
                <input type="password" name="txtPassword" id="txtPassword" class="form-control" maxlength="20" placeholder="type your password "/>
                  
   </div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-9 col-sm-offset-3">
												<div class="btn-wrap text-center">
                  <button type="submit" onClick="return ValidateAdmin();"  class="btn btn-primary">Login </button>  
                                      
</div>
											</div>
										</div>
									</div>
								</div>
							</fieldset>
						</form>
					</div>

      
 <%End If%>     