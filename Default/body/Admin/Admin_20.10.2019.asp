<%

'Session.Timeout = 360
	strUserName = Request.Form("txtUserName")
	strPassword = Request.Form("txtPassword")
	ddlJobs = Request.Form("ddlJobPosting")
	strJobPosting = Request.Form("ddlJobPosting")
	TrackingNumber = Trim(Request.Form("TrackingNumber"))
	jobid = Trim(Request.Form("jobid"))
	
	if strJobPosting <> "" Then 
	 if strJobPosting = 1 Then 
	  strJobName = "Search Result for Management Trainee Officer"
	 end if 
	end if 
%>

<%if cstr(strFormAction) = cstr("ValidateLogin") then %> 
<!--#include virtual = '/applications/common/body/admin/ValidateLogin.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Home") then %>
<!--#include File = 'Home.asp'--> 
<%Elseif cstr(strFormAction) = cstr("NewApply") then %>
<!--#include File = 'NewApply.asp'-->
<%Elseif cstr(strFormAction) = cstr("view_status_for_sure_cash_api") then %>
<!--#include virtual = '/applications/common/body/admin/view_status_for_sure_cash_api.asp'-->
 
<%Elseif cstr(strFormAction) = cstr("ActionLog") then %>
<!--#include File = 'ActionLog.asp'--> 
<%Elseif cstr(strFormAction) = cstr("ShortListReportMTO") then %>
<!--#include File = 'ShortListReportMTO.asp'--> 
<%Elseif cstr(strFormAction) = cstr("ShortListReportTO") then %>
<!--#include File = 'ShortListReportTO.asp'--> 
<%Elseif cstr(strFormAction) = cstr("ShortListReport") then %>
<!--#include File = 'ShortListReport.asp'--> 
<%Elseif cstr(strFormAction) = cstr("JobWiseResume") then %>
<!--#include File = 'JobWiseResume.asp'--> 
<%Elseif cstr(strFormAction) = cstr("JobWiseResume_MTO") then %>
<!--#include File = 'JobWiseResume_MTO.asp'--> 
<%Elseif cstr(strFormAction) = cstr("JobWiseResume_TO") then %>
<!--#include File = 'JobWiseResume_TO.asp'--> 
<%Elseif cstr(strFormAction) = cstr("JobWiseResume_TACO") then %>
<!--#include File = 'JobWiseResume_TACO.asp'--> 

<%Elseif cstr(strFormAction) = cstr("JobWiseResume_AG_ACO") then %>
<!--#include File = 'JobWiseResumeAGACO.asp'--> 

<%Elseif cstr(strFormAction) = cstr("GroupAdmin_bd") then %>
<!--#include File = 'GroupAdmin_bd.asp'--> 
<%Elseif cstr(strFormAction) = cstr("PositionWiseForm") then %>
<!--#include File = 'PositionWiseForm.asp'--> 
<%Elseif cstr(strFormAction) = cstr("SearchResult") then %>
<!--#include File = 'SearchResult.asp'--> 
<%Elseif cstr(strFormAction) = cstr("SearchResult_Load") then %>
<!-- include File = 'SearchResult_Load.asp'--> 
<!--#include virtual = '/applications/common/admin/SearchResult_Load.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Roll_Generate") then %>
<!--#include File = 'Roll_Generate.asp'-->
<%Elseif cstr(strFormAction) = cstr("Roll_Generate_All") then %>
<!--#include File = 'Roll_Generate_All.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Roll_Generate_Problem") then %>
<!--#include File = 'Generate_Roll_Prob.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Roll_Delete_All") then %>
<!--#include File = 'Roll_Delete_All.asp'--> 

<%Elseif cstr(strFormAction) = cstr("Generate_Roll") then %>
<!--#include File = 'Generate_Roll.asp'--> 


<%Elseif cstr(strFormAction) = cstr("Attendence") then %>
<!--#include File = 'Attendence.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Attendence_action_pdf") then %>
<!--#include File = 'Attendence_action_pdf.asp'--> 
<%Elseif cstr(strFormAction) = cstr("admitCountDaily") then %>
<!--#include File = 'admitCountDaily.asp'--> 
<%Elseif cstr(strFormAction) = cstr("SMSINFO") then %>
<!--#include File = 'SMSINFO.asp'--> 

<%Elseif cstr(strFormAction) = cstr("Login") then %>
<!--#include File = 'Login.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Logout") then %>
<%
  Session.Abandon()
  url = "?"&Encode("Location=Admin&FormAction=Login")
  Response.Redirect(url)
%>

<%Else%>
<!--#include virtual = '/applications/common/admin/Login.asp'--> 
<%End If%>
