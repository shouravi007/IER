
<%
'if ubound(arrJobPOS, 2) = 0 then
'	appIdForAppCopy = arrJobPOS(0,0) 
'	jobIdForAppCopy = arrJobPOS(1,0)
%>
              
<form id="form6" action="?<%=Encode("Location=View&FormAction=ApplicantsCopy")%>" method="POST" target="_blank">

<input type="hidden" id="TrackNo" name="TrackNo" value="<%=TrackNo%>"/>

<input type="hidden" id="position" name="position" value="<%=position%>" />

<input type="hidden" id="jobid" name="jobid" value="<%=jobIdForAppCopy%>" />  
<input type="hidden" id="appId" name="appId" value="<%=appIdForAppCopy%>" /> 

<input type="hidden" id="txtTrackingNo" name="txtTrackingNo" value="<%=TrackNo%>">

<input type="hidden" id="TrackNoNew" name="TrackNoNew" value="<%=TrackNoNew%>"/>  

<input type="hidden" id="txtPassword" name="txtPassword" value="<%=strPassword%>">

</form>
  
              
              
<%


if ubound(arrJobPOS, 2) > 0 then
'If Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("SERVER_NAME") = "server-ers" Then   

	for i = 0 to ubound(arrJobPOS,2)
		appIdForAppCopy = arrJobPOS(0,i)
		jobIdForAppCopy = arrJobPOS(1,i)

%>
<form id="MyAppCopy<%=i+1%>" action="?<%=Encode("Location=View&FormAction=ApplicantsCopy")%>" method="POST" target="_blank">
                                
    <input type="hidden" id="TrackNo" name="TrackNo" value="<%=TrackNo%>"/>
    
    <input type="hidden" id="position" name="position" value="<%=position%>" />
    <input type="hidden" id="jobid" name="jobid" value="<%=jobIdForAppCopy%>" /> 
     <input type="hidden" id="appId" name="appId" value="<%=appIdForAppCopy%>" /> 
    <input type="hidden" id="txtTrackingNo" name="txtTrackingNo" value="<%=TrackNo%>">
    
    <input type="hidden" id="TrackNoNew" name="TrackNoNew" value="<%=TrackNoNew%>"/>  
    
    <input type="hidden" id="txtPassword" name="txtPassword" value="<%=strPassword%>">
                    
</form>
<%
	next
End If

%>