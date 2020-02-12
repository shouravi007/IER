<%
jobid = request.Form("JOB_ID")

if system = "ksb" then
	resultRangeForSSCHSC = 2.00
	resultRangeForGradPGrad = 2.25
else
	resultRangeForSERSSCHSC = 4
	resultRangeForGradPGrad = 3
end if
%>