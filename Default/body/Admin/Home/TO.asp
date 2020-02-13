<form id="form000" action="?" method="POST">
<script>
function ViewJobWiseResume()
{
    document.getElementById('form000').submit();
}
</script>
<input type="hidden" id="position" name="position" value="2" />
<input type="hidden" id="ddlJobPosting" name="ddlJobPosting" value="2" /> 
 
   <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />

 <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />
 <input type="hidden" name="admin" id="admin" value="true"  />

    <a id="View" class="box-wrap" title="view cv" onclick="ViewJobWiseResume();">
        <i class="fa fa-user icon" aria-hidden="true"></i>
        <h3 class="title">Trainee Officer (Cash) Apply </h3>
    </a>                            

<% session("admin") = "true" %>

</form>	
 						
