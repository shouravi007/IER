


<%

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

%>
