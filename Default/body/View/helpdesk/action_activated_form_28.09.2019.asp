<%
     ' when job is live login will work 
	 ' when admit is live admit will work 
	 ' when nothing live no button is avaliable 

    strButton = Request.Form("btnSubmit") 
	'RESPONSE.Write("HELLO"&strButton)
	  if arrBLinkJobs(0,0) <> "Nothing" then 
          strLink = "?"&Encode("Location=Controller&FormAction=AfterLogin")
%>       <!--#include File = 'login_form.asp' -->
      <%end if%>
    
     <%if arrAdmitOpen(0,0) <> "Nothing" then
	       strLink = "?"&Encode("Location=Admit&FormAction=viewAdmitCard")
	   %>
         <!--#include File = 'admit_form.asp' -->
      <%end if%>



       <%if system = "ksb" then
         strLink = "?"&Encode("Location=View&FormAction=ApplicantsCopy")
     %>
         <!--#include File = 'ApplicantsCopy_form.asp' -->
      <%end if%>



       <%if system = "ksb" then
         strLink = "?"&Encode("Location=View&FormAction=check_payment_status")
     %>
         <!--#include File = 'check_payment_status_form.asp' -->
      <%end if%>
	  
         <%if system = "ksb" then
         strLink = "?"&Encode("Location=View&FormAction=clearDataForTest")
     %>
         <!--#include File = 'ClearDataForTest_form.asp' -->
      <%end if%>