<%
'REsponse.End()
For i = 1 to 4 

   if i = 1 then 
     Level = "Secondary"
   elseif i = 2 then 
     Level = "Higher Secondary"
   elseif i = 3 then 
     Level = "Graduation"
   else
     Level = "Post Graduation"
   end if 
 
txtCGPAFrom = Trim(Request.Form("txtCGPAFrom"&i))

txtCGPATo = Trim(Request.Form("txtCGPATo"&i))

txtMarksFrom = Trim(Request.Form("txtMarksFrom"&i))

txtMarksTo = Trim(Request.Form("txtMarksTo"&i))

	If IsWhere Then
		SQLWhere = SQLWhere & " Where ED.EDULEVEL = " & i
		IsWhere = False
	Else
		SQLWhere = SQLWhere & " AND ED.EDULEVEL = " & i
	End If
		

		
			
			
			If txtCGPAFrom <> "" And txtCGPATo <> "" And txtMarksFrom <> "" And txtMarksTo <> ""  Then
				If txtCGPAFrom >= 0 And txtCGPATo >= 0 And txtMarksFrom >= 0  And txtMarksTo >= 0 Then
					If IsWhere Then
						SQLWhere = SQLWhere & " AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.[RESULTPOINT] >=" & strPercentFrom & " AND ED.[RESULTPOINT] <=" & strPercentTo
						IsWhere = False
					Else
					    
						SQLWhere = "  AND ((ED.[RESULT] = 0 AND ED.[PERCENT] >="&txtCGPAFrom&"  AND ED.[PERCENT] <="&txtCGPATo&" ) OR (ED.[RESULT] <> 0 And ED.[RESULT] <> 12 AND ED.[PERCENT] >="&txtMarksFrom&"  AND ED.[PERCENT] <="&txtMarksTo&"  )))  "
						
					End If
				End If			
			End If


next

Response.Write(SQLWhere)
'REsponse.End()

%>

