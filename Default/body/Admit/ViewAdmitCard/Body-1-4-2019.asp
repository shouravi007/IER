<%
	strBody1 = strBody1 &"<table width='92%' align='center' style='padding-left:15px;'>"
	strBody1 = strBody1 &"<tr><td valign='top' align='right'><br><br>"
	strBody1 = strBody1 &"<table width='100%'>"
	strBody1 = strBody1 &"<tr><td align='right' valign='top' width='100%'>"
	strBody1 = strBody1 &"<img src='http://ers.bdjobs.com/applications/common/images/DHAKABANK-HRD1.jpg' width='230' height='70'/>"
	strBody1 = strBody1 &"</td></tr></table></td></tr>"
	strBody1 = strBody1 &"<tr><td colspan='2' align='center' style='font-size:18px;font-family:Arial, Helvetica, sans-serif; font-weight:bold; width:100%;'>"
	strBody1 = strBody1 &"<u>Admit Card</u>"
	strBody1 = strBody1 &"</td></tr><tr><td><br>"
	strBody1 = strBody1 &"<table width='100%' border='0'><tr><td width='93%' style='font-family:Arial, Helvetica, sans-serif;font-size:14px;'>"
	strBody1 = strBody1 &"<p style='font-family:Arial, Helvetica, sans-serif;font-size:14px;'><strong>"& strRef &"</strong><br/><br/></p> "
	strBody1 = strBody1 &" <p style='font-family:Arial, Helvetica, sans-serif;font-size:14px;'>"& strDate &"<br /> <br/> <br/>"
	strBody1 = strBody1 &"<strong style='font-family:Arial, Helvetica, sans-serif;font-size:14px;'>ROLL NO: <u>"& intRoll &"</u></strong></p>"
	strBody1 = strBody1 &" <br/> <p style='font-family:Arial, Helvetica, sans-serif;font-size:14px;'><strong>"& strGenderName & " " & strName &"</strong><br /> So/Do. Mr. "&strFatherName&" &  Ms. "&strMotherName&"<br>" & strContactAddress & "</p></td>"
	strBody1 = strBody1 &"  <td width='7%' valign='top' style='font-family:Arial, Helvetica, sans-serif;font-size:14px;'><div align='right'>"&varImg&"</div></td>  </tr></table>"
	strBody1 = strBody1 &"<strong style='font-family:Arial, Helvetica, sans-serif;font-size:14px;'><br>Sub: " & strSubject & "</strong><br><br>"
	strBody1 = strBody1 &"<p style='font-family:Arial, Helvetica, sans-serif;font-size:14px;text-align: justify;'><strong><br>Dear Sir/Madam,</strong>"
	
	
	strBody1 = strBody1 &"<br><br>With reference to your application for the position of  "&strJobPosition&",&nbsp;&nbsp;you  are  advised  to appear for  a  written test to be held on <strong>" & strExamDate & "</strong> at  " & strExamTime & " at the  <strong>" & strCenter & "</strong></p><br />"
	
	'strBody1 = strBody1 &"<p style='font-family:Arial, Helvetica, sans-serif;font-size:14px;'>The examination will be comprised of English Language  &amp; Communication, Mathematics &amp; Analytical Ability, and General  Knowledge.</p>"
	strBody1 = strBody1 &"<br /><p style='font-family:Arial, Helvetica, sans-serif; font-size:14px;'><strong>Please  note the  following:</strong></p>"
	strBody1 = strBody1 &"<p>&nbsp;</p><div style='font-size:14px;font-family:Arial, Helvetica, sans-serif;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;<strong>You must report to the center by 09:30 a.m.</strong>&nbsp; along&nbsp; with this Admit Card&nbsp; for showing it to the<br />"
	strBody1 = strBody1 &"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;invigilators on duty.<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
	strBody1 = strBody1 &"2.&nbsp;You must bring two black ballpoint pens.<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
	strBody1 = strBody1 &"3.&nbsp;You will not be allowed to use pencil, calculator, mobile phone and any electronic devices in the &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;the&nbsp;examination hall.<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
	strBody1 = strBody1 &"4.&nbsp;You will not be entitled to any travel or daily allowance for attending the aforesaid test.</div>"
	strBody1 = strBody1 &"<p style='font-family:Arial, Helvetica, sans-serif;font-size:14px;'><br/>We wish you success.</p>"
	strBody1 = strBody1 &"<p style='font-family:Arial, Helvetica, sans-serif;font-size:14px;'><br/>Sincerely,</p>"
	strBody1 = strBody1 &"<p style='font-family:Arial, Helvetica, sans-serif;font-size:14px;'><br/>"
	strBody1 = strBody1 &"<img src='http://ers.bdjobs.com/applications/common/images/dhakabank/svp.jpg' height='50' width='88'/>"
	strBody1 = strBody1 &" <br><strong>Authorized Signature</strong>"
	strBody1 = strBody1 &"<br />Human Resources Division</p>" & strNB & "</td></tr>"
	strBody1 = strBody1 &"<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>"
	strBody1 = strBody1 &"<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>"
	strBody1 = strBody1 &"<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>"
	strBody1 = strBody1 &"<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>"
	strBody1 = strBody1 &"<tr><td>&nbsp;</td></tr>"
	strBody1 = strBody1 &"<tr><td style='font-size:12px; font-family:Arial, Helvetica, sans-serif; font-stretch:extra-expanded;' align='center'>CORPORATE OFFICE: 71, PURANA PALTAN LANE, DHAKA 1000, BANGLADESH<br>TEL: +880 2 58314424-30, FAX: +880 2 58314419, SWIFT:DHBLBDDH, Email: <u>hr@dhakabank.com.bd</u></td></tr></table><br>"		

%>