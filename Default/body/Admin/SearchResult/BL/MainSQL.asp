<%
  pg = Trim(Request.Form("hPage"))
  'Response.Write("pg"&pg)

  IsWhere = False 
  sql = ""

  sqljobs = ""


  if sqlPersonal <> "" and sqlAcademic = "" then
      sqljobs = "Select Distinct P.id  FROM  Personal P inner JOIN JobPos j ON P.id=j.personalID  " 
	 sql = sql &sqljobs& sqlPersonal
	 sql = sql & " and j.eligible = 1 order by p.id   "
  end if
  
  if sqlAcademic <> "" and sqlPersonal = "" then
     sqljobs = "Select Distinct P.id  FROM (( Personal P LEFT OUTER JOIN JobPos j ON P.id=j.personalID ) LEFT JOIN ACADEMIC E ON P.id = E.PERSONALID) " 

	 sql = sql &sqljobs& sqlAcademic 
     sql = sql & " and j.eligible = 1 order by p.id   "	
  end if 
  
  
  
  if sqlAcademic <> "" and sqlPersonal <> "" then
     sqljobs = "Select Distinct P.id  FROM (( Personal P LEFT OUTER JOIN JobPos j ON P.id=j.personalID ) LEFT JOIN ACADEMIC E ON P.id = E.PERSONALID) " 

	 sql = sql &sqljobs&sqlPersonal&sqlAcademic 
     sql = sql & " and j.eligible = 1  order by p.id   "	
  end if 
  
 
 
 if sqlPersonal = "" and sqlAcademic = "" then 
  sqljobs = "Select Distinct j.personalid  FROM  JobPos j where j.eligible = 1 order by j.personalid  "
  sql = sql &sqljobs
   
 end if  
 
 If Request.ServerVariables("REMOTE_ADDR") = "180.92.229.67" or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or Request.ServerVariables("SERVER_NAME") =  "server-ers"  Then  
       'Response.Write("<br>"& sql & "<br>")
 End If 
 'sql = sql & " order by p.id   " 'OFFSET 0 ROWS FETCH NEXT 20 ROWS ONLY  
 
 sendmail replyTo, developerTo , "sql-"&strPhotoFolder&"-"&now, sql, "", "", replyTo
 
 'response.Write("<br>sql:"&sql)
 
 'sql = Replace(sql, "'", "''")
 'sql =  " exec USP_Search_Result '"&sql&"' "

ValuePrint sql, "sql"

on error resume next 

	If InStr(strFormAction,"SearchResult") > 0  Then

		if err.number <> 0 then
		 err.clear 
		end if
		arrCountPersonal = objERS.RetrieveData(sql, errMsg)
		ErrorMessage "1773", errMsg, 0

		
		For r = 0 To UBound(arrCountPersonal, 2)
			If r = UBound(arrCountPersonal,2) Then 
			strComma = "" 
			Else
			strComma = ","
			End IF 
			strAllNew = strAllNew & arrCountPersonal(0, r) & strComma
		Next

		
		
		
		strModuleName = "Search Result"
		strAction = "Page-"&pg
		If CStr(strJobPosting) = "S" Then 
			strJobName = "General"
		End If
		
		SQLUserLog = "INSERT INTO UserLog (UserId, UserName, ModuleName, [Description], ActionDate, [Action]) values (" 
		SQLUserLog = SQLUserLog & USERID & ", '" & currentUser  & "', '" & strModuleName & "', 'Filtering', '" & Now & "' ,'" & strAction & "')"
		
	    ValuePrint SQLUserLog, "SQLUserLog"
		objERS.ExecuteQuery SQLUserLog, errMsg
		ErrorMessage "1773", errMsg, 0

		'UB=UBound(arrCountPersonal,2)
		If arrCountPersonal(0, 0) <> "Nothing" Then
			
			IsDisplay = True
			intProcced = 1
			UB = UBound(arrCountPersonal,2) + 1					
			If UB = 0 Then
				UB = UBound(arrCountPersonal,2) + 1			
			End If
			
			Session("arrID") = arrCountPersonal
			arrIDs = arrCountPersonal
			IsDisplay = True
		Else
				response.Write("<div align='center' style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; color:#C30;'>No Record Found</div> <br />")	
		        EndOfAllProcess
		End If
		
		''ValuePrint UB,"UB"
	Else	
		UB = Request.Form("txtUB")
		If UB > 0 Then
			IsDisplay = True
			intProcced = 1
		End If
	End If


	If IsDisplay = True Then

		If intProcced = 1 Then
			intTotalCount = UB

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
				If pg = "" or pg = 1 Then 
				  pg = 1
				  row = " OFFSET 0 ROWS FETCH NEXT 20 ROWS ONLY "
				End If
				startSeed = 0
				If pg > 1 Then
				  intTop = rpp * pg
				  startSeed = rpp * pg - rpp
				  rpp = startSeed + rpp
				  intTop2 = intTop - 20 
				  row = " OFFSET "&intTop2&" ROWS FETCH NEXT 20 ROWS ONLY " 
				End If
				
				'Response.Write(intTotalCount & "<br />" & pgSize & "<br />" & pg & "RPP="&rpp)
				'Response.End()
				arrPageInfo = ReturnPageInfo(intTotalCount, pgSize, pg)	
					  
				totalPage = arrPageInfo(0, 0)
			 End If
		 End If  'If intProcced = 1 Then
	
%>