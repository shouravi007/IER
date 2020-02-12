
<%
SQLWhere  = ""
if err.number <> 0 then
 err.clear 
end if
'Response.Write("working at bl")

If strJobPosting <> "S" Then				
    SQLWhere = SQLWhere & " WHERE  j.jobid = "&strJobPosting 
    IsWhere = False				

    sql = ""
    sql = "SELECT [JobID], [JobTitle], [DeadLine] FROM JobPosting WHERE [JobID] = " & strJobPosting 
    
    'FormValue sql, "sql"			
    
    arrJobDate = objERS.RetrieveData(sql, errMsg)
    ErrorMessage "2015", errMsg, 0		
    
    'FormValue arrJobDate(0, 0) , "arrJobDate(0, 0) "
    
        if arrJobDate(0,0) <> "Nothing" Then 
            'FormValue arrJobDate(2, 0) , "arrJobDate(2, 0) "
            strJobName = arrJobDate(1,0) 
            If isnull(arrJobDate(2,0)) or isempty(arrJobDate(2,0)) then
              strDeadLine = day(date)&"/"&month(date)&"/"&year(date)
            Else
              strDeadLine = day(arrJobDate(2,0))&"/"&month(arrJobDate(2,0))&"/"&year(arrJobDate(2,0))
             ' FormValue strDeadLine , "strDeadLine " 
            End if
        
        Else
          strDeadLine = day(date)&"/"&month(date)&"/"&year(date)		
        end if

Else

End If

If strCVType = "Shortlisted" Then	
  
  If IsWhere Then			  			
	SQLWhere = SQLWhere & " WHERE  j.Shortlisted = 1" 
	IsWhere = False		
  Else
	SQLWhere = SQLWhere & " and  j.Shortlisted = 1" 
  End if
   		
ElseIf strCVType = "NotShortListed" Then
  
  If IsWhere Then			  			
	SQLWhere =  SQLWhere & " WHERE (j.Shortlisted = 0  or  j.Shortlisted is null) "
	IsWhere = False		
  Else
	SQLWhere =  SQLWhere & " and (j.Shortlisted = 0  or  j.Shortlisted is null) "
  
  End if 
  			
Else

End If



on error resume next 
 ss = cdate(strStartDate)
 if err.number <> 0 then
  err.clear
  strStartDate = "---" 
 end if 

on error resume next 
 ss = cdate(strEndDate)
 if err.number <> 0 then
  err.clear 
  strEndDate = "---" 
 end if 


		
If strStartDate <> "---" And  strEndDate <> "---" Then  
	
	If IsWhere Then
		SQLWhere = SQLWhere & " WHERE  j.AppDate  Between '"&strStartDate&"' And '"&strEndDate&" 23:59'"	
		IsWhere = False 	
	Else
		SQLWhere = SQLWhere & " and   (j.AppDate  Between '"&strStartDate&"' And '"&strEndDate&" 23:59')"				
	End IF 
			
ElseIf strStartDate <> "---" Then 
	
	If IsWhere Then
		SQLWhere = SQLWhere & " WHERE   j.AppDate  = '"&strStartDate&"'" 
		IsWhere = False 
	Else
		SQLWhere = SQLWhere & " and   j.AppDate  = '"&strStartDate&"'" 
	End IF
	 
Elseif strEndDate <> "---" Then
   
	If IsWhere Then
	   SQLWhere = SQLWhere & " Where  j.AppDate  = '"&strEndDate&"'"
	  IsWhere = False 
	Else
	   SQLWhere = SQLWhere & " and   j.AppDate  = '"&strEndDate&"'"
	End IF
	 
