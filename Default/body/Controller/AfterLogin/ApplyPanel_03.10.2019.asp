<% 
'If Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Then 
 
'apply parameter 

	if jobid = 1 then
		jobPosName1 = "Assistant Officer (Cash)"	 	
		strMsgApply = "Assistant Officer (Cash)"
		
	elseif jobid = 2 then
		jobPosName1 = "Assistant Officer (General) "
		strMsgApply = "Assistant Officer (General) "
	end if
	
	're apply parameter
	
	if jobid = 1 then
		jobPosName = "Assistant Officer (General)"	 	
		strMsgApply2 = "Assistant Officer (General) "	
	elseif jobid = 2 then
		jobPosName = "Assistant Officer (Cash)"
		strMsgApply2 = "Assistant Officer (Cash) "
	end if

	If system = "ksb" Then	

		sqlJobPosCheck = "select jp.id, jp.JOBID, jp.AppDate, jp.appdate_deadline,  DATEDIFF(HOUR,jp.appdate_deadline, GETDATE()) from jobpos jp inner join personal p on jp.personalid = p.id  where jp.personalid ="&TrackNo
		'response.Write(sqlJobPosCheck)		
		
		arrJobPOS = objERS.RetrieveData(sqlJobPosCheck, errMsg) 
		ErrorMessage "153", errMsg, 0

		if arrJobPOS(0, 0) <> "Nothing" Then 
		
			for jj = 0 to ubound(arrJobPOS,2)
				
				intAppId = arrJobPOS(0,jj)
				'RESPONSE.Write("app id: "&intAppId&"<br>")	
				intJobIdA = arrJobPOS(1,jj) 
				strAppdateDeadline = arrJobPOS(4,jj)				
						
				'response.Write("total: "&ubound(arrJobPOS,2))
				'response.Write("job id:"&intJobIdA)
		
				If intAppId <> "" and strAppdateDeadline >= 0 then ' 3 days/72 hours strAppdateDeadline > "3" 
				
					sqlCheckPaymentTable = "SELECT [PaymentId], [JRId], [App_Mobile] FROM [CheckPmntStatus] where [JRId]="& intAppId
					
					'response.Write(sqlCheckPaymentTable)
					arr_sqlCheckPaymentTable = objERS.RetrieveData(sqlCheckPaymentTable, strErr)
					ErrorMessage "18", errMsg, 0
					
					if arr_sqlCheckPaymentTable(0,0) = "Nothing" Then               
						
						strBlockMessage = "Your Application is locked because you didn't pay your application fee within 72 hours.<BR>If you want to unlock your resume, please click on Re-Apply button for new apply and pay your application fee within 72 hours."
						
%>
                        <fieldset>
                            <legend>Job Re Apply Panel</legend>
                        
                            <span style='font-family:Verdana, Geneva, sans-serif; color:#F00;'><%=strBlockMessage%></span>	<br />
                            
                            <div class="btn-wrap text-left">
                        
                            <a class="btn-style" id="jobApply" title="Job Re Apply" onclick="MyFunction2();return false;" target="_blank">Re Apply For <%=jobPosName%></a>
                            
                            </div>
                        
                        </fieldset>                        
<%						
						
					else											
						strBlockMessage = ""
						'payment table e data ase
					end if													
				
				Else
					'within 72 hours nothing happen
					 
				End If ' end if  strAppdateDeadline > 3

%>
			<%
            'second job apply
            If ubound(arrJobPOS, 2) = 0 then
            'RESPONSE.Write("jobid: "& intJobIdA) 
            %>
            <fieldset>
                <legend>Job Apply Panel</legend>
            <div class="btn-wrap text-left">
            
                <a class="btn-style" id="jobApply" title="Job Apply" onclick="MyFunction();return false;" target="_blank">Apply For <%=jobPosName1%></a>
            </div>
                      
            </fieldset>
<%	
            end if
						        
			next
		Else
		' NO DATA IN JOBPOS 	
		End If
  
	End If  ' system = "ksb"
	                                           
'End If   ' ip             
%>            