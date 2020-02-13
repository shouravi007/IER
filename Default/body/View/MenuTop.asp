
<%If strLocation <> "Admin"  Then%>
	<%If arrBLinkJobs(0,0) <> "Nothing" Then%> 
          <!--#include File = 'Menu\Common.asp' -->
    <%End If%>  

	<%If strLocation = "attendance"  Then%>
          <!--#include File = 'Menu\Attendance.asp' -->
    <%end if%>             
<%Else%>
	<%If cstr(strFormAction) <> cstr("Login") Then %>
        <%If Session("USERNAME") <> ""  Then ' or Request.Cookies("USERNAME") <> "" %>
            <%if Session("UserName") = "eZone" then %>
            
            <%else%>
            
                          <li><a href="Default.asp?<%=Encode("Location=Admin&FormAction=GroupAdmin_bd")%>">Resume Search</a></li>
          
            <%end if%>
        <%End If%> 
         <li><a href="?<%=Encode("Location=Admin&FormAction=Logout")%>">Logout</a></li>

    <%End If%>
<%End If%>        
