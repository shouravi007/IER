<%' response.Write("ttweorwe: ")%>
<%if cstr(strFormAction) = cstr("JobApply") then %>
<!--#include File = 'JobApply.asp'--> 
<%Elseif cstr(strFormAction) = cstr("JobDetails") then %>
<!--include File = 'JobDetails.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Photo") then %>
<!-- include virtual = '/applications/common/view/Photo.asp'--> 
<!--#include File = 'Photo.asp'-->
<%Elseif cstr(strFormAction) = cstr("Contactus") then %>
<!--include File = 'Contactus.asp'--> 
<%Elseif cstr(strFormAction) = cstr("FAQ") then %>
<!--include File = 'FAQ.asp'--> 
<%Elseif cstr(strFormAction) = cstr("ViewResume") then %>
<!-- include virtual = '/applications/common/view/ViewResume.asp'--> 
<!--#include File = 'ViewResume.asp'--> 
<%Elseif cstr(strFormAction) = cstr("HelpDesk") then %>
<!--#include File = 'eRecruitments_helpdesk.asp'--> 
<%Elseif cstr(strFormAction) = cstr("ApplicantsCopy1") then %>

<!--#include File = 'ApplicantsCopy.asp'-->

<%Elseif cstr(strFormAction) = cstr("ApplicantsCopy2") then %>

<!--#include File = 'ApplicantsCopy.asp'-->
<%Elseif cstr(strFormAction) = cstr("ApplicantsCopy") then %>

<!--#include File = 'ApplicantsCopy.asp'--> 

<%Elseif cstr(strFormAction) = cstr("check_payment_status") then %>
<!--#include File = 'check_payment_status.asp'--> 
<%Elseif cstr(strFormAction) = cstr("clearDataForTest") then %>
<!--#include File = 'ClearDataForTest.asp'--> 
<%Else%>

<%End If%>
