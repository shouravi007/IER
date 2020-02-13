<%	

Sub  randomLink()
	    Response.Write "?"&time&rnd
End Sub 


	varSysName = "pcb limited  Helpdesk"




	'********************************Global Procedure***********************************************************************			
	' This Procedure is Used by All Class, Function & Procedure. This is an Error Message Displaying Procedure.
	'********************************Global Procedure***********************************************************************			
	' This Procedure is Used by All Class, Function & Procedure. This is an Error Message Displaying Procedure.
	Public Sub ErrorMessage(LineNumber, errLog, flag)
		If errLog <> "" Then
		   If flag = 1 Then
				objOneBank.RollBackTransaction errLog
		   End If
		   Set objOneBank = Nothing
		   'Response.Write(LineNumber & "<br />" & errLog)
		   'Response.End()
		   ShowMessage_ADOErrors errLog, "Test.asp", LineNumber, "DhakaBank"
		End If
	End Sub
	
	' This Function Gives a date format.
	Public Function dateFunction(strProcessDate)
		If IsDate(strProcessDate) = True Then
			tmpDate = Day(strProcessDate)
			tmpMonth = MonthName(Month(strProcessDate), True)
			tmpYear = Year(strProcessDate)
			tmpDate = tmpMonth & " " & tmpDate & ", " & tmpYear
			dateFunction = tmpDate
		Else
			dateFunction = "---"
		End If
	End Function
	
	' Decode Link Function.
	Function Decode(sIn)
		dim x, y, abfrom, abto
		Decode="": ABFrom = ""
	
		For x = 0 To 25: ABFrom = ABFrom & Chr(65 + x): Next 
		For x = 0 To 25: ABFrom = ABFrom & Chr(97 + x): Next 
		For x = 0 To 9: ABFrom = ABFrom & CStr(x): Next 
	
		abto = Mid(abfrom, 14, Len(abfrom) - 13) & Left(abfrom, 13)
		For x=1 to Len(sin): y=InStr(abto, Mid(sin, x, 1))
			If y = 0 then
				Decode = Decode & Mid(sin, x, 1)
			Else
				Decode = Decode & Mid(abfrom, y, 1)
			End If
		Next
	End Function
	
	' Encode Link Function.
	Function Encode(sIn)
		dim x, y, abfrom, abto
		Encode="": ABFrom = ""
	
		For x = 0 To 25: ABFrom = ABFrom & Chr(65 + x): Next 
		For x = 0 To 25: ABFrom = ABFrom & Chr(97 + x): Next 
		For x = 0 To 9: ABFrom = ABFrom & CStr(x): Next 
	
		abto = Mid(abfrom, 14, Len(abfrom) - 13) & Left(abfrom, 13)
		For x=1 to Len(sin): y = InStr(abfrom, Mid(sin, x, 1))
			If y = 0 Then
				 Encode = Encode & Mid(sin, x, 1)
			Else
				 Encode = Encode & Mid(abto, y, 1)
			End If
		Next
	End Function
	
	Sub checkIPValidation()
		'response.Write(Request.ServerVariables("REMOTE_ADDR"))
		'ON Line:   "123.49.32.142" 
		'OFF Line:  "192.168.100.99"
		If Request.ServerVariables("REMOTE_ADDR") <> "123.49.32.142" Then
			Response.End()
		End If
	End Sub
	

	Sub SetCVVSessions()
		ID = ""
		'Read from Cookie
		ID = Request.Cookies("admin") ("USER_ID")
		'If Cookies not found
		If ID = "" Then
			Response.Redirect("http://www.bdjobs.com/mis/")
		End If		
		
		Session("userId") = ID
	End Sub
	
	' This Function Gives a date format by Choice.
	Public Function DateFormat(strDate, strFormat)
		If LCase(strFormat) = "yd" Then
			tmpDay = Day(strDate)
			tmpMonth = Month(strDate)
			tmpYear = Year(strDate)
			tmpDate = tmpYear & "/" & tmpDay & "/" & tmpMonth
		ElseIf LCase(strFormat) = "ym" Then
			tmpDay = Day(strDate)
			tmpMonth = Month(strDate)
			tmpYear = Year(strDate)
			tmpDate = tmpYear & "/" & tmpMonth & "/" & tmpDay
		ElseIf LCase(strFormat) = "md" Then
			tmpDay = Day(strDate)
			tmpMonth = Month(strDate)
			tmpYear = Year(strDate)
			tmpDate = tmpMonth & "/" & tmpDay & "/" & tmpYear
				
		End If	
		
		DateFormat = tmpDate
	End Function
	
	' Email validation Naznin Apu
	'function validate_email(dv)  '// e-mail validation
