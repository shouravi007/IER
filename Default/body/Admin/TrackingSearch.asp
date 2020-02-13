<!--#include File = 'CheckSession.asp' -->
<%
	strModuleName = "ResumeSearch" 
	strDescription = "Position Filter with  : "&strUserName&"##"&strPassword
	strAction = "Search Option filter for.. "
%>
<!--#include File = 'UserLog.asp' -->
<!--#include File = 'GroupAdmin_bd\Content1.asp' -->


<h1 class="post-name">Admin Panel</h1>
						<div class="wrapper">
							  <form action="?<%=Encode("Location=Admin&FormAction=TrackingSearchResult")%>"  method="post" name="form1" id="form1" target="_blank">
<input type="hidden" name="hidUserID" id="hidUserID" value="<%=intUserID%>" />
<input type="hidden" name="strDeadLine" value="<%=strDeadLine%>" />

								<fieldset>
									<legend>Tracking Search </legend>
									<div class="row">
										<div class="col-sm-8 col-sm-offset-2">
											<div class="form-group">
												<div class="row">
													<div class="col-sm-3">
														<label for="userName">Position Advertised
															<span>*</span>
														</label>
													</div>
													<div class="col-sm-9">
														<div id="spnDegree1">
        <select name="ddlJobPosting" id="ddlJobPosting" class="text form-control">
            <option value="S"  >Select a position</option>
            <%if arrJobPosting( 0, 0) <> "Nothing" then %>
            <%For i = 0 to ubound(arrJobPosting, 2)%>
            <option value="<%=arrJobPosting(0, i)%>" selected="selected" ><strong><%=arrJobPosting(1, i)%></strong>--<i>(Deadline : <%=arrJobPosting(2, i)%>)</i></option>
            <%next
            end if
            %>
        </select>

														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-3">
														<label for="trackingNo">Tracking No
														</label>
													</div>
													<div class="col-sm-9">
														<input name="txtTrakingNumber" type="text" class="text form-control" id="txtTrakingNumber" value="<%=intTrakingNumber%>" size="10">

													</div>
												</div>
											</div>
											
                                            
                                          	<div class="form-group">
												<div class="row">
													<div class="col-sm-3">
														<label for="trackingNo">Or&nbsp; Contact Mobile
														</label>
													</div>
													<div class="col-sm-9">
														<input name="txtMobileNumber" type="text" class="text form-control" id="txtMobileNumber" value="<%=txtMobileNumber%>" size="10">

													</div>
												</div>
											</div>  
                                            
                                            <div class="form-group">
												<div class="row">
													<div class="col-sm-9 col-sm-offset-3">
														<div class="btn-wrap text-center">
															 <button type="submit" class="btn-style" onclick="return jobposition();">Search</button>
														</div>
													</div>
												</div>
											</div>                                            
                                            
										</div>
									</div>
								</fieldset>
							</form>
						</div>
                      




