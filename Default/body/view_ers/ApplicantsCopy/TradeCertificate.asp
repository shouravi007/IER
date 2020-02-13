<% strBody = strBody & "<strong>Trade Certificate:</strong><table width='100%' border='1' cellspacing='0' cellpadding='0'>  <tr><td width='25%'>Course Title</td><td width='25%'>Institute Name</td><td width='25%'>Passing Year</td><td width='25%'>Result</td>  </tr>"
         
   For i=0 To ubound(arrTrade, 2)

 strBody = strBody & "  <tr><td>"&arrTrade(2, i)&" </td><td>"&arrTrade(3, i)&" </td><td>"&arrTrade(4, i)&" </td><td>"&arrTrade(5, i)&" </td></tr> "
    Next

strBody = strBody & "</table>"  %> 

