<%
jobid = Request.Form("jobid")

if jobid <> "" then 
 sql = "select jobtitle from jobposting where jobid = "&jobid
 arrPosition = objDhakaBank.RetrieveData(sql, errMsg)
  if arrPosition(0, 0) <> "Nothing" Then 
   position = arrPosition(0, 0) 
  else
   position = "" 
  end if
else
 position = "" 
end if

%>