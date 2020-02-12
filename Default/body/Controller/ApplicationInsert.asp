				<div class="col-sm-12">
					<div class="summery-view bg-style">
<%

jobid = trim(request.Form("JOB_ID")) 

if jobid <> "" Then 

Else
  %>
    <script>
	  alert("There was an error in your application process.\n You need to submit the application form again.\n We are exttremely sorry for the inconvenience.");
	</script>
  <%
  Response.Redirect(commonURL)
end if 

%>


<script type="text/javascript">
	function PageSubmit()
	{
		document.getElementById('frmApplicationInsert').submit();
	}
</script>

<!--#include File = "ApplicationInsert\Variable.asp" -->
<!--#include file = "ApplicationInsert\BackToForm.asp" -->
<!--#include File = "ApplicationInsert\Validation.asp" -->
<!--include File = "ApplicationInsert\Eligibility.asp" -->
<%if system = "ksb" then %>
<!--#include File = "ApplicationInsert\Eligibility_Academic_KSB.asp" -->
<%end if %>
<!-- include File = "ApplicationInsert\InsertProfessionalCertificate.asp" -->
<!--#include File = "ApplicationInsert\UpdateData.asp"-->


						<h1 class="post-name">Please wait </h1>
						<div class="wrapper">
                        <img src="http://ers.bdjobs.com/applications/images/wait.gif" />
                        </div>
                     </div>
                </div>
                
                