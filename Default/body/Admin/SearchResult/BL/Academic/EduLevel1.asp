<%	If intEducationLevel(1) <> "" Then '*************** LEVEL 1************************
		
		If IsWhere Then
		    If intEducationLevel(4) <> "" and intEducationLevel(5) <> "" then
				SQLWhere = SQLWhere & " WHERE ( E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(1)
				IsWhere = False
			Else 		
		
			SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(1)
			IsWhere = False
			
			End If 
			
		Else								
			SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(1) 
		End If
		
		If strDegreeName(1) <> "S"  AND strDegreeName(1) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.DEGREENAME IN('" & strDegreeName(1) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.DEGREENAME IN('" & strDegreeName(1) & "')"
			End If
		End If
		
		'response.Write("<br>"&strInstituteName(1)&"<BR>")
		If strInstituteName(1) <> "S" and strInstituteName(1) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITY IN ('" & strInstituteName(1) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.UNIVERSITY IN ('" & strInstituteName(1) & "')"
			End If
		End If
				
		If intPassingYear(1) <> "S" AND intPassingYear(1) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN ( Select ED.PERSONALID from ACADEMIC ED WHERE ED.PASSINGYEAR='" & intPassingYear(1)&"'"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.PASSINGYEAR='" & intPassingYear(1)&"'"
			End If
		End If
'******************************RESULT *************************************************************************************************
	
	     'response.Write("<br>"&intResult(1)&"<BR>")
	    ' response.Write("<br>"&strPercentFrom(1)&"<BR>")
	     'response.Write("<br>"&strPercentTo(1)&"<BR>")
		 

		If intResult(1) <> "S" AND intResult_(1) = "S" Then			
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(1) 
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
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(1) 
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
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(1)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(1)
					End If
				End If			
			End If
			If strPercentFrom(1) <> "" And strPercentTo(1) <> "" Then
				If strPercentFrom(1) > 0 And strPercentTo(1) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(1) & " AND ED.[RESULTPOINT] <=" & strPercentTo(1)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(1) & " AND ED.[RESULTPOINT] <=" & strPercentTo(1)
					End If
				End If			
			End If
				
		ElseIf intResult(1) = "S" AND intResult_(1) <> "S" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(1)
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
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(1) 
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
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(1)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(1)
					End If
				End If			
			End If
			If strPercentFrom_(1) <> "" And strPercentTo_(1) <> "" Then
				If strPercentFrom_(1) > 0 And strPercentTo_(1) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(1) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(1)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(1) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(1)
					End If
				End If			
			End If
				
		ElseIf intResult(1) <> "S" AND intResult_(1) <> "S" Then
			If intResult(1) <> "S" Then
				If IsWhere Then
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(1)
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
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(1) 
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
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(1)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(1)&")"
						End If
					End If			
				End If
				
				If strPercentFrom(1) <> "" And strPercentTo(1) <> "" Then
					If strPercentFrom(1) > 0 And strPercentTo(1) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(1) & " AND ED.[RESULTPOINT] <=" & strPercentTo(1)
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
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(1)
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
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(1) 
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
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(1)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(1)&"))"
						End If
					End If			
				End If
				
				If strPercentFrom_(1) <> "" And strPercentTo_(1) <> "" Then
					If strPercentFrom_(1) > 0 And strPercentTo_(1) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(1) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(1)
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
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.SUBJECT IN('" & strMajorSubject(1) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.SUBJECT IN('" & strMajorSubject(1) & "')"
			End If
		End If
		
		SQLWhere = SQLWhere & lastBrac
		'RESPONSE.Write("<BR>LEVEL 1:   "&SQLWhere&"<BR>")
	End If ' ******************** endIf intEducationLevel(1) <> "" Then
%>