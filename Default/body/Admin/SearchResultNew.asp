
<!--#include File = "CheckSession.asp" -->

<%
	strModuleName = "Search Form" 
	strDescription = "Search Filter with  : "&strUserName&"##"&strPassword
	strAction = "Search Option filter for.. "
%>
<!--#include File = "UserLog.asp" -->

<%
   
    jobid = trim(request.Form("ddlJobPosting"))
    sql = "" 
	sql = "exec USP_Daily_Apply "&jobid&", '2018-04-01 18:00:00.000', 3 "
	ValuePrint sql, "sql"
    
	arrTotalApply = objERS.RetrieveData(sql, errMsg) 
	
	if arrTotalApply(0, 0) <> "Nothing" then 
	'Response.Write(ddlJobs) 
	 TotalApply = arrTotalApply(0,0)
	else
	 TotalApply = 0 
	end if
	
%>    
  
   
     
                              
<form action="?<%=Encode("Location=Admin&FormAction=SearchResult")%>" method="post" name="form1" id="form1">
  <input type="hidden" name="hidUserID" id="hidUserID" value="<%=intUserID%>" />
    <div class="col-sm-12">
        <div class="resume-filter bg-style">
            <h1 class="post-name">Total apply:
            <span>
               <%=TotalApply%></span>
            </h1>
						
<!--#include File = 'SearchResultNew\FilterWithResult.asp' --> 
<!--#include File = 'SearchResultNew\FilterWithSubject.asp' --> 
<!--#include File = 'SearchResultNew\FilterWithUniversity.asp' --> 
<!--#include File = 'SearchResultNew\FilterWithAge.asp' --> 



				<div class="row">
							<div class="col-sm-12">
								<div class="btn-wrap text-center">
								 <button type="submit" class="btn-style">Continue</button>

								</div>
							</div>
                </div>
    </div>
</div>


</form>        
     
 