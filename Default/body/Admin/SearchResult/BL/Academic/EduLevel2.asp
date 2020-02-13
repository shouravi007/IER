<%	

	If intEducationLevel(2) <> "" Then
		
		If IsWhere Then
		    If intEducationLevel(4) <> "" and intEducationLevel(5) <> "" then
				SQLWhere = SQLWhere & " WHERE ( E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(2)
				IsWhere = False
			Else 		
			SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(2)
			IsWhere = False
			End IF 
		Else
			'response.Write("ewew :"& IsWhere)		
			SQLWhere = SQLWhere & "  AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(2) 
		End If
		If strDegreeName(2) <> "S" AND strDegreeName(2) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.DEGREENAME IN('" & strDegreeName(2) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.DEGREENAME IN('" & strDegreeName(2) &"')"
			End If
		End If
		If strInstituteName(2) <> "S" and strInstituteName(2) <> "" Then
		
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITY IN ('" & strInstituteName(2) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.UNIVERSITY IN ('" & strInstituteName(2) & "')"
			End If
			'response.Write("<BR>"&SQLWhere)
		End If
		If intPassingYear(2) <> "S" AND intPassingYear(2) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.PASSINGYEAR='" & intPassingYear(2)&"'"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.PASSINGYEAR='" & intPassingYear(2)&"'"
			End If
		End If				
'*************************************RESULT2 ****************************************************************

		
		If intResult(2) <> "S" AND intResult_(2) = "S" Then			
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(2) 
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.[RESULT] =" & intResult(2)
			End If
		
			If strPercentFrom(2) <> "" And strPercentTo(2) = "" Then
				If strPercentFrom(2) > 0 Then
					If strPercentFrom(2) >= 60 Then
						range = 100
					elseif strPercentFrom(2) >= 45 Then
						range = 100
					else
						range = 5
					end if
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(2) 
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(2) &" AND ED.[RESULTPOINT] <="&range
					End If
					
				End If			
			End If
			If strPercentFrom(2) = "" And strPercentTo(2) <> "" Then
				If strPercentTo(2) > 0 Then
					If strPercentTo(2) >= 60 Then
						range = 60
					elseif strPercentTo(2) >= 45 Then
						range = 45
					else
						range = 0
					end if
					
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(2)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(2)
					End If
				End If			
			End If
			If strPercentFrom(2) <> "" And strPercentTo(2) <> "" Then
				If strPercentFrom(2) > 0 And strPercentTo(2) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(2) & " AND ED.[RESULTPOINT] <=" & strPercentTo(2)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(2) & " AND ED.[RESULTPOINT] <=" & strPercentTo(2)
					End If
				End If			
			End If
				
		ElseIf intResult(2) = "S" AND intResult_(2) <> "S" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(2)
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.[RESULT] =" & intResult_(2)
			End If
		
			If strPercentFrom_(2) <> "" And strPercentTo_(2) = "" Then
				If strPercentFrom_(2) > 0 Then
					
					If strPercentFrom_(2) >= 60 Then
						range = 100
					elseIf strPercentFrom_(2) >= 45 Then
						range = 100
					else
						range = 5
					end if

					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(2) 
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(2) &" AND ED.[RESULTPOINT] <="&range
					End If
				End If			
			End If
			If strPercentFrom_(2) = "" And strPercentTo_(2) <> "" Then
				If strPercentTo_(2) > 0 Then
					If strPercentTo_(2) >= 60 Then
						range = 60
					elseIf strPercentTo_(2) >= 45 Then
						range = 45
					else
						range = 0
					end if

					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(2)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(2)
					End If
				End If			
			End If
			If strPercentFrom_(2) <> "" And strPercentTo_(2) <> "" Then
				If strPercentFrom_(2) > 0 And strPercentTo_(2) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(2) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(2)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(2) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(2)
					End If
				End If			
			End If
				

		ElseIf intResult(2) <> "S" AND intResult_(2) <> "S" Then
			If intResult(2) <> "S" Then
				If IsWhere Then
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(2)
					IsWhere = False
				Else
					If strPercentFrom(2) = "" And strPercentTo(2) = "" Then
						SQLWhere = SQLWhere & " AND ((ED.[RESULT] =" & intResult(2) &")"
					Else
						SQLWhere = SQLWhere & " AND ((ED.[RESULT] =" & intResult(2) 
					End If
				End If				
				
				If strPercentFrom(2) <> "" And strPercentTo(2) = "" Then
					If strPercentFrom(2) > 0 Then
						If strPercentFrom(2) >= 60 Then
							range = 100
						elseIf strPercentFrom(2) >= 45 Then
							range = 100
						else
							range = 5
						end if
						
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(2) 
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(2) &" AND ED.[RESULTPOINT] <="&range&")"
						End If
					End If			
				End If
				
				If strPercentFrom(2) = "" And strPercentTo(2) <> "" Then
					If strPercentTo(2) > 0 Then
						If strPercentTo(2) >= 60 Then
							range = 60
						elseIf strPercentTo(2) >= 45 Then
							range = 45
						else
							range = 0
						end if
						
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(2)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(2)&")"
						End If
					End If			
				End If
				
				If strPercentFrom(2) <> "" And strPercentTo(2) <> "" Then
					If strPercentFrom(2) > 0 And strPercentTo(2) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(2) & " AND ED.[RESULTPOINT] <=" & strPercentTo(2)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(2) & " AND ED.[RESULTPOINT] <=" & strPercentTo(2) &")"
						End If
					End If			
				End If
			End If ' end if of first dropdown
			
			' second dropdown start				
			If intResult_(2) <> "S" Then
				If IsWhere Then
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(2)
					IsWhere = False
				Else
					If intResult_(2) <> "S" and (strPercentFrom_(2) = "" And strPercentTo_(2) = "") Then
						SQLWhere = SQLWhere & " OR (ED.[RESULT] =" & intResult_(2)&"))"
					else
						SQLWhere = SQLWhere & " OR (ED.[RESULT] =" & intResult_(2)
					end if
				End If
	
				If strPercentFrom_(2) <> "" And strPercentTo_(2) = "" Then
					If strPercentFrom_(2) > 0 Then
						
						If strPercentFrom_(2) >= 60 Then
							range = 100
						elseIf strPercentFrom_(2) >= 45 Then
							range = 100
						else
							range = 5
						end if
	
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(2) 
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(2) &" AND ED.[RESULTPOINT] <="&range&"))"
						End If
					End If			
				End If
				
				If strPercentFrom_(2) = "" And strPercentTo_(2) <> "" Then
					If strPercentTo_(2) > 0 Then
						If strPercentTo_(2) >= 60 Then
							range = 60
						elseIf strPercentTo_(2) >= 45 Then
							range = 45
						else
							range = 0
						end if
	
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(2)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(2)&"))"
						End If
					End If			
				End If
				
				If strPercentFrom_(2) <> "" And strPercentTo_(2) <> "" Then
					If strPercentFrom_(2) > 0 And strPercentTo_(2) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(2) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(2)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(2) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(2) &"))" ' ....
						End If
					End If			
				End If
			End If
				' second dropdown end************************				
		End If			

' ***************RESULT2 end************************				

		If strMajorSubject(2) <> "S" AND strMajorSubject(2) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.SUBJECT IN('" & strMajorSubject(2) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.SUBJECT IN('" & strMajorSubject(2) & "')"
			End If
		End If

		SQLWhere = SQLWhere & lastBrac

		'RESPONSE.Write("<BR>LEVEL 2:   "&SQLWhere&"<BR>")

	End If ' ***********************endIf intEducationLevel(2) <> "" Then
%>