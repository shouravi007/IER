
<%	
	
	If intEducationLevel(5) <> "" Then
		If IsWhere Then
			SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(5)
			IsWhere = False
		Else
			SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(5) 
		End If
		If strDegreeName(5) <> "S"  AND strDegreeName(5) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.DEGREENAME IN('" & strDegreeName(5) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.DEGREENAME IN('" & strDegreeName(5) & "')"
			End If
		End If
		
		If strInstituteName(5) <> "S" and strInstituteName(5) <> "" Then		
			If strExtraInstitute(5) = "" Then	
				If IsWhere Then
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITY IN ('" & Replace(strInstituteName(5),"#",",") & "')"
					IsWhere = False
				Else
					SQLWhere = SQLWhere & " AND ED.UNIVERSITY IN ('" & Replace(strInstituteName(5),"#",",")  & "')"
				End If
			End If
			
			If strExtraInstitute(5) <> "" Then		
				If IsWhere Then
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITY IN ('" & Replace(strInstituteName(5),"#",",")  & "') OR ED.INSTITUTE IN ('" & strExtraInstitute(5) & "') OR ED.UNIVERSITY IN ('" & strExtraInstitute(5) & "')  "
					IsWhere = False
				Else
					SQLWhere = SQLWhere & " AND ED.UNIVERSITY IN ('" & Replace(strInstituteName(5),"#",",")  & "') OR ED.INSTITUTE IN ('" & strExtraInstitute(5) & "') OR ED.UNIVERSITY IN ('" & strExtraInstitute(5) & "')  "
				End If
			End If
		End If
		
		If strExtraInstitute(5) <> "" Then		
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  ED.UNIVERSITYTYPE = '" & strExtraInstitute(5) & "'  "
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.UNIVERSITYTYPE = '" & strExtraInstitute(5) & "' "
			End If
		End If
		
		If intPassingYear(5) <> "S" AND intPassingYear(5) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.PASSINGYEAR='" & intPassingYear(5)&"'"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.PASSINGYEAR='" & intPassingYear(5)&"'"
			End If
		End If
'******************* RESULT5 START**************************************

		
		If intResult(5) <> "S" AND intResult_(5) = "S" Then			
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(5) 
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.[RESULT] =" & intResult(5)
			End If
		
			If strPercentFrom(5) <> "" And strPercentTo(5) = "" Then
				If strPercentFrom(5) > 0 Then
					If strPercentFrom(5) >= 60 Then
						range = 100
					elseif strPercentFrom(5) >= 45 Then
						range = 100
					else
						range = 4
					end if
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(5) 
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(5) &" AND ED.[RESULTPOINT] <="&range
					End If
					
				End If			
			End If
			If strPercentFrom(5) = "" And strPercentTo(5) <> "" Then
				If strPercentTo(5) > 0 Then
					If strPercentTo(5) >= 60 Then
						range = 60
					elseif strPercentTo(5) >= 45 Then
						range = 45
					else
						range = 0
					end if
					
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(5)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(5)
					End If
				End If			
			End If
			If strPercentFrom(5) <> "" And strPercentTo(5) <> "" Then
				If strPercentFrom(5) > 0 And strPercentTo(5) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(5) & " AND ED.[RESULTPOINT] <=" & strPercentTo(5)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(5) & " AND ED.[RESULTPOINT] <=" & strPercentTo(5)
					End If
				End If			
			End If
				
		ElseIf intResult(5) = "S" AND intResult_(5) <> "S" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(5)
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.[RESULT] =" & intResult_(5)
			End If
		
			If strPercentFrom_(5) <> "" And strPercentTo_(5) = "" Then
				If strPercentFrom_(5) > 0 Then
					
					If strPercentFrom_(5) >= 60 Then
						range = 100
					elseIf strPercentFrom_(5) >= 45 Then
						range = 100
					else
						range = 4
					end if

					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(5) 
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(5) &" AND ED.[RESULTPOINT] <="&range
					End If
				End If			
			End If
			If strPercentFrom_(5) = "" And strPercentTo_(5) <> "" Then
				If strPercentTo_(5) > 0 Then
					If strPercentTo_(5) >= 60 Then
						range = 60
					elseIf strPercentTo_(5) >= 45 Then
						range = 45
					else
						range = 0
					end if

					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(5)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(5)
					End If
				End If			
			End If
			If strPercentFrom_(5) <> "" And strPercentTo_(5) <> "" Then
				If strPercentFrom_(5) > 0 And strPercentTo_(5) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(5) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(5)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(5) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(5)
					End If
				End If			
			End If
				

		ElseIf intResult(5) <> "S" AND intResult_(5) <> "S" Then
			If intResult(5) <> "S" Then
				If IsWhere Then
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(5)
					IsWhere = False
				Else
					If strPercentFrom(5) = "" And strPercentTo(5) = "" Then
						SQLWhere = SQLWhere & " AND ((ED.[RESULT] =" & intResult(5) &")"
					Else
						SQLWhere = SQLWhere & " AND ((ED.[RESULT] =" & intResult(5) 
					End If
				End If				
				
				If strPercentFrom(5) <> "" And strPercentTo(5) = "" Then
					If strPercentFrom(5) > 0 Then
						If strPercentFrom(5) >= 60 Then
							range = 100
						elseIf strPercentFrom(5) >= 45 Then
							range = 100
						else
							range = 4
						end if
						
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(5) 
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(5) &" AND ED.[RESULTPOINT] <="&range&")"
						End If
					End If			
				End If
				
				If strPercentFrom(5) = "" And strPercentTo(5) <> "" Then
					If strPercentTo(5) > 0 Then
						If strPercentTo(5) >= 60 Then
							range = 60
						elseIf strPercentTo(5) >= 45 Then
							range = 45
						else
							range = 0
						end if
						
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(5)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(5)&")"
						End If
					End If			
				End If
				
				If strPercentFrom(5) <> "" And strPercentTo(5) <> "" Then
					If strPercentFrom(5) > 0 And strPercentTo(5) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(5) & " AND ED.[RESULTPOINT] <=" & strPercentTo(5)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(5) & " AND ED.[RESULTPOINT] <=" & strPercentTo(5) &")"
						End If
					End If			
				End If
			End If ' end if of first dropdown
			
			' second dropdown start				
			If intResult_(5) <> "S" Then
				If IsWhere Then
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(5)
					IsWhere = False
				Else
					If intResult_(5) <> "S" and (strPercentFrom_(5) = "" And strPercentTo_(5) = "") Then
						SQLWhere = SQLWhere & " OR (ED.[RESULT] =" & intResult_(5)&"))"
					else
						SQLWhere = SQLWhere & " OR (ED.[RESULT] =" & intResult_(5)
					end if
				End If
	
				If strPercentFrom_(5) <> "" And strPercentTo_(5) = "" Then
					If strPercentFrom_(5) > 0 Then
						
						If strPercentFrom_(5) >= 60 Then
							range = 100
						elseIf strPercentFrom_(5) >= 45 Then
							range = 100
						else
							range = 4
						end if
	
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(5) 
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(5) &" AND ED.[RESULTPOINT] <="&range&"))"
						End If
					End If			
				End If
				
				If strPercentFrom_(5) = "" And strPercentTo_(5) <> "" Then
					If strPercentTo_(5) > 0 Then
						If strPercentTo_(5) >= 60 Then
							range = 60
						elseIf strPercentTo_(5) >= 45 Then
							range = 45
						else
							range = 0
						end if
	
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(5)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(5)&"))"
						End If
					End If			
				End If
				
				If strPercentFrom_(5) <> "" And strPercentTo_(5) <> "" Then
					If strPercentFrom_(5) > 0 And strPercentTo_(5) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(5) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(5)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(5) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(5) &"))" ' ....
						End If
					End If			
				End If
			End If
				' second dropdown end************************				
		End If			
'******************RESULT4 END************************

		If strMajorSubject(5) <> "S" AND strMajorSubject(5) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC WHERE ED ED.SUBJECT IN('" & strMajorSubject(5) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.SUBJECT IN('" & strMajorSubject(5) & "')"
			End If
		End If	
	
	
		'If IsWhere = False Then
		'Else
			SQLWhere = SQLWhere & lastBrac
		'End If
			'RESPONSE.Write("<BR>LEVEL 5:   "&SQLWhere&"<BR>")
	End If '**************** endIf intEducationLevel(5) <> "" Then

%>
