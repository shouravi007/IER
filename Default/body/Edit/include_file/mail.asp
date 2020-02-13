<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!--METADATA TYPE="typelib" UUID="CD000000-8B95-11D1-82DB-00C04FB1625D" NAME="CDO for Windows Library" -->
<!--METADATA TYPE="typelib" UUID="00000205-0000-0010-8000-00AA006D2EA4" NAME="ADODB Type Library" --> 
</head>
<%
Function sendmail(fromWho, toWho, Subject, Body,toCC, toBCC, replyTo)

	Dim objCDO 
	Dim iConf 
	Dim Flds
	
	Const cdoSendUsingPort = 2
	
	Set objCDO = Server.CreateObject("CDO.Message") 
	Set iConf = Server.CreateObject("CDO.Configuration")

    'userName="auny@bdjobs.com"
	'password="auny+578"
	Set objBodyPart = objCDO.BodyPart
    objBodyPart.Charset = "UTF-8"
	
	Set Flds = iConf.Fields 
	With Flds 
		.Item(cdoSendUsingMethod) = cdoSendUsingPort 
		.Item(cdoSMTPServer) = "bdjobs.com" 
		.Item(cdoSMTPServerPort) = 25 
		.Item(cdoSMTPconnectiontimeout) = 10 
		'UserID on the SMTP server
		.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1 
		.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") ="ers@bdjobs.com"
		.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") ="ekt+700"
		.Update 
	End With
	
	Set objCDO.Configuration = iConf
	
	
	objCDO.From = fromWho 
	objCDO.To = toWho 
	
	if toCC<>"" then
		 objCDO.CC = toCC
	end if
	
	if replyTo<>"" then
		 objCDO.ReplyTo = replyTo
	end if

	if toBCC<>"" then
		 objCDO.BCC = toBCC
	end if
	
	objCDO.Subject = Subject 
	objCDO.HTMLBody = Body 
'	objCDO.BodyFormat=0
'	objCDO.MailFormat=0
	
	on error resume next
	objCDO.Send
	
	if err.number<>0 then
		sendmail=false
		
	else
		sendmail=true
	end if
	'response.Write(sendmail & ": " & err.description & "(" & err.number & ")")
	Set ObjCDO = Nothing 
	Set iConf = Nothing 
	Set Flds = Nothing
End Function 

Function EmailFromText(locationOfTextFile)
	Set fs=Server.CreateObject("Scripting.FileSystemObject")
	Set f=fs.OpenTextFile(Server.MapPath(locationOfTextFile), 1)
	toWhos = f.ReadAll
    EmailFromText = toWhos
End Function

%>
