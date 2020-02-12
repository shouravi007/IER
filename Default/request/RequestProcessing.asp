<%
strReq = Request.ServerVariables("QUERY_STRING")
strUrl = Request.ServerVariables("URL")
strRef = Request.ServerVariables("HTTP_REFERER")
if strReq <> "" then 
 strAction = Decode(trim(strReq))
  'response.Write("<br>strAction:"&strAction)

  s1 = split(strAction,"Location=")
  if ubound(s1) > 0 then 
    l1 = s1(1)
  'response.Write("<br>l1:"&l1)
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
		  
		 'response.Write("<br>strLocation:"&strLocation)
		 'response.Write("<br>strFormAction:"&strFormAction)
		 'response.Write("<br>jobid:"&jobid)
		 
		 ValuePrint strLocation , "strLocation" 
		 ValuePrint strFormAction, "strFormAction"
		 'ValuePrint jobid, "jobid"  
		 
		   
	  end if
  end if 
else
 strAction = "" 
end if
' response.Write("<br>strReq:"&strReq)
' response.Write("<br>strUrl:"&strUrl)
' response.Write("<br>strRef:"&strRef)
' response.Write("<br>page:"&page)

if jobid = "" then 
  jobid = Request.Form("JOB_ID")
   if jobid = "" then 
    jobid = Request.QueryString("jobid")
   end if 
end if 


'Response.Write(request.ServerVariables("SERVER_NAME"))

'If jobid = 1 Then
'  position = " Management Trainee Officer"
'ElseIf jobid = 7 Then
'  position = " Trainee Officer"
'Else
'  position = ""  
'End IF 


'Response.Write(Encode("Location=View&FormAction=HelpDesk"))

%>
