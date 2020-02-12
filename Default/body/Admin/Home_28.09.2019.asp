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




	strModuleName = "Home" 
	strDescription = "Home view  with : "&currentUser&"##"&strPassword
	strAction = "Home menu view for.. "
	
%>
<!--#include File = "UserLog.asp" -->
				<div class="col-sm-12">
					<div class="deshboard-wrap bg-style">
						<div class="row">
							<div class="col-sm-12 deshboard">


	 <%If Request.Cookies("USERNAME") = "surecash"  then %> 
        <!--#include virtual = '/applications/common/body/admin/Home/Menu_For_sure_cash_api.asp' -->
     <%End  If%>


                    </div>					
				</div>
			</div>
		</div>








