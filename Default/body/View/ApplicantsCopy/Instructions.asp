<%
 sql = ""
 err.clear 
 sql = "SELECT postedon,  DATEADD(day, 3, CONVERT(datetime, postedon)) AS DateAdd from personal where id=" & intTrakingNo
 
 arr72 = objERS.RetrieveData(sql,errMsg)
 
 mm = month(arr72(1,0))
 if mm < 10 then 
   strmm = "0"&mm
 else
    strmm = mm
 end if

 dd = day(arr72(1,0))
 if dd < 10 then 
   strdd = "0"&dd
 else
    strdd = dd
 end if


 s2019YYYYMMDDhrsminsec = year(arr72(1,0))&"-"&strmm&"-"&strdd&" "&hour(arr72(1,0))&" "& minute(arr72(1,0))&" "& second(arr72(1,0))



 strBody = strBody & "<table width='100%' border='0' cellspacing='0' cellpadding='0'><tr> <td><hr /></td></tr><tr> <td><p> <strong>Congratulations!! Application Submitted Successfully</strong> </p> </td></tr><tr><td>"&intTrakingNo&" is your ID, please keep this number to pay the application fee within "&year(arr72(1,0))&"-"&strmm&"-"&strdd&" "&hour(arr72(1,0))&" "& minute(arr72(1,0))&" "& second(arr72(1,0))&" [YYYY-MM-DD hrs min sec] from your prepaid mobile phone by SureCash.</td></tr></table>"%>

