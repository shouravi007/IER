<%
IsAcademic = False
IsPersonal = False
IsPhoto = False
admin = trim(Request.Form("admin"))

%>
<!--#include File = 'BL\LoginCheck.asp' -->
<!--#include File = 'BL\Personal.asp' -->
<!--#include File = 'BL\Academic.asp' -->
<%if system = "ksb" then%> 
<!--#include File = 'BL\Quota.asp' -->
<%end if%>
<!--#include File = 'BL\Reference.asp' -->
