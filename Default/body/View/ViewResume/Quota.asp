<%
    err.clear 
	
	strQuata = " SELECT FreedomFighter, Tribal, [Disable], [Ansarvdp], [Orphan]  FROM  Quota  where   id =  "&intTrakingNo
	
	arr_Quata = objERS.RetrieveData(strQuata, errMsg)
	ErrorMessage "7", errMsg, 0	
	
If arr_Quata(0, 0) <> "Nothing" Then	
	   
	strFredomFighter = arr_Quata(0,0)
	strTribal = arr_Quata(1,0)
	strDisableDetails = arr_Quata(2,0)
	strAnserVdpQuota = arr_Quata(3,0)
	strOrphan = arr_Quata(4,0) 	
	'response.Write(strFredomFighter)	
			
	If strFredomFighter <> "" Then		
		if strFredomFighter = "C" Then 
			FF_GC = "Yes(Child)"
		elseif strFredomFighter = "GC" Then 
			FF_GC = "Yes(Grand Child)"
		elseif strFredomFighter = "" or strFredomFighter = 0 Then 
			FF_GC = "No"
		end if
		
		FreedomFighterStatus = FF_GC
	else
		FreedomFighterStatus = "No"
	
	end if	     
		   
   if strTribal = "True" Then
		Tribal = "Yes"
   else
		Tribal = "No"	
   end if
	
	if strDisableDetails = "1" Then
		PhysicallyChallenged = "Yes"
	else
		PhysicallyChallenged = "No"
	end if		
		
	if strAnserVdpQuota = "True" Then
		AnsarVdp = "Yes"
	else
		AnsarVdp = "No"
	end if	
	
	if strOrphan = "True" then
		Orphan = "Yes"
	else
		Orphan = "No"
	end if		
	   
Else 
	FreedomFighterStatus = "No"	
	AnsarVdp = "No"
	Orphan = "No"
	PhysicallyChallenged = "No"
	Tribal = "No"
End IF
			
%>