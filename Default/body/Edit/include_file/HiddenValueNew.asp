<INPUT type="hidden" name="txtTrackingNo" value="<%=intTrackingNo%>">
<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">
<input type="hidden" id="jobid" name="jobid" value="<%=jobid%>"/> 
<input type="hidden" id="Name" name="Name" value="<%=strName%>"/>
<input type="hidden" id="PostedOn" name="PostedOn" value="<%=Mid(FormatDateTime(postedOn,1), inStr(FormatDateTime(postedOn,1), ", ")+1)%>"/>
<input type="hidden" id="UpdatedOn" name="UpdatedOn" value="<%=Mid(FormatDateTime(updatedOn,1), inStr(FormatDateTime(updatedOn,1), ", ")+1)%>"/>
<input type="hidden" id="imgSrc" name="imgSrc" value="<%=imgSrc%>"/>