<%	
	If intEducationLevel(3) <> "" Then
		
		If IsWhere Then
			If intEducationLevel(4) <> "" and intEducationLevel(5) <> "" then
				SQLWhere = SQLWhere & " WHERE ( E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(3)
				IsWhere = False
			Else 
				SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(3)
				IsWhere = False
			End IF 
		Else
			SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(3)
		End If
		
		If strDegreeName(3) <> "S"  AND strDegreeName(3) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.DEGREENAME IN('" & strDegreeName(3) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.DEGREENAME IN('" & strDegreeName(3) &"')"
			End If
		End If
		
		If strInstituteName(3) <> "S" and strInstituteName(3) <> "" Then		
			If strExtraInstitute(3) = "" Then	
				If IsWhere Then
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITY IN ('" & Replace(strInstituteName(3),"#",",") & "')"
					IsWhere = False
				Else
					SQLWhere = SQLWhere & " AND ED.UNIVERSITY IN ('" & Replace(strInstituteName(3),"#",",") & "')"
				End If
			End If
			
			If strExtraInstitute(3) <> "" Then		
				If IsWhere Then
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITYTYPE = '" & strExtraInstitute(3) & "' ) "
					IsWhere = False
				Else
					SQLWhere = SQLWhere & " AND ED.UNIVERSITYTYPE = '" & strExtraInstitute(3) & "'  "
				End If
			End If
		End If
		
		If strExtraInstitute(3) <> "" Then		
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITYTYPE = '" & strExtraInstitute(3) & "' )  "
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.UNIVERSITYTYPE = '" & strExtraInstitute(3) & "' "
			End If
		End If
		
		If intPassingYear(3) <> "S" AND intPassingYear(3) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.PASSINGYEAR='" & intPassingYear(3)&"'"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.PASSINGYEAR='" & intPassingYear(3)&"'"
			End If
		End If
