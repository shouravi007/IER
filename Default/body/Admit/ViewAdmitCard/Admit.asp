<!--#include File = "ViewAdmitCard\DateOver.asp"-->
<%if cstr(strFormAction) = cstr("viewAdmitCard") then %> 
<!--#include File = 'viewAdmitCard.asp'--> 
<%Elseif cstr(strFormAction) = cstr("NoSubject") then %> 
<!--#include File = 'NoSubject.asp'--> 
<%Elseif cstr(strFormAction) = cstr("NoSubjectInsert") then %> 
<!--#include File = 'NoSubjectInsert.asp'--> 
<%Else%>
<!--#include File = 'Login.asp'--> 
<%End If%>
