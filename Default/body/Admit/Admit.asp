<div class="col-sm-12">
    <div class="summery-view bg-style">

    <!--  include File = "ViewAdmitCard_ezone\DateOver.asp"-->
    <!--  include File = "DateOverFromDB.asp"-->

    <!--#include virtual = '/applications/common/DateOver/DateOverAdmit.asp' -->	

    
    <%If cstr(strFormAction) = cstr("viewAdmitCard_ezone") then %> 
        <!-- include File = 'viewAdmitCard_ezone.asp'-->
                 
    <%Elseif cstr(strFormAction) = cstr("NoSubjectInsert") then %> 
        <!-- include File = 'NoSubjectInsert.asp'--> 
    <%Elseif cstr(strFormAction) = cstr("viewAdmitCard") then %> 
    <!--#include File = 'viewAdmitCard.asp'--> 
    
	<%Else%>
        <!--#include File = 'Login.asp'--> 
    <%End If%>

	</div>       
</div>       