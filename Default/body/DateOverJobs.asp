<%


	strSQL = "" 
	strSQL = " select [activeForAll] ,[activeForIp],[activeForDeveloper] ,[msg],[logo_url],common_css,custom_css,[logo_link] , [logo_footer_url], [common_framework_js],[icon_url] FROM [dbo].[SystemInfo] "
	ValuePrint strSQL, "strSQL-128"
	err.clear 
	arrSystem = objERS.RetrieveData(strSQL, errLog)
	'ValuePrint arrBLinkJobs(0,0),"arrBLinkJobs(0,0)"
	ErrorMessage "139", errLog, 0
	
	
	IsActive = False 
	
	if arrSystem(0, 0) <> "Nothing" Then
	  strActiveForAll = arrSystem(0, 0)
	  strActiveForIp = arrSystem(1, 0)
	  strActiveForDeveloper = arrSystem(2, 0)
	  strActiveMsg = arrSystem(3, 0)
	  logo_url = arrSystem(4, 0)
	  common_css = arrSystem(5, 0)
	  custom_css = arrSystem(6, 0)
	  logo_link = arrSystem(7, 0)
	  logo_footer_url = arrSystem(8, 0)
	  common_framework_js = arrSystem(9, 0)
	  icon_url = arrSystem(10, 0)
	end if
%>
<script>
    //document.getElementById("icon_page_header").href =  "<%'=icon_url%>" ;
</script>
  

<%
'Request.Cookies("UserID") = "187" or Request.Cookies("UserID") = "192" 
ValuePrint strActiveForDeveloper, "strActiveForDeveloper"	
'Response.Write("<br>strActiveForIp:"&strActiveForIp)

If strActiveForDeveloper = 1 or strActiveForDeveloper = true then 
  If ( Session("USERNAME") = "mahbub" and Session("PWORD") = "UvWggXv6" ) or ( Session("USERNAME")= "sony" and  Session("PWORD") = "*wer@#~!" ) or ( Request.Cookies("USERNAME") = "mahbub" and Request.Cookies("PWORD") = "UvWggXv6" ) then  
    IsActive = True 
    ValuePrint IsActive, "IsActive"	

  Else 
    IsActive = False 
  End IF 
Else
   'response.Write(Request.ServerVariables("REMOTE_ADDR"))  
   If strActiveForIp = 1 or strActiveForIp = true  then 
     If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66"  Or Request.ServerVariables("REMOTE_ADDR") =  "180.92.229.67" Or Request.ServerVariables("REMOTE_ADDR") =  "163.53.150.126" Or Request.ServerVariables("SERVER_NAME") =  "server-ers"  Then  
      IsActive = True
	 ' Response.Write("<br>IsActive:"&IsActive)

	 End If
   Else
         If strActiveForAll = 1 or strActiveForAll = true then 
           IsActive = True
		 Else
           IsActive = False 
		 End IF 
   End IF 
End If 
   
ValuePrint IsActive, "IsActive"	
'Response.Write("<br>IsActive:"&IsActive)
   	
If strLocation = "Admin"  or Request.Form("admin") = "true" or strLocation = "Admit" OR strLocation = "Admit_TO" or Request.Cookies("USERNAME") = "admin" or request.ServerVariables("SERVER_NAME") = "server-ers" or cstr(strFormAction) = cstr("HelpDesk") or strLocation = "attendance"  Then 

Else
	If IsActive = False Then 
	
		ShowValidateMsgOnly strActiveMsg
		
		
		objERS.CloseConnection()
		set objERS = Nothing
		
		
		objResumeServer.CloseConnection 
		Set objResumeServer = Nothing	
		
	
		DivCreateForAds            
		Response.End
		
		
	End IF  
