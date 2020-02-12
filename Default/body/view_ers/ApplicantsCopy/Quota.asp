<%strBody = strBody &"<table width='100%' border='1' cellspacing='0' cellpadding='0' ><tr><td width='15%'><strong>Fredom Fighter Status</strong></td><td width='35%'>"&FF&"</td><td width='15%'><strong>Marital Status</strong></td><td width='35%'>"&strMeritalStatus

If strGender = "Female" and strMeritalStatus = "Married" Then 
strBody = strBody &"-Spouse Name : "&strHusband
End If 
strBody = strBody &"</td></tr><tr><td>Orphan</td><td>"&Orphan&"</td><td>Physically Challenged</td><td>"&Disable&"</td></tr><tr><td>Tribal</td><td>"&Tribal&"</td><td>Ansar-VDP</td><td>"&AnsarVdp&"</td></tr><tr><td>National ID</td><td>"&intNationalID&"</td><td>Home District</td><td>"&strHomeDist&"</td></tr></table>"%>
