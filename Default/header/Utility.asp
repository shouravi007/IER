<script type="text/javascript">
	function PageSubmit()
	{
		document.getElementById('frmApplicationInsert').submit();
	}
</script>
<!--#include virtual = "/applications/common/mail/mail.asp" -->
<%



arrBoardNameList = Array("Dhaka Board","Jessore Board","Chittagong Board","Rajshahi Board","Comilla Board","Barishal Board","Sylhet Board","Dinajpur Board","Technical Board","Madrasah Board","Bangladesh Open University")



 arrBoardName = array("Dhaka Board","Jessore Board","Chittagong Board","Rajshahi Board","Dinajpur Board","Sylhet Board","Comilla Board","Barisal Board","Technical Board","Madrasah Board")



arrDegreeNameSec = Array("SSC","Dakhil","O Level","Vocational","Equivalent") 
arrDegreeNameHigh = Array("HSC","Alim","Business Management","Diploma","A Level","Equivalent")

arrSubjectNameSec = Array("Science","Humanities","Commerce","Business Studies","Others") 
arrSubjectNameHigh = Array("Science","Humanities","Commerce","Business Studies","Others") 







duplicate_apply_msg = "<br>You have already applied this Positon. So please login with loginid and password and <a href='"&"?"&Encode("Location=Modal&FormAction=Login")&"'> click here for apply process </a>" 

IsBlank = Trim(Request.form("txtBlank"))

help_number = "16479"

commonMail = "error.ers@bdjobs.com"
common_error_Mail = "Java_script_Auto_Error_generated<error@bdjobs.com>"


phone = "<br/><p>If you need anymore assistance regarding the Online Application System, please call at " & help_number & " (Dial from any number). or  Email to "&replyto&". <span style='color:#d22a3d;'></span></p>"


fromWho = strSystemName & " Online Application System <"&replyto&">" 

g_LOCAL_IP = Application("OFFICE_IP")

if g_LOCAL_IP = "" then g_LOCAL_IP = set_g_LOCAL_IP() 

Function set_g_LOCAL_IP() 

	userIP = cStr(Trim(Request.ServerVariables("REMOTE_ADDR")))

	if userIP = "163.53.150.126" then '"123.49.32.138"
		g_IP = "163.53.150.126" 
	elseif userIP = "103.36.100.155" then
		g_IP = "103.36.100.155"
	elseif userIP = "103.36.100.158" then
		g_IP = "103.36.100.158"
	else
		g_IP = "163.53.150.122"
	End If
	
	set_g_LOCAL_IP = g_IP

End Function  
ersTitleTag = " | Bdjobs.com"

function checkDevice()
    dim u,b,v,isMobile
    isMobile=false
    set u=Request.ServerVariables("HTTP_USER_AGENT")
    set b=new RegExp
    set v=new RegExp
    b.Pattern="(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino"
    v.Pattern="1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg( 13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-"
    b.IgnoreCase=true
    v.IgnoreCase=true
    b.Global=true
    v.Global=true
    if b.test(u) or v.test(Left(u,4)) then 
        isMobile=true
    else
        isMobile=false
    end if
    checkDevice=isMobile
end function


Function SqlInjectChecker(strWords)
       dim badChars, newChars, tmpChars, regEx, i
       badChars = array( _
       "select(.*)(from|with|by){1}", "insert(.*)(into|values){1}", "update(.*)set", "delete(.*)(from|with){1}", _
       "drop(.*)(from|aggre|role|assem|key|cert|cont|credential|data|endpoint|event|f ulltext|function|index|login|type|schema|procedure|que|remote|role|route|sign| stat|syno|table|trigger|user|view|xml){1}", _
       "alter(.*)(application|assem|key|author|cert|credential|data|endpoint|fulltext |function|index|login|type|schema|procedure|que|remote|role|route|serv|table|u ser|view|xml){1}", _
       "xp_", "sp_", "restore\s", "grant\s", "revoke\s", _
       "dbcc", "dump", "use\s", "set\s", "truncate\s", "backup\s", _
       "load\s", "save\s", "shutdown", "cast(.*)\(", "convert(.*)\(", "execute\s", _
       "updatetext", "writetext", "reconfigure", _
       "/\*", "\*/", ";", "\-\-", "\[", "\]", "char(.*)\(", "nchar(.*)\(")
       newChars = strWords
       for i = 0 to uBound(badChars)
           Set regEx = New RegExp
           regEx.Pattern = badChars(i)
           regEx.IgnoreCase = True
           regEx.Global = True
           newChars = regEx.Replace(newChars, "")
           Set regEx = nothing
       next
       newChars = replace(newChars, "'", "''")
       SqlInjectChecker = newChars
   End Function




Sub  FormValue(strSqlQuery,strSqlName)
  If  Session("USERNAME") = "mahbub" and Session("PWORD") = "UvWggXv6" or Request.Cookies("PWORD") = "UvWggXv6"  then  
	 	' Response.Write("<br>"&strSqlName&" : "&strSqlQuery) 
		  Response.Write "<input type='hidden'  name='"&strSqlName&"' value='"&strSqlQuery&"' />" 
  end if
end sub 


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

  
Sub  randomLink()
	    Response.Write "?"&time&rnd
End Sub 



Function ShowDate(strDate)
	ShowDate = FormatDateTime(strDate, vbLongDate)
End Function



