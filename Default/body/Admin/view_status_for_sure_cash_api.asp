<!--#include File = "CheckSession.asp" -->
<%
User = SESSION("USERNAME")
if User = "" Then 
 User = Request.Cookies("USERNAME")
end if

if User = ""  then 
  		   Call ShowMessage ("<CENTER>Access denied! please start from login, thank you.<br />Click <a href='Default.asp'>here</a> to re-try.</strong></CENTER>")
		   Response.End()
end if 

	Session("RequestFromAdmin") = "true"
	'Response.Write(Session("RequestFromAdmin"))



	strModuleName = "NewApply" 
	strDescription = "NewApply  with : "&currentUser&"##"&strPassword
	strAction = "New Apply for.. "
	
%>
<!--#include File = "UserLog.asp" -->
				<div class="col-sm-12">
					<div class="deshboard-wrap bg-style">
						<div class="row">
							<div class="col-sm-12 deshboard">
						
                        <img src="http://ers.bdjobs.com/applications/images/wait.gif" width="600" height="400" />
                        <form method="post" action="?" name="frmResume" id="frmResume">
                      
                       </form>
                        
							<script>
                             document.getElementById('frmResume').submit();
                            </script>


                           </div>					
				  </div>
			</div>
		</div>








