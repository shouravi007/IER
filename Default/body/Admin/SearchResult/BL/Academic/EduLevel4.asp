     
<%	
	If intEducationLevel(4) <> "" Then
		If IsWhere Then
		    If intEducationLevel(4) <> "" and intEducationLevel(5) <> "" then
				SQLWhere = SQLWhere & " WHERE ( E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(4)
				IsWhere = False
			Else 
				SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(4)
				IsWhere = False
			End IF 
		Else
		    If intEducationLevel(4) <> "" and intEducationLevel(5) <> "" then
			SQLWhere = SQLWhere & " AND ( E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(4) 
			Else		
			SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=" & intEducationLevel(4)
			End If  
		End If
		
		
		
		If strDegreeName(4) <> "S"  AND strDegreeName(4) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.DEGREENAME IN('" & strDegreeName(4) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.DEGREENAME IN('" & strDegreeName(4) & "')"
			End If
		End If
		
		If strInstituteName(4) <> "S" and strInstituteName(4) <> "" Then		
			If strExtraInstitute(4) = "" Then	
				If IsWhere Then
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITY IN ('" & Replace(strInstituteName(4),"#",",") & "')"
					IsWhere = False
				Else
					SQLWhere = SQLWhere & " AND ED.UNIVERSITY IN ('" & Replace(strInstituteName(4),"#",",")  & "')"
				End If
			End If
			
			If strExtraInstitute(4) <> "" Then		
				If IsWhere Then
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITYTYPE = '" & strExtraInstitute(4) & "')  "
					IsWhere = False
				Else
					SQLWhere = SQLWhere & " AND ED.UNIVERSITY IN ('" & Replace(strInstituteName(4),"#",",")  & "') OR ED.INSTITUTE IN ('" & strExtraInstitute(4) & "') OR ED.UNIVERSITY IN ('" & strExtraInstitute(4) & "')  "
				End If
			End If
		End If
		
		If strExtraInstitute(4) <> "" Then		
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.UNIVERSITYTYPE = '" & strExtraInstitute(4) & "')  "
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.UNIVERSITYTYPE = '" & strExtraInstitute(4) & "'  "
			End If
		End If
		
		If intPassingYear(4) <> "S" AND intPassingYear(4) <> "" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.PASSINGYEAR='" & intPassingYear(4)&"'"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.PASSINGYEAR='" & intPassingYear(4)&"'"
			End If
		End If
'******************* RESULT4 START**************************************

		
		If intResult(4) <> "S" AND intResult_(4) = "S" Then			
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(4) 
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
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(4) 
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
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(4)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(4)
					End If
				End If			
			End If
			If strPercentFrom(4) <> "" And strPercentTo(4) <> "" Then
				If strPercentFrom(4) > 0 And strPercentTo(4) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(4) & " AND ED.[RESULTPOINT] <=" & strPercentTo(4)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom(4) & " AND ED.[RESULTPOINT] <=" & strPercentTo(4)
					End If
				End If			
			End If
				
		ElseIf intResult(4) = "S" AND intResult_(4) <> "S" Then
			If IsWhere Then
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(4)
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
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(4) 
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
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(4)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(4)
					End If
				End If			
			End If
			If strPercentFrom_(4) <> "" And strPercentTo_(4) <> "" Then
				If strPercentFrom_(4) > 0 And strPercentTo_(4) > 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(4) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(4)
						IsWhere = False
					Else
						SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >=" & strPercentFrom_(4) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(4)
					End If
				End If			
			End If
				

		ElseIf intResult(4) <> "S" AND intResult_(4) <> "S" Then
			If intResult(4) <> "S" Then
				If IsWhere Then
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult(4)
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
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(4) 
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
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo(4)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo(4)&")"
						End If
					End If			
				End If
				
				If strPercentFrom(4) <> "" And strPercentTo(4) <> "" Then
					If strPercentFrom(4) > 0 And strPercentTo(4) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom(4) & " AND ED.[RESULTPOINT] <=" & strPercentTo(4)
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
					SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULT] =" & intResult_(4)
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
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(4) 
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
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] <=" & strPercentTo_(4)
							IsWhere = False
						Else
							SQLWhere = SQLWhere & " AND ED.[RESULTPOINT] >="&range&" AND ED.[RESULTPOINT] <=" & strPercentTo_(4)&"))"
						End If
					End If			
				End If
				
				If strPercentFrom_(4) <> "" And strPercentTo_(4) <> "" Then
					If strPercentFrom_(4) > 0 And strPercentTo_(4) > 0 Then
						If IsWhere Then
							SQLWhere = SQLWhere & " WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom_(4) & " AND ED.[RESULTPOINT] <=" & strPercentTo_(4)
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
				SQLWhere = SQLWhere & "  WHERE  E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC WHERE ED ED.SUBJECT IN('" & strMajorSubject(4) & "')"
				IsWhere = False
			Else
				SQLWhere = SQLWhere & " AND ED.SUBJECT IN('" & strMajorSubject(4) & "')"
			End If
		End If
		
	
			SQLWhere = SQLWhere & lastBrac

		'RESPONSE.Write("<BR>LEVEL 4:   "&SQLWhere&"<BR>")

	End If ' ***********************endIf intEducationLevel(4) <> "" Then
	
%>