<%If strLocation = "Modal" Then%> 
Online Application System -  <%=strSystemName%>  
      
<%Elseif strLocation = "View" Then %>
Online Application System -  <%=strSystemName%>  

<%ElseIf strLocation = "Controller" Then %>
Online Application System -  <%=strSystemName%>  

<%ElseIf strLocation = "Admin" Then %>
 Admin Panel  »  <%=strSystemName%>  
<%Else%>
Career -  <%=strSystemName%> 
<%End if%>
 
 