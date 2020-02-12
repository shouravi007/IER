<%response.Write("Location "&strFormAction )%>
<%If system = "ksb" and cstr(strFormAction) = cstr("ViewResume") Then%>
       
        <li id="backMenu" style="display:none;"><a href="#" onclick="javascript:history.go(-1);">Back</a></li>
        <li id="homeMenu" style="display:none;"><a href="#" onclick="javascript:document.getElementById('back').submit();">Home</a></li>  
          	
<%ElseIf system = "ksb" and cstr(strFormAction) = cstr("ApplicantsCopy") then%>

        <li id="backMenu" style="display:none;"><a href="#" onclick="javascript:history.go(-1);">Back</a></li>
        <li id="homeMenu" style="display:none;"><a href="#" onclick="javascript:document.getElementById('back').submit();">Home</a></li>  

<%ElseIf system = "ksb" and cstr(strFormAction) = cstr("check_payment_status") Then%>

        <li id="backMenu" style="display:none;"><a href="#" onclick="javascript:history.go(-1);">Back</a></li>
        <li id="homeMenu" style="display:none;"><a href="#" onclick="javascript:document.getElementById('back').submit();">Home</a></li>
          
<%ElseIf system = "ksb" and cstr(strFormAction) = cstr("EditResume") Then%> 

        <li id="backMenu" style="display:none;"><a href="#" onclick="javascript:history.go(-1);">Back</a></li>
        <li id="homeMenu" style="display:none;"><a href="#" onclick="javascript:document.getElementById('back').submit();">Home</a></li>

<%Else%>
  
<li><a href="?<%=Encode("Location=Modal&FormAction=Login")%>"><span id="login">Login</span></a></li>
<li id="backMenu" style="display:none;"><a href="#" onclick="javascript:history.go(-1);">Back</a></li>
<li id="homeMenu" style="display:none;"><a href="#" onclick="javascript:document.getElementById('back').submit();">Home</a></li>
<li id="printMenu" style="display:none;"><a href="#" onclick="javascript:printIT();">Print</a></li>
<li id="ForgetLogin"><a href="?<%=Encode("Location=Modal&FormAction=ForgetLogin")%>">Forget Login</a></li>

<%End If%>

