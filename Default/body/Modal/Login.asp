<h1 class="post-name">LOGIN PANEL</h1>
<div class="wrapper">
     <form action="?<%=Encode("Location=Controller&FormAction=AfterLogin")%>" method="post" name="form1" id="form1">
        <fieldset>
            <legend>Login for Edit Application</legend>
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-3">
                                <label for="">Login ID </label>
                                    <span>*</span>
               					</div>
													<div class="col-sm-9">
														<div class="required">
															 <input type="text"  name="txtTrackingNo" id="txtTrackingNo" class="form-control" maxlength="8" placeholder="type your login id" onKeyPress="return intonly(this, event)"/>	
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-3">
														 <label for="">Password</label>
                                                         <span>*</span>
													</div>
													<div class="col-sm-9">
														<div class="required">
														  <input type="password" name="txtPassword" id="txtPassword" class="form-control" maxlength="12" placeholder="type your password "/>
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-9 col-sm-offset-3">
													<div class="btn-wrap text-center">
   
                  <button type="submit" onClick="return Validate();"  class="btn btn-primary">Login </button>  
													</div>
												</div>
											</div>
										</div>
									</div>
								</fieldset>
							</form>
						</div>



