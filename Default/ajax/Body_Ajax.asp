<%

Set objResumeServer = New c_data
objResumeServer.OpenConnection resumeServer,strErr
 'Response.Write("<br>errMsg:"&ConnectionName)
Set objERS = New c_data
objERS.OpenConnection ConnectionName, errLog
' Response.Write("<br>errMsg:"&ConnectionName)

%>
 
<%if cstr(strFormAction) = cstr("GetThana") then %>
  <!--#include File = 'GetThana.asp'--> 
<%Elseif cstr(strFormAction) = cstr("ajax") then %>
  <!--#include File = 'ajax.asp'--> 
<%Elseif cstr(strFormAction) = cstr("ajax2") then %>
  <!--#include File = 'ajax2.asp'--> 
<%Elseif cstr(strFormAction) = cstr("ajax_duplicate") then %>
  <!--#include File = 'ajax_duplicate.asp'--> 
<%Elseif cstr(strFormAction) = cstr("ShortList") then %>
  <!--#include File = 'ShortList.asp'--> 
<%Elseif cstr(strFormAction) = cstr("ShortListAll") then %>
  <!--#include File = 'ShortListAll.asp'--> 
<%Elseif cstr(strFormAction) = cstr("UnShortListAll") then %>
  <!--#include File = 'UnShortListAll.asp'--> 
<%Elseif cstr(strFormAction) = cstr("LoadApplicantList_New") then %>
  <!--#include File = 'LoadApplicantList_New.asp'--> 
<%Elseif cstr(strFormAction) = cstr("LoadApplicantList_Existing") then %>
  <!--#include File = 'LoadApplicantList_Existing.asp'--> 
<%Elseif cstr(strFormAction) = cstr("RollGenAjax") then %>
  <!--#include File = 'RollGenAjax.asp'--> 
<%Elseif cstr(strFormAction) = cstr("RollDeleteAjax") then %>
  <!--#include File = 'RollDeleteAjax.asp'--> 
<%Elseif cstr(strFormAction) = cstr("CenterList") then %>
  <!--#include File = 'CenterList.asp'--> 
<%Elseif cstr(strFormAction) = cstr("RoomNo") then %>
  <!--#include File = 'RoomNo.asp'--> 
<%End If%>

               
<%
objERS.CloseConnection()
set objERS = Nothing

objResumeServer.CloseConnection 
Set objResumeServer = Nothing	
%>