'******************** RESULT3************************************************************************
				
		If intResult(3) <> "S" AND intResult_(3) = "S" Then			
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(3) 
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.[RESULT] =" & intResult(3)
			End If
		
			If strPercentFrom(3) <> "" And strPercentTo(3) = "" Then
				If strPercentFrom(3) > 0 Then
					If strPercentFrom(3) >= 60 Then
						range = 100
					elseif strPercentFrom(3) >= 45 Then
						range = 100
					else
						range = 4
					end if
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(3) 
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(3) &" AND ED.[RESULTPOINT] <="&range
					End If
					
				End If			
			End If
			If strPercentFrom(3) = "" And strPercentTo(3) <> "" Then
				If strPercentTo(3) > 0 Then
					If strPercentTo(3) >= 60 Then
						range = 60
					elseif strPercentTo(3) >= 45 Then
						range = 45
					else
						range = 0
					end if
					
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(3)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(3)
					End If
				End If			
			End If
			If strPercentFrom(3) <> "" And strPercentTo(3) <> "" Then
				If strPercentFrom(3) > 0 And strPercentTo(3) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(3) & " AND ED.[RESULTPOINT] <=" & strPercentTo(3)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(3) & " AND ED.[RESULTPOINT] <=" & strPercentTo(3)
					End If
				End If			
			End If
				
		ElseIf intResult(3) = "S" AND intResult_(3) <> "S" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(3)
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.[RESULT] =" & intResult_(3)
			End If
		
			If strPercentFrom_(3) <> "" And strPercentTo_(3) = "" Then
				If strPercentFrom_(3) > 0 Then
					
					If strPercentFrom_(3) >= 60 Then
						range = 100
					elseIf strPercentFrom_(3) >= 45 Then
						range = 100
					else
						range = 4
					end if

					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(3) 
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(3) &" AND ED.[RESULTPOINT] <="&range
					End If
				End If			
			End If
			If strPercentFrom_(3) = "" And strPercentTo_(3) <> "" Then
				If strPercentTo_(3) > 0 Then
					If strPercentTo_(3) >= 60 Then
						range = 60
					elseIf strPercentTo_(3) >= 45 Then
						range = 45
					else
						range = 0
					end if

					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(3)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(3)
					End If
				End If			
			End If
			If strPercentFrom_(3) <> "" And strPercentTo_(3) <> "" Then
				If strPercentFrom_(3) > 0 And strPercentTo_(3) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(3) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(3)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(3) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(3)
					End If
				End If			
			End If
				

		ElseIf intResult(3) <> "S" AND intResult_(3) <> "S" Then
			If intResult(3) <> "S" Then
				If IsWhere Then
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(3)
					IsWhere = False
				Else
					If strPercentFrom(3) = "" And strPercentTo(3) = "" Then
						SQLWhere = SQLWhere & " AND ((ED.[RESULT] =" & intResult(3) &")"
					Else
						SQLWhere = SQLWhere & " AND ((ED.[RESULT] =" & intResult(3) 
					End If
				End If				
				
				If strPercentFrom(3) <> "" And strPercentTo(3) = "" Then
					If strPercentFrom(3) > 0 Then
						If strPercentFrom(3) >= 60 Then
							range = 100
						elseIf strPercentFrom(3) >= 45 Then
							range = 100
						else
							range = 4
						end if
						
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(3) 
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(3) &" AND ED.[RESULTPOINT] <="&range&")"
						End If
					End If			
				End If
				
				If strPercentFrom(3) = "" And strPercentTo(3) <> "" Then
					If strPercentTo(3) > 0 Then
						If strPercentTo(3) >= 60 Then
							range = 60
						elseIf strPercentTo(3) >= 45 Then
							range = 45
						else
							range = 0
						end if
						
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(3)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(3)&")"
						End If
					End If			
				End If
				
				If strPercentFrom(3) <> "" And strPercentTo(3) <> "" Then
					If strPercentFrom(3) > 0 And strPercentTo(3) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(3) & " AND ED.[RESULTPOINT] <=" & strPercentTo(3)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(3) & " AND ED.[RESULTPOINT] <=" & strPercentTo(3) &")"
						End If
					End If			
				End If
			End If ' end if of first dropdown
			
			' second dropdown start				
			If intResult_(3) <> "S" Then
				If IsWhere Then
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(3)
					IsWhere = False
				Else
					If intResult_(3) <> "S" and (strPercentFrom_(3) = "" And strPercentTo_(3) = "") Then
						SQLWhere = SQLWhere & " OR (ED.[RESULT] =" & intResult_(3)&"))"
					else
						SQLWhere = SQLWhere & " OR (ED.[RESULT] =" & intResult_(3)
					end if
				End If
	
				If strPercentFrom_(3) <> "" And strPercentTo_(3) = "" Then
					If strPercentFrom_(3) > 0 Then
						
						If strPercentFrom_(3) >= 60 Then
							range = 100
						elseIf strPercentFrom_(3) >= 45 Then
							range = 100
						else
							range = 4
						end if
	
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(3) 
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(3) &" AND ED.[RESULTPOINT] <="&range&"))"
						End If
					End If			
				End If
				
				If strPercentFrom_(3) = "" And strPercentTo_(3) <> "" Then
					If strPercentTo_(3) > 0 Then
						If strPercentTo_(3) >= 60 Then
							range = 60
						elseIf strPercentTo_(3) >= 45 Then
							range = 45
						else
							range = 0
						end if
	
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(3)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(3)&"))"
						End If
					End If			
				End If
				
				If strPercentFrom_(3) <> "" And strPercentTo_(3) <> "" Then
					If strPercentFrom_(3) > 0 And strPercentTo_(3) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(3) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(3)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(3) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(3) &"))" ' ....
						End If
					End If			
				End If
			End If
				' second dropdown end************************				
		End If			
'***********************RESULT3 END******************************************
		
		If strMajorSubject(3) <> "S" AND strMajorSubject(3) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.SUBJECT IN('" & strMajorSubject(3) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.SUBJECT IN('" & strMajorSubject(3) & "')"
			End If
		End If		
		
		SQLWhere = SQLWhere & lastBrac
		'RESPONSE.Write("<BR>LEVEL 3:   "&SQLWhere&"<BR>")
	End If '************************endIf intEducationLevel(3) <> "" Then
	
%>