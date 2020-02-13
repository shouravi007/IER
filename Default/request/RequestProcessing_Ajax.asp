<%
strReq = Request.ServerVariables("QUERY_STRING")
strUrl = Request.ServerVariables("URL")
strRef = Request.ServerVariables("HTTP_REFERER")
if strReq <> "" then 
 strAction = Decode(trim(strReq))

  s1 = split(strAction,"Location=")
  if ubound(s1) > 0 then 
    l1 = s1(1)

	f1 = split(l1, "&FormAction=")
	  if ubound(f1) > 0 then
	    strLocation = f1(0)
		strFormAction = f1(1)
		  if instr(strFormAction, "&JobID") > 0 then 
		     f2 = split(strFormAction, "&JobID=") 
			  if ubound(f2) > 0 then
			   strFormAction = f2(0)
			   jobid = f2(1)
			  end if 
		  end if 

		   
	  end if
  end if 
else
 strAction = "" 
end if

if jobid = "" then 
  jobid = Request.Form("JOB_ID")
   if jobid = "" then 
    jobid = Request.QueryString("jobid")
   end if 
end if 


%>
