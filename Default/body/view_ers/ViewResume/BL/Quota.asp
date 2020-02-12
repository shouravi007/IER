<%
    err.clear 
	strQuata = " SELECT FreedomFighter, Tribal, [Disable], [Ansarvdp], [Orphan]  FROM  Quota  where   id =  "&intTrakingNo
	arr_Quata = objERS.RetrieveData(strQuata, errMsg)
	ErrorMessage "1874", errMsg, 0	
	
	FF = ""
	Tribal = ""
	Disable = ""
	AnsarVdp = ""
	Orphan = ""
	Others = "" 
	
	If arr_Quata(0, 0) <> "Nothing" Then	
	   strFredomFighter = arr_Quata(0,0)
	   
	   If IsNull(strFredomFighter) or Isempty(strFredomFighter) or strFredomFighter = 0 Then 
		 FF = "No"	   
	   Else 
		 FF = arr_Quata(0, 0) 
	   End If  
	
	   strTribal = arr_Quata(1,0)
	   
	   If IsNull(strTribal) or Isempty(strTribal) or strTribal = 0 Then 
	  	 strTribal = 0	
	  	 Tribal = "No"	   
	   Else 
	  	 strTribal = 1
	  	 Tribal = "Yes"
	   End IF
	
	   strDisableDetails = arr_Quata(2,0)
	
	   if strDisableDetails = "0" then 
		 strDisableDetails = "" 		   
	   end if 
	
	   If IsNull(strDisableDetails) or Isempty(strDisableDetails) or strDisableDetails = ""  Then 
		   strDisable = 0	
		   strDisableDetails = ""	   
		   Disable = "No"   
	
	   Else 
		   strDisable = 1
		   Disable = "Yes"
	
	   End IF
		
	   strAnserVdpQuota = arr_Quata(3,0)
	
	   If IsNull(strAnserVdpQuota) or Isempty(strAnserVdpQuota) or strAnserVdpQuota = 0 or strAnserVdpQuota = "" Then 
	   	 strAnserVdpQuota = 0	
	  	 AnsarVdp = "No"
	   Else 
	   	 strAnserVdpQuota = 1
	   	 AnsarVdp = "Yes"
	   End IF
	
	   strOrphan = arr_Quata(4,0) 
	   
	   If IsNull(strOrphan) or Isempty(strOrphan) or strOrphan = 0 or strOrphan = "" Then 
		   strOrphan = 0
		   Orphan = "No"	
	   Else 
		   strOrphan = 1
		   Orphan = "Yes"
	   End IF
	   
	   str3YrsRural = arr_Quata(5,0) 
	   
	Else 
	   strFredomFighter = ""
	   strTribal = ""
	   strDisable = "" 
	   str10Yrs = ""
	   str3Yrs = ""
	   str3YrsRural = "" 	
	End IF
	
	
	if FF = 1 Then
		FreedomFighterStatus = "Yes"
	else
		FreedomFighterStatus = "No"
	end if
		
	PhysicallyChallenged = Disable
	

%>