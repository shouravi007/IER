<!--#include File = 'CheckSession.asp' -->
<%
	strModuleName = "ResumeSearch" 
	strDescription = "Position Filter with  : "&strUserName&"##"&strPassword
	strAction = "Search Option filter for.. "
%>
<!--#include File = 'UserLog.asp' -->

						
						<div class="wrapper">
 <form name="frmUserSupport1" id="frmUserSupport1" method="post" action="?<%=Encode("Location=View&FormAction=HelpDesk")%>" target="_blank" >
								<fieldset>
									<legend>Applicants Support</legend>
									<div class="row">
										<div class="col-sm-8 col-sm-offset-2">
											<div class="form-group">
												<div class="row">
													<div class="col-sm-3">
														 <label for="cont">Contact Mobile </label>
          <input type="hidden" id="cboModuleName" name="cboModuleName" value="Private_Commercial_Bank" />

													</div>
													<div class="col-sm-9">
														<div class="required">
															<div class="required">
                <input type="text" name="txtPhone1" id="txtPhone1" class="form-control" >
														</div>
													</div>
												</div>
											</div>
                                            
											<div class="form-group">
												<div class="row">
													<div class="col-sm-3">
														&nbsp;
													</div>
													<div class="col-sm-9">
														<div class="required">
														&nbsp;	
														</div>
													</div>
												</div>
											</div>                                            
                                            
                                            
											
											<div class="row">
												<div class="col-sm-9 col-sm-offset-3">
													<div class="btn-wrap text-center">
				 <button type="submit" class="btn-style" onclick="return validate();">Search</button> 								</div>
												</div>
											</div>
										</div>
									</div>
								</fieldset>
						
						


<script>
 function validate()
 {
	 	if ( CheckValidation("True",document.getElementById('txtPhone1'),"text","Text","11","Contact Mobile", 1780) == false)
	{
		   return false;		   
	}
 }
</script>



<input type="hidden" name="hidUserID" id="hidUserID" value="<%=intUserID%>" />
<input type="hidden" name="strDeadLine" value="<%=strDeadLine%>" />

 <input type="hidden" id="txtSecreteCode" name="txtSecreteCode" value="28012008"  /> 
 <input type="hidden" id="admin" name="admin" value="true"  />
      
      
       </form>
       
<!--#include File = 'GroupAdmin_bd\Footer.asp' -->
       
    </div>
