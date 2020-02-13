<form id="form000" action="?<%=Encode("Location=Admin&FormAction=JobReferenceIdSearch")%>"   method="POST" target="_blank">
<script>
function SearchByJobRefId()
{
    document.getElementById('form000').submit();
}
</script>
<input type="hidden" id="position" name="position" value="<%=position%>" />
<input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
 
   <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />

 <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

    <a id="Job Reference Id" class="box-wrap" title="Job Reference Id" onclick="SearchByJobRefId();">
    <!--<a id="Tracking" class="box-wrap" title="Tracking" onclick="TrackingResume();">-->
        <i class="fa fa-user icon" aria-hidden="true"></i>
        <h3 class="title">Search with Job Reference Id </h3>
    </a>                            

</form>	
 						