End if


	' 4 Tracking Number
	
		''ValuePrint intTN, "intTN"

		
		If intTN <> "" Then
				'Response.Write(Request.Form())
	
			' 4 Tracking Number
			If IsNumeric(intTN) = False Then
				Response.Write("<center><strong>Tracking Number should be numeric. Click <a href='javascript:history.go(-1);'>here</a></strong></center>")
				Response.End()
			End If
			'Else
	'			If IsWhere Then
	'				SQLWhere = SQLWhere & "WHERE p.PERSONALID=" & intTN
	'				IsWhere = False
	'			Else
	'				SQLWhere = SQLWhere & " AND p.PERSONALID=" & intTN
	'			End If
	'		End If
		End If		
			
		
		
		
		If intTN <> "" Then
'		 if strJobPosting = 1 then 
'		  intTN = intTN - 100000
'		 elseif strJobPosting = 2 then
'		  intTN = intTN - 200000
'		 elseif strJobPosting = 3 then 
'		  intTN = intTN - 300000
'		 else
'		 
'		 end if 
		 
		 
		sql = ""
		sql = "select personalid,id from jobpos where [id] = "&intTN
		ValuePrint sql, "sql"
		arrID = objERS.RetrieveData(sql, strErr)
		ErrorMessage "34", errMsg, 0
		
		if arrID(0, 0) <> "Nothing" Then 
		   TrackNo = arrID(0, 0) 		
		end if 		
		
		
		
		 if TrackNo <> "" Then 
			If IsWhere Then
				SQLWhere = SQLWhere & "WHERE p.id=" & TrackNo
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND p.id=" & TrackNo
			End If
		 else
		  endof
		 end if 
		 
		End If	

