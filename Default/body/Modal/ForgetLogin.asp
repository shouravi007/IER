<script>
  function validate_email()
  {
	var objEmail = document.getElementById('EMAIL');
	 
   if ( CheckValidation("True",objEmail,"text","Text","100","Email ",1720) == false)
	{
		   return false;		   
	}

   if ( CheckValidation("True",objEmail,"email","Text","100","Email ",1710) == false)
	{
		   return false;		   
	}
  }

</script>


				<div class="col-sm-12">
					<div class="login-form bg-style">
						<h1 class="post-name"> R E T R I E V E&nbsp;&nbsp; &nbsp;&nbsp;P A S S W O R D</h1>
						<div class="wrapper">
				      <%
                   If Request.Form("SUB1")="" Then
                      %>						
			        <form name="form2" method="post" action="?<%=Encode("Location=Modal&FormAction=ForgetLogin")%>">
					<fieldset>

                    				<legend>Please enter your email address below to get your login id  and password</legend>
									<div class="row">
										<div class="col-sm-8 col-sm-offset-2">
											<div class="form-group">
												<div class="row">
													<div class="col-sm-3">
														<label for="userName">Email address <span>*</span>
														</label>
													</div>
													<div class="col-sm-9">
														<div class="required">
															 <input name="EMAIL" id="EMAIL"  maxlength="200" class="form-control" placeholder="type here email address"> 
														</div>
													</div>
												</div>
											</div>

											<div class="row">
												<div class="col-sm-9 col-sm-offset-3">
													<div class="btn-wrap text-center">
														<input onClick="return validate_email()" name="SUB1" type="submit" class="btn-style" value="Continue"  />
													</div>
												</div>
											</div>
										</div>
									</div>
								</fieldset>
							</form>
					
			         <%
					Else
						If Request.Form("EMAIL")="" Then
							Response.Redirect("?"&Encode("Location=Modal&FormAction=ForgetLogin"))
						End If
				
				
						
				
						Addr=Request.Form("EMAIL")
				
						QStr="Select id, PASS, FIRSTNAME+' '+LASTNAME As Name,jobid From PERSONAL where  EMAIL like '"&Addr & "%'   and postedon >= '2019-01-01'   "
						
						'response.Write(QStr)
						
						arrEmail = objERS.RetrieveData(QStr,errMsg)
						ErrorMessage "233", errMsg, 0
						

						
						'Set RS_Email=connt.Execute(QStr)
						If  arrEmail(0,0) = "Nothing"  Then
							ShowValidateMsgWithOutResponsDotEnd("Sorry, we did not find any account with the email address you provided.")
						
								
					USERID = 0
					currentUser = 0 
					 
					strModuleName = "Forget Login" 
	            	strDescription = Addr
					strAction = "Not Found"		

					err.clear
				%>
				
				<!--#include virtual = '/applications/common/admin/UserLog.asp' -->						
						
				<%	
						Else
							If not Addr="" And IsNull(Addr)=False Then
				
							sMail = 0 
						
						for i = 0 to ubound(arrEmail,2)
								
								
					USERID = arrEmail(0,i)
					currentUser = Addr 
					 
					strModuleName = "Forget Login" 
	            	strDescription = "pass:"&ReplacedAllTypeOfSpecialChar(ERR.DESCRIPTION&arrEmail(1,i))&",jobid :"&arrEmail(3,i)
					strAction = arrEmail(2,i)			

					err.clear
				%>
				
				<!--#include virtual = '/applications/common/admin/UserLog.asp' -->

            <%			
			
			BodyText0 = "<DIV align=justify><font size=2 face=Arial><strong>&nbsp;Dear "& arrEmail(2,i)&":</strong><BR><BR>Your Login ID and Password for " & strSystemName & " Online Application System are :<BR><BR><font color=#990000><strong><font color=#003399>Login ID :</font> " & arrEmail(0,i) & " <BR><font color=#003399>Password :</font> " & arrEmail(1,i) & "</strong></font><BR><BR>Please remember your Login ID  and Password for further reference.<BR><BR>If you need to Edit/Update your submitted Application/Resume, please click onto the following link (use your Login ID and Password to edit/update your CV):<BR><BR><a href='http://ers.bdjobs.com/applications/"&commonFolder&"/Default.asp?"&Encode("Location=Modal&FormAction=Login")&"'>Click here to edit</a> <BR><BR>We wish you a very successful career.<BR><BR>Thanks and regards,<BR><BR><BR><BR><strong>" & strSystemName & "  Online Application System</strong></font></DIV>" 								
								
								
								If Addr <> "" THEN 
										toCC=""
										toBCC=""				
				
									
									toWho = arrEmail(2,i) &"<"&Addr&">"
									Subject = " Login info for " & strSystemName & "  CV account"
									Body = BodyText0
									'TRIM( Request.Form( "Body") ) 
									'response.Write(fromWho & "<br>" & toWho & "<br>")
									'response.End()
									On Error Resume Next		
									
									If toWho <> "" THEN 
										
										sendMail fromWho, toWho, Subject, Body , toCC, toBCC, replyTo
										sMail = 1 
									
									'Cleanup 
										Set ObjCDO = Nothing 
										Set iConf = Nothing 
										Set Flds = Nothing 
										'Response.redirect "confirmation.html" 
										' Any existing page can be used for the response redirect method 
									END IF
								
								   If Error.Description = "" Then 
									'user_msg="<br>Your <b>Traking No. & Password </b> have been sent to the given Email address<br>"
										'Response.Write("<center>An email, containing login info for Dhaka Bank Online Application System,<br> has been sent to your given e-mail address</center>")
										user_msg = "<center>An email, containing login info for " & strSystemName & "  Online Application System,<br> has been sent to your given e-mail address</center>"
								   Else 
									 ValuePrint Error.Description,"errr"
									 
									 sendMail fromWho, "serverers00@gmail.com", "errror in send mail - forgetlogin ", Error.Description , "", "", replyTo
								   End IF 
										
								End if
							next
							End If
						End If
				
						%>
					<%End If
					
						
					If sMail = 1 Then 
					  Response.Write("<div class='row'><h3>"&user_msg&"</h3></div>")	 
					End If
					
					%>
									
                    	</div>
					</div>
				</div>
                
                
         