  <div class="form-group">
                        <div class="row">
                          <div class="col-sm-3">
                            <label for="experience">Orphan  Quota(if any)</label>
                          </div>
                          <div class="col-sm-9">
                            <div class="form-group">
                              <div class="required">
                        
                            <%
							If Orphan = "True" then
							
								response.Write("Yes")
							else
								response.Write("No")
							end if
							%>
                            
                               </div>
                            </div>
                          </div>
                        </div>
                      </div>






