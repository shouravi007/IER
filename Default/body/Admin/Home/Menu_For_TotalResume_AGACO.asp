<form id="frm_jobwise_aco" action="?<%=Encode("Location=Admin&FormAction=JobWiseResume_AG_ACO")%>" method="POST">
<script>
function JobWiseResume_ACO()
{
document.getElementById('frm_jobwise_aco').submit();
}
</script>
<!--<input type="hidden" id="position" name="position" value="2" />
<input type="hidden" id="jobid" name="jobid" value="2" /> 
-->
<input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />

<input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="jobApply" class="box-wrap" title="Job Apply" onclick="JobWiseResume_ACO();">
<i class="fa fa-user icon" aria-hidden="true"></i>
<h3 class="title">Date wise Application</h3>
</a>                            

</form>
 						