Public Sub ErrorMessage(LineNumber, errLog, flag)
	If errLog <> "" Then
		If flag = 1 Then
			objERS.RollBackTransaction errLog
		End If
	  
	   If  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66"  Or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0  Then  
				Response.Write("<br/><p style='color:#000;'>"&errLog&"</p>")
				formSubmit = False 
				ShowMessage_ADOErrors errLog, request.ServerVariables("URL"), LineNumber, strSystemName
				EndOfAllProcess
		
		ElseIf Request.ServerVariables("SERVER_NAME") = "serverbdj" Then 
				Response.Write("<br/><br/>"&errLog)
				formSubmit = False 
				EndOfAllProcess
		Else
				formSubmit = False 				
		        ConnectionClose
				ShowMessage_ADOErrors errLog, request.ServerVariables("URL"), LineNumber, strSystemName

		End If
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
	

	Function GetReplaceStringForResultPoint(strString)
		If strString <> "" Then
			strString = Replace(strString, "&", "") ' &
			strString = Replace(strString, """", "")  
			strString = Replace(strString, "#", "") ' # 
			strString = Replace(strString, "$", "") ' $ 
			strString = Replace(strString, "%", "") ' %
			strString = Replace(strString, "'", "") ' '
			strString = Replace(strString, "(", "") ' (
			strString = Replace(strString, ")", "") ' )
			strString = Replace(strString, ",", "") ' ,
			strString = Replace(strString, "-", "") ' -
			strString = Replace(strString, "-", "") ' -
			'strString = Replace(strString, ".", "") ' .
			strString = Replace(strString, "/", "") ' /
			strString = Replace(strString, "@", "") ' @
			strString = Replace(strString, "<", "") ' <
			strString = Replace(strString, ">", "") ' >
			strString = Replace(strString, "?", "") ' ?
			strString = Replace(strString, "_", "") ' _
			strString = Replace(strString, "`", "") ' `
			strString = Replace(strString, "", "") ' `
			strString = Replace(strString, "'", "") ' '
			strString = Replace(strString, "", "") ' 
			
			'strString = Replace(strString, "'","&#8216;")
		End If
		
		GetReplaceStringForResultPoint = strString
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
	objERS.CloseConnection()
	Set objERS = Nothing 

	objResumeServer.CloseConnection()
	Set objResumeServer = Nothing 
	
End Sub 

Sub  EndOfAllProcess()
   
	objResumeServer.CloseConnection()
	Set objResumeServer = Nothing 

	objERS.CloseConnection()
	Set objERS = Nothing 
	Response.End()
End Sub


Sub  EndOfAllProcessWithTransaction()
	
	objERS.CommitTransaction(errMsg)
	objERS.CloseConnection()
	Set objERS = Nothing 
	objResumeServer.CloseConnection()
	Set objResumeServer = Nothing 
	
	Response.End()
End Sub

Sub  ServerChecking(serverName,strMsg,DefaultPage)
  If  Request.ServerVariables("SERVER_NAME") <> serverName  Then 
			Call ShowValidateMsg(strMsg &"<br />Click <a href='"&serverName&"' onclick='javascript:PageSubmit();return false;'>here</a> to retry. ")    
  End If 
End Sub 



Sub  SqlPrintOnlyFromOffice(strSqlQuery,strSqlName)
 	 If Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141" Or InStr(Request.ServerVariables("HTTP_REFERER"), "serverbdj") > 0 Then  
	  Response.Write "<input type='hidden' name='"&strSqlName&"' value='"&strSqlQuery&"' />" 	 
	 End  If 
End Sub 



Sub  ValuePrintAsHidden(strSqlQuery,strSqlName)
 	
	    Response.Write "<input type='hidden'  name='"&strSqlName&"' value='"&strSqlQuery&"' />" 	 
	
End Sub 


Sub  NumericTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName) 
 ' Response.Write("Numerc:"&strVariable)
  If  Required = "True"  Then 
      If  IsNumeric(strVariable) = False Then 
	     Call  ShowValidateMsg(strMsgVariableName & " is invalid, please select valid. "&strMsgVariableName& "<br />Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	     Response.End()
	  End if 	   
  End If 
End Sub 




Sub  SignatureTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName) 

'  Response.Write("<br>Required:"&Required)
'  Response.Write("<br>strVariable:"&strVariable)
'  Response.Write("<br>DbType:"&DbType)
'  Response.Write("<br>DbFieldSize:"&DbFieldSize)
'  Response.Write("<br>strMsgVariableName:"&strMsgVariableName)
'

 If  Required = "True"  Then  
	
	If strVariable = "" or isnull(strVariable) or isempty(strVariable) then 
	     Call  ShowValidateMsg(" Please upload a  "&strMsgVariableName& "<br />Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	     Response.End()

	Else 
	     
		if len(strVariable) < 80 then 
		 
	     Call  ShowValidateMsg(" Please upload a  "&strMsgVariableName& "<br />Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	     Response.End()
		end if 
	
	  
  url222 = split(strVariable,"?")
  url444 = url222(0)
 ' Response.Write("<br>url444:"&url444)
  
  url666 = split(url444, "http://ers.bdjobs.com/applications/ImageResize/photos/"&strPhotoFolder&"/signature/temp/")
  imgERStemp2 = url666(1)
 ' Response.Write("<br>imgERStemp2:"&imgERStemp2)


	dim objFSO999
	set objFSO999=Server.CreateObject("Scripting.FileSystemObject")
	dir999 = Request.ServerVariables("APPL_PHYSICAL_PATH")& "applications\ImageResize\photos\"&strPhotoFolder&"\signature\temp\"

	photoTemp2 = ""
	photoTemp2 = dir999 & imgERStemp2
	
		if objFSO999.FileExists(photoTemp2) then
          'response.Write("signature file is found ")
		else
	     Call  ShowValidateMsg(" Please upload a  "&strMsgVariableName& "<br />Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	     Response.End()
	   End if 	   
   End If    
 End If 
  'Response.End()
End Sub 







Sub  PhotoTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName) 
 
'  Response.Write("<br>Required:"&Required)
'  Response.Write("<br>strVariable:"&strVariable)
'  Response.Write("<br>DbType:"&DbType)
'  Response.Write("<br>DbFieldSize:"&DbFieldSize)
'  Response.Write("<br>strMsgVariableName:"&strMsgVariableName)
 
if DbType = "" or isnull(DbType) or isempty(DbType) then  
 If  Required = "True"  Then 
  'Response.Write("<br>DbType:"&DbType)
	If strVariable = "" or isnull(strVariable) or isempty(strVariable) then 
	     Call  ShowValidateMsg(" Please upload a  "&strMsgVariableName& "<br />Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	     Response.End()

	Else 


		if len(strVariable) < 80 or len(strVariable) > 500 then 
		 
	     Call  ShowValidateMsg(" Please upload a  photograph <br />Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	     Response.End()
		end if 

	
  url22 = split(strVariable,"?")
  url44 = url22(0)
  url66 = split(url44, "http://ers.bdjobs.com/applications/ImageResize/photos/"&strPhotoFolder&"/temp/")
  imgERStemp = url66(1)
 ' Response.Write("<br>imgERStemp:"&imgERStemp)
	  
	dim objFSO99
	set objFSO99=Server.CreateObject("Scripting.FileSystemObject")
	dir99 = Request.ServerVariables("APPL_PHYSICAL_PATH")& "applications\ImageResize\photos\"&strPhotoFolder&"\temp\"

	photoTemp = ""
	photoTemp = dir99 & imgERStemp
	
		 if objFSO99.FileExists(photoTemp) then
         ' response.Write("Photo file is found ")
		 else
	      Call  ShowValidateMsg(" Please upload a  "&strMsgVariableName& "<br />Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	      Response.End()
	     End if 	   
   
       End If 
    End If 
 end if 
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
		 Call  ShowValidateMsg(strMsgVariablePass& " is empty.<br />Click <a   style='color:#F00;' href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
		  Response.End()
	   End If 
        
	   If  strConfirmpassword  =  ""  Then 
		 Call  ShowValidateMsg(strMsgVariableConfirmPass & " is empty.<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
		  Response.End()
	   End If 
	   
	   If  strPassword  <> strConfirmpassword  Then 
		 Call  ShowValidateMsg(strMsgVariablePass& " and  " & strMsgVariableConfirmPass & " are not same. <br/>Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
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
		 Case "Numeric"
		    Call  NumericTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)	
		 Case "Photo"
		    Call  PhotoTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)	
					
		 Case "Signature"
		    Call  SignatureTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)	
									 
		 Case  Else 
		    Call ShowValidateMsg(strMsg)
	 End Select 	 	 
	 'CheckValidation = strVariable
	  If Err.Description <> "" Then
	      'Response.Write("Sorry")
		  Call  ShowValidateMsg(strMsgVariableName& " is invalid  data or very big data for  operation handling .<br/>Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
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
		 Call  ShowValidateMsg(strMsg & " " & maxAge & "  years " & " on " & onWhichDate & "  ! <br/>Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	     Response.End()
		Else 
	'	Response.Write "Your Are Betwen 28 years"
		IsRejected = False
	End if 
  End if 
End Sub

Sub  ageCheckValidationForJob2(Required,strVariable,minimumDate,maxAge,onWhichDate,strMsg)
  If Required = "True" Then 
    DOB = cDate(strVariable)
	DOB1 = cDate(minimumDate)
	iage = Cint(datediff("d",DOB1,DOB))
	'Response.Write("<br/>Birth: " & FormatDateTime(DOB, vbLongDate) & "<br/>Deadline: " & FormatDateTime(DOB1, vbLongDate) & "<br/>Age: " &iage)
	If iage < 0 Then    
	'Response.Write "<br/>"& "You Are not Eligeble to Apply  "& iage 
		IsRejected = True
		 Call  ShowValidateMsg(strMsg & " " & maxAge & "  years " & " on " & onWhichDate & "  ! <br/>You are not eligible for this job position.")
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
			   Call  ShowValidateMsg(strMsgVariableName & " can't be empty.<br/>Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
			       Response.End()
		    Else 
			    If  IsValidEmail(strVariable) = False  Then 
				    Call ShowValidateMsg(strMsgVariableName& " is invalid.<br/>Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
				Else 	
			        Call  RequiredTextTypeDataValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)
				End If  	
			End If   	   	  
   Else 
        	If  strVariable <> ""  Or strLength <>  0   Then 
			    If  IsValidEmail(strVariable) = False  Then 
				    Call ShowValidateMsg(strMsgVariableName& " is invalid.<br/>Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
				Else 	
			        Call  RequiredTextTypeDataValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)
				End If  	

			End If     
   End If 
End Sub 


Sub  DateTimeTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName) 
  If  Required = "True"  Then 
      If  IsDate(strVariable) = False Then 
	     Call  ShowValidateMsg(strMsgVariableName & " is invalid, please select valid. "&strMsgVariableName& "<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	     Response.End()
	  End if 	   
  End If 
End Sub 


Sub   SelectTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)
   If  Required = "True" Then  
       If  strVariable = DbType  Then 
	      Call  ShowValidateMsg(strMsgVariableName & " should be selected.<br /><span>Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	      Response.End()	   
	   End If
   End If 
End Sub 

'response.Write("strResult:"& system &" resultRange"& resultRange)
Sub  MarksTypeInputValidationForSecandary(Required,strResult,strCgpaOrMarks,cgPaScale,strMsgVariableName,strJobId,resultRange)	

'On Error Resume Next

'If strJobId = 1 Then
'	resultRange = 4
'Else
	'resultRange = 2
'End If

if system = "trustbank" then
  resultRange = 5
elseif system = "shahjalalbank" then
  resultRange = 4
elseif system = "ksb" then  
  resultRange = 2.81
else
  resultRange = 4 
end if 



  If Required = "True" Then 
    If strResult = "15" Then    'first division 
	   If CLng(strCgpaOrMarks) > 100  Or  CLng(strCgpaOrMarks)  < 60 Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	   End If 
	ElseIf strResult = "14" Then  ' second division 
	   If CLng(strCgpaOrMarks) < 50  Or  CLng(strCgpaOrMarks)  >= 60 Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	   End If 
	ElseIf strResult = "13" Then  ' third division 
	   If CLng(strCgpaOrMarks) < 33  Or  CLng(strCgpaOrMarks)  >= 45 Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	   End If 
	ElseIf strResult = "12" Then  ' appeard
	 If  IsNumeric (strCgpaOrMarks) Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	 End If 		
	ElseIf strResult = "0" Then  ' grade 
	  If cgPaScale = "-1" Then 
	        Call ShowValidateMsg( "Please select CGPA/GPA scale .<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	  End If  
	  
	  If cdbl(strCgpaOrMarks) > cdbl(cgPaScale) Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	  End If
	  
		 
	  If cdbl(strCgpaOrMarks) < cdbl(resultRange)  Then 
	        Call ShowValidateMsg(strMsgVariableName & " can't be less than "&resultRange&".<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	  End If 
  
	End If 
  End If 
  	  If Err.Description <> "" Then
	      'Response.Write("Sorry")
		  Call  ShowValidateMsg(strMsgVariableName& " is invalid  data or very big data for  operation handling .<br/>Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	   Response.End() 
	  End If  
End Sub 


Sub  MarksTypeInputValidation(Required,strResult,strCgpaOrMarks,cgPaScale,strMsgVariableName, strJobId,resultRangeGradPGrad)	

'On Error Resume Next
 
'If strJobId = 1 Then
	'resultRangeGradPGrad = 2
'Else
	'resultRangeGradPGrad = 2
'End If	

'response.Write("<BR>job: "&strJobId & "<br>marks: "& cdbl(strCgpaOrMarks) &"<br>range : "& cdbl(resultRangeGradPGrad)&"<BR>hello"&"<br>system : "& system)
'response.End()	 

if system = "trustbank" then
	resultRangeGradPGrad = 3
elseif system = "shahjalalbank" then
	resultRangeGradPGrad = 3	
elseif system = "ksb" then
	resultRangeGradPGrad = 2.25	 
else
	resultRangeGradPGrad = 3
end if 

		 
  If Required = "True" Then 
    If strResult = "15" Then    'first division 
	   If CLng(strCgpaOrMarks) > 100  Or  CLng(strCgpaOrMarks)  < 60 Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	   End If 
	ElseIf strResult = "14" Then  ' second division 	   
      ' Call ShowValidateMsg( "Second class is not acceptable in under-graduate/graduate level.<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")	  
	   If CLng(strCgpaOrMarks) < 45  Or  CLng(strCgpaOrMarks)  >= 60 Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	   End If 
	ElseIf strResult = "13" Then  ' third division 
	   If CLng(strCgpaOrMarks) < 33  Or  CLng(strCgpaOrMarks)  >= 45 Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	   End If 
	ElseIf strResult = "12" Then  ' appeard
		 If  IsNumeric (strCgpaOrMarks) Then 
				Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
		 End If 		
	ElseIf strResult = "0" Then  ' grade 
	  If cgPaScale = "-1" Then 
	        Call ShowValidateMsg( "Please select out of cgpa scale .<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	  End If  
	  
	  If cdbl(strCgpaOrMarks) > cdbl(cgPaScale) Then 
	        Call ShowValidateMsg( "Invalid  "&strMsgVariableName & ".<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	  End If 
	  
	  If cdbl(strCgpaOrMarks) < cdbl(resultRangeGradPGrad)  And  cgPaScale = 4  Then 
	        Call ShowValidateMsg(strMsgVariableName & " can't be less than "&resultRangeGradPGrad&".<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	  End If 
	  
	  If cdbl(strCgpaOrMarks) < cdbl(resultRangeGradPGrad)  And  cgPaScale = 5  Then 
	        Call ShowValidateMsg(strMsgVariableName & " can't be less than "&resultRangeGradPGrad&".<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	  End If 
	  
	  
	  	  
	End If 
  End If 
  
      If Err.Description <> "" Then
	      'Response.Write("Sorry")
		  Call  ShowValidateMsg(strMsgVariableName& " is invalid  data or very big data for  operation handling .<br/>Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
	   Response.End() 
	  End If  
End Sub 


Sub RequiredTextTypeDataValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)
 			strDataType = cStr(DbType) 
			   Select  Case strDataType 
				 Case "Text"
					strLength =  CLng(Len(strVariable))
						  'strVariable = ReplacedAllTypeOfSpecialChar(strVariable)
						  DbFieldSize = CLng(DbFieldSize)
						  If  strLength > DbFieldSize Then 
							Call ShowValidateMsg(strMsgVariableName & " can't be greater than " & DbFieldSize &" characters .<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
							Response.End()
						 End If 
				 Case "bool"
						  DbFieldSize = CLng(DbFieldSize)
						  If  strVariable = "" Or IsNull(strVariable) Then 
							Call ShowValidateMsg(strMsgVariableName & " should be selected.<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
							Response.End()
						 End If 
	 
				Case  "Number"
                        If  IsNumeric(strVariable) = False  Then 
					      Call  ShowValidateMsg(strMsgVariableName & " should be number or numeric.<br/>Click <a href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry." )
							Response.End()
					    Else 
						   Select  Case DbFieldSize 
							  Case "Double" 
								 If  Cdbl(strVariable) = False Then 
									Call ShowValidateMsg(strMsgVariableName & " is a very big number please input small number<br />Click <a href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry." )
						         	Response.End()
								 End If 
							  Case  "LongInt"
								 If  CLng(strVariable) = False  Then 
									Call  ShowValidateMsg(strMsgVariableName & " is a very big number please input small number<br />Click <a href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry. " )   
						         	Response.End()
								 End If 
							  Case  "Currency" 
								 If  Ccur(strVariable) = False Then 
									Call  ShowValidateMsg(strMsgVariableName & " is a very big number please input small number.<br/>Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")  
						         	Response.End()
								 End if 		 
							  Case  "Int"  
								 If  Cint(strVariable) = False  Then 
									Call ShowValidateMsg(strMsgVariableName & " is a big number please input small number.<br/>Click <a href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry. ")    
						        	Response.End()
								 End if 
							  Case  "Byte" 
								 If  Cbyte(strVariable) = False Then 
									Call ShowValidateMsg(strMsgVariableName & " is a big number please input small number<br />Click <a href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry. ")   
							        Response.End()
								 End if 	
							  Case  "Single" 
								  If Csng(strVariable) = False Then 
									Call ShowValidateMsg(strMsgVariableName & " is not a valid number for input.<br />Click <a href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry. " )
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
				   Call ShowValidateMsg(strMsgVariableName&"  can't be empty.<br />Click <a   style='color:#F00;'   href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
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
	strHtml = "<table width='100%' border='0' align='center' cellpadding='3' cellspacing='0'  bgcolor='#ffffff' background='images/bg_para.gif' style='border:1px solid #009;'>"
	strHtml = strHtml & "  <tr>"
    	strHtml = strHtml & "<td colspan='3' align='center' height='35' style='font-family:Arial, Helvetica, sans-serif; font-size:20px; font-weight:bold; color:#06C; border-bottom:1px solid #009;' valign='middle'>" & strSystemName & "</td>"
  	strHtml = strHtml & "</tr>"
  	strHtml = strHtml & "<tr>"
	strHtml = strHtml & "<td colspan='3' align='center' style='font-family:Arial, Helvetica, sans-serif; font-size:28px; color:#333;' valign='middle'><br/>"& strMsg & "<br/>&nbsp;</td>"
 	strHtml = strHtml & " </tr>"
	strHtml = strHtml & "</table>"
	Response.Write(strHtml)
End Sub 


Sub ShowValidateMsg(strMsg)
   	Dim strHtml
	
	strHtml = "<br/><br/><table width='100%' border='0' align='center' cellpadding='3' cellspacing='0'  bgcolor='#ffffff' background='images/bg_para.gif' style='border:1px solid #009;'>"
	strHtml = strHtml & "  <tr>"
    	strHtml = strHtml & "<td colspan='3' align='center' height='35' style='font-family:Arial, Helvetica, sans-serif; font-size:20px; font-weight:bold; color:#06C; border-bottom:1px solid #009;' valign='middle'>" & strSystemName & "</td>"
  	strHtml = strHtml & "</tr>"
  	strHtml = strHtml & "<tr>"
	strHtml = strHtml & "<td colspan='3' align='center' style='font-family:Arial, Helvetica, sans-serif; font-size:20px; color:#333;' valign='middle'><br/>"& strMsg & "<br/>&nbsp;</td>"
 	strHtml = strHtml & " </tr>"
	strHtml = strHtml & "</table><br/><br/>"

	
	Response.Write(strHtml)
	Response.End()
End Sub 

Sub ShowValidateMsgWithOutResponsDotEnd(strMsg)
   	Dim strHtml
	
	strHtml = "<br/><br/><table width='100%' border='0' align='center' cellpadding='3' cellspacing='0'  bgcolor='#ffffff' background='images/bg_para.gif' style='border:1px solid #009;'>"
	strHtml = strHtml & "  <tr>"
    	strHtml = strHtml & "<td colspan='3' align='center' height='35' style='font-family:Arial, Helvetica, sans-serif; font-size:20px; font-weight:bold; color:#06C; border-bottom:1px solid #009;' valign='middle'>" & strSystemName & "</td>"
  	strHtml = strHtml & "</tr>"
  	strHtml = strHtml & "<tr>"
	strHtml = strHtml & "<td colspan='3' align='center' style='font-family:Arial, Helvetica, sans-serif; font-size:20px; color:#333;' valign='middle'><br/>"& strMsg & "<br/>&nbsp;</td>"
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
			result = 32 ' 126						
		End if 
		If result = 035  Then  ' For dollar sign  replace ment 
		   result = 32 ' 126  ' replaced by tilde 
		End if 
		If result = 039  Then  ' for apostrope replace ment  
		   result = 32 ' 126        ' replace by tilde 
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


Function  bdjStringToErs(str)
	Dim a,b,result
	a = StringToAscii2(str)
	b = AsciiToString(a)
	c = lcase(b)
	'b = result

	strString = Trim(c)
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	strString = Replace(strString, "~", "")
	bdjStringToErs = strString
  ' ValuePrint c , "bdjSring" 
 '  Response.Write("<br/>Str: " & str & "<br/>A: " & a & "<br/>B: " & b)
	'Response.End()
End Function 




Function StringToAscii2(str)
	Dim result, x
	StringToAscii2 = ""
	If Len(str)=0 Then Exit Function
	If Len(str)=1 Then
		result = Asc(Mid(str, 1, 1))
		If Cint(result) < 32 Or  Cint(result) > 126 Then
			result = 32						
		End if 
		If result = 035  Then  ' For dollar sign  replace ment 
		   result = 32  ' replaced by tilde 
		End if 
		If result = 039  Then  ' for apostrope replace ment  
		   result = 32        ' replace by tilde 
        End if 

		If result = 40  Then  ' for dot replace ment  
		   result = 32        ' replace by tilde 
        End if 
		If result = 41  Then  ' for bracket replace ment  
		   result = 32        ' replace by tilde 
        End if 
		If result = 46  Then  ' for bracket replace ment  
		   result = 32        ' replace by tilde 
        End if 


		If result = 32  Then  ' for bracket replace ment  
		   result = 32        ' replace by tilde 
        End if 
		If result = 44  Then  ' for bracket replace ment  
		   result = 32        ' replace by tilde 
        End if 
		If result < 65  Then  ' for bracket replace ment  
		   result = 32        ' replace by tilde 
        End if 
		If result > 90 and result < 97  Then  ' for bracket replace ment  
		   result = 32        ' replace by tilde 
        End if 
		If result > 123  Then  ' for bracket replace ment  
		   result = 32        ' replace by tilde 
        End if 



		StringToAscii2 = Left("000", 3-Len(CStr(result))) & CStr(result)
		Exit Function
	End If
	result = ""
	For x=1 To Len(str)
		result = result & StringToAscii2(Mid(str, x, 1))
	Next
	StringToAscii2 = result
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



sub Load_ListFinal_batch(arr,STR,IsTextOnly,IsSelect,IsOthers,SelectedIdString)	
	arr_index=0
	arr_index=Ubound(arr,2) 
	selectedFlag=0                                     
	if arr(0,0) <> "Nothing" then
		Indx_i=0
		STR=""
		selectText="Select"	
		otherText="Others"
		if IsTextOnly then
			selectValue="Select"
			otherValue="Others"
			indexValue=1
		else
			selectValue="-1"
			otherValue="-10"
			indexValue=0
		end if
					
		if IsSelect then
			if CStr(SelectedIdString)=CSTR(selectValue) then
				STR="<option value='"&selectValue&"' Selected>" & selectText & "</option>" 
				selectedFlag=1
			else
				STR="<option value='"&selectValue&"'>" & selectText & "</option>" 		
			end if		
		end if
				
		do while Indx_i<=arr_index 
			if CStr(SelectedIdString)=CSTR(arr(indexValue, Indx_i)) then
				STR = STR &  "<option value='"&trim(arr(indexValue, Indx_i))&"' Selected>" & trim(arr(1, Indx_i)) & "</option>"
				selectedFlag=1
			else
				STR = STR &  "<option value='"&trim(arr(indexValue, Indx_i)) &"'>" & trim(arr(1, Indx_i)) & "</option>"
			end if
			Indx_i=Indx_i+1
		loop
		if IsOthers then
			if Cint(selectedFlag)=1 then
				STR=STR & "<option value='"&otherValue&"'>" & otherText & "</option>" 
			else
				STR=STR & "<option value='"&otherValue&"' Selected>" & otherText & "</option>" 					
			end if		
		end if
	end if
	
 	response.write(STR)
end sub
%>

<%

Sub ShowMessage(strMessageText)
   	Dim strHtml
	strHtml = "<table width='100%' border='0' align='center' cellpadding='3' cellspacing='0'  bgcolor='#ffffff' background='images/bg_para.gif' style='border:1px solid #009;'>"
	strHtml = strHtml & "  <tr>"
    	strHtml = strHtml & "<td colspan='3' align='center' height='35' style='font-family:Arial, Helvetica, sans-serif; font-size:26px; font-weight:bold; color:#06C; border-bottom:1px solid #009;' valign='middle'>" & strSystemName & "</td>"
  	strHtml = strHtml & "</tr>"
  	strHtml = strHtml & "<tr>"
	strHtml = strHtml & "<td colspan='3' align='center' style='font-family:Arial, Helvetica, sans-serif; font-size:22px; color:#333;' valign='middle'><br/>"& strMessageText & "<br/><br/>&nbsp;</td>"
 	strHtml = strHtml & " </tr>"
	strHtml = strHtml & "</table>"
	Response.Write(strHtml)
End Sub



'
'Sub ShowMessage(strMessageText)
'	Dim strHtml
'	
'	strHtml = "<table width='50%' bgcolor='#ffffff'  border='0' align='center'>"
'	strHtml = strHtml & "<tr><td align='center'>"
'	'strHtml = strHtml & "<img border='0' src='image/logo.gif' width='180' height='48'>"
'	strHtml = strHtml & "</td></tr></table><BR><BR>"
'  
'	strHtml = strHtml & "<table width='50%' bgcolor='#007F4D'  border='0' align='center' background='images/top_bar_bg.gif'>"
'	strHtml = strHtml & "<tr><td class='BDJInstruction' align='center'><b>Bdjobs Help Desk</b></td></tr>"
'	strHtml = strHtml & "<tr><td class='BDJLebels' height='50' bgcolor='#F6F6F6' align='center'><b>"
'	strHtml = strHtml & strMessageText
'	strHtml = strHtml & "</b></td></tr></table>"
'	
'	Response.Write(strHtml)
'End Sub
%>

<%
Sub ShowMessage_ADOErrors(strErrorText, strPageName, strLineNo, strSystemName)
	Dim strADOErrorNumber
	Dim strADOErrorMessage
	Dim strMailBody
	Dim FromWho,ToWho,Subject
	
	strADOErrorNumber = Left(strErrorText, InStr(1, strErrorText,"_")-1)
	strADOErrorMessage = Mid(strErrorText, InStr(1, strErrorText,"_")+1)

	Select Case cstr(strADOErrorNumber)
		   Case "2147467259" 'or "3021" or "800400000000" or "2147217904" or "2147217900" or "2147467259" or "1280" or "3265"
		   		 Call ShowValidateMsgOnly("Sorry! Due to some technical problems, operation is not successful at this moment. System already reported regarding this inconvenience to BDJOBS.COM Ltd. Please try after sometime.")				 
		   Case "3021"
		   	 Call ShowValidateMsgOnly("Sorry! Due to some technical problem, operation is not successful at this moment. Please try after sometime.")
		   Case "2147217913"
		   		 Call ShowValidateMsgOnly("Sorry! Some data you have entered wrong data in some fields. This may be caused by any or all of the following reason(s)-<br>1) Date field remains blank or unfilled up.<br>2) Years and months are not mentioned in the concerned areas.<br>3) Non-numeric values in the numeric fields.<br>Please go back and be sure that you have entered appropriate data in the fields.")
		   Case "800400000000"
		   	 Call ShowValidateMsgOnly("Sorry! Due to some technical problems, operation is not successful at this moment. System already reported regarding this inconvenience to BDJOBS.COM Ltd. Please try after sometime.")
		   Case "2147217904"
		   		 Call ShowValidateMsgOnly("Sorry! Due to some technical problems, operation is not successful at this moment. System already reported regarding this inconvenience to BDJOBS.COM Ltd. Please try after sometime.")
		   Case "2147217900"
		   		 Call ShowValidateMsgOnly("Sorry! Due to some technical problems, operation is not successful at this moment. System already reported regarding this inconvenience to BDJOBS.COM Ltd. Please try after sometime.")
		   Case "2147467259"
		   		 Call ShowValidateMsgOnly("Sorry! Due to some technical problems, operation is not successful at this moment. System already reported regarding this inconvenience to BDJOBS.COM Ltd. Please try after sometime.")
		   Case "1280"
		   		 Call ShowValidateMsgOnly("Sorry! Due to some technical problems, operation is not successful at this moment. System already reported regarding this inconvenience to BDJOBS.COM Ltd. Please try after sometime.")		   
		   Case "3265"
		   		 Call ShowValidateMsgOnly("Sorry! Due to some technical problems, operation is not successful at this moment. System already reported regarding this inconvenience to BDJOBS.COM Ltd. Please try after sometime.")
		   Case Else
		   		Call ShowValidateMsgOnly("Sorry! Unable to perform the operation. Please try after sometime.<br><a href='http://bdjobs.com/'>Click here after 5 miniutes</a></strong></font></center>"&phone)
	End Select
	

	FromWho = "Auto Error generated script <error@bdjobs.com>"
    ToWho = ""
	ToWho = "Mahbub<mahbub@bdjobs.com>,Mahbub-Gmail<mahbubulhaque001@gmail.com>,shouravi<shouravisharmin007@gmail.com>"
	
	Subject = "Error At "  & strSystemName & "(" & strPageName & ")"
	
	strMailBody = "ADO Error No :" & strADOErrorNumber & "<br>"
	strMailBody = strMailBody & "ADO Error Text :" & strADOErrorMessage & "<br>"
	strMailBody = strMailBody & "Page Name :" & strPageName & "<br>"
    strMailBody = strMailBody & "Line No :" & strLineNo & "<br>"
    strMailBody = strMailBody & "System Name :" & strSystemName

	'on error resume next
	'response.Write(strMailBody)
	
	sendmail FromWho, ToWho, Subject,strMailBody,"","",replyTo
	DivCreateForAds
	Response.End()
End Sub

%>
<%
Sub ShowMessage_ADOErrorsOffLine(strErrorText, strPageName, strLineNo, strSystemName)
	Dim strADOErrorNumber
	Dim strADOErrorMessage
	Dim strMailBody
	
	strADOErrorNumber = Left(strErrorText, InStr(1, strErrorText,"_")-1)
	strADOErrorMessage = Mid(strErrorText, InStr(1, strErrorText,"_")+1)

	strMailBody = "ADO Error No :" & strADOErrorNumber & "<br>"
	strMailBody = strMailBody & "ADO Error Text :" & strADOErrorMessage & "<br>"
	strMailBody = strMailBody & "Page Name :" & strPageName & "<br>"

    strMailBody = strMailBody & "Line No :" & strLineNo & "<br>"
    strMailBody = strMailBody & "System Name :" & strSystemName

	response.Write(strMailBody)
	Response.End()
End Sub
%>

<%
Sub SetResumeSessions()
	dim strCSecretCode
	
	'Read from Cookie
	ID=request.Cookies("User")("User_Id")
	'If Cookies not found
	if ID = "" then
		response.Redirect("http://www.bdjobs.com/mybdjobs/default.asp?q=1")
	end if

	set tmp_objData = new c_Data_Multi_Server
	SQL= "SELECT ID, CAT_IDs, NAME, USER_NAME, PASSWORD, UPDATED, POSTING_DATE FROM PERSONAL WHERE ID="&ID 'USER_NAME='"+UserName+"' AND PASSWORD='"+Request.Form("PASS")+"'"
		
	strDataArr=tmp_objData.RetrieveData("Resume", SQL, errMsg)
	set tmp_objData=nothing
	
	'if RS.EOF then
	if strDataArr(0,0) = "Nothing" then
		Response.Clear
		response.Redirect("http://www.bdjobs.com/mybdjobs_tst/login.asp?q=1")
		'Response.Redirect ("../not_correct.htm")	
	else
		'get Secret Code for cookie
		strCSecretCode=getSecretCode(strDataArr(0,0), strDataArr(0,3), strDataArr(0,6), Date())
		if request.Cookies("User")("sCode-Seeker") <> strCSecretCode then
			Response.Clear
			response.Redirect("http://www.bdjobs.com/mybdjobs_tst/login.asp?q=1")
		else
			Session("password")=strDataArr(0,4)  'RS("PASSWORD")
			Session("pname")=strDataArr(0,3)  'RS("USER_NAME")
			Session("fullname")=strDataArr(0,2)  'RS("NAME")
			Session("UserID")=strDataArr(0,0)  'RS("ID")
			Session("cname")=strDataArr(0,1)	'RS("CAT_IDs")
			Session("cart_id")=strDataArr(0,0)	'RS("ID")
			Session("Updated")=strDataArr(0,5)	'RS("UPDATED")
			Session("Posting_Date")=strDataArr(0,6)	'RS("POSTING_DATE")
			
			'*Session("uAccessMsg")=CheckStep(strDataArr(0,0))
			'Session("block_emp")=RS("BLOCK_EMP")
						
			'Response.Clear
		end if
	end if
End Sub
%>

<%
	'Build Secret Code for Cookie
	'Probal 17th August, 2007
	function getSecretCode(lnID, strtmpUserName, dtDate1, dtDate2)
		dim tmpCode
		dim tmpSum
		dim tmpModNumber
		
		'get first 3 character of user name
		if len(strtmpUserName)>=3 then
			tmpCode=mid(strtmpUserName,1,3)
		else
			tmpCode="qsxRE"
		end if
		
		if isnumeric(lnID) then
			tmpModNumber = lnID mod 73
			tmpModNumber = lnID + tmpModNumber
		else
			tmpModNumber = 173569			
		end if

		'Sum first date (Posting date for Resume, ACCT_CR for Corporate)
		if isdate(dtDate1) then
			tmpSum = day(dtDate1) + month(dtDate1) + year(dtDate1)
		else
			tmpSum = 1992 'Total of 07/12/1973
		end if
		if isdate(dtDate2) then
			tmpSum = tmpSum + day(dtDate2) + month(dtDate2) + year(dtDate2)
		else
			tmpSum = tmpSum + 2036 'Total of  29/07/2000
		end if
		'Sum ID number With tmpSum
		tmpSum = tmpSum + tmpModNumber
		
		'Set the Secret Code
		tmpCode = tmpCode & tmpSum
		
		getSecretCode = tmpCode
	end function
%>
<%
Sub SetCompanySessions()
	dim strCSecretCode
	
	'Read from Cookie
	ID=request.Cookies("Company")("ComNo")
	if ID="" then		
%>
<p><strong><font color="#990000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Session 
  expired. </font></strong></p>
<p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><a href="http://www.bdjobs.com/corporate/employer.asp" target="_parent"><strong>Click 
  here</strong></a><strong> to Login again.</strong></font> </p>
  <%
		response.End()
	end if
	SQL= "SELECT CP_ID, NAME, USER_NAME, PASSWORD, CONTACT_PERSON, E_MAIL, LOGIN, RESUME_DATE, BILL_CONTACT, CTYPE, ACCT_CR FROM dbo_COMPANY_PROFILES WHERE CP_ID="+ID
	
	set tmp_objData = new c_Data_Multi_Server
	strDataArr=tmp_objData.RetrieveData("Corporate", SQL, errMsg)
	if errMsg<>"" then
		set tmp_objData=nothing
		ShowMessage_ADOErrors errLog,"Utility.asp","280","Corporate"
	end if
	
	set tmp_objData=nothing
	
	'Set RS = server.CreateObject ("ADODB.recordset")
	'RS.open SQL, g_BDJOBS_SQL_DSN
	
	if strDataArr(0,0)="Nothing" then	
		Response.Clear
		Response.Redirect ("../not_correct_com.asp?c1="&c1&"&c="&c)	
	else
		strCSecretCode=getSecretCode(strDataArr(0,0), strDataArr(0,2), strDataArr(0,10), Date())
		if request.Cookies("Company")("sCode-Empl") <> strCSecretCode then
			Response.Clear
			response.Redirect("default.asp")
		else
			Session("CPERSON")=strDataArr(0,4) 'RS("CONTACT_PERSON")
			Session("NAME")=strDataArr(0,1) 'RS("NAME")
			Session("ID")=strDataArr(0,0) 'RS("CP_ID")
			SESSION("company_id")=strDataArr(0,0) 'RS("CP_ID")
			Session("e_mail")=strDataArr(0,5) 'RS("E_MAIL")
			Session("RESUME_DATE")=strDataArr(0,7) 'RS("RESUME_DATE")
			Session("BCONTACT")=strDataArr(0,8) 'RS("BILL_CONTACT")
			Session("C_TYPE")=strDataArr(0,9) 'RS("CTYPE")				
			'Response.Clear
		end if
	end if
	'RS.Close
	'Set RS = Nothing
End Sub
%>

<%
Sub SetCompanySessionsNew()
	dim strCSecretCode
	
	'Read from Cookie
	ID=request.Cookies("Company")("ComNo")
	if ID="" then		
%>
		<p><strong><font color="#990000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Session 
		  expired. </font></strong></p>
		<p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><a href="http://www.bdjobs.com/corporate/"><strong>Click 
		  here</strong></a><strong> to Login again.</strong></font> </p>
  <%
		response.End()
	end if
	SQL= "SELECT CP_ID, NAME, USER_NAME, PASSWORD, CONTACT_PERSON, E_MAIL, LOGIN, BILL_CONTACT, ACCT_CR FROM dbo_COMPANY_PROFILES WHERE CP_ID="+ID
	
	set tmp_objData = new c_Data
	tmp_objData.OpenConnection "Corporate", errMsg
	strDataArr=tmp_objData.RetrieveData(SQL, errMsg)
	if errMsg<>"" then
		set tmp_objData=nothing
		ShowMessage_ADOErrors errLog,"Utility.asp","420","Corporate"
	end if		
	
	if strDataArr(0,0)="Nothing" then	
		Response.Clear
		Response.Redirect ("default.asp")	
	else
		strCSecretCode=getSecretCode(strDataArr(0,0), strDataArr(2,0), strDataArr(8,0), Date())
		if request.Cookies("Company")("sCode-Empl") <> strCSecretCode then
			Response.Clear
			response.Redirect("default.asp")
		else
			Session("CPERSON")=strDataArr(4,0) 'RS("CONTACT_PERSON")
			Session("NAME")=strDataArr(1,0) 'RS("NAME")
			Session("ID")=strDataArr(0,0) 'RS("CP_ID")
			SESSION("company_id")=strDataArr(0,0) 'RS("CP_ID")
			Session("e_mail")=strDataArr(5,0) 'RS("E_MAIL")
			'Session("RESUME_DATE")=strDataArr(7,0) 'RS("RESUME_DATE")
			Session("BCONTACT")=strDataArr(7,0) 'RS("BILL_CONTACT")
			'Session("C_TYPE")=strDataArr(9,0) 'RS("CTYPE")
			
			SQL= "SELECT top 1 ServiceID, StartingDate, Duration, Complete, Blocked from CompanyServices WHERE CP_ID="&strDataArr(0,0)&" and Complete<>1 and Blocked<>1 order by StartingDate desc"
					
			ComServicesArr=tmp_objData.RetrieveData(SQL,errMsg)
			if errMsg<>"" then
				set tmp_objData=nothing
				ShowMessage_ADOErrors errLog,"Utility.asp","441","Corporate"
			end if
			set tmp_objData=nothing
			
			dim intCType
			dim blnValid
			if ComServicesArr(0,0) = "Nothing" then
				intCType = 0
				blnValid=false
			else
				intCType = 0
				blnValid=false
				for i = 0 to ubound(ComServicesArr,2)				
					if isdate(ComServicesArr(1,i)) and isnumeric(ComServicesArr(2,i)) then
						if dateadd("d", ComServicesArr(2,i), ComServicesArr(1,i))>=date() then
							intCType = ComServicesArr(i,0)
							blnValid=true
							exit for
						end if
					end if	
				next
			end if
			
			Session("CV_SEARCH_ACCESS")=False
			Session("JOB_POSTING_ACCESS")=False
			'if blnValid then
			'	if intCType=2 or intCType=3 or intCType=4 or intCType=5 or intCType = BDJOBS_USER_CM_BOTH or intCType = BDJOBS_USER_CM_CVSEARCH then
			'		Session("CV_SEARCH_ACCESS")=true
			'	end if
			'	if intCType=2 or intCType=6 or intCType = BDJOBS_USER_CM_BOTH or intCType = BDJOBS_USER_CM_JOBPOSTING then
			'		Session("JOB_POSTING_ACCESS")=true
			'	end if
			'end if
			if blnValid then
				if intCType=2 or intCType = BDJOBS_USER_CM_BOTH then
					Session("CV_SEARCH_ACCESS")=true
					Session("JOB_POSTING_ACCESS")=true
				elseif intCType=3 or intCType=4 or intCType=5 or intCType = BDJOBS_USER_CM_CVSEARCH then
					Session("CV_SEARCH_ACCESS")=true				
				elseif intCType=6 or intCType = BDJOBS_USER_CM_JOBPOSTING then
					Session("JOB_POSTING_ACCESS")=true
				end if
			end if
			erase ComServicesArr
			erase strDataArr
							
			'Response.Clear
		end if
	end if
End Sub
%>

<%

'Updated by Probal on March 05, 2007
sub ShowPageLink(tmpTotalPage,curPage,varLink)
	dim FirstPage, LastPage
	dim tmpDif
	dim midPage, tmpAllPage
	
	midPage=5
	tmpAllPage=midPage*2+1
	if cint(tmpTotalPage)<=cint(tmpAllPage) then
		FirstPage=1
		LastPage=tmpTotalPage
	else
		FirstDif=0: LastDif=0
		if curPage<1 then 
			curPage=1 
		elseif cint(curPage)>cint(tmpTotalPage) then 
			curPage=tmpTotalPage
		end if
		
		FirstPage=curPage-midPage
		if FirstPage<1 then
			tmpDif=abs(FirstPage)+1
			FirstPage=1
		end if
		LastPage=curPage+midpage+tmpDif
		if cint(LastPage)>cint(tmpTotalPage) then
			tmpDif=LastPage-tmpTotalPage
			LastPage=tmpTotalPage
			FirstPage=FirstPage-tmpDif
		end if		
	end if
	
	j=curPage
	if FirstPage<>1 then response.Write("<a href ="&varLink&"1 style='text-decoration:none'>1...</a>")		
  	for i=FirstPage to LastPage
  		if cint(i)=cint(j) then%>
  <font size="4" face="Verdana, Arial, Helvetica, sans-serif"><%=i%></font> 
  <%j=CInt(tmpTotalPage)+1
		else
			tmpLink=varLink&i%>
  <a href ="<%=tmpLink%>" style="text-decoration:none"><%=i%></a>&nbsp; 
  <%
		end if
	next
	
	if LastPage<>tmpTotalPage then response.Write("<a href ="&varLink&tmpTotalPage&" style='text-decoration:none'>..."&tmpTotalPage&"</a>")	
end sub 
%>
  <%
function GetPhotoName(uID)
		UserName=Trim(Session("pname"))
		if (UserName="" and cLng(uID)>0) then
			'*****************Modified (Probal 06/07/2006****************
			set objData=new c_Data_Multi_Server
			SQL="Select user_name from Personal where id="&uID
			UN=objData.RetrieveData("Resume",SQL,errLog)
			If errLog <> "" Then
				set objData = nothing
				ShowMessage_ADOErrors errLog,"Utility","293","MyBdjobs"
			End If
			if UN(0,0)="nothing" then
				ShowMessage "Session expired."
			end if
			UserName = UN(0,0)
		'	SetResumeSessions
		'	UserName=Trim(Session("pname"))
		'************************************************************		
		end if
				
		GetPhotoName=LCASE(Trim(MID(UserName,1,3)))&"-"&Trim(uID)
end function
%>
<%
'---------------------------------------------------------------------------------------------------------
'Class No   	: 07
'Purpose 	  	: Retrieve categories from database and write into a dropdown listbox
'Parameters		: WriteMode - It can be 2 modes. One is Text another one is Number
'				  SelectedValue - A value which will be selected here
'Author  	  	: Probal
'Created On 	: 12 July 2006 
'Last Modified 	: 
'---------------------------------------------------------------------------------------------------------
sub PrintCategories(WriteMode,SelectedValue)
	set objCategories=new c_Data_Multi_Server
	sql="Select Cat_ID, cat_NAME from Category order by Cat_NAME"
	arrCategory=objCategories.RetrieveData("Resume",sql,errLog)
	'if errLog<>"" then response.Write(errLog)	
	set objCategories=Nothing
	
	if WriteMode="Text" then
		IndexNo=1
	else
		IndexNo=0
	end if
	strCatList=""
	if arrCategory(0,0) <> "Nothing" then
		for sub_catNo = 0 to ubound(arrCategory)
			strSelected=""
			if cstr(arrCategory(sub_catNo,IndexNo))=cstr(SelectedValue) then strSelected = "selected"
			strCatList=strCatList&"<option value='"&arrCategory(sub_catNo,IndexNo)&"' "&strSelected&">"&arrCategory(sub_catNo,1)&"</option>"&chr(10)
		next	
	end if
	response.Write(strCatList)
end sub
%>

<%
'---------------------------------------------------------------------------------------------------------
'Class No   	: 08
'Purpose 	  	: Set string date format like 'Jul 27, 2007'
'Parameters		: valDate - Date that convert to string date'				  
'Author  	  	: Probal
'Created On 	: 27 July 2006 
'Last Modified 	: 
'---------------------------------------------------------------------------------------------------------
function setStringDate(valValue)
	dim strtmpDate
	if isdate(valValue) then
		strtmpDate=mid(monthname(month(valValue)),1,3)&" "&day(valValue)&", "&year(valValue)
	else
		strtmpDate=""
	end if
	setStringDate=strtmpDate
end function
%>
<%
'Sub LoadDataFromXMLtoArray(arr,strFile,idField,nameField)
'	Set objReq = Server.CreateObject("Microsoft.XMLDOM")
'
'	'Load the request into XML DOM
'	objReq.Load Server.MapPath("\Data\XML Data\"&strFile&".xml")
'	
'	if objReq.ParseError then
'		Response.Write("Parse Err:"&objReq.ParseError)
'		response.End()
'	else
'		Dim tCount
'		tCount=objReq.documentElement.selectNode("RowCount").text 
'		Response.Write("Count:"&tCount)
'		response.End()
'
'	end if
'	Redim arr(tCount-1,1)
'
'	Dim objNodeListUrl
'	DIm objNodeListTitle
'	
'	Set objNodeListUrl=objReq.documentElement.selectNodes(idField)
'	Set objNodeListTitle=objReq.documentElement.selectNodes(nameField)
'
'	for i=0 to tCount-1
'		arr(i,0)=objNodeListUrl(i).text
'		arr(i,1)=objNodeListTitle(i).text
'	Next
'End sub
%>
<%
Sub LoadDataFromXMLtoArray(arr,strFile,idField,nameField)
'Response.Write("ABC")
'Response.End()
	Set objReq = Server.CreateObject("Microsoft.XMLDOM")

	'Load the request into XML DOM
	objReq.Load Server.MapPath("\Data\XML Data\"&strFile&".xml")
	
	if objReq.ParseError then
		'Response.Write("Parse Err:"&objReq.ParseError)
		'response.End()
	else
		Dim tCount
	set	tCount=objReq.selectNodes("/"&strFile&"/RowCount")'objReq.documentElement.selectNodes("RowCount")'.text 
	indexCount=	(tCount(0).text)-1

	end if
	Redim arr(indexCount,1)

	Dim objNodeListID
	DIm objNodeListName
	
	Set objNodeListID=objReq.selectNodes("/"&strFile&"/ROW/"&idField&"/text()")')"CAT_ID")'idField)
	Set objNodeListName=objReq.documentElement.selectNodes("/"&strFile&"/ROW/"&nameField&"/text()")
	for i=0 to indexCount'uBound(objNodeListID)'
		arr(i,0)=objNodeListID(i).text
		arr(i,1)=objNodeListName(i).text
	Next
End sub
%>
<%
Function LoadListSTC(arrData,IsTextOnly,FirstItem,SecondItem,LastItem,SelectedItem)
	Dim loopCounter
	Dim returnStr
	Dim selectedFlag
		selectedFlag=false
	if arrData(0,0)<>"Nothing" then
		maxCounter=UBound(arrData,2)
		
'---------------------------------------------------------------------------------------------------------------------------------------------		
		if trim(FirstItem)<>"" then 'Check First String
			if cStr(trim(SelectedItem))=cStr("-1") then
				returnStr="<option value='-1' Selected>" & trim(FirstItem) & "</option>" 
				selectedFlag=true
			else
				returnStr="<option value='-1'>" & trim(FirstItem) & "</option>" 
			end if	
		end if	' End check First string
'---------------------------------------------------------------------------------------------------------------------------------------------		
		if trim(SecondItem)<>"" then 'Check Second String
			if cStr(trim(SelectedItem))=cStr("-11") then
				returnStr=returnStr&"<option value='-11' Selected>" & trim(SecondItem) & "</option>" 
				selectedFlag=true
			else
				returnStr=returnStr&"<option value='-11'>" & trim(SecondItem) & "</option>" 
			end if	
		end if	'End Check Second String

'---------------------------------------------------------------------------------------------------------------------------------------------	
		if IsTextOnly then
			indexVal=1
		else
			indexVal=0
		end if
		
		for loopCounter=0 to maxCounter
			if CStr(SelectedItem)=CSTR(arrData(indexVal,loopCounter)) then
				returnStr = returnStr &  "<option value='"&trim(arrData(indexVal,loopCounter))&"' Selected>" & trim(arrData(1,loopCounter)) & "</option>"
				selectedFlag=true
			else
				returnStr = returnStr &  "<option value='"&trim(arrData(indexVal,loopCounter)) &"'>" & trim(arrData(1,loopCounter)) & "</option>"
			end if
		next 
'---------------------------------------------------------------------------------------------------------------------------------------------
		if trim(LastItem)<>"" then 'Check Last String
			if (selectedFlag=false) then
				returnStr=returnStr&"<option value='-10' Selected>" & trim(LastItem) & "</option>" 
			else
				returnStr=returnStr&"<option value='-10'>" & trim(LastItem) & "</option>" 
			end if	
		end if	'End Check Last String
'---------------------------------------------------------------------------------------------------------------------------------------------		
	LoadListSTC=returnStr
	else
		LoadListSTC=""
	End if	
End Function

Function getPhotoURL(IsEdit,boolERSphoto,boolBdjPhoto,srcCommonERSPhoto,srcCommonBdjPhoto,srcRealERSPhoto,srcRealBdjPhoto)


	
' arrPhoto = array(txtButton,boolPhoto,srcPhoto)
   If IsEdit = True Then 
      txtButton = "Change Photo"
	  If boolERSphoto = True Then 
	    boolPhoto = True
		srcPhoto = srcCommonERSPhoto&srcRealERSPhoto&"?"&rnd&time
	  ElseIf boolBdjPhoto = True Then 
	    boolPhoto = True
		srcPhoto = srcCommonBdjPhoto&srcRealBdjPhoto&"?"&rnd&time
	  Else 
	    txtButton = "Upload Photo"
		boolPhoto = False
		srcPhoto = "images/noimage.gif"&"?"&rnd&time
	  End If 
   Else 
      txtButton = "Change Photo"
	  If boolERSphoto = True Then 
	    boolPhoto = True
		srcPhoto = srcCommonERSPhoto&srcRealERSPhoto&"?"&rnd&time
	  ElseIf boolBdjPhoto = True Then 
	    boolPhoto = True
		srcPhoto = srcCommonBdjPhoto&srcRealBdjPhoto&"?"&rnd&time
	  Else 
	    txtButton = "Upload Photo"
		boolPhoto = False
		srcPhoto = "images/noimage.gif"&"?"&rnd&time
	  End If  
   End If 
 ' txtButton = ""
' boolPhoto = ""
 'srcPhoto = "" 
 	Dim arrPhoto(2)
	arrPhoto(0) = txtButton
	arrPhoto(1) = boolPhoto
	arrPhoto(2) = srcPhoto
   getPhotoURL = arrPhoto
End Function 

Sub analiticsERS()
%>	
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-44332588-1', 'bdjobs.com');
ga('send', 'pageview');

</script>
<%End Sub%>

<%
Sub setGoogleBanner(BannerType)
	dim adSlot, adWidth, adHeight
	
	select case BannerType
		case "HorizontalHalfBanner"
			adSlot = "9158813540": adWidth = "234": adHeight = "60"
			
		case "HorizontalBanner"
			adSlot = "9019212749": adWidth = "468": adHeight = "60"
		
		case "HorizontalBannerTrn"
			adSlot = "2002146740": adWidth = "468": adHeight = "60"
			
		case "HorizontalLeaderboard"
			adSlot = "5926145549": adWidth = "728": adHeight = "90"
		
		case "HorizontalLeaderboardGray"
			adSlot = "8386757543": adWidth = "728": adHeight = "90"
			
		case "MediumRectangle"
			adSlot = "8740011146": adWidth = "300": adHeight = "250"
		
		case "SquareBanner"
			adSlot = "2833078342": adWidth = "250": adHeight = "250"
		
		case "SquareBannerBng"
			adSlot = "6990749545": adWidth = "250": adHeight = "250"
		
		case "VerticalBanner"
			adSlot = "8526358340": adWidth = "120": adHeight = "240"
			
		case "VerticalWide"
			'adSlot = "4170210744": adWidth = "160": adHeight = "600"
			adSlot = "3078267141": adWidth = "160": adHeight = "600"
			BannerType = "VerticalWideBng"
		
		case "VerticalWideBng"			
			adSlot = "3078267141": adWidth = "160": adHeight = "600"
		
		case "VerticalWideBg"
			adSlot = "1077143545": adWidth = "160": adHeight = "600"
		
		case "VerticalLarge"
			adSlot = "5095213945": adWidth = "300": adHeight = "600"
			
		case "LinkHorizontalLarge"					
			adSlot = "7130350345": adWidth = "728": adHeight = "15"
			
		case "LinkVerticalMedium"
			adSlot = "4030609942": adWidth = "160": adHeight = "90"	
		
		case "LinkVerticalMediumBng"
			adSlot = "2901529942": adWidth = "160": adHeight = "90"	
		
		case "LinkVerticalLarge"
			adSlot = "2479824745": adWidth = "180": adHeight = "90"	
	end select	
	
	WriteGoogleBanner adSlot, adWidth, adHeight, BannerType
End Sub

Sub WriteGoogleBanner(adSlot, adWidth, adHeight, BannerType)
%>
	<script type="text/javascript"><!--
    google_ad_client = "ca-pub-5130888087776673";  
	/* <%=BannerType%> */  
    google_ad_slot = "<%=adSlot%>"; 
    google_ad_width = <%=adWidth%>;
    google_ad_height =  <%=adHeight%>; 
    //-->
    </script>
    <script type="text/javascript"
    src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
    </script>
<%
End Sub


Sub DivCreateForAds 
   Response.Write("<br/><br/><br/><br/><br/><br/><div align='center' style='padding-top:10px;'>")
  	     setGoogleBanner "HorizontalLeaderboard"
   Response.Write("</div>") 
		   Response.Write("<br/><div align='center' style='padding-top:10px;margin-left:7%;float:left;'>")
			setGoogleBanner "LinkVerticalLarge"
	   Response.Write("</div>") 	
	   Response.Write("<br/><div align='center' style='padding-top:10px;margin-left:8%;'>")
	
			setGoogleBanner "MediumRectangle"
	   Response.Write("</div>") 	
	   Response.Write("<br/><div align='center' style='padding-top:10px;margin-left:9%;float:left;'>")

			setGoogleBanner "SquareBannerBng"

      Response.Write("</div>") 	
	   
   Response.Write("<br/><div align='center' style='padding-top:10px;margin-left:5%;float:left;'>")
		  setGoogleBanner "LinkVerticalMedium"
	   Response.Write("</div>") 	
	   Response.Write("<br/><div align='right' style='padding-top:10px;margin-left:6%;float:left;'>")
	     setGoogleBanner "LinkVerticalMediumBng"
	
   Response.Write("</div>") 	
   Response.Write("<br/><div align='right' style='padding-top:10px;margin-left:4%;'>")
		  setGoogleBanner "VerticalWideBg"
	   Response.Write("</div>") 	
	   
	   Response.Write("</body></html>")

End Sub 

Sub DateOver(overDate, gotoPage)
'Response.Write("<br/>overdate"&overDate)
fromDate = overDate 
'Response.Write("<br/>overdate"&overDate)
toDate = now()
'Response.Write("<br/>toDate"&toDate&"<br/>")
' response.write(DateDiff("yyyy",fromDate,toDate) & "<br />")
'response.write(DateDiff("q",fromDate,toDate) & "<br />")
'response.write(DateDiff("m",fromDate,toDate) & "<br />")
'response.write(DateDiff("y",fromDate,toDate) & "<br />")
'response.write(DateDiff("d",fromDate,toDate) & "<br />")
'response.write(DateDiff("w",fromDate,toDate) & "<br />")
'response.write(DateDiff("ww",fromDate,toDate) & "<br />")
'response.write(DateDiff("h",fromDate,toDate) & "<br />")
'response.write(DateDiff("n",fromDate,toDate) & "<br />")
'response.write(DateDiff("s",fromDate,toDate) & "<br />")
seconds = DateDiff("s",fromDate,toDate) 

'ValuePrint overDate, "overdate"
If seconds > 0  Then
   Response.Redirect(gotoPage) 
Else
 ValuePrint Date() , "date"
 ValuePrint cDate(overDate) , "overDate"
End If 
End  Sub 



%>