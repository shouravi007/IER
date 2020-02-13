<%if cstr(strFormAction) = cstr("AddCenterFromExcel") then %> 
<!--#include File = 'AddCenterFromExcel.asp'--> 
<%Elseif cstr(strFormAction) = cstr("AddRoomFromExcel") then %>
<!--#include File = 'AddRoomFromExcel.asp'--> 
<%Elseif cstr(strFormAction) = cstr("AddCenterAction") then %>
<!--#include File = 'AddCenterAction.asp'--> 
<%Elseif cstr(strFormAction) = cstr("AddRoomAction") then %>
<!--#include File = 'AddRoomAction.asp'--> 
<%Elseif cstr(strFormAction) = cstr("NoMailJobChange") then %>
<!--include File = 'NoMailJobChange.asp'--> 

<%Elseif cstr(strFormAction) = cstr("DotCgpa") then %>
<!--include File = 'DotCgpa.asp'--> 
<%Else%>
<%End If%>
