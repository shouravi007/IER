

<!--#include File = "Academic\AcademicHeader.asp" -->
<!--#include File = "Academic\ContentManagementOfAcademic.asp" -->
<% 

If strUserName <> "" and strPassword <>"" and intErsId <> ""  then %>
   <!--#include File = "Academic\AcademicDataFromBdjobs.asp"-->
<%
Else
	If AcademicUB = 0 Then
		For i = 1 To 4
		%>
		  <!--#include File = "Academic\AcademicNewEntry.asp" -->
		<%
	    Next
	     varEduRows = 0
	End If
End If

If AcademicUB > 0 And AcademicUB <= 5 Then
	varNewEduRow=6
Else
	varNewEduRow=AcademicUB+1
End If
%>
    <tr>
       <td colspan="8" > 
         <label id="help_academic" class ='error'> </label>
         <!--For foreign institute, select Foreign Institute and mention Campus location and   Institute name. For any other institute not listed here, select Others and mention Institute name-->
    <input name="count_edu" type="hidden" value="<%=AcademicUB%>" />
    <input type="hidden" name="hide_edu" value="<%=varEduRows%>" />
    <%'Response.Write("[Rows: "&varEduRows&" || Data: "&AcademicUB&"]")%>
         </td>
       </tr>
    </table>
  </td>
</tr>
 <tr>
   <td>&nbsp;</td>
</tr>
<tr>
   <td>&nbsp;</td>
</tr>
<tr>
  <td>&nbsp;</td>
</tr>