' 4 RollNo
		''ValuePrint SQLWhere, "SQLWhere"
		intRoll = Trim(Request.Form("txtRollNumber"))
		'ValuePrint intRoll, "intRoll"
		If intRoll <> "" Then
			
			sql = ""
			sql = "select personalid,RollNo from ROLL where  jobid =  "&strJobPosting&" and RollNo = "&intRoll
			'Response.Write(sql)
		    ValuePrint sql, "sql"
			arrRoll = objERS.RetrieveData(sql, strErr)
			ErrorMessage "34", errMsg, 0
			
			if arrRoll(0, 0) <> "Nothing" Then 
			TrackNo = arrRoll(0, 0) 		
			else
			 response.Write("No Record found")
			 Response.End()
			end if 		
				
			If IsWhere Then
				SQLWhere = SQLWhere & "WHERE p.id=" & TrackNo
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND p.id=" & TrackNo
			End If
		End If	
				
		' 4 Name
		If strName <> "" Then
			'fieldName = "p.FirstName+' '+p.LastName "	
			fieldName = "p.FirstName"	
			If IsWhere Then
				SQLWhere = SQLWhere & " WHERE " & fieldName & "='" & strName & "'"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND " & fieldName & "='" & strName & "'"
			End If
		End If
		'ValuePrint SQLWhere, "SQLWhere"
		
		
		
		' 4 Age
		If (intAgeFrom <> "S"  ) Or (intAgeTo <> "S" ) Then   'And intAgeFrom <> ""   And intAgeTo <> ""
			If IsWhere Then
			
				If intEducationLevel(4) <> "" and intEducationLevel(5) <> "" then
					If intAgeFrom <> "S" And intAgeTo <> "S" Then
						SQLWhere = SQLWhere & " WHERE (DATEDIFF(day, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365>=" & intAgeFrom & " AND DATEDIFF(d, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365<=" & intAgeTo
					ElseIf intAgeFrom <> "S" And intAgeTo = "S" Then
						SQLWhere = SQLWhere & " WHERE (DATEDIFF(day, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365>=" & intAgeFrom
					ElseIf intAgeFrom = "S" And intAgeTo <> "S" Then
						SQLWhere = SQLWhere & " WHERE (DATEDIFF(day, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365<=" & intAgeTo
					End If
					IsWhere = False				
				Else 			
				
					If intAgeFrom <> "S" And intAgeTo <> "S" Then
						SQLWhere = SQLWhere & " WHERE DATEDIFF(day, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365>=" & intAgeFrom & " AND DATEDIFF(d, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365<=" & intAgeTo
					ElseIf intAgeFrom <> "S" And intAgeTo = "S" Then
						SQLWhere = SQLWhere & " WHERE DATEDIFF(day, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365>=" & intAgeFrom
					ElseIf intAgeFrom = "S" And intAgeTo <> "S" Then
						SQLWhere = SQLWhere & " WHERE DATEDIFF(day, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365<=" & intAgeTo
					End If
					IsWhere = False
				End IF 
		   
			Else
			
				If (intAgeFrom <> "S") And (intAgeTo <> "S" ) Then
					SQLWhere = SQLWhere & " AND DATEDIFF(day, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365>=" & intAgeFrom & " AND DATEDIFF(d, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365<=" & intAgeTo
				ElseIf intAgeFrom <> "S" And intAgeTo = "S" Then
					SQLWhere = SQLWhere & " AND DATEDIFF(day, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365>=" & intAgeFrom
				ElseIf intAgeFrom = "S" And intAgeTo <> "S" Then
					SQLWhere = SQLWhere & " AND DATEDIFF(day, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365<=" & intAgeTo
				End If
			End If
		End If
		' 4 Sex	
		If strSex <> "S" Then
			If IsWhere Then
		     	If intEducationLevel(4) <> "" and intEducationLevel(5) <> "" then

				SQLWhere = SQLWhere & " WHERE (  p.Gender='" & strSex & "'"
				IsWhere = False
				else
				SQLWhere = SQLWhere & " WHERE p.Gender='" & strSex & "'"
				IsWhere = False
				end if 
			Else
				SQLWhere = SQLWhere & " AND p.Gender='" & strSex & "'"
			End If
		End If
		' 4 Email	
		If strEmail <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " WHERE p.EMAIL='" & strEmail & "'"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND p.EMAIL='" & strEmail & "'"
			End If
		End If
		
		' 4 Phone
		If strPhone <> "" Then
			If strPhoneType = "Cell Phone" Then
				fieldName = "ContactPhone"
			ElseIf strPhoneType = "Home Phone" Then
				fieldName = "CellPhone"
			Else
				fieldName = "ContactPhone"
			End If	
			If IsWhere Then
				SQLWhere = SQLWhere & " WHERE p." & fieldName & "='" & strPhone & "'"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND p." & fieldName & "='" & strPhone & "'"
			End If
		End If
		
	
		If strHomeDist <> "S" and strHomeDist <> ""  Then
			If IsWhere Then
				If intEducationLevel(4) <> "" and intEducationLevel(5) <> "" then
					SQLWhere = SQLWhere & " WHERE ( p.HomeDistrict in ( " & strHomeDist & " ) "
					IsWhere = False
				Else 
			
				SQLWhere = SQLWhere & " WHERE p.HomeDistrict in ( " & strHomeDist & " ) "
				IsWhere = False
				End IF 
			Else
				SQLWhere = SQLWhere & " AND p.HomeDistrict in ( " & strHomeDist & " ) "
			End If
		End If
		

		If strHomeDist2 <> "S" and strHomeDist2 <> ""  Then
			If IsWhere Then
				If intEducationLevel(4) <> "" and intEducationLevel(5) <> "" then
					SQLWhere = SQLWhere & " WHERE ( p.HomeDistrict2 in ( " & strHomeDist2 & " ) "
					IsWhere = False
				Else 			
				SQLWhere = SQLWhere & " WHERE p.HomeDistrict2 in ( " & strHomeDist2 & " ) "
				IsWhere = False
				End IF 
			Else
				SQLWhere = SQLWhere & " AND p.HomeDistrict2 in ( " & strHomeDist2 & " ) "
			End If
		End If


				'response.Write(SQLWhere)

		if SQLWhere <> "" then 
			sqlPersonal =  SQLWhere
			ValuePrint sqlPersonal, "sqlPersonal"
		end if 		
%>