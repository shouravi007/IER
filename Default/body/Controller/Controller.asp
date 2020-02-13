<%if cstr(strFormAction) = cstr("ApplicationInsert") then %> 
<!--#include File = 'ApplicationInsert.asp'--> 
<%Elseif cstr(strFormAction) = cstr("AfterLogin") then %>
<!--#include File = 'AfterLogin.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Apply") then %>
<!--#include File = 'Apply.asp'--> 
<%Else%>
<%End If%>
