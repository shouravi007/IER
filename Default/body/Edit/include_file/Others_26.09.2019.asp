<FORM  method ="post" name="others" action="?<%=Encode("Location=Edit&FormAction=others")%>">
          <!--#include File = 'HiddenValueNew.asp' -->       

								<fieldset>
									<legend>Other information</legend>
									<div class="btn-wrap text-right">
										<button type="submit" class="btn-style">
											<i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</button>
									</div>
									
                                    
								  <%if system = "ksb" then %>
                                  <%else%>
                                                        
                                    <div class="row">
										<div class="col-sm-12">
											<div class="form-group">
												<label for="exampleInputEmail1">
													<h4 class="title">Proficiency in English</h4>
												</label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-4">
											<div class="form-group">
												<div class="row">
													<div class="col-sm-4">
														<p>Reading</p>
													</div>
													<div class="col-sm-8">
												<%If strReading <> "S" Then%><p><%=strReading%></p><%End If%>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="form-group">
												<div class="row">
													<div class="col-sm-4">
														<p>Writing</p>
													</div>
													<div class="col-sm-8">
													<%If strWriting <> "S" Then%><p><%=strWriting%></p><%End If%>
													</div>
												</div>
											</div>
										</div>

										<div class="col-sm-4">
											<div class="form-group">
												<div class="row">
													<div class="col-sm-4">
														<p>Speaking</p>
													</div>
													<div class="col-sm-8">
								<%If strSpeaking <> "S" Then%><p><%=strSpeaking%></p><%End If%>
													</div>
												</div>
											</div>
										</div>
									</div>
                                   
                                   <%If strProfessionalCertification <> "" Then%> 
									<div class="form-group">
										<div class="row">
											<div class="col-sm-4">
												<p>Professional Certification (if any)</p>
											</div>
											<div class="col-sm-8">
												<p><%=strProfessionalCertification%></p>
											</div>
										</div>
									</div> 
                                    <%End If%>  
                                <%End If%>  
                                                                   
                                    
                                  <%If strExperience <> "" Then%>  
									<div class="form-group">
										<div class="row">
											<div class="col-sm-4">
												<p>Experience (if any)</p>
											</div>
											<div class="col-sm-8">
												<p><%=strExperience%></p>
											</div>
										</div>
									</div>
                                    
                                    <%End If%>
                                 
                                 
                                 
                                 
                                 
							  <%if system = "ksb" then %>
                              <%else%>
                                 
                                  <%If strProfessionalQualification <> "" Then%>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-4">
												<p>Professional Qualification (if any)</p>
											</div>
											<div class="col-sm-8">
												<p><%=strProfessionalQualification%></p>
											</div>
										</div>
									</div>
                                    
                                    <%End If%>
                                    
                                    <%If strTraining <> "" Then%>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-4">
												<p>Training Information (if any)</p>
											</div>
											<div class="col-sm-8">
												<p><%=strTraining%></p>
											</div>
										</div>
									</div>
                                    
                                    <%End If%>
                                    
								<%If strAcademicDistinctions <> "" Then%>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-4">
												<p>Academic Distinctions(if any)</p>

											</div>
											<div class="col-sm-8">
												<p><%=strAcademicDistinctions%></p>
											</div>
										</div>
									</div>
                                    
                                   <%End If%> 
                                   
								   <%If strExtraCurricularActivities <> "" Then%>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-4">
												<p>Extra curricular activities(if any)</p>
												<label for="extraCuricural"></label>
											</div>
											<div class="col-sm-8">
												<p><%=Replace(strExtraCurricularActivities,"~~"," ")%></p>
											</div>
										</div>
									</div>
                                    <%End If%>
                                    <%If strComputerSkills <> "" Then%>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-4">
												<p>Computer skills (if any)</p>
											</div>
											<div class="col-sm-8">
												<p><%=strComputerSkills%></p>
											</div>
										</div>
									</div>
                                    <%End If%>
                                   <%If strOtherDisclose <> "" Then%>  
									<div class="form-group">
										<div class="row">
											<div class="col-sm-4">
												<p>Any other thing you want to disclose(if any)</p>
											</div>
											<div class="col-sm-8">
												<p><%=strOtherDisclose%></p>
											</div>
										</div>
									</div> 
									
									<%End If%>
                                <%End If%>
                                    
	</fieldset>

</FORM>
