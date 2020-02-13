<fieldset>
    <legend>Reference</legend>
  <FORM  method ="post" name="Refference" action="?<%=Encode("Location=Edit&FormAction=Refference")%>">

<!--#include File = 'HiddenValueNew.asp' -->

<div class="btn-wrap text-right">

<%If arrReference(0,0) = "Nothing" Then%>
  	 No Reference Information Submitted by Applicant.
	
<button type="submit" class="btn-style">
											<i class="fa fa-pencil-square-o" aria-hidden="true"></i>Add</button>


<%Else%>

<button type="submit" class="btn-style">
											<i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</button>


</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="row">
												<div class="col-sm-12">
													<div class="form-group">
														<h4 class="title">Reference-1</h4>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-4">
														<p>Name</p>
													</div>
													<div class="col-sm-8">
														<div class="form-group">
															<p style='word-wrap:break-word;'><%=strRefName%></p>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-4">
														<p>Designation/Profession</p>
													</div>
													<div class="col-sm-8">
														<div class="form-group">
															<div><p style='word-wrap:break-word'><%=strRefPos%></p></div>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-4">
														<p >Address</p>
													</div>
													<div class="col-sm-8">
														<div class="form-group">
															<div><p style='word-wrap:break-word'><%=strRefAdd%></p></div>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-4">
														<p>Contact Phone</p>
													</div>
													<div class="col-sm-8">
														<div class="form-group">
															<p style='word-wrap:break-word'><%=strRefPhone%></p>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-4">
														<p>E-mail</p>
													</div>
													<div class="col-sm-8">
														<div class="form-group">
															<p style='word-wrap:break-word'><%=strRefEmail%></p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="row">
												<div class="col-sm-12">
													<div class="form-group">
														<h4 class="title">Reference-2</h4>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-4">
														<p>Name</p>
													</div>
													<div class="col-sm-8">
														<div class="form-group">
															<p style='word-wrap:break-word;'><%=strRefName2%></p>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-4">
														<p>Designation/Profession</p>
													</div>
													<div class="col-sm-8">
														<div class="form-group">
															<p style='word-wrap:break-word'> <%=strRefPos2%></p>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-4">
														<p>Address</p>
													</div>
													<div class="col-sm-8">
														<div class="form-group">
															<p style='word-wrap:break-word;'><%=strRefAdd2%></p>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-4">
														<div>Contact Phone</div>
													</div>
													<div class="col-sm-8">
														<div class="form-group">
															<p style='word-wrap:break-word'><%=strRefPhone2%></p>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-4">
														<p>E-mail</p>
													</div>
													<div class="col-sm-8">
														<div class="form-group">
															<p style='word-wrap:break-word'><%=strRefEmail2%></p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
    

<%End If%>	      	 
								</fieldset>
