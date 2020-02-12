<%
	intPersonalId = ""
	intRoll	 = ""
	
	If Request.Form("generateButton") = "Generate Roll" Then
	
		orderby = Request.Form("orderby")	
		
		'response.Write("hello"&request.form("orderby"))	
 		sqlClearAllRoll = "delete from Roll where jobid =  "&jobid
		'Response.Write(sqlClearAllRoll)
		'objERS.ExecuteQuery sqlClearAllRoll, errMsg
		'ErrorMessage "83", errMsg, 0

		If orderby = "Id" Then
			strOrderBy = "p.personalid"
		ElseIf orderby = "Name" Then
			strOrderBy = "(p.FirstName + ' ' + p.LastName)"
		ElseIf orderby = "Roll" Then
			response.Write("<center><font color='red'>You can not generate Roll number in order of 'ROLL' .</font></center>")
		ElseIf orderby = "Random" Then
			strOrderBy = "p.DateOfBirth, RIGHT(p.CellPhone, 8) Desc, (p.FirstName+ ' '+p.LastName), p.FatherName Desc"
		End If
		'response.Write("orderby"&orderby)
		If orderby = "Id" or orderby = "Name" Then
        	sqlSGenerateAll = "SELECT distinct P.PERSONALID, (p.FirstName + ' ' + p.LastName) AS Name, P.FATHERNAME, P.HOMEDISTRICT  FROM PERSONAL P  where P.shortlisted = 1 and P.Jobid =  "&jobid&"  order by "&strOrderBy 'INNER JOIN ROLL R ON JP.PERSONALID = R.PERSONALID 
		ElseIf orderby = "Random" Then
			sqlSGenerateAll = "Select p.Personalid,(p.FirstName + ' ' + p.LastName) AS Name,P.FATHERNAME, P.HOMEDISTRICT From PERSONAL p  where p.shortlisted = 1 and p.jobid =  "&jobid&"   Order By "&strOrderBy
		Else
			sqlSGenerateAll = "SELECT distinct P.PERSONALID, (p.FirstName + ' ' + p.LastName) AS Name, P.FATHERNAME, P.HOMEDISTRICT  FROM PERSONAL P  where P.shortlisted = 1  and P.Jobid =  "&jobid&"   order by p.personalid"
		End If
		'response.Write(sqlSGenerateAll)
		arr_sqlSGenerateAll= objERS.RetrieveData(sqlSGenerateAll, errMsg)
		ErrorMessage "99", errMsg, 0
            
		startRoll = 60001
		If arr_sqlSGenerateAll(0,0) = "Nothing" Then
			response.Write("<center><font color='red'>Roll no is not shortlisted yet.</font></center>")
		Else		
			for i = 0 to ubound(arr_sqlSGenerateAll,2)
			
				intPersonalId = arr_sqlSGenerateAll(0,i)
				'RESPONSE.Write(intPersonalId)
				strName = arr_sqlSGenerateAll(1,i)
				strFatherName = arr_sqlSGenerateAll(2,i)
				strHomeDistrict = arr_sqlSGenerateAll(3,i)
				intRoll = startRoll
          		startRoll = startRoll + 1
		   		'RESPONSE.Write(intRoll&"<br>")

				ReDim sqlUpdateRollTable(i)
				ReDim arrUpdateData(i,6)
				
				arrUpdateData(0, 0) = intPersonalId
				arrUpdateData(0, 1) = strName
				arrUpdateData(0, 2) = strFatherName
				arrUpdateData(0, 3) = strHomeDistrict
				arrUpdateData(0, 4) = jobid
				arrUpdateData(0, 5) = intRoll
		    
				sqlUpdateRollTable(0) = "SELECT PERSONALID, Name, FatherName, HomeDistrict, JobID, RollNo from roll WHERE PersonalId=" & intPersonalId
				response.Write(sqlUpdateRollTable(0))		
				objERS.UpdateData sqlUpdateRollTable, arrUpdateData, errMsg
				'response.Write(errMsg)
				ErrorMessage "128", errMsg, 0
			
			next
		   
           If orderby = "Id" Then
		   		response.Write("<center><font color='green'>Roll number generated successfully in order of 'ID'.</font></center>")
		   ElseIf orderby = "Name" Then
		    	response.Write("<center><font color='green'>Roll number generated successfully in order of 'NAME'.</font></center>")
		   End If
        End If ' else if of arr_sqlSGenerateAll(0,0) = "Nothing" Then
	End If
	
	If Request.Form("clearButton") = "Clear Roll" Then	
 		sqlClearAllRoll = "delete from Roll where jobid = 4"
		'Response.Write(sqlClearAllRoll)
		'objERS.ExecuteQuery sqlClearAllRoll, errMsg
		'ErrorMessage "83", errMsg, 0
		Response.Write("<center><font color='green'>All Roll number cleared successfully.</font></center>")	
	End If
		
				



%>