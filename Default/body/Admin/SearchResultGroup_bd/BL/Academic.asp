<%
'********************academic new start********************
'For k = 1 to 4'For k = 1 to 4
If intEducationLevel(1) <> "S" Or intEducationLevel(2) <> "S" Or intEducationLevel(3) <> "S" OR intEducationLevel(4) <> "S" Then		
	'RESPONSE.Write("hello"&intEducationLevel(1))	
	If strDegreeName(1) <> "S" Or strDegreeName(2) <> "S" Or strDegreeName(3) <> "S" OR strDegreeName(4) <> "S" Or strInstituteName(1) <> "" Or strInstituteName(2) <> "" Or strInstituteName(3) <> "" Or strInstituteName(4) <> "" Or strExtraInstitute(3) <> "" Or strExtraInstitute(4) <> "" Or intPassingYear(1) <> "" Or intPassingYear(2) <> "" Or intPassingYear(3) <> "" Or intPassingYear(4) <> "" Or intResult(1) <> "S" Or intResult(2) <> "S" Or intResult(3) <> "S" Or intResult(4) <> "S" Or intResult_(1) <> "S" Or intResult_(2) <> "S" Or intResult_(3) <> "S" Or intResult_(4) <> "S" Or strMajorSubject(1) <> "S" Or strMajorSubject(2) <> "S" Or strMajorSubject(3) <> "S" Or strMajorSubject(4) <> "S" Or strPercentFrom(1) <> "S" Or strPercentFrom(2) <> "S" Or strPercentFrom(3) <> "S" Or strPercentFrom(4) <> "S" Or strPercentTo(1) <> "S" Or strPercentTo(2) <> "S" Or strPercentTo(3) <> "S" Or strPercentTo(4) <> "S" Or strPercentFrom_(1) <> "S" Or strPercentFrom_(2) <> "S" Or strPercentFrom_(3) <> "S" Or strPercentFrom_(4) <> "S" Or strPercentTo_(1) <> "S" Or strPercentTo_(2) <> "S" Or strPercentTo_(3) <> "S" Or strPercentTo_(4) <> "S" or strCampus(1) <> "" Then
			
			strBrach =  strBrach & "("		
			strJoin = strJoin & " LEFT JOIN ACADEMIC E ON P.PERSONALID = E.PERSONALID)"
			lastBrac = ")"						
	
	If intEducationLevel(1) <> "S" Then '*************** LEVEL 1************************
		
		If IsWhere Then
			SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(1)
			IsWhere = False
		Else								
			SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(1) 
		End If
		
		If strDegreeName(1) <> "S"  AND strDegreeName(1) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.DEGREENAME IN('" & strDegreeName(1) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.DEGREENAME IN('" & strDegreeName(1) & "')"
			End If
		End If
		
		'response.Write("<br>"&strInstituteName(1)&"<BR>")
		If strInstituteName(1) <> "S" and strInstituteName(1) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITY IN ('" & strInstituteName(1) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.UNIVERSITY IN ('" & strInstituteName(1) & "')"
			End If
		End If
				
		If intPassingYear(1) <> "S" AND intPassingYear(1) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN ( Select ED.PERSONALID from ACADEMIC ED WHERE ED.PASSINGYEAR='" & intPassingYear(1)&"'"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.PASSINGYEAR='" & intPassingYear(1)&"'"
			End If
		End If
'******************************RESULT *************************************************************************************************
		
		If intResult(1) <> "S" AND intResult_(1) = "S" Then			
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(1) 
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.[RESULT] =" & intResult(1)
			End If
		
			If strPercentFrom(1) <> "" And strPercentTo(1) = "" Then
				If strPercentFrom(1) > 0 Then
					If strPercentFrom(1) >= 60 Then
						range = 100
					elseif strPercentFrom(1) >= 45 Then
						range = 100
					else
						range = 5
					end if
					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(1) 
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(1) &" AND ED.[RESULTPOINT] <="&range
					End If
					
				End If			
			End If
			If strPercentFrom(1) = "" And strPercentTo(1) <> "" Then
				If strPercentTo(1) > 0 Then
					If strPercentTo(1) >= 60 Then
						range = 60
					elseif strPercentTo(1) >= 45 Then
						range = 45
					else
						range = 0
					end if
					
					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(1)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(1)
					End If
				End If			
			End If
			If strPercentFrom(1) <> "" And strPercentTo(1) <> "" Then
				If strPercentFrom(1) > 0 And strPercentTo(1) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(1) & " AND ED.[RESULTPOINT] <=" & strPercentTo(1)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(1) & " AND ED.[RESULTPOINT] <=" & strPercentTo(1)
					End If
				End If			
			End If
				
		ElseIf intResult(1) = "S" AND intResult_(1) <> "S" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(1)
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.[RESULT] =" & intResult_(1)
			End If
		
			If strPercentFrom_(1) <> "" And strPercentTo_(1) = "" Then
				If strPercentFrom_(1) > 0 Then
					
					If strPercentFrom_(1) >= 60 Then
						range = 100
					elseIf strPercentFrom_(1) >= 45 Then
						range = 100
					else
						range = 5
					end if

					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(1) 
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(1) &" AND ED.[RESULTPOINT] <="&range
					End If
				End If			
			End If
			If strPercentFrom_(1) = "" And strPercentTo_(1) <> "" Then
				If strPercentTo_(1) > 0 Then
					If strPercentTo_(1) >= 60 Then
						range = 60
					elseIf strPercentTo_(1) >= 45 Then
						range = 45
					else
						range = 0
					end if

					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(1)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(1)
					End If
				End If			
			End If
			If strPercentFrom_(1) <> "" And strPercentTo_(1) <> "" Then
				If strPercentFrom_(1) > 0 And strPercentTo_(1) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(1) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(1)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(1) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(1)
					End If
				End If			
			End If
				
		ElseIf intResult(1) <> "S" AND intResult_(1) <> "S" Then
			If intResult(1) <> "S" Then
				If IsWhere Then
					SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(1)
					IsWhere = False
				Else
					If strPercentFrom(1) = "" And strPercentTo(1) = "" Then
						SQLWhere = SQLWhere & " AND ((ED.[RESULT] =" & intResult(1) &")"
					Else
						SQLWhere = SQLWhere & " AND ((ED.[RESULT] =" & intResult(1) 
					End If
				End If				
				
				If strPercentFrom(1) <> "" And strPercentTo(1) = "" Then
					If strPercentFrom(1) > 0 Then
						If strPercentFrom(1) >= 60 Then
							range = 100
						elseIf strPercentFrom(1) >= 45 Then
							range = 100
						else
							range = 5
						end if
						
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(1) 
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(1) &" AND ED.[RESULTPOINT] <="&range&")"
						End If
					End If			
				End If
				
				If strPercentFrom(1) = "" And strPercentTo(1) <> "" Then
					If strPercentTo(1) > 0 Then
						If strPercentTo(1) >= 60 Then
							range = 60
						elseIf strPercentTo(1) >= 45 Then
							range = 45
						else
							range = 0
						end if
						
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(1)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(1)&")"
						End If
					End If			
				End If
				
				If strPercentFrom(1) <> "" And strPercentTo(1) <> "" Then
					If strPercentFrom(1) > 0 And strPercentTo(1) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(1) & " AND ED.[RESULTPOINT] <=" & strPercentTo(1)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(1) & " AND ED.[RESULTPOINT] <=" & strPercentTo(1) &")"
						End If
					End If			
				End If
			End If ' end if of first dropdown
			
			' second dropdown start				
			If intResult_(1) <> "S" Then
				If IsWhere Then
					SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(1)
					IsWhere = False
				Else
					If intResult_(1) <> "S" and (strPercentFrom_(1) = "" And strPercentTo_(1) = "") Then
						SQLWhere = SQLWhere & " OR (ED.[RESULT] =" & intResult_(1)&"))"
					else
						SQLWhere = SQLWhere & " OR (ED.[RESULT] =" & intResult_(1)
					end if
				End If
	
				If strPercentFrom_(1) <> "" And strPercentTo_(1) = "" Then
					If strPercentFrom_(1) > 0 Then
						
						If strPercentFrom_(1) >= 60 Then
							range = 100
						elseIf strPercentFrom_(1) >= 45 Then
							range = 100
						else
							range = 5
						end if
	
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(1) 
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(1) &" AND ED.[RESULTPOINT] <="&range&"))"
						End If
					End If			
				End If
				
				If strPercentFrom_(1) = "" And strPercentTo_(1) <> "" Then
					If strPercentTo_(1) > 0 Then
						If strPercentTo_(1) >= 60 Then
							range = 60
						elseIf strPercentTo_(1) >= 45 Then
							range = 45
						else
							range = 0
						end if
	
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(1)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(1)&"))"
						End If
					End If			
				End If
				
				If strPercentFrom_(1) <> "" And strPercentTo_(1) <> "" Then
					If strPercentFrom_(1) > 0 And strPercentTo_(1) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(1) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(1)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(1) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(1) &"))" ' ....
						End If
					End If			
				End If
			End If
				' second dropdown end************************				
		End If			
'*********************************************************************************************************************************
		If strMajorSubject(1) <> "S" AND strMajorSubject(1) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.SUBJECT IN('" & strMajorSubject(1) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.SUBJECT IN('" & strMajorSubject(1) & "')"
			End If
		End If
		
		SQLWhere = SQLWhere & lastBrac
		'RESPONSE.Write("<BR>LEVEL 1:   "&SQLWhere&"<BR>")
	End If ' ******************** endIf intEducationLevel(1) <> "" Then

	If intEducationLevel(2) <> "S" Then
		
		If IsWhere Then
			SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(2)
			IsWhere = False
		Else
			'response.Write("ewew :"& IsWhere)		
			SQLWhere = SQLWhere & "  AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(2) 
		End If
		If strDegreeName(2) <> "S" AND strDegreeName(2) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.DEGREENAME IN('" & strDegreeName(2) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.DEGREENAME IN('" & strDegreeName(2) &"')"
			End If
		End If
		If strInstituteName(2) <> "S" and strInstituteName(2) <> "" Then
		
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITY IN ('" & strInstituteName(2) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.UNIVERSITY IN ('" & strInstituteName(2) & "')"
			End If
			'response.Write("<BR>"&SQLWhere)
		End If
		If intPassingYear(2) <> "S" AND intPassingYear(2) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.PASSINGYEAR='" & intPassingYear(2)&"'"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.PASSINGYEAR='" & intPassingYear(2)&"'"
			End If
		End If				
'*************************************RESULT2 ****************************************************************

		
		If intResult(2) <> "S" AND intResult_(2) = "S" Then			
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(2) 
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
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(2) 
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
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(2)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(2)
					End If
				End If			
			End If
			If strPercentFrom(2) <> "" And strPercentTo(2) <> "" Then
				If strPercentFrom(2) > 0 And strPercentTo(2) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(2) & " AND ED.[RESULTPOINT] <=" & strPercentTo(2)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(2) & " AND ED.[RESULTPOINT] <=" & strPercentTo(2)
					End If
				End If			
			End If
				

		ElseIf intResult(2) = "S" AND intResult_(2) <> "S" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(2)
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
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(2) 
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
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(2)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(2)
					End If
				End If			
			End If
			If strPercentFrom_(2) <> "" And strPercentTo_(2) <> "" Then
				If strPercentFrom_(2) > 0 And strPercentTo_(2) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(2) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(2)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(2) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(2)
					End If
				End If			
			End If
				

		ElseIf intResult(2) <> "S" AND intResult_(2) <> "S" Then
			If intResult(2) <> "S" Then
				If IsWhere Then
					SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(2)
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
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(2) 
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
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(2)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(2)&")"
						End If
					End If			
				End If
				
				If strPercentFrom(2) <> "" And strPercentTo(2) <> "" Then
					If strPercentFrom(2) > 0 And strPercentTo(2) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(2) & " AND ED.[RESULTPOINT] <=" & strPercentTo(2)
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
					SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(2)
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
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(2) 
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
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(2)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(2)&"))"
						End If
					End If			
				End If
				
				If strPercentFrom_(2) <> "" And strPercentTo_(2) <> "" Then
					If strPercentFrom_(2) > 0 And strPercentTo_(2) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(2) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(2)
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
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.SUBJECT IN('" & strMajorSubject(2) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.SUBJECT IN('" & strMajorSubject(2) & "')"
			End If
		End If

		SQLWhere = SQLWhere & lastBrac

		'RESPONSE.Write("<BR>LEVEL 2:   "&SQLWhere&"<BR>")

	End If ' ***********************endIf intEducationLevel(2) <> "" Then
	
	If intEducationLevel(3) <> "S" Then
		
		If IsWhere Then
			SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(3)
			IsWhere = False
		Else
			SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(3)
		End If
		
		If strDegreeName(3) <> "S"  AND strDegreeName(3) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.DEGREENAME IN('" & strDegreeName(3) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.DEGREENAME IN('" & strDegreeName(3) &"')"
			End If
		End If
		
		If strInstituteName(3) <> "S" and strInstituteName(3) <> "" Then		
			If strExtraInstitute(3) = "" Then	
				If IsWhere Then
					SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITY IN ('" & strInstituteName(3) & "')"
					IsWhere = False
				Else
					SQLWhere = SQLWhere & " AND ED.UNIVERSITY IN ('" & strInstituteName(3) & "')"
				End If
			End If
			
			If strExtraInstitute(3) <> "" Then		
				If IsWhere Then
					SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITY IN ('" & strInstituteName(3) & "') OR ED.INSTITUTE IN ('" & strExtraInstitute(3) & "')"
					IsWhere = False
				Else
					SQLWhere = SQLWhere & " AND ED.UNIVERSITY IN ('" & strInstituteName(3) & "') OR ED.INSTITUTE IN ('" & strExtraInstitute(3) & "')"
				End If
			End If
		End If
		
		If strExtraInstitute(3) <> "" Then		
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.INSTITUTE IN ('" & strExtraInstitute(3) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.INSTITUTE IN ('" & strExtraInstitute(3) & "')"
			End If
		End If
		
		If intPassingYear(3) <> "S" AND intPassingYear(3) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.PASSINGYEAR='" & intPassingYear(3)&"'"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.PASSINGYEAR='" & intPassingYear(3)&"'"
			End If
		End If
'******************** RESULT3************************************************************************
				
		If intResult(3) <> "S" AND intResult_(3) = "S" Then			
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(3) 
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
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(3) 
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
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(3)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(3)
					End If
				End If			
			End If
			If strPercentFrom(3) <> "" And strPercentTo(3) <> "" Then
				If strPercentFrom(3) > 0 And strPercentTo(3) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(3) & " AND ED.[RESULTPOINT] <=" & strPercentTo(3)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(3) & " AND ED.[RESULTPOINT] <=" & strPercentTo(3)
					End If
				End If			
			End If
				
		ElseIf intResult(3) = "S" AND intResult_(3) <> "S" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(3)
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
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(3) 
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
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(3)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(3)
					End If
				End If			
			End If
			If strPercentFrom_(3) <> "" And strPercentTo_(3) <> "" Then
				If strPercentFrom_(3) > 0 And strPercentTo_(3) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(3) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(3)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(3) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(3)
					End If
				End If			
			End If
				

		ElseIf intResult(3) <> "S" AND intResult_(3) <> "S" Then
			If intResult(3) <> "S" Then
				If IsWhere Then
					SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(3)
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
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(3) 
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
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(3)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(3)&")"
						End If
					End If			
				End If
				
				If strPercentFrom(3) <> "" And strPercentTo(3) <> "" Then
					If strPercentFrom(3) > 0 And strPercentTo(3) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(3) & " AND ED.[RESULTPOINT] <=" & strPercentTo(3)
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
					SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(3)
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
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(3) 
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
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(3)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(3)&"))"
						End If
					End If			
				End If
				
				If strPercentFrom_(3) <> "" And strPercentTo_(3) <> "" Then
					If strPercentFrom_(3) > 0 And strPercentTo_(3) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(3) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(3)
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
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.SUBJECT IN('" & strMajorSubject(3) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.SUBJECT IN('" & strMajorSubject(3) & "')"
			End If
		End If		
		
		SQLWhere = SQLWhere & lastBrac
		'RESPONSE.Write("<BR>LEVEL 3:   "&SQLWhere&"<BR>")
	End If '************************endIf intEducationLevel(3) <> "" Then
	
	
	If intEducationLevel(4) <> "S" Then
		If IsWhere Then
			SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(4)
			IsWhere = False
		Else
			SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(4) 
		End If
		If strDegreeName(4) <> "S"  AND strDegreeName(4) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.DEGREENAME IN('" & strDegreeName(4) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.DEGREENAME IN('" & strDegreeName(4) & "')"
			End If
		End If
		
		If strInstituteName(4) <> "S" and strInstituteName(4) <> "" Then		
			If strExtraInstitute(4) = "" Then	
				If IsWhere Then
					SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITY IN ('" & strInstituteName(4) & "')"
					IsWhere = False
				Else
					SQLWhere = SQLWhere & " AND ED.UNIVERSITY IN ('" & strInstituteName(4) & "')"
				End If
			End If
			
			If strExtraInstitute(4) <> "" Then		
				If IsWhere Then
					SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITY IN ('" & strInstituteName(4) & "') OR ED.INSTITUTE IN ('" & strExtraInstitute(4) & "')"
					IsWhere = False
				Else
					SQLWhere = SQLWhere & " AND ED.UNIVERSITY IN ('" & strInstituteName(4) & "') OR ED.INSTITUTE IN ('" & strExtraInstitute(4) & "')"
				End If
			End If
		End If
		
		If strExtraInstitute(4) <> "" Then		
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.INSTITUTE IN ('" & strExtraInstitute(4) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.INSTITUTE IN ('" & strExtraInstitute(4) & "')"
			End If
		End If
		
		If intPassingYear(4) <> "S" AND intPassingYear(4) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.PASSINGYEAR='" & intPassingYear(4)&"'"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.PASSINGYEAR='" & intPassingYear(4)&"'"
			End If
		End If
'******************* RESULT4 START**************************************

		
		If intResult(4) <> "S" AND intResult_(4) = "S" Then			
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(4) 
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.[RESULT] =" & intResult(4)
			End If
		
			If strPercentFrom(4) <> "" And strPercentTo(4) = "" Then
				If strPercentFrom(4) > 0 Then
					If strPercentFrom(4) >= 60 Then
						range = 100
					elseif strPercentFrom(4) >= 45 Then
						range = 100
					else
						range = 4
					end if
					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(4) 
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(4) &" AND ED.[RESULTPOINT] <="&range
					End If
					
				End If			
			End If
			If strPercentFrom(4) = "" And strPercentTo(4) <> "" Then
				If strPercentTo(4) > 0 Then
					If strPercentTo(4) >= 60 Then
						range = 60
					elseif strPercentTo(4) >= 45 Then
						range = 45
					else
						range = 0
					end if
					
					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(4)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(4)
					End If
				End If			
			End If
			If strPercentFrom(4) <> "" And strPercentTo(4) <> "" Then
				If strPercentFrom(4) > 0 And strPercentTo(4) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(4) & " AND ED.[RESULTPOINT] <=" & strPercentTo(4)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(4) & " AND ED.[RESULTPOINT] <=" & strPercentTo(4)
					End If
				End If			
			End If
				
		ElseIf intResult(4) = "S" AND intResult_(4) <> "S" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(4)
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.[RESULT] =" & intResult_(4)
			End If
		
			If strPercentFrom_(4) <> "" And strPercentTo_(4) = "" Then
				If strPercentFrom_(4) > 0 Then
					
					If strPercentFrom_(4) >= 60 Then
						range = 100
					elseIf strPercentFrom_(4) >= 45 Then
						range = 100
					else
						range = 4
					end if

					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(4) 
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(4) &" AND ED.[RESULTPOINT] <="&range
					End If
				End If			
			End If
			If strPercentFrom_(4) = "" And strPercentTo_(4) <> "" Then
				If strPercentTo_(4) > 0 Then
					If strPercentTo_(4) >= 60 Then
						range = 60
					elseIf strPercentTo_(4) >= 45 Then
						range = 45
					else
						range = 0
					end if

					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(4)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(4)
					End If
				End If			
			End If
			If strPercentFrom_(4) <> "" And strPercentTo_(4) <> "" Then
				If strPercentFrom_(4) > 0 And strPercentTo_(4) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(4) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(4)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(4) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(4)
					End If
				End If			
			End If
				

		ElseIf intResult(4) <> "S" AND intResult_(4) <> "S" Then
			If intResult(4) <> "S" Then
				If IsWhere Then
					SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(4)
					IsWhere = False
				Else
					If strPercentFrom(4) = "" And strPercentTo(4) = "" Then
						SQLWhere = SQLWhere & " AND ((ED.[RESULT] =" & intResult(4) &")"
					Else
						SQLWhere = SQLWhere & " AND ((ED.[RESULT] =" & intResult(4) 
					End If
				End If				
				
				If strPercentFrom(4) <> "" And strPercentTo(4) = "" Then
					If strPercentFrom(4) > 0 Then
						If strPercentFrom(4) >= 60 Then
							range = 100
						elseIf strPercentFrom(4) >= 45 Then
							range = 100
						else
							range = 4
						end if
						
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(4) 
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(4) &" AND ED.[RESULTPOINT] <="&range&")"
						End If
					End If			
				End If
				
				If strPercentFrom(4) = "" And strPercentTo(4) <> "" Then
					If strPercentTo(4) > 0 Then
						If strPercentTo(4) >= 60 Then
							range = 60
						elseIf strPercentTo(4) >= 45 Then
							range = 45
						else
							range = 0
						end if
						
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(4)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(4)&")"
						End If
					End If			
				End If
				
				If strPercentFrom(4) <> "" And strPercentTo(4) <> "" Then
					If strPercentFrom(4) > 0 And strPercentTo(4) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(4) & " AND ED.[RESULTPOINT] <=" & strPercentTo(4)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(4) & " AND ED.[RESULTPOINT] <=" & strPercentTo(4) &")"
						End If
					End If			
				End If
			End If ' end if of first dropdown
			
			' second dropdown start				
			If intResult_(4) <> "S" Then
				If IsWhere Then
					SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(4)
					IsWhere = False
				Else
					If intResult_(4) <> "S" and (strPercentFrom_(4) = "" And strPercentTo_(4) = "") Then
						SQLWhere = SQLWhere & " OR (ED.[RESULT] =" & intResult_(4)&"))"
					else
						SQLWhere = SQLWhere & " OR (ED.[RESULT] =" & intResult_(4)
					end if
				End If
	
				If strPercentFrom_(4) <> "" And strPercentTo_(4) = "" Then
					If strPercentFrom_(4) > 0 Then
						
						If strPercentFrom_(4) >= 60 Then
							range = 100
						elseIf strPercentFrom_(4) >= 45 Then
							range = 100
						else
							range = 4
						end if
	
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(4) 
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(4) &" AND ED.[RESULTPOINT] <="&range&"))"
						End If
					End If			
				End If
				
				If strPercentFrom_(4) = "" And strPercentTo_(4) <> "" Then
					If strPercentTo_(4) > 0 Then
						If strPercentTo_(4) >= 60 Then
							range = 60
						elseIf strPercentTo_(4) >= 45 Then
							range = 45
						else
							range = 0
						end if
	
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(4)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(4)&"))"
						End If
					End If			
				End If
				
				If strPercentFrom_(4) <> "" And strPercentTo_(4) <> "" Then
					If strPercentFrom_(4) > 0 And strPercentTo_(4) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(4) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(4)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(4) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(4) &"))" ' ....
						End If
					End If			
				End If
			End If
				' second dropdown end************************				
		End If			
'******************RESULT4 END************************

		If strMajorSubject(4) <> "S" AND strMajorSubject(4) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC WHERE ED ED.SUBJECT IN('" & strMajorSubject(4) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.SUBJECT IN('" & strMajorSubject(4) & "')"
			End If
		End If
		
		'If IsWhere = False Then
		'Else
			SQLWhere = SQLWhere & lastBrac
		'End If
			'RESPONSE.Write("<BR>LEVEL 4:   "&SQLWhere&"<BR>")
	End If '**************** endIf intEducationLevel(4) <> "" Then

	End If	' *********** endIf strDegreeName(1) <> "S" Or strDegreeName(2) <> "S".........................
End If ' ***************************endIf intEducationLevel(1) <> "" Or intEducationLevel(2) <> "".......................

'******************* academic new end**************************************************************************************
%>