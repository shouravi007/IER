<!-- #include virtual = "/applications/common/mail/mail.asp" -->
<%
strADOErrorNumber = Request.QueryString("strADOErrorNumber")
strADOErrorMessage = Request.QueryString("strADOErrorMessage")
strFullPath = Request.QueryString("strFullPath") 
strLineNo = Request.QueryString("strLineNo")
strSystemName = Request.QueryString("strSystemName") 

	   FromWho = common_error_Mail
	   ToWho = commonMail
	   Subject = "Error in "&strSystemName&" of Javascript : ::  at  page  - " & strPageName

	'Subject = "Error At " & strPageName & " (Bdjobs)"

	strQuery = request.ServerVariables("QUERY_STRING")
		if strQuery <> "" then
				strQuery = "?" & strQuery
		end if
	strFullPath="http://" & request.ServerVariables("SERVER_NAME") & request.ServerVariables("URL") & strQuery	
	strMailBody = "Browser Information of client :" & strADOErrorNumber & "<br>"
	strMailBody = strMailBody & "Error Details of Js   :" & strADOErrorMessage & "<br>"
	strMailBody = strMailBody & "Remote IP :" & request.ServerVariables("REMOTE_ADDR") & "<br>"
	strMailBody = strMailBody & "Referrer :" & request.ServerVariables("HTTP_REFERER") & "<br>"
	strMailBody = strMailBody & "Page Name :" & strFullPath & "<br>"	
'	strMailBody = strMailBody & "Page Name :" & request.ServerVariables("SCRIPT_NAME") & "<br>"	
'	strMailBody = strMailBody & "Query String :" & request.ServerVariables("QUERY_STRING") & "<br>"
    strMailBody = strMailBody & "Line No :" & strLineNo & "<br>"
    strMailBody = strMailBody & "System Name :" & strSystemName

	on error resume next
	
	'response.Write(strMailBody)
		
	'sendmail FromWho, ToWho, Subject, strMailBody, "",ToDeveloper, common_error_Mail
   ' sendmail(fromWho, toWho, Subject, Body,toCC, toBCC, replyTo)
	'response.Write( err.description & "(" & err.number & ")")

%>