<!--#include File = 'CheckSession.asp' -->
<%
	strModuleName = "ResumeSearch" 
	strDescription = "Position Filter with  : "&strUserName&"##"&strPassword
	strAction = "Search Option filter for.. "

  jobid = trim(request.form("ddlJobPosting"))
  jobreffid = trim(request.form("txtTrakingNumber"))

   sql = ""
   sql = " select personalid from jobpos where id = "&jobreffid&" and jobid ="&jobid 'eligible = 1  and
   ValuePrint sql, "sql"
   arr = objERS.RetrieveData(sql,errMsg)


if arr(0,0) <> "Nothing" then
	TrackNo = arr(0,0)
%>
<!--#include File = 'UserLog.asp' -->


<h1 class="post-name">Search with Job Reference ID</h1>
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


<script>
 document.getElementById('form1').submit();
</script>
<%
else
%>
<div class="col-sm-12">
    <div class="deshboard-wrap bg-style">
        <div class="row">
            <div class="col-sm-12 deshboard">
<%
	response.write("No Records found")
	objERS.CloseConnection()
	objResumeServer.CloseConnection()
	'response.end
%>
	
			</div>
    	</div>
    </div>

<%
end if
%>    
    
</div>
<!--#include File = 'GroupAdmin_bd\Footer.asp' -->
        </div>
    </div>
</div>