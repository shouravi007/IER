<%
		
		sqlQuota = "SELECT FreedomFighter, Tribal, [Disable], [Ansarvdp], [Orphan]  FROM  Quota  where   id =" & TrackNo 
		
		arr_Quata = objERS.RetrieveData(sqlQuota, strErr)
		ErrorMessage "25", errMsg, 0
		
		FF = ""
		Tribal = ""
		Disable = ""
		AnsarVdp = ""
		Orphan = ""
		Others = "" 		
		
		if arr_Quata(0,0) <> "Nothing" Then

			strFredomFighter = arr_Quata(0,0)
	   
			if strFredomFighter <> "" Then
						
				if strFredomFighter = "C" Then
					FF_GC = "(Child)"
				elseif strFredomFighter = "GC" Then
					FF_GC = "(Grand Child)"
				end if
				
				FreedomFighterStatus = "Yes"& " "&FF_GC
			else
				FreedomFighterStatus = "No"
			end if	     
	
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
			PhysicallyChallenged = Disable
		Else 
			strFredomFighter = ""
			strTribal = ""
			strDisable = "" 
			str10Yrs = ""
			str3Yrs = ""
			str3YrsRural = "" 	
		
		End IF

%>
