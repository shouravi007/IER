<%if cstr(strFormAction) = cstr("Application") then %>
  <!--#include File = 'Application.asp'--> 
<%Elseif cstr(strFormAction) = cstr("ForgetLogin") then %>
<!--#include File = 'ForgetLogin.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Login") then %>
<!--#include File = 'Login.asp'--> 
<%Else%>
<%End If%>
