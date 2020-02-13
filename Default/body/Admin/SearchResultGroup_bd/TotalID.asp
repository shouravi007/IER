<%	
	intProcced = 0	

	If InStr(Request.ServerVariables("HTTP_REFERER"),"GroupAdmin_bd.asp") > 0 OR InStr(Request.ServerVariables("HTTP_REFERER"),"groupadmin_bd.asp") > 0 or  cstr(strFormAction) = cstr("SearchResultGroup_bd") Then

     	SQLCountPersonalTemp = "SELECT DISTINCT p.id FROM " & strBrach & "PERSONAL p " & strJoin
		SQLCountPersonalTemp = SQLCountPersonalTemp & SQLWhere 
		
		

		
			IF Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0 or request.ServerVariables("SERVER_NAME") = "server-ers" Then		
	   		Response.Write(SQLCountPersonalTemp&"<br/>")
			End If

		arrCountPersonal = objERS.RetrieveData(SQLCountPersonalTemp, errMsg)
		Response.Write(errLog)
		ErrorMessage "1773", errMsg, 0


			 If arrCountPersonal(0,0) <> "Nothing" Then 
				  str = ""
			'strIds = ""
				For r = 0 To UBound(arrCountPersonal, 2)
					   If r = UBound(arrCountPersonal,2) Then 
						strComma = "" 
					   Else
						strComma = ","
					   End IF 
					str = str & arrCountPersonal(0, r) & strComma
				Next
			  Else
			    'endof
		      End IF 

        Session("str") = ""
		Session("str") = str 
		
		'Response.Write(str)

		strModuleName = "Search Result"
		strAction = "Proceed view"
		If CStr(strJobPosting) = "S" Then 
			strJobName = "General"
		End If
		
		

		'UB=UBound(arrCountPersonal,2)
		If arrCountPersonal(0, 0) <> "Nothing" Then
			'UB = arrCountPersonal(0, 0)
			UB=UBound(arrCountPersonal,2) + 1
			Session("arrID") = arrCountPersonal
			'arrIDs = arrCountPersonal
			IsDisplay = True
			
		End If
		
		'ValuePrint UB,"UB"
	Else	
		UB = Request.Form("txtUB")
		If UB > 0 Then
			IsDisplay = True
			intProcced = 1

		End If
		
		'ValuePrint UB,"Elseub"
	End If
	
	'ValuePrint SQLCountPersonal,"SQLCountPersonal"

	
	
	'Response.Write(strCVType & "<br />" & SQLCountPersonal)
	'Response.End()
		
	If IsDisplay = True Then
		'intTotalCount = UB+1

		If intProcced = 1 Then
			intTotalCount = UB
			
			'*****************************  Building Session  ***************
			'toskip = Request.queryString("toskip")
			Session("POSITION") = Request.Form("POSITION")
			'Session("JOBPOS") = jobPos
			'Session("SQLPersonal") = SQLPersonal
			'Session("intTotalCount") = intTotalCount
	
			'Response.Write("<br />" & intTotalCount)
			'	*******************************************	   Start Rony For Paging  ***********************
			Dim pg			'// page no.
			Dim pgSize		'// No of Record per page
			Dim totalPage	'// total number of page
			
			If intProcced = 1 Then
				pgSize = 0
				intTop = 20
				totalPage = 0
				rpp = 20
				pg = Trim(Request.Form("hPage"))
				pgSize = 20
				If pg = "" Then 
				  pg = 1
				End If
				startSeed = 0
				If pg > 1 Then
				  intTop = rpp * pg
				  startSeed = rpp * pg - rpp
				  rpp = startSeed + rpp
				End If
				
				'Response.Write(intTotalCount & "<br />" & pgSize & "<br />" & pg & "RPP="&rpp)
				'Response.End()
				arrPageInfo = ReturnPageInfo(intTotalCount, pgSize, pg)	
					  
				totalPage = arrPageInfo(0, 0)
			 End If
		 End If  'If intProcced = 1 Then
		 
		 'Response.Write("<br />Total PG: "&totalPage & "<br />start :"& startSeed&"END :"&intTop)
		 
		 
		 '''*********************End Optimize by partho*********
		'	*******************************************	   End Rony For Paging  ***********************
		
		' **************************************** User Log start *****************************************************
		

		'ErrorMessage "919", errMsg, 0
		
		'Response.Write(SQLUserLog)
		'Response.Write("<br />")
		'Response.Write(strJobName)
		' ***************************************************** User Log end *****************************************************



%>		  
