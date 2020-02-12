<%
	'Response.Write("hellowwwwwwwwwwwww")
	'response.End()
	Dim strSystemName
	Dim strTrackingNo
	Dim strDatabaseName
	Dim strSQL
	Dim arrUserInfo
	Dim strSecreteCode
	
	strSystemName = ""
	strTrackingNo = ""
	strDatabaseName = ""
	strSQL = ""
	strSecreteCode = ""
	
	strSystemName = Request.Form("cboModuleName")
	'Response.Write("System: " & strSystemName)

	strTrackingNo = Request.Form("txtUserName")
	strSecreteCode = Request.Form("txtSecreteCode")
	
  	strEmail   = Request.Form("txtEmail") 
	strUserNameFirst =  Request.Form("txtUserNamefirst")
	strUserNameLast =  Request.Form("txtLastName")
	strFatherName =  Request.Form("txtFatherName")
	strDateOfBirth = Request.Form("txtDateofBirth")
	strPhone1 = Request.Form("txtPhone1")
	strPhone2 = Request.Form("txtPhone2")
	strPhone3 = Request.Form("txtPhone3")
	strPhone4 = Request.Form("txtPhone4")
	IsWhere = True
	SQLWhere = ""



'sql = "" 
'sql = "select personalid from jobpos where trackingno = "&strTrackingNo
''Response.Write("<br>"&sql) 
'arr = objERS.RetrieveData(sql, errMsg)
'id = arr(0,0) 
'
' if arr(0, 0) = "Nothing" then
' 				  Response.Write "<br/> No Record Found"
'                  Response.End()
' end if 
	
	If strTrackingNo <> ""   Then 
		If IsWhere Then
			SQLWhere = SQLWhere & "WHERE p.id = " & strTrackingNo
			IsWhere = False
		Else
			SQLWhere = SQLWhere & " Or  p.id = " & strTrackingNo
		End If
	End If
	
	If strEmail <> "" Then 
		If IsWhere Then
			SQLWhere = SQLWhere & "WHERE p.Email  =  '" & strEmail & "'" 
			IsWhere = False
		Else
			SQLWhere = SQLWhere & " Or  p.Email =  '" & strEmail& "'" 
		End If
	End If 

	If strUserNameFirst <> "" Then 
		If IsWhere Then
			SQLWhere = SQLWhere & "WHERE p.FirstName  =  '" & strUserNameFirst & "'" 
			IsWhere = False
		Else
			SQLWhere = SQLWhere & " Or  p.FirstName =  '" & strUserNameFirstl& "'" 
		End If
	End If 

	If strUserNameLast <> "" Then 
		If IsWhere Then
			SQLWhere = SQLWhere & "WHERE p.LastName  =  '" & strUserNameLast & "'" 
			IsWhere = False
		Else
			SQLWhere = SQLWhere & " Or  p.LastName =  '" & strUserNameLast & "'" 
		End If
	End If 
	

	
	If strFatherName <> "" Then 
		If IsWhere Then
			SQLWhere = SQLWhere & "WHERE p.FatherName  =  '" & strFatherName & "'" 
			IsWhere = False
		Else
			SQLWhere = SQLWhere & " Or  p.FatherName =  '" & strFatherNamel& "'" 
		End If
	End If 
	
	If strDateOfBirth <> "" Then 
		If IsWhere Then
			SQLWhere = SQLWhere & "WHERE p.DateOfBirth  =  '" & strDateOfBirth & "'" 
			IsWhere = False
		Else
			SQLWhere = SQLWhere & " Or  p.DateOfBirth =  '" & strDateOfBirth & "'" 
		End If
	End If 

	If strPhone1 <> "" Then 
		If IsWhere Then
			SQLWhere = SQLWhere & " WHERE p.ContactPhone  =  '" & strPhone1 & "'" 
			IsWhere = False
		Else
			SQLWhere = SQLWhere & " Or  p.ContactPhone =  '" & strPhone1 & "'" 
		End If
	End If 
						
	If strPhone2 <> "" Then 
		If IsWhere Then
			SQLWhere = SQLWhere & "  WHERE p.CellPhone  =  '" & strPhone2 & "'" 
			IsWhere = False
		Else
			SQLWhere = SQLWhere & " Or  p.CellPhone =  '" & strPhone2 & "'" 
		End If
	End If 
	
	
	If strPhone3 <> "" Then 
		If IsWhere Then
			SQLWhere = SQLWhere & "WHERE d.DraftNo  =  '" & strPhone3 & "'" 
			IsWhere = False
		Else
			SQLWhere = SQLWhere & " Or  d.DraftNo =  '" & strPhone3 & "'" 
		End If
	End If 
	
	If strPhone4 <> "" Then 
		If IsWhere Then
			SQLWhere = SQLWhere & "WHERE r.rollno  =  '" & strPhone4 & "'" 
			IsWhere = False
		Else
			SQLWhere = SQLWhere & " Or  r.rollno =  '" & strPhone4 & "'" 
		End If
	End If 	
	
	
	
	
	

'	Response.Write("Secret Code: " &strSecreteCode)
	If strSecreteCode <> "28012008" Then
	   Response.Clear()	
	   Response.End()
	End If
	
			            
strSQL = "SELECT (p.FirstName + ' ' + p.LastName)  AS  Name, p.DateOfBirth , p.Email, p.contactphone, p.Pass, p.Photo, p.id, p.jobid, p.photoUrl, j.id, p.bdjobsphoto, p.bdjobsid, p.cellphone, p.updatedon, p.postedon, SUBSTRING(LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4), CHARINDEX('/', LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4))+1, LEN(LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4))), j.jobid ,r.rollno FROM Personal p left join jobpos j on j.personalid = p.id left join roll r on r.personalid = p.id " &SQLWhere&"  "  
	
			 ' Response.Write strSQL
			  ValuePrint strSQL,"strSQL" 
	         ' Response.End()
			'  Response.Write strSQL
                
			   err.clear 
			   arrUserInfo = objERS.RetrieveData(strSQL, errLog)
			   ErrorMessage "131", errLog, 0
			   
			   If arrUserInfo(0,0) = "Nothing" Then
			      'GetUserInfo = False
				  Response.Write "<br/> No Record Found"
				  Response.End()
			   Else
			      'GetUserInfo = True 
			   End If 
			   
%>
