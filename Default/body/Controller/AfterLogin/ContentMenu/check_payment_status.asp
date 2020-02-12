
<form id="form7" action="?<%=Encode("Location=View&FormAction=check_payment_status")%>" method="POST" target="_blank">

    <input type="hidden" id="TrackNo" name="TrackNo" value="<%=TrackNo%>"/>
    
    <input type="hidden" id="position" name="position" value="<%=position%>" />
    <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
    
    <input type="hidden" id="txtTrackingNo" name="txtTrackingNo" value="<%=TrackNo%>">
    
    <input type="hidden" id="TrackNoNew" name="TrackNoNew" value="<%=TrackNoNew%>"/>  
    
    <input type="hidden" id="txtPassword" name="txtPassword" value="<%=strPassword%>">

    <input type="hidden" id="hiddenJobRefId" name="hiddenJobRefId" value="<%=jobRefId%>"/> 
    <input type="hidden" id="hiddenMobileCP" name="hiddenMobileCP" value="<%=strContact%>"/> 

</form>
