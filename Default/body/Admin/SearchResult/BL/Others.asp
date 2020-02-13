<%
		
	    If strStartDate <> "" And  strEndDate <> "" Then  
		   	If IsWhere Then
				SQLWhere = SQLWhere & " WHERE   p.PostedOn Between '"&strStartDate&"' And '"&strEndDate&"'"	
				IsWhere = False 	
			Else
				SQLWhere = SQLWhere & " and   p.PostedOn Between '"&strStartDate&"' And '"&strEndDate&"'"				
			End IF 		
		ElseIf strStartDate <> "" Then 
		   	If IsWhere Then
				SQLWhere = SQLWhere & " WHERE   p.PostedOn = '"&strStartDate&"'" 
				IsWhere = False 
			Else
				SQLWhere = SQLWhere & " and   p.PostedOn = '"&strStartDate&"'" 
			End IF 
	    Elseif strEndDate <> "" Then   
		  		If IsWhere Then
				   SQLWhere = SQLWhere & " Where   p.PostedOn = '"&strEndDate&"'"
				  IsWhere = False 
				Else
				   SQLWhere = SQLWhere & " and   p.PostedOn = '"&strEndDate&"'"
				End IF 
	     End if
	' 4 Tracking Number
		If intTN <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "WHERE p.PERSONALID=" & intTN
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND p.PERSONALID=" & intTN
			End If
		End If	

' 4 RollNo
		If intRoll <> "" Then
			
			strBrach =  strBrach & "("
			strJoin = strJoin & " LEFT OUTER JOIN ROLL R ON P.personalid=R.personalID )"
			
			
			If IsWhere Then
				SQLWhere = SQLWhere & "WHERE R.RollNo=" & intRoll
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND R.RollNo=" & intRoll
			End If
		End If	
				
		' 4 Name
		If strName <> "" Then
			fieldName = "p.FirstName"			
			If IsWhere Then
				SQLWhere = SQLWhere & " WHERE " & fieldName & "='" & strName & "'"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND " & fieldName & "='" & strName & "'"
			End If
		End If
		' 4 Age
		If (intAgeFrom <> "S"  ) Or (intAgeTo <> "S" ) Then   'And intAgeFrom <> ""   And intAgeTo <> ""
			If IsWhere Then
				If intAgeFrom <> "S" And intAgeTo <> "S" Then
					SQLWhere = SQLWhere & " WHERE DATEDIFF(d, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365>=" & intAgeFrom & " AND DATEDIFF(d, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365<=" & intAgeTo
				ElseIf intAgeFrom <> "S" And intAgeTo = "S" Then
					SQLWhere = SQLWhere & " WHERE DATEDIFF(d, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365>=" & intAgeFrom
				ElseIf intAgeFrom = "S" And intAgeTo <> "S" Then
					SQLWhere = SQLWhere & " WHERE DATEDIFF(d, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365<=" & intAgeTo
				End If
				IsWhere = False
			Else
				If (intAgeFrom <> "S") And (intAgeTo <> "S" ) Then
					SQLWhere = SQLWhere & " AND DATEDIFF(d, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365>=" & intAgeFrom & " AND DATEDIFF(d, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365<=" & intAgeTo
				ElseIf intAgeFrom <> "S" And intAgeTo = "S" Then
					SQLWhere = SQLWhere & " AND DATEDIFF(d, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365>=" & intAgeFrom
				ElseIf intAgeFrom = "S" And intAgeTo <> "S" Then
					SQLWhere = SQLWhere & " AND DATEDIFF(d, p.DateOfBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/365<=" & intAgeTo
				End If
			End If
		End If
		' 4 Sex	
		If strSex <> "S" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " WHERE p.Gender='" & strSex & "'"
				IsWhere = False
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
				fieldName = "CellPhone"
			ElseIf strPhoneType = "Home Phone" Then
				fieldName = "ContactPhone"
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
		
		' 4 Present Address	
		'If strCDist <> "S" Then
'			If IsWhere Then
'				SQLWhere = SQLWhere & " WHERE p.CDistrict='" & strCDist & "'"
'				IsWhere = False
'			Else
'				SQLWhere = SQLWhere & " AND p.CDistrict='" & strCDist & "'"
'			End If
'		End If
		
		' 4 Permanent Address	
		If strHomeDist <> "S" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " WHERE p.HomeDistrict ='" & strHomeDist & "'"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND p.HomeDistrict ='" & strHomeDist & "'"
			End If
		End If
		
		' 4 Rejected 	
		If strRejected <> "All" Then
			If IsWhere Then
				If strRejected = "0" Then
					SQLWhere = SQLWhere & " WHERE p.REJECTED =" & strRejected '&" OR  p.REJECTED is null" 
				Else
					SQLWhere = SQLWhere & " WHERE p.REJECTED =" & strRejected
				End If 
				IsWhere = False
			Else
				If strRejected = "0" Then
					SQLWhere = SQLWhere & " AND p.REJECTED =" & strRejected '&" OR  p.REJECTED is null" 
				Else
					SQLWhere = SQLWhere & " AND p.REJECTED =" & strRejected
				End If
			End If
		End If
		
		' 4 Photo
		If strPhoto <> "All" Then
			If IsWhere Then
				If strPhoto = "0" Then
					SQLWhere = SQLWhere & " WHERE p.PHOTO =" & strPhoto &" OR  p.PHOTO is null and p.testcv = 0  and p.rejected =  0  and p.postedon > '"&year(now)&"-01-01'  " 
				Else
					SQLWhere = SQLWhere & " WHERE p.PHOTO =" & strPhoto&" and p.testcv = 0  and p.rejected =  0   and p.postedon > '"&year(now)&"-01-01' "
				End If 
				IsWhere = False
			Else
				If strPhoto = "0" Then
					SQLWhere = SQLWhere & " AND p.PHOTO =" & strPhoto &" OR  p.PHOTO is null  and p.testcv = 0  and p.rejected =  0   and p.postedon > '"&year(now)&"-01-01'  " 
				Else
					SQLWhere = SQLWhere & " AND ( p.PHOTO =" & strPhoto&" Or p.bdjobsphoto <> '')  and p.testcv = 0  and p.rejected =  0   and p.postedon > '"&year(now)&"-01-01'  "
				End If
			End If
		End If

%>
