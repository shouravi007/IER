<%
			
			strResume="<table width='100%' border='0' align='center' cellpadding='2' cellspacing='0'><tr><td width='100%' style='font-family:Arial;'><img align='right' src='"&srcImg&"' alt='' name='imgPhoto' width='122' height='122' id='imgPhoto' border='1'/><Font size='2'><strong>Tracking No: "&intTrackingNumber&"</Font><br>Name: "&arrPersonal(1,0)&"</td> </tr>"		
		
			strResume = strResume & "<tr><td style='font-family:Arial, Helvetica, sans-serif; font-size:12px;'><strong><em><br/>Applied for:</em></strong><br/><font color='#0000CC'>Management Trainee Officer</font></td></tr>"	
		
		strResume = strResume &"</table><br /><table width='100%' border='0' align='center' cellpadding='0' cellspacing='0'>  <tr>    <td><div style='font-family:Arial; font-size:16px; font-weight:bold; color:#000000; font-style:italic; background-color:#CCCCCC; width:400px;' align='left'><u>PERSONAL INFORMATION</u></div></td>  </tr></table><table width='100%' border='0' align='center' cellpadding='0' cellspacing='0' style='font-family:Arial; font-size:12px;'><tr>  <td width='22%' align='right'><div align=left>"
		
		strResume = strResume &" Name </div></td><td width='1%'>:</td><td width='77%'>"&arrPersonal(1,0)&"</td> </tr><tr>  <td align='left'>Father's Name</td>        <td>:</td>        <td>"&arrPersonal(2,0)&" </tr> <tr>  <td align='left'>Father's Profession</td>        <td>:</td>        <td>"&arrPersonal(31,0)&" </tr><tr>  <td align='left'>Mother's Name</td>        <td>:</td>        <td>"&arrPersonal(3,0)&" </tr> <tr>  <td align='left'>Mother's Profession</td>        <td>:</td>        <td>"&arrPersonal(32,0)&" </tr><tr>  <td align='left'>Date of Birth</td>        <td>:</td>        <td>"
			
			If len(day(arrPersonal(4,0))) = 1 Then
				fdZero = "0"
			Else
				fdZero = ""
			End If
			
			If len(month(arrPersonal(4,0))) = 1 Then
				fmZero = "0"
			Else
				fmZero = ""
			End If
			
			'If IsDate(arrPersonal(4,0)) Then
				'bDate=FormatDateTime(arrPersonal(4,0),vbShortDate)
			'Else
			bDate= fdZero & day(arrPersonal(4,0)) & "-" &fmZero& month(arrPersonal(4,0))& "-" & year(arrPersonal(4,0))
			'End If
			
			strResume=strResume & bDate &"</td>      </tr>      <tr>        <td align='left'>Gender </td>        <td>:</td>        <td>"
			
			varMaritalStatus = arrPersonal(5,0)
						
			varG = arrPersonal(12,0)

			If arrPersonal(8,0) <> "" Then
				strContact = arrPersonal(8,0)
			End If
			
			If arrPersonal(9,0)<>"" Then
				strContact = arrPersonal(9,0)
			End If
			
			If arrPersonal(8,0)<>"" and arrPersonal(9,0)<>""  Then
				strContact = arrPersonal(8,0)&","&arrPersonal(9,0)
			End If

			strResume = strResume & varG & "</td> </tr> <tr> <td align='left'>Marital Status</td><td>:</td><td>"&varMaritalStatus&"</td> </tr><tr> <td align='left'>Religion</td><td>:</td><td>"&arrPersonal(15,0)&"</td> </tr>"
			
			strResume = strResume & " <tr> <td align='right' valign='top'><div align='left'>Nationality</div></td> <td>:</td>  <td>"&arrPersonal(6,0)&"</td> </tr>"
			
		If arrPersonal(10,0) <> "" Then	
			strResume = strResume & " <tr> <td align='right' valign='top'><div align='left'>National Id</div></td> <td>:</td>  <td>"&arrPersonal(10,0)&"</td> </tr>"
		End If
			
			strResume = strResume &  "<tr>  <td width='22%' align='right'><div align='left'>Email</div></td> <td width='1%'>:</td> <td>"&arrPersonal(7,0)&"</td> </tr>  <tr>  <td width='22%' align='right'><div align='left'>Contact Mobile</div></td>  <td width='1%'>:</td> <td>"&strContact&"</td></tr>"
			
		If arrPersonal(11,0) <> "S" Then	
			strResume = strResume &  " <tr>  <td width='22%' align='right'><div align='left'>Blood Group</div></td>        <td width='1%'>:</td>     <td>"&arrPersonal(11,0)&"</td> </tr>"
		End If

%>