End If 





		strSQL = "SELECT  [AdmitOpen] , [AdmitClose]  FROM JobPosting WHERE  [AdmitOpen] <='" & now() & "'  and   [AdmitClose] >='" & now() & "'" & "  ORDER BY Deadline DESC"
		'Response.Write(strSQL)
		'ValuePrint strSQL, "strSQL-128"
		err.clear 
		arrAdmitOpen = objERS.RetrieveData(strSQL, errLog)
		'ValuePrint arrBLinkJobs(0,0),"arrBLinkJobs(0,0)"
		ErrorMessage "139", errLog, 0
	
		'RESPONSE.Write("jobid:"&position)
		


		strSQL = "SELECT [JobID], [JobTitle], [DeadLine],[joblink]  FROM JobPosting WHERE  ActiveDate <='" & now() & "'  and   Deadline >='" & now() & "'" & "  ORDER BY Deadline DESC"
		'Response.Write(strSQL)
		'ValuePrint strSQL, "strSQL-128"
		arrBLinkJobs = objERS.RetrieveData(strSQL, errLog)
		'ValuePrint arrBLinkJobs(0,0),"arrBLinkJobs(0,0)"
		ErrorMessage "139", errLog, 0



	
    If strLocation = "Admin" or Request.Form("admin") = "true" or strLocation = "Admit" OR strLocation = "Admit_TO" or Request.Cookies("USERNAME") = "admin" or cstr(strFormAction) = cstr("HelpDesk") or strLocation = "attendance" Then
	'response.Write("uid:"&Request.Cookies("USERNAME"))  or request.ServerVariables("SERVER_NAME") = "server-ers" 
    
    Else

	
		'RESPONSE.Write("jobid:"&position)
		
		if arrBLinkJobs(0,0) = "Nothing" then
                    
            if strPhotoFolder = "trustbank" then
                JOB_ID = 4
            else 
                
		       ShowValidateMsgOnly("There is no job available right now")
		  
		       DivCreateForAds
			
			%>
			<br /><br /><br />
			<div id="google_image_div" style="overflow:hidden; position:absolute" align="center"><script>vu("https://securepubads.g.doubleclick.net/pcs/view?xai\x3dAKAOjssIHCstqZUshZTzCEAH_P57PfKq3AY36HedsOs3XzPpOS47XdYbKW1FfMTdtZMCIg14W-o_6DuNjWIDUjvxWFON8xwM-pyJnDs2btUG25ywAQGl-YOIjUIZiUtsAi2dbyvs0x6Cg3g8ofeNgpzyciqk4xOjM2r5aoHXUtBZBkQFLcyW8SALzNWl52XsXBMqNwLhmhiCUDiu19xEvC-SiYV5v9w6pefw8qVXIRQdVPG7O7USmxicz8O75zt7A2BwQtMK5_0L\x26sig\x3dCg0ArKJSzLqXtjkassyVEAE\x26adurl\x3d")</script><a id="aw0" target="_blank" href="http://googleads.g.doubleclick.net/pcs/click?xai=AKAOjsslGt4ft-D9cNfZI_Qvs1ghfNhh2n-YxJG4gD1KY8PWw8dTYyBke1SlLAp0XHuryLvRDuaBfBIKJqlol-0UBZcnWuwtTC4dHB3YnqvssGDlE0Tr7wZPnfHqaLTmZZDJ5nm3r15ZHJYI_-PYsSwGjlDLIiESLx-hNMutzqYuH6RdOsmwpbSTxG4Q7Jm-x1K4YevJsNuyLhyPQVR3sEN2OHkVsGQujUXvygBNxKWTolzT8PiT_lWO8vMuwzg49w&amp;sig=Cg0ArKJSzOIvmSTSOyuP&amp;adurl=http://mybdjobs.bdjobs.com/mybdjobs/assessment/smnt_certification_help.asp&amp;nm=11&amp;nx=343&amp;ny=-29&amp;mb=4" onFocus="ss('aw0')" onMouseDown="st('aw0')" onMouseOver="ss('aw0')" onClick="ha('aw0')"><img src="https://tpc.googlesyndication.com/simgad/15585179948304890900" border="0" width="728" height="90" alt="" class="img_ad"></a></div>
			<br /><br />
			<%						
			   EndOfAllProcess
            End if 
	    End If 
    End If 
  
	
%>
