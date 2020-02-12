<% strBody = strBody & "<strong>Experience:</strong><table width='100%' border='1' cellspacing='0' cellpadding='0' ><tr><td width='25%'>Name of Position</td><td width='25%'>Company Name</td><td width='10%'>Served From</td><td width='10%'>Served Till</td><td width='30%'>Duty</td></tr><tr><td> "&strNameofPosition1&"</td><td>"&strCompanyName1&"</td><td>"&expFromMonth1&"/"&expFromYear1&"</td><td>"&expToMonth1&"/"&expToYear1&"</td><td>"&strDuty1&"</td></tr>"

   if ubound(arrExp, 2) > 0 Then 
   strBody = strBody & " <tr><td> "&strNameofPosition2&"</td><td>"&strCompanyName2&"</td><td>"&expFromMonth2&"/"&expFromYear2&"</td><td>"&expToMonth2&"/"&expToYear2&"</td><td>"&strDuty2&"</td></tr>"
   End If

   if ubound(arrExp, 2) > 1 Then 
    strBody = strBody & "<tr><td> "&strNameofPosition3&"</td><td>"&strCompanyName3&"</td><td>"&expFromMonth3&"/"&expFromYear3&"</td><td>"&expToMonth3&"/"&expToYear3&"</td><td>"&strDuty3&"</td></tr>"
   End If
 strBody = strBody & "</table>" %> 

