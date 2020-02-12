<%

      If isnull(arrPersonal(22,0)) or isempty(arrPersonal(22,0)) then 
	  
	  else
		If arrPersonal(22,0) <> "" Then
			
			strResume = strResume &"<table width='100%' border='0' align='center' cellpadding='0' cellspacing='0' style='font-family:Arial; font-size:12px;'>  <tr>    <td><div style='font-family:Arial; font-size:16px; font-weight:bold; color:#000000; font-style:italic; background-color:#CCCCCC; width:400px;' align='left'><u>EMPLOYMENT HISTORY</u></div></td>  </tr></table><table width='100%' border='0' cellspacing='0' cellpadding='0' align='center' style='font-family:Arial; font-size:12px;'>  <tr> <td colspan='4' height='2'><div align='left'><font face='Verdana' size='2'><font color='#FFFFFF'> </font></font> <table width='100%' border='0' cellpadding='0' cellspacing='0' align='center' style='font-family:Arial; font-size:12px;'>"

			strResume = strResume &"<tr> <td width='100%' align='left' valign='top'><br>"&arrPersonal(22,0)&" </td>  </tr> </table>"
			
			strResume = strResume &"<br /><br />"
		
		end if	
	end if
	

		
		if err.number <> 0 then 
	      sendmail "pcb<pcb@bdjobs.com>", "mahbub@bdjobs.com", "error-resume-downlaod-"&now, err.description, "", "", "pcb<primebank@bdjobs.com>"  
		  err.clear 
		end if 
		
		If arrPersonal(33,0) <> "" and isnull(arrPersonal(33,0)) = False and isempty(arrPersonal(33,0)) = False   Then
		
			strResume = strResume &"<table width='100%' border='0' align='center' cellpadding='0' cellspacing='0' style='font-family:Arial; font-size:12px;'>  <tr>    <td><div style='font-family:Arial; font-size:16px; font-weight:bold; color:#000000; font-style:italic; background-color:#CCCCCC; width:400px;' align='left'><u>PROFESSIONAL CERTIFICATION</u></div></td>  </tr></table><table width='100%' border='0' cellspacing='0' cellpadding='0' align='center' style='font-family:Arial; font-size:12px;'>  <tr>    <td colspan='4' height='2'><div align='left'><font face='Verdana' size='2'><font color='#FFFFFF'> </font></font>  <table width='100%' border='0' cellpadding='0' cellspacing='0' align='center' style='font-family:Arial; font-size:12px;'>"
			
			strProCert = ""
			if arrPersonal(33,0) = 0 or isnull(arrPersonal(33,0)) or isempty(arrPersonal(33,0)) then 
			 strProCert = "No Certification"
			else
			strProCert = Replace(arrPersonal(33,0),"@@@",", ") 
			end if 
			
			strResume = strResume &"<tr> <td width='100%' colspan='5'><br><b><u>Professional Certification:</u></b><br>"&strProCert&" </td></tr><br>"
			
			strResume = strResume &" </table> </div></td> </tr> <tr> <td></td> </tr></table>"
			strResume = strResume &"<br /><br />"	
		End If
		
		if arrPersonal(23,0) <> "" or arrPersonal(24,0) <> "" or arrPersonal(25,0) <> "" or arrPersonal(26,0) <> "" Then
				
			strResume = strResume &"<table width='100%' border='0' align='center' cellpadding='0' cellspacing='0' style='font-family:Arial; font-size:12px;'>  <tr>    <td><div style='font-family:Arial; font-size:16px; font-weight:bold; color:#000000; font-style:italic; background-color:#CCCCCC; width:400px;' align='left'><u>OTHER INFORMATION</u></div></td>  </tr></table><table width='100%' border='0' cellspacing='0' cellpadding='0' align='center' style='font-family:Arial; font-size:12px;'>  <tr>    <td colspan='4' height='2'><div align='left'><font face='Verdana' size='2'><font color='#FFFFFF'> </font></font>  <table width='100%' border='0' cellpadding='0' cellspacing='0' align='center' style='font-family:Arial; font-size:12px;'>"
		
		if arrPersonal(23,0) <> "" Then

			strResume = strResume &"<tr> <td width='100%' colspan='5'><br><b><u>Professional Qualification:</u></b><br>"&arrPersonal(23,0)&" </td></tr><br>"
			
		end if
		If arrPersonal(24,0) <> "" Then
			
			strResume = strResume &"<tr> <td width='100%' colspan='5'><br><b><u>Academic Distinctions:</u></b> <br>"&Replace(trim(arrPersonal(24,0)), Chr(63), Chr(32))&" </td></tr>"
		End If	
			
		If arrPersonal(25,0) <> "" Then
			
			strResume = strResume &"<tr> <td width='100%' colspan='5'><br><b><u>Extra Curricular Activities:</u></b> <br>"&Replace(trim(arrPersonal(25,0)), Chr(63), Chr(32))&" </td></tr>"
		End If
		
		If arrPersonal(26,0) <> "" Then
			'response.Write(arrPersonal(24,0))
			strResume = strResume &"<tr>  <td width='100%' colspan='5'><br><b><u>Computer Skills: </u></b><br>"&Replace(trim(arrPersonal(26,0)), Chr(63), Chr(32))	&" </td></tr>"
		End If
		
		If arrPersonal(27,0) <> "" Then
		'strString = Replace(arrPersonal(25,0), Chr(63), Chr(32))		
			strResume = strResume &"<tr> <td width='100%' colspan='5'><br><b><u>Discloser: </u></b><br>"&Replace(trim(arrPersonal(27,0)), Chr(63), Chr(32))	&" </td></tr>"
		end if
			
			strResume = strResume &" </table> </div></td> </tr> <tr> <td></td> </tr></table>"
			strResume = strResume &"<br /><br />"		

	End If
	
	If arrPersonal(19,0) <> "" or arrPersonal(20,0) <> "" or arrPersonal(21,0) <> "" Then
	
			strResume = strResume &"<table width='100%' border='0' align='center' cellpadding='0' cellspacing='0' style='font-family:Arial; font-size:12px;'>  <tr>    <td><div style='font-family:Arial; font-size:16px; font-weight:bold; color:#000000; font-style:italic; background-color:#CCCCCC; width:400px;' align='left'><u>ENGLISH LANGUAGE PROFICIENCY</u></div></td>  </tr></table><table width='100%' border='0' cellspacing='0' cellpadding='0' align='center' style='font-family:Arial; font-size:12px;'>  <tr>    <td colspan='4' height='2'><div align='left'><font face='Verdana' size='2'><font color='#FFFFFF'> </font></font> <table width='100%' border='0' cellpadding='0' cellspacing='0' align='center' style='font-family:Arial; font-size:12px;'>"
		
		
			strResume = strResume &"<tr>  <td width='100%' colspan='5'><br>Reading: "&arrPersonal(19,0)&"&nbsp;&nbsp;Writing:"&arrPersonal(20,0)&" &nbsp;&nbsp;Speaking: "&arrPersonal(21,0)&"</td> </tr>"
		
			strResume = strResume &"  </table> </div></td>  </tr>  <tr> <td> </td> </tr></table>"
			strResume = strResume &"<br /><br />"	
	End If
	
	
		if err.number <> 0 then 
	      sendmail "primebank<primebank@bdjobs.com>", "shouravi@bdjobs.com", "error-resume-downlaod-"&now, err.description, "", "", "Prime Bank <primebank@bdjobs.com>"  
		  err.clear 
		end if 	
		
%>