'		if dv="" then	'blank check
'			validate_email=true
'			else
'				if InStr(1,dv,"'",0)>0 then		'single check 
'					validate_email=true
'					else
'						'1st if
'						if ((Instr(1,dv,":") >0) or (Instr(1,dv,";") >0) or (Instr(1,dv,"<") >0) or (Instr(1,dv,">") >0) or (instr(1,dv,"\\") >0) or (Instr(1,dv,",") >0) or (Instr(1,dv," ") >0) or (Instr(1,dv,"/") >0) or (Instr(1,dv,"@") = -1) or (Instr(1,dv,".") = -1)) then
'							validate_email=true
'						else
'							apos=InStr(1,dv, "@")
'							if (apos<1) then	'2nd if
'								validate_email=true
'							else
'								dotpos=InStr(apos,dv,".")
'									if (apos<1 or (dotpos-apos)<2) then	'3rd if
'										validate_email=true
'									else 
'										if Instr(apos+1,dv,"@")>0 then	'4th if
'											validate_email=true
'										else
'											validate_email=false
'										end if		'end 4th if
'										
'									end if		'end 3rd if 			
'									
'							end if		'end 2nd if
'							
'						end if		'end 1st if
'						
'				end if		'end single check 
'		end if	
'	end function
	



'	Sub sendmail( fromWho, toWho, Subject, Body ) 
'		Dim objCDO 
'		Dim iConf 
'		Dim Flds
'		
'		Const cdoSendUsingPort = 2
'		
'		Set objCDO = Server.CreateObject("CDO.Message") 
'		Set iConf = Server.CreateObject("CDO.Configuration")
'		
'		Set Flds = iConf.Fields 
'		With Flds 
'			.Item(cdoSendUsingMethod) = cdoSendUsingPort 
'			.Item(cdoSMTPServer) = "mail-fwd" 
'			.Item(cdoSMTPServerPort) = 25 
'			.Item(cdoSMTPconnectiontimeout) = 10 
'			.Update 
'		End With
'	
'		Set objCDO.Configuration = iConf
'	
'		objCDO.From = fromWho 
'		objCDO.To = toWho 
'		objCDO.Subject = Subject 
'		objCDO.HTMLBody = Body 
'	'	objCDO.BodyFormat=0
'	'	objCDO.MailFormat=0
'		objCDO.Send
'		user_msg="<br>Your <b>Traking No. & Password </b> have been sent to the given E-mail address<br>"
'	End Sub
		
	Function GetReferer
		Dim strReferer, IsBlankReferer
		strReferer = ""
		IsBlankReferer = False
		
		strReferer = Request.ServerVariables("HTTP_REFERER")
		If strReferer <> "" Then
			IsBlankReferer = False
		Else
			IsBlankReferer = True
		End If
		
		GetReferer = IsBlankReferer
		
		'Response.Write(strReferer)
	End Function
	
	' This Function gives ` insteed of '
	Public Function GiveReplacedString4DB(strString)
		If strString <> "" Then
			strString = Trim(strString)
			strString = Replace(strString, "'", "`")
			'strString = Replace(strString, Chr(34), Chr(96))
		End If	
		GiveReplacedString4DB = strString
	End Function
	
	' This Function gives ' insteed of `
	Public Function GiveReplacedString(strString)
		If strString <> "" Then
			strString = Replace(strString, "`", "'")
			'strString = Replace(strString, Chr(96), Chr(34))
		End If	
		GiveReplacedString = strString
	End Function
	
	Function monName(mn)
		If mn=1 Then
			getMon="Jan"
		ElseIf mn=2 Then
			getMon="Feb"
		ElseIf mn=3 Then
			getMon="Mar"
		ElseIf mn=4 Then
			getMon="Apr"
		ElseIf mn=5 Then
			getMon="May"
		ElseIf mn=6 Then
			getMon="Jun"
		ElseIf mn=7 Then
			getMon="July"
		ElseIf mn=8 Then
			getMon="Aug"
		ElseIf mn=9 Then
			getMon="Sep"
		ElseIf mn=10 Then
			getMon="Oct"
		ElseIf mn=11 Then
			getMon="Nov"
		ElseIf mn=12 Then
			getMon="Dec"
		End If
		monName=getMon
	End Function
	
	
	Function GetReplaceString(strString)
		If strString <> "" Then
			strString = Replace(strString, "&", "&#38;") ' &
			'strString = Replace(strString, """, "&#34;") ' " 
			'strString = Replace(strString, "#", "&#35;") ' # 
			strString = Replace(strString, "$", "&#36;") ' $ 
			strString = Replace(strString, "%", "&#37;") ' %
			strString = Replace(strString, "'", "&#39;") ' '
			strString = Replace(strString, "(", "&#40;") ' (
			strString = Replace(strString, ")", "&#41;") ' )
			'strString = Replace(strString, ",", "&#44;") ' ,
			strString = Replace(strString, "-", "&#45;") ' -
			strString = Replace(strString, "-", "&#45;") ' -
			strString = Replace(strString, ".", "&#46;") ' .
			strString = Replace(strString, "/", "&#47;") ' /
			strString = Replace(strString, "@", "&#64;") ' @
			strString = Replace(strString, "<", "&#60;") ' <
			strString = Replace(strString, ">", "&#62;") ' >
			strString = Replace(strString, "?", "&#63;") ' ?
			strString = Replace(strString, "_", "&#95;") ' _
			strString = Replace(strString, "`", "&#96;") ' `
			strString = Replace(strString, "", "&#8218;") ' `
			strString = Replace(strString, "'", "&#39;") ' '
			strString = Replace(strString, "", "&#45;") ' 
			
			'strString = Replace(strString, "'","&#8216;")
		End If
		
		GetReplaceString = strString
	End Function
	
	

Sub LoadDataFromXML(arr,strFile,idField,nameField)
	Dim nodeLength
	On Error Resume Next
	Set xmlDoc = Server.CreateObject("Microsoft.XMLDOM")
	
	'Load the request into XML DOM
	If InStr(Request.ServerVariables("SERVER_NAME"), "serverbdj") > 0 Then  
		'Response.Write "serverbdj"
		xmlDoc.Load Server.MapPath("\data\"&strFile&".xml")
	ElseIf InStr(Request.ServerVariables("SERVER_NAME"), "server-ers") > 0 Then  
		'Response.Write "serverbdj"
		xmlDoc.Load Server.MapPath("\data\"&strFile&".xml")

	Else 
		xmlDoc.Load Server.MapPath("\applications\data\"&strFile&".xml")
	End If 
	
	If Err.Number <> 0 Then
		Redim arr(0,0)
		arr(0,0)="Nothing"
		Err.Clear
		Exit Sub
	End If
	
	If xmlDoc.ParseError Then
		Response.Write("Server: " & Request.ServerVariables("SERVER_NAME") & "<br/>Parse Err:"&objReq.ParseError)
		'response.End()
	End If
	
	Dim objNodeListID
	DIm objNodeListName
	
'	Set objNodeListID=xmlDoc.selectNodes(dataSet)
'	Set objNodeListName=xmlDoc.selectNodes(Table)
	
	Set objNodeListID=xmlDoc.getElementsByTagName(idField)
	Set objNodeListName=xmlDoc.getElementsByTagName(nameField)
	
	nodeLength=objNodeListID.length
	If cLng(nodeLength)>0 Then	
		indexCount=objNodeListID.length - 1

		Redim arr(indexCount,1)
		For counts = 0 to indexCount
			arr(counts,0)=objNodeListID(counts).text
			arr(counts,1)=objNodeListName(counts).text
		Next
	Else
		Redim arr(0,0)
		arr(0,0)="Nothing"
	End If
End sub



function serviceAvailableWithAjax( AppServ )

	dim sendURL_sawa	
	'Create the xml object 
	Set objHTTP_sawa = CreateObject("MSXML2.XMLHTTP")
				
				 StartTime3 = Timer 'Timer
	
	strURL_sawa = AppServ '"http://home.bdjobs-server.com/srv_av_home.asp"
	objHTTP_sawa.Open "get", strURL_sawa, False 
	objHTTP_sawa.Send  	
	'ResponsePage is the response we will get when visiting sendURL 
	ResponsePage_sawa = objHTTP_sawa.responseText 	
	Set objHTTP_sawa = Nothing 
	
	'response.write "ResponsePage_sawa = " &  trim(ResponsePage_sawa) & "<br>"
	serviceAvailableWithAjax = cstr(trim(ResponsePage_sawa))	
	 
	 EndTime3 = Timer         
	 TimeElapsed3 = EndTime3 - StartTime3

End function



Sub LoadDataResumeXML(arr,strFile,nameField)
            
    dim sendURL
	dim strtmpBodyencoded
	dim strPort
	userName = Request.Form("txtUserName")
	pass = Request.Form("txtPassword")
	sendURL =  "http://serverbdj/bdjobs/mybdjobs/imp_bdj_to_ers.asp?u="&userName&"&p="&pass&"&s=Dhaka Bank"	 
	ResumeData = serviceAvailableWithAjax(sendURL)
	strLog=time()&vbTab&request.ServerVariables("REMOTE_ADDR")&vbTab&request.ServerVariables("HTTP_REFERER")	
	'response.Write "--------------End 4 Method: Final04  -----------------------"
	response.Clear()
	Dim objXMLDoc
	Dim NodeList
	Dim Node
	Dim ChildNode
	Dim NodeAttr
	Dim objNodeListID
	DIm objNodeListName

	Set objDom = CreateObject("Microsoft.XMLDOM")
	objDom.async = False
	objDom.loadXML(ResumeData)
	
	If objDom.parseError.errorCode <> 0 Then
		strLog=strLog&vbTab&"Parsing Error"
		response.Write "Parsing Error"
	Else

		'Set objNodeListID=xmlDoc.getElementsByTagName(idField)
		Set objNodeListName=xmlDoc.getElementsByTagName(nameField)
		
		nodeLength=objNodeListID.length
		If cLng(objNodeListName)>0 Then	
			indexCount=objNodeListName.length - 1
	
			Redim arr(indexCount,1)
			For counts = 0 to indexCount
				'arr(counts,0)=objNodeListID(counts).text
				arr(counts,0)=objNodeListName(counts).text
			Next
		Else
			Redim arr(0,0)
			arr(0,0)="Nothing"
		End If
	End IF 
End Sub 




Sub ConnectionClose()
	objDhakaBank.CloseConnection()
	Set objDhakaBank = Nothing 
End Sub 

Sub  EndOfAllProcess()
	objDhakaBank.CloseConnection()
	Set objDhakaBank = Nothing 
	Response.End()
End Sub


Sub  EndOfAllProcessWithTransaction()
	 objDhakaBank.CommitTransaction(errMsg)
	objDhakaBank.CloseConnection()
	Set objDhakaBank = Nothing 
	Response.End()
End Sub

Sub  ServerChecking(serverName,strMsg,DefaultPage)
  If  Request.ServerVariables("SERVER_NAME") <> serverName  Then 
			Call ShowValidateMsg(strMsg &"<br />Click <a href='"&serverName&"' onclick='javascript:history.go(-1);return false;'>here</a> to retry. ")    
  End If 
End Sub 



Sub  SqlPrintOnlyFromOffice(strSqlQuery,strSqlName)
 	 If Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141" Or InStr(Request.ServerVariables("HTTP_REFERER"), "serverbdj") > 0 Then  
	  Response.Write "<input type='hidden' name='"&strSqlName&"' value='"&strSqlQuery&"' />" 	 
	 End  If 
End Sub 

Sub  ValuePrint(strSqlQuery,strSqlName)
 	 If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or Request.ServerVariables("SERVER_NAME") =  "server-ers"  Then  
	   Response.Write "<input type='hidden'  name='"&strSqlName&"' value='"&strSqlQuery&"' />" 
	 End  If 
End Sub 

Sub  ValuePrintAsHidden(strSqlQuery,strSqlName)
 	
	    Response.Write "<input type='hidden'  name='"&strSqlName&"' value='"&strSqlQuery&"' />" 	 
	
End Sub 



Function IsValidEmail(strEmail)
	Dim isValidE, regEx
	
	isValidE = True
	Set regEx = New RegExp
	
	regEx.IgnoreCase = False
	regEx.Pattern = "^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
	isValidE = regEx.Test(strEmail)
	
	isValidEmail = isValidE
End Function


Sub CheckPasswordAndConfirmPassword(strPassword,strConfirmpassword, strMsgVariablePass, strMsgVariableConfirmPass)
       If  strPassword = ""  Then
		 Call  ShowValidateMsg(strMsgVariablePass& " is empty.<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
		  Response.End()
	   End If 
        
	   If  strConfirmpassword  =  ""  Then 
		 Call  ShowValidateMsg(strMsgVariableConfirmPass & " is empty.<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
		  Response.End()
	   End If 
	   
	   If  strPassword  <> strConfirmpassword  Then 
		 Call  ShowValidateMsg(strMsgVariablePass& " and  " & strMsgVariableConfirmPass & " are not same. <br/>Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
		  Response.End()
	   End If 
End Sub 


Function  CheckValidation(Required,strVariable,FormInputType,DbType,DbFieldSize,strMsgVariableName)
On Error Resume Next
	 Select  Case FormInputType 
	     Case  "text"
		 	'response.Write("<br>I am here...<br>")
	        Call  TextTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)
	     Case  "select"
		    Call  SelectTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)
		 Case  "DateTime"	
		    Call  DateTimeTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)
		 Case  "email"
		    Call  EmaliTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)	
		 Case "cgpa"
		    Call  CgpaTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)			
		 Case  Else 
		    Call ShowValidateMsg(strMsg)
	 End Select 	 	 
	 'CheckValidation = strVariable
	  If Err.Description <> "" Then
	      'Response.Write("Sorry")
		  Call  ShowValidateMsg(strMsgVariableName& " is invalid  data or very big data for  operation handling .<br/>Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	   Response.End() 
	  End If  
	strVariable = ReplacedAllTypeOfSpecialChar(strVariable)
	CheckValidation = strVariable
End Function  

Sub ErrorHandling()
	On Error Resume Next
	strCarrierPlan = Trim(Request.Form("OBJ"))
	Response.Write(Len(strCarrierPlan))
	  If Err.Description <> "" Then
	      Response.Write("Sorry")
	  Response.End() 
	End If
End Sub 

' ageCheckValidation("True",datetimeofage,"10/06/1982","30","31/12/2012","Age maximu 30(thirty) years as on ")
Sub  ageCheckValidation(Required,strVariable,minimumDate,maxAge,onWhichDate,strMsg)
  If Required = "True" Then 
    DOB = cDate(strVariable)
	DOB1 = cDate(minimumDate)
	iage = Cint(datediff("d",DOB1,DOB))
	'Response.Write("<br/>Birth: " & FormatDateTime(DOB, vbLongDate) & "<br/>Deadline: " & FormatDateTime(DOB1, vbLongDate) & "<br/>Age: " &iage)
	If iage < 0 Then    
	'Response.Write "<br/>"& "You Are not Eligeble to Apply  "& iage 
		IsRejected = True
		 Call  ShowValidateMsg(strMsg & " " & maxAge & "  years " & " on " & onWhichDate & "  ! <br/>Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	     Response.End()
		Else 
	'	Response.Write "Your Are Betwen 28 years"
		IsRejected = False
	End if 
  End if 
End Sub 


Sub  EmaliTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)	
  strLength = Len(strVariable)
   'Response.Write strLength&strVariable&IsNull(strVariable)&IsEmpty(strVariable)
   If  Required = "True" Then 
        	If  strVariable = ""  Or strLength <= 0  Or  IsNull(strVariable) = True  Or  IsEmpty(strVariable) = True Then 
			   Call  ShowValidateMsg(strMsgVariableName & " can't be empty.<br/>Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
			       Response.End()
		    Else 
			    If  IsValidEmail(strVariable) = False  Then 
				    Call ShowValidateMsg(strMsgVariableName& " is invalid.<br/>Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
				Else 	
			        Call  RequiredTextTypeDataValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)
				End If  	
			End If   	   	  
   Else 
        	If  strVariable <> ""  Or strLength <>  0   Then 
			    If  IsValidEmail(strVariable) = False  Then 
				    Call ShowValidateMsg(strMsgVariableName& " is invalid.<br/>Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
				Else 	
			        Call  RequiredTextTypeDataValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)
				End If  	

			End If     
   End If 
End Sub 


Sub  DateTimeTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName) 
  If  Required = "True"  Then 
      If  IsDate(strVariable) = False Then 
	     Call  ShowValidateMsg(strMsgVariableName & " is invalid, please select valid. "&strMsgVariableName& "<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	     Response.End()
	  End if 	   
  End If 
End Sub 


Sub   SelectTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)
   If  Required = "True" Then  
       If  strVariable = DbType  Then 
	      Call  ShowValidateMsg(strMsgVariableName & " should be selected.<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	      Response.End()	   
	   End If
   End If 
End Sub 


Sub  MarksTypeInputValidationForSecandary(Required,strResult,strCgpaOrMarks,cgPaScale,strMsgVariableName)	
On Error Resume Next
  If Required = "True" Then 
    If strResult = "15" Then    'first division 
	   If CLng(strCgpaOrMarks) > 100  Or  CLng(strCgpaOrMarks)  < 60 Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	   End If 
	ElseIf strResult = "14" Then  ' second division 
	   If CLng(strCgpaOrMarks) < 45  Or  CLng(strCgpaOrMarks)  > 60 Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	   End If 
	ElseIf strResult = "13" Then  ' third division 
	   If CLng(strCgpaOrMarks) < 33  Or  CLng(strCgpaOrMarks)  > 45 Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	   End If 
	ElseIf strResult = "12" Then  ' appeard
	 If  IsNumeric (strCgpaOrMarks) Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	 End If 		
	ElseIf strResult = "0" Then  ' grade 
	  If cgPaScale = "-1" Then 
	        Call ShowValidateMsg( "Please select CGPA/GPA scale .<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	  End If  
	  
	  If CLng(strCgpaOrMarks) > CLng(cgPaScale) Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	  End If 
	  If strCgpaOrMarks < 2  Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	  End If 
  
	End If 
  End If 
  	  If Err.Description <> "" Then
	      'Response.Write("Sorry")
		  Call  ShowValidateMsg(strMsgVariableName& " is invalid  data or very big data for  operation handling .<br/>Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	   Response.End() 
	  End If  
End Sub 


Sub  MarksTypeInputValidation(Required,strResult,strCgpaOrMarks,cgPaScale,strMsgVariableName)	
 On Error Resume Next
  If Required = "True" Then 
    If strResult = "15" Then    'first division 
	   If CLng(strCgpaOrMarks) > 100  Or  CLng(strCgpaOrMarks)  < 60 Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	   End If 
	ElseIf strResult = "14" Then  ' second division 
	   If CLng(strCgpaOrMarks) < 45  Or  CLng(strCgpaOrMarks)  >= 60 Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	   End If 
	ElseIf strResult = "13" Then  ' third division 
	   If CLng(strCgpaOrMarks) < 33  Or  CLng(strCgpaOrMarks)  >= 45 Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	   End If 
	ElseIf strResult = "12" Then  ' appeard
	 If  IsNumeric (strCgpaOrMarks) Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	 End If 		
	ElseIf strResult = "0" Then  ' grade 
	  If cgPaScale = "-1" Then 
	        Call ShowValidateMsg( "Please select out of cgpa scale .<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	  End If  
	  
	  If CLng(strCgpaOrMarks) > CLng(cgPaScale) Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	  End If 
	  If strCgpaOrMarks < 2.00  And  cgPaScale = 4  Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	  End If 
	  If strCgpaOrMarks < 2.00  And  cgPaScale = 5  Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	  End If 	  
	End If 
  End If 
      If Err.Description <> "" Then
	      'Response.Write("Sorry")
		  Call  ShowValidateMsg(strMsgVariableName& " is invalid  data or very big data for  operation handling .<br/>Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
	   Response.End() 
	  End If  
End Sub 


Sub  RequiredTextTypeDataValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)
 			strDataType = cStr(DbType) 
			   Select  Case strDataType 
				 Case "Text"
					strLength =  CLng(Len(strVariable))
						  'strVariable = ReplacedAllTypeOfSpecialChar(strVariable)
						  DbFieldSize = CLng(DbFieldSize)
						  If  strLength > DbFieldSize Then 
							Call ShowValidateMsg(strMsgVariableName & " can't be greater than " & DbFieldSize &" characters .<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
							Response.End()
						 End If 
				 Case "bool"
						  DbFieldSize = CLng(DbFieldSize)
						  If  strVariable = "" Or IsNull(strVariable) Then 
							Call ShowValidateMsg(strMsgVariableName & " should be selected.<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
							Response.End()
						 End If 
	 
				Case  "Number"
                        If  IsNumeric(strVariable) = False  Then 
					      Call  ShowValidateMsg(strMsgVariableName & " should be number or numeric.<br/>Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry." )
							Response.End()
					    Else 
						   Select  Case DbFieldSize 
							  Case "Double" 
								 If  Cdbl(strVariable) = False Then 
									Call ShowValidateMsg(strMsgVariableName & " is a very big number please input small number<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry." )
						         	Response.End()
								 End If 
							  Case  "LongInt"
								 If  CLng(strVariable) = False  Then 
									Call  ShowValidateMsg(strMsgVariableName & " is a very big number please input small number<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry. " )   
						         	Response.End()
								 End If 
							  Case  "Currency" 
								 If  Ccur(strVariable) = False Then 
									Call  ShowValidateMsg(strMsgVariableName & " is a very big number please input small number.<br/>Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")  
						         	Response.End()
								 End if 		 
							  Case  "Int"  
								 If  Cint(strVariable) = False  Then 
									Call ShowValidateMsg(strMsgVariableName & " is a big number please input small number.<br/>Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry. ")    
						        	Response.End()
								 End if 
							  Case  "Byte" 
								 If  Cbyte(strVariable) = False Then 
									Call ShowValidateMsg(strMsgVariableName & " is a big number please input small number<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry. ")   
							        Response.End()
								 End if 	
							  Case  "Single" 
								  If Csng(strVariable) = False Then 
									Call ShowValidateMsg(strMsgVariableName & " is not a valid number for input.<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry. " )
						         	Response.End()
								  End If 	
							  Case Else 
						  End Select 	    	 	 		 	
					   End if
			     Case Else 	  
		  End Select 		
End Sub 



Sub  TextTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)

     If  Required = "True" Then 
	    strLength  =  Len(strVariable)
		  ' Response.Write strLength&strVariable&IsNull(strVariable)&IsEmpty(strVariable)

			 If  strVariable = ""  Or strLength <= 0  Or  IsNull(strVariable) = True  Or  IsEmpty(strVariable) = True Then 
				   Call ShowValidateMsg(strMsgVariableName&"  can't be empty.<br />Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.")
				    Response.End()
			 Else 
		           Call  RequiredTextTypeDataValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)
	         End If 
   
     Else 
		 If  strVariable <> ""  Or strLength <>  0  Or  IsNull(strVariable) = False  Or  IsEmpty(strVariable) = False Then 	
		      Call  RequiredTextTypeDataValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)
	     End if 
	 End if   	  	  
End Sub 


Sub ShowValidateMsgOnly(strMsg)
   	Dim strHtml
	strHtml = "<table width='50%' border='0' align='center' cellpadding='3' cellspacing='0'  bgcolor='#ffffff' background='images/bg_para.gif' style='border:1px solid #009;'>"
	strHtml = strHtml & "  <tr>"
    	strHtml = strHtml & "<td colspan='3' align='center' height='35' style='font-family:Arial, Helvetica, sans-serif; font-size:16px; font-weight:bold; color:#06C; border-bottom:1px solid #009;' valign='middle'>" & varSysName & "</td>"
  	strHtml = strHtml & "</tr>"
  	strHtml = strHtml & "<tr>"
	strHtml = strHtml & "<td colspan='3' align='center' style='font-family:Arial, Helvetica, sans-serif; font-size:13px; color:#333;' valign='middle'><br/>"& strMsg & "<br/>&nbsp;Click <a href='#' onclick='javascript:history.go(-1);return false;'>here</a> to retry.</td>"
 	strHtml = strHtml & " </tr>"
	strHtml = strHtml & "</table>"
	Response.Write(strHtml)
End Sub 


Sub ShowValidateMsg(strMsg)
   	Dim strHtml
	
	strHtml = "<br/><br/><table width='50%' border='0' align='center' cellpadding='3' cellspacing='0'  bgcolor='#ffffff' background='images/bg_para.gif' style='border:1px solid #009;'>"
	strHtml = strHtml & "  <tr>"
    	strHtml = strHtml & "<td colspan='3' align='center' height='35' style='font-family:Arial, Helvetica, sans-serif; font-size:16px; font-weight:bold; color:#06C; border-bottom:1px solid #009;' valign='middle'>" & varSysName & "</td>"
  	strHtml = strHtml & "</tr>"
  	strHtml = strHtml & "<tr>"
	strHtml = strHtml & "<td colspan='3' align='center' style='font-family:Arial, Helvetica, sans-serif; font-size:13px; color:#333;' valign='middle'><br/>"& strMsg & "<br/>&nbsp;</td>"
 	strHtml = strHtml & " </tr>"
	strHtml = strHtml & "</table><br/><br/>"

	
	Response.Write(strHtml)
	Response.End()
End Sub 

Sub ShowValidateMsgWithOutResponsDotEnd(strMsg)
   	Dim strHtml
	
	strHtml = "<br/><br/><table width='50%' border='0' align='center' cellpadding='3' cellspacing='0'  bgcolor='#ffffff' background='images/bg_para.gif' style='border:1px solid #009;'>"
	strHtml = strHtml & "  <tr>"
    	strHtml = strHtml & "<td colspan='3' align='center' height='35' style='font-family:Arial, Helvetica, sans-serif; font-size:16px; font-weight:bold; color:#06C; border-bottom:1px solid #009;' valign='middle'>" & varSysName & "</td>"
  	strHtml = strHtml & "</tr>"
  	strHtml = strHtml & "<tr>"
	strHtml = strHtml & "<td colspan='3' align='center' style='font-family:Arial, Helvetica, sans-serif; font-size:13px; color:#333;' valign='middle'><br/>"& strMsg & "<br/>&nbsp;</td>"
 	strHtml = strHtml & " </tr>"
	strHtml = strHtml & "</table><br/><br/>"
	
	Response.Write(strHtml)
End Sub 


Function StringToAscii(str)
	Dim result, x
	StringToAscii = ""
	If Len(str)=0 Then Exit Function
	If Len(str)=1 Then
		result = Asc(Mid(str, 1, 1))
		If Cint(result) < 32 Or  Cint(result) > 126 Then
			result = 126						
		End if 
		If result = 035  Then  ' For dollar sign  replace ment 
		   result = 126  ' replaced by tilde 
		End if 
		If result = 039  Then  ' for apostrope replace ment  
		   result = 126        ' replace by tilde 
        End if 
		StringToAscii = Left("000", 3-Len(CStr(result))) & CStr(result)
		Exit Function
	End If
	result = ""
	For x=1 To Len(str)
		result = result & StringToAscii(Mid(str, x, 1))
	Next
	StringToAscii = result
End Function

Function AsciiToString(str)
	Dim result, x
	AsciiToString = ""
	If Len(str) < 3 Then Exit Function
	If Len(str)= 3 Then
		AsciiToString = Chr(CInt(str))
		Exit Function
	End If
	result = ""
	For x=1 To Len(str) Step 3
		result = result & AsciiToString(Mid(str, x, 3))
	Next
	AsciiToString = result
End Function

Function  ReplacedAllTypeOfSpecialChar(str)
	Dim a,b,result
	a = StringToAscii(str)
	b = AsciiToString(a)
	'b = result
	ReplacedAllTypeOfSpecialChar = b 
 '  Response.Write("<br/>Str: " & str & "<br/>A: " & a & "<br/>B: " & b)
	'Response.End()
End Function 



	
Sub EmptyLoginCheck(TrackingNumber)
  TrackNo = Request.Form(TrackingNumber)
  'response.Write("<br>2. "&TrackNo&"<br>")
  If TrackNo = "" Then
    ShowValidateMsg "Sorry! Login information not authentic."
  Else 
	If not IsNumeric(TrackNo) then
		Response.Clear
		ShowValidateMsg "Sorry! Login information not authentic."
	End If	
  End If 
End Sub	

	Dim Base64Chars
	Base64Chars =	"ABCDEFGHIJKLMNOPQRSTUVWXYZ" & _
			"abcdefghijklmnopqrstuvwxyz" & _
			"0123456789" & _
			"+/"


	' Functions for encoding string to Base64
	Public Function base64_encode( byVal strIn )
		Dim c1, c2, c3, w1, w2, w3, w4, n, strOut
		For n = 1 To Len( strIn ) Step 3
			c1 = Asc( Mid( strIn, n, 1 ) )
			c2 = Asc( Mid( strIn, n + 1, 1 ) + Chr(0) )
			c3 = Asc( Mid( strIn, n + 2, 1 ) + Chr(0) )
			w1 = Int( c1 / 4 ) : w2 = ( c1 And 3 ) * 16 + Int( c2 / 16 )
			If Len( strIn ) >= n + 1 Then 
				w3 = ( c2 And 15 ) * 4 + Int( c3 / 64 ) 
			Else 
				w3 = -1
			End If
			If Len( strIn ) >= n + 2 Then 
				w4 = c3 And 63 
			Else 
				w4 = -1
			End If
			strOut = strOut + mimeencode( w1 ) + mimeencode( w2 ) + _
					  mimeencode( w3 ) + mimeencode( w4 )
		Next
		base64_encode = strOut
	End Function

	Private Function mimeencode( byVal intIn )
		If intIn >= 0 Then 
			mimeencode = Mid( Base64Chars, intIn + 1, 1 ) 
		Else 
			mimeencode = ""
		End If
	End Function	


	' Function to decode string from Base64
	Public Function base64_decode( byVal strIn )
		Dim w1, w2, w3, w4, n, strOut
		For n = 1 To Len( strIn ) Step 4
			w1 = mimedecode( Mid( strIn, n, 1 ) )
			w2 = mimedecode( Mid( strIn, n + 1, 1 ) )
			w3 = mimedecode( Mid( strIn, n + 2, 1 ) )
			w4 = mimedecode( Mid( strIn, n + 3, 1 ) )
			If w2 >= 0 Then _
				strOut = strOut + _
					Chr( ( ( w1 * 4 + Int( w2 / 16 ) ) And 255 ) )
			If w3 >= 0 Then _
				strOut = strOut + _
					Chr( ( ( w2 * 16 + Int( w3 / 4 ) ) And 255 ) )
			If w4 >= 0 Then _
				strOut = strOut + _
					Chr( ( ( w3 * 64 + w4 ) And 255 ) )
		Next
		base64_decode = strOut
	End Function

	Private Function mimedecode( byVal strIn )
		If Len( strIn ) = 0 Then 
			mimedecode = -1 : Exit Function
		Else
			mimedecode = InStr( Base64Chars, strIn ) - 1
		End If
	End Function
	
%>	


