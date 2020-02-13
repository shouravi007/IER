<%if cstr(strFormAction) = cstr("PhotoProblem") then %>
<!--#include File = 'PhotoProblem.asp'--> 
<%Elseif cstr(strFormAction) = cstr("SignatureProblem") then %>
<!--#include File = 'SignatureProblem.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Name") then %>
<!--#include File = 'Name.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Name2") then %>
<!-- include File = 'Name2.asp'--> 
<%Else%>
<%End If%>
