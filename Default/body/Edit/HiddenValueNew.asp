<input type="hidden" id="TrackNoNew" name="TrackNoNew" value="<%=TrackNoNew%>"/>
<INPUT type="hidden" name="txtTrackingNo" value="<%=strID%>">
<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">
<input type="hidden" id="jobid" name="jobid" value="<%=jobid%>"/> 
<input type="hidden" id="Name" name="Name" value="<%=strName%>"/>
<input type="hidden" id="PostedOn" name="PostedOn" value="<%=Mid(FormatDateTime(hidPostedOn,1), inStr(FormatDateTime(hidPostedOn,1), ", ")+1)%>"/>
<input type="hidden" id="UpdatedOn" name="UpdatedOn" value="<%=Mid(FormatDateTime(hidUpdatedOn,1), inStr(FormatDateTime(hidUpdatedOn,1), ", ")+1)%>"/>
<input type="hidden" id="imgSrc" name="imgSrc" value="<%=imgSrc%>"/>