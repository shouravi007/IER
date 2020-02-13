<!--#include File = 'CheckSession.asp' -->
<%
	strModuleName = "ResumeSearch" 
	strDescription = "Position Filter with  : "&strUserName&"##"&strPassword
	strAction = "Search Option filter for.. "

  jobid = trim(request.form("ddlJobPosting"))
  jobreffid = trim(request.form("txtTrakingNumber"))
   mobile = trim(request.form("txtMobileNumber"))
   sql = ""
   if mobile <> "" then 
   sql = " select p.id from jobpos j inner join personal p on p.id = j.PersonalId where j.eligible = 1 and p.contactphone = '"&mobile&"' and j.jobid ="&jobid
   elseif jobreffid <> "" then 
   sql = " select personalid from jobpos where eligible = 1  and id = "&jobreffid&" and jobid ="&jobid
   else
    ShowValidateMsg "No Records found"
    objERS.CloseConnection()
    objResumeServer.CloseConnection()
    response.end	 
   end if 
  '' response.Write(sql) 
   ValuePrint sql, "sql"
   'response.End()
   arr = objERS.RetrieveData(sql,errMsg)
   if arr(0,0) <> "Nothing" then
   TrackNo = arr(0,0)
   else
    ShowValidateMsg "No Records found"
    objERS.CloseConnection()
    objResumeServer.CloseConnection()
    response.end
   end if

%>
<!--#include File = 'UserLog.asp' -->


<h1 class="post-name">Tracking Search</h1>
 <div class="wrapper">

  <form action="?<%=Encode("Location=View&FormAction=ViewResume")%>"  method="post" name="form1" id="form1" >
<input type="hidden" name="hidUserID" id="hidUserID" value="<%=intUserID%>" />
<input type="hidden" name="strDeadLine" value="<%=strDeadLine%>" />

<input type="hidden" id="admin" name="admin" value="true"/>
<input type="hidden" id="TrackNo" name="TrackNo" value="<%=TrackNo%>"/>

<input type="hidden" id="position" name="position" value="<%=position%>" />
<input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 

<input type="hidden" id="txtTrackingNo" name="txtTrackingNo" value="<%=TrackNo%>">

<input type="hidden" id="txtTrakingNumber" name="txtTrakingNumber" value="<%=TrackNo%>"/>  

<input type="hidden" id="txtPassword" name="txtPassword" value="<%=strPassword%>">

</form>


</div>


</div>

<script>
  document.getElementById('form1').submit();
</script>

        </div>
    </div>
</div>