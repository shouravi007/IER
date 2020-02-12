<%
	sql = ""
	sql = " update jobpos set  Change = 1  where trackingno = " &TrackNoNEW 
	 'Response.Write("<br>"&sql)
	objERS.ExecuteQuery sql, errMsg 
	ErrorMessage "250", errMsg , 0	  
	
	sql = "" 
	sql = " EXEC [TrackingNumber] "&newJobid
	arrTrackingNumber = objERS.RetrieveData(sql, errMsg)
	 'Response.Write("<br>"&errMsg)
		 if arrTrackingNumber(0, 0) <> "Nothing" Then
		    TrackingNumberNew = clng(arrTrackingNumber(0, 0)) + 1   
		
			sql = ""
			sql = " Exec InsertJobPos "&TrackNo&","&newJobid&","&"'"&now&"'"&","&TrackingNumberNew	
			'Response.Write("<br>"&sql)
			''Response.End()
			objERS.ExecuteQuery sql, errMsg 
			'Response.Write("<br>"&errMsg)
			SQL_ID = "" 
			SQL_ID = "select trackingno from jobpos where [Change] is null and  jobid ="&newJobid& " and personalid = "&TrackNo 
			'Response.Write("<br>"&SQL_ID)
			''Response.End()
			' 'Response.Write("<br>jobid:"&jobid)
			arr_Tracking = objERS.RetrieveData(SQL_ID, errMsg)
			ErrorMessage "163", errMsg, 0	
			
			if arr_Tracking(0, 0) <> "Nothing" then
			TrackNoNEW = arr_Tracking(0, 0)	 
			end if
			
		  sql = " update personal set  jobid = "&newJobid&"  , updatedon = '"&now& "'  where id = " &TrackNo 
		  
		  'Response.Write("<br>"&sql)
		  objERS.ExecuteQuery sql, errMsg 
		  ErrorMessage "250", errMsg , 0 
			  
		 end if    


%>