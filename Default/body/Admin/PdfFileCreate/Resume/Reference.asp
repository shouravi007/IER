<%
		SQLRef = "SELECT Id, Name, Position, Address, Phone, Email FROM Reference WHERE PersonalId="&qID(i)&" Order By PERSONALID"
	
		'RESPONSE.Write(SQLRef)		
		arr_Ref = objERS.RetrieveData(SQLRef, errMsg)
		ErrorMessage "34", errMsg, 0
		
		intUBRef = UBound(arr_Ref, 2) 
		
		If arr_Ref(0, 0) <> "Nothing" Then
		
			strResume = strResume&"<table width='100%' border='0' align='center' cellpadding='0' cellspacing='0' style='font-family:Arial; font-size:12px;'>  <tr>    <td><div style='font-family:Arial; font-size:16px; font-weight:bold; color:#000000; font-style:italic; background-color:#CCCCCC; width:400px;' align='left'><u>REFEREE INFORMATION</u></div></td>  </tr></table><table width='100%' border='0' cellspacing='0' cellpadding='0' align='center'>  <tr>    <td height='92' valign='top'><table width='100%' border='0' cellspacing='0' cellpadding='0' align='center' style='font-family:Arial; font-size:12px;'> <tr> <td width='50%'><br>"
			
			for refCounter = 0 to intUBRef
			
			'RESPONSE.Write("REF NAME:"&arr_Ref(1,refCounter)&"<BR>")	
				
				If arr_Ref(1,refCounter)<> "" And Not IsNull(arr_Ref(1,refCounter))  Then
					strResume = strResume & Replace(arr_Ref(1,refCounter),"?","")
				'	RESPONSE.Write(strResume)
				End If
				strResume = strResume &"</td>        </tr>      <tr>        <td width='50%'>"
				If arr_Ref(2,refCounter)<>"" And Not IsNull(arr_Ref(2,refCounter)) Then
					strResume = strResume &arr_Ref(2,refCounter)
				End If
				strResume = strResume &"</td>        </tr>      <tr>        <td width='50%'>"
				If arr_Ref(3,refCounter)<>"" And Not IsNull(arr_Ref(3,refCounter)) Then
					strResume = strResume &arr_Ref(3,refCounter)
				End If
				strResume = strResume &"</td>        </tr>      <tr>        <td width='50%'>"
				If arr_Ref(4,refCounter)<>"" And Not IsNull(arr_Ref(4,refCounter)) Then
					strResume = strResume &"Phone: "&arr_Ref(4,refCounter)
				End If
				strResume = strResume &"</td>        </tr>      <tr>        <td width='50%'>"
				If arr_Ref(5,refCounter)<>"" And Not IsNull(arr_Ref(5,refCounter)) Then
					strResume = strResume &"E-mail: "&arr_Ref(5,refCounter)&"<br><br>"
				End If
			next
			strResume = strResume &"   </table>    </div></td>  </tr>  <tr>    <td>    </td>  </tr></table>"
			strResume = strResume &"<br /><br />"
	end if

%>