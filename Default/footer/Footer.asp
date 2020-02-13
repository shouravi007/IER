	<div class="main-footer">
		<div class="container">
			<div class="row footer-row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<a href="<%=logo_url%>" class="footer-logo">
						<img src="<%=logo_footer_url%>"  class="img-responsive"/>
					</a>
				</div>
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="copyright-wrap">
						<p class="note">
							<i class="fa fa-phone-square" area-hidden="true"></i>If you encounter any problem in using this website
							
                            
                       <%If strLocation = "Admin" Then%>
                     
              <br />For Technical Query :  Shouravi Sharmin - Senior Software Engineer - 01715027841<i class="icon-phone"></i> - shouravi@bdjobs.com
             <br />For Technical Query :  MD Mahbubul Haque - Senior Software Engineer - 01939365837<i class="icon-phone"></i> - mahbub@bdjobs.com 
              
                <br />For General Query :  MD Rafiqul Islam - Product Manager - 01811410860<i class="icon-phone"></i> - mrafiqul@bdjobs.com
                       <%else%>
               
                            <strong> Call to
								<a href="tel:09612444888"> 16479 </a>
							</strong>(Dial from any number).
							<br /> Or 
							<strong> Email to : 
								<a href="tel:09612444888"> <%=replyto%> </a>
							</strong>
							
							
							</p>
						
                        <%end if%>
                        
                        <p class="copyright">
							Copyright  © <%=year(now)%>&nbsp; <%=strSystemName%>. All rights reserved.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

<script>
  $("#icon_page_header").attr("href", "<%=icon_url%>");;
</script>

</body>

</html>