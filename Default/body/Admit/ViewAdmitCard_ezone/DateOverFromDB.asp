<%
'If strLocation = "Admin" or Request.Form("admin") = "true" or strLocation = "Admit" Then 

'If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or  InStr(Request.ServerVariables("HTTP_REFERER"), "serverbdj") > 0  Or InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0   Then 

'Else

    sql = "" 
	sql = "select top 1 jobid,admitopen,admitclose from JobPosting order by jobid desc "
    
	'sql = "select deadline from jobposting order by jobid=1"
	
	arrTop1DeadLine = objERS.RetrieveData(sql, errMsg) 
	
	if arrTop1DeadLine(0, 0) <> "Nothing" then 
	  if isdate(arrTop1DeadLine(0, 0)) then 
	   yy = year(arrTop1DeadLine(0, 0))
	   mm = month(arrTop1DeadLine(0, 0))
	   dd = day(arrTop1DeadLine(0, 0)) 
	   strDeadLine = dd &"-" & mm &"-" & yy
	   if dd = 1 then
	    dd2 = dd 
	   else
	    dd2 = dd - 1 
	   end if
	   
	   deadline2 = yy & "-" & mm & "-" & dd2 & " 17:59:00.000"
	   
		If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Then
			response.Write(deadline2)
		End If
	  
	   sql = "select jobid,admitopen,admitclose from JobPosting where admitclose >= '"&deadline2&"'"
		
		If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Then
			response.Write(deadline2)
		End If
			  
	  else
	   sql = "select top 1 jobid,admitopen,admitclose from JobPosting order by jobid desc "
	  end if 
	else 
	   sql = "select top 1 jobid,admitopen,admitclose from JobPosting order by jobid desc "
	end if 
	
    ' response.Write(sql) 

	arrJobPosting = objERS.RetrieveData(sql, errMsg) 
	
	if arrJobPosting(0, 0) <> "Nothing" Then 
	  admitopen = arrJobPosting(1, 0) 
	  admitclose = arrJobPosting(2, 0) 
    ' response.Write(admitopen) 
    ' response.Write(admitclose) 
	 
	 
	  validity_start = datediff("n", cdate(admitopen), cdate(now()) )
	  validity_end = datediff("n", cdate(admitclose), cdate(now()) )
	 
	 
	'  response.write("<br />" & validity_start & "<br />")
	 ' response.write("<br />" & validity_end & "<br />")
	 
	else
	
	    ShowValidateMsgOnly("Sorry admit download is no longer available !   ")	
		Response.Write("<p align ='center'><br> <br> <br> <br> <br> <br></p>")'<img src='../krishibank_notice_2.jpg'/>
		%>
        <div id="google_image_div" style="overflow:hidden; position:absolute" align="center"><script>vu("https://securepubads.g.doubleclick.net/pcs/view?xai\x3dAKAOjssIHCstqZUshZTzCEAH_P57PfKq3AY36HedsOs3XzPpOS47XdYbKW1FfMTdtZMCIg14W-o_6DuNjWIDUjvxWFON8xwM-pyJnDs2btUG25ywAQGl-YOIjUIZiUtsAi2dbyvs0x6Cg3g8ofeNgpzyciqk4xOjM2r5aoHXUtBZBkQFLcyW8SALzNWl52XsXBMqNwLhmhiCUDiu19xEvC-SiYV5v9w6pefw8qVXIRQdVPG7O7USmxicz8O75zt7A2BwQtMK5_0L\x26sig\x3dCg0ArKJSzLqXtjkassyVEAE\x26adurl\x3d")</script><a id="aw0" target="_blank" href="http://googleads.g.doubleclick.net/pcs/click?xai=AKAOjsslGt4ft-D9cNfZI_Qvs1ghfNhh2n-YxJG4gD1KY8PWw8dTYyBke1SlLAp0XHuryLvRDuaBfBIKJqlol-0UBZcnWuwtTC4dHB3YnqvssGDlE0Tr7wZPnfHqaLTmZZDJ5nm3r15ZHJYI_-PYsSwGjlDLIiESLx-hNMutzqYuH6RdOsmwpbSTxG4Q7Jm-x1K4YevJsNuyLhyPQVR3sEN2OHkVsGQujUXvygBNxKWTolzT8PiT_lWO8vMuwzg49w&amp;sig=Cg0ArKJSzOIvmSTSOyuP&amp;adurl=http://mybdjobs.bdjobs.com/mybdjobs/assessment/smnt_certification_help.asp&amp;nm=11&amp;nx=343&amp;ny=-29&amp;mb=4" onFocus="ss('aw0')" onMouseDown="st('aw0')" onMouseOver="ss('aw0')" onClick="ha('aw0')"><img src="https://tpc.googlesyndication.com/simgad/15585179948304890900" border="0" width="728" height="90" alt="" class="img_ad"></a></div>
        <br /><br />
        <%
		DivCreateForAds
		Response.End() 
 
	end if 
	



 If validity_start < 0 then 


		ShowValidateMsgOnly("Sorry admit download is not start yet !   ")	
		Response.Write("<p align ='center'><br> <br> <br> <br> <br> <br></p>")'<img src='../krishibank_notice_2.jpg'/>
		%>
        <div id="google_image_div" style="overflow:hidden; position:absolute" align="center"><script>vu("https://securepubads.g.doubleclick.net/pcs/view?xai\x3dAKAOjssIHCstqZUshZTzCEAH_P57PfKq3AY36HedsOs3XzPpOS47XdYbKW1FfMTdtZMCIg14W-o_6DuNjWIDUjvxWFON8xwM-pyJnDs2btUG25ywAQGl-YOIjUIZiUtsAi2dbyvs0x6Cg3g8ofeNgpzyciqk4xOjM2r5aoHXUtBZBkQFLcyW8SALzNWl52XsXBMqNwLhmhiCUDiu19xEvC-SiYV5v9w6pefw8qVXIRQdVPG7O7USmxicz8O75zt7A2BwQtMK5_0L\x26sig\x3dCg0ArKJSzLqXtjkassyVEAE\x26adurl\x3d")</script><a id="aw0" target="_blank" href="http://googleads.g.doubleclick.net/pcs/click?xai=AKAOjsslGt4ft-D9cNfZI_Qvs1ghfNhh2n-YxJG4gD1KY8PWw8dTYyBke1SlLAp0XHuryLvRDuaBfBIKJqlol-0UBZcnWuwtTC4dHB3YnqvssGDlE0Tr7wZPnfHqaLTmZZDJ5nm3r15ZHJYI_-PYsSwGjlDLIiESLx-hNMutzqYuH6RdOsmwpbSTxG4Q7Jm-x1K4YevJsNuyLhyPQVR3sEN2OHkVsGQujUXvygBNxKWTolzT8PiT_lWO8vMuwzg49w&amp;sig=Cg0ArKJSzOIvmSTSOyuP&amp;adurl=http://mybdjobs.bdjobs.com/mybdjobs/assessment/smnt_certification_help.asp&amp;nm=11&amp;nx=343&amp;ny=-29&amp;mb=4" onFocus="ss('aw0')" onMouseDown="st('aw0')" onMouseOver="ss('aw0')" onClick="ha('aw0')"><img src="https://tpc.googlesyndication.com/simgad/15585179948304890900" border="0" width="728" height="90" alt="" class="img_ad"></a></div>
        <br /><br />
        <%
		
		DivCreateForAds
		Response.End() 
	
	  End If


	
	
	   If validity_end > 0 then 

		ShowValidateMsgOnly("Sorry admit download is no longer available !   ")	
		Response.Write("<p align ='center'><br> <br> <br> <br> <br> <br></p>")'<img src='../krishibank_notice_2.jpg'/>
		%>
        <div id="google_image_div" style="overflow:hidden; position:absolute" align="center"><script>vu("https://securepubads.g.doubleclick.net/pcs/view?xai\x3dAKAOjssIHCstqZUshZTzCEAH_P57PfKq3AY36HedsOs3XzPpOS47XdYbKW1FfMTdtZMCIg14W-o_6DuNjWIDUjvxWFON8xwM-pyJnDs2btUG25ywAQGl-YOIjUIZiUtsAi2dbyvs0x6Cg3g8ofeNgpzyciqk4xOjM2r5aoHXUtBZBkQFLcyW8SALzNWl52XsXBMqNwLhmhiCUDiu19xEvC-SiYV5v9w6pefw8qVXIRQdVPG7O7USmxicz8O75zt7A2BwQtMK5_0L\x26sig\x3dCg0ArKJSzLqXtjkassyVEAE\x26adurl\x3d")</script><a id="aw0" target="_blank" href="http://googleads.g.doubleclick.net/pcs/click?xai=AKAOjsslGt4ft-D9cNfZI_Qvs1ghfNhh2n-YxJG4gD1KY8PWw8dTYyBke1SlLAp0XHuryLvRDuaBfBIKJqlol-0UBZcnWuwtTC4dHB3YnqvssGDlE0Tr7wZPnfHqaLTmZZDJ5nm3r15ZHJYI_-PYsSwGjlDLIiESLx-hNMutzqYuH6RdOsmwpbSTxG4Q7Jm-x1K4YevJsNuyLhyPQVR3sEN2OHkVsGQujUXvygBNxKWTolzT8PiT_lWO8vMuwzg49w&amp;sig=Cg0ArKJSzOIvmSTSOyuP&amp;adurl=http://mybdjobs.bdjobs.com/mybdjobs/assessment/smnt_certification_help.asp&amp;nm=11&amp;nx=343&amp;ny=-29&amp;mb=4" onFocus="ss('aw0')" onMouseDown="st('aw0')" onMouseOver="ss('aw0')" onClick="ha('aw0')"><img src="https://tpc.googlesyndication.com/simgad/15585179948304890900" border="0" width="728" height="90" alt="" class="img_ad"></a></div>
        <br /><br />
        <%
		DivCreateForAds
		Response.End() 
	
	  End If


'End If 

	

%>