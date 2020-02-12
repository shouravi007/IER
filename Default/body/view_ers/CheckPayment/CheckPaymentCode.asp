<%

'response.Write(lcase(request.ServerVariables("HTTP_REFERER")))
intTrakingNo = Request.form("TrackNo")
'intTrakingNoNew = Request.form("TrackNoNew")
intJobRefId = Request.form("hiddenJobRefId") ' JOBREF ID 
strMobileCP = Request.form("hiddenMobileCP") ' APPLIED MOBILE
'response.Write("login id: "& intJobRefId &"<br>mobile: "&strMobileCP&"<br>")
'response.End()
	
If intTrakingNo <> "" and strMobileCP <> "" Then 'intJobRefId <> ""
	
	SQL_CHECK_JOBREFID = "SELECT J.ID, P.CONTACTPHONE, P.FirstName, j.[AppDate_Deadline] FROM JOBPOS J INNER JOIN PERSONAL P ON J.PERSONALID = P.ID AND P.ID="&intTrakingNo &" AND P.CONTACTPHONE='"&strMobileCP&"'"

	If Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" or Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("SERVER_NAME") = "server-ers" Then 	
	'response.Write(SQL_CHECK_JOBREFID)
	'response.Write(intJobRefId)

	End If
		
	arr_SQL_CHECK_JOBREFID = objERS.RetrieveData(SQL_CHECK_JOBREFID, errMsg)
	ErrorMessage "17",errMsg,0		
	
	If arr_SQL_CHECK_JOBREFID(0,0) = "Nothing" Then											
		response.Write("<h3 align='center'>NOT APPLIED.</h3>")
		response.End()
	
	Else
%>
        <table id="tab1" width="90%" align="center" border="1" style="border:thin;" cellpadding="2" cellspacing="0">
         
         <tr>
        	<td colspan="4" align="center"><h3>Payment Status</h3></td>
        </tr>
               
        <tr>
        	<td colspan="4" align="center">&nbsp;</td>
        </tr>
        
        <tr style="font-weight:bold;">
            <td align="center">Sl.</td>
            <td>Applicant Id</td>
            <td>Mobile</td>
            <td>Status</td>
        </tr>

<%		
		FOR i = 0 to ubound(arr_SQL_CHECK_JOBREFID,2)	
		
			intJobRefIdDB = arr_SQL_CHECK_JOBREFID(0,i)
			strMobileNumberDB = arr_SQL_CHECK_JOBREFID(1,i) 
			strNameDB = arr_SQL_CHECK_JOBREFID(2,i)								
			strDeadLineForPayFee = arr_SQL_CHECK_JOBREFID(3,i)
			'RESPONSE.Write("db data: "&intJobRefIdDB&"<br>")
			
			
			If intJobRefIdDB <> "" and strMobileNumberDB <> "" Then
				
				sqlCheckPaymentTable = "SELECT [PaymentId], [JRId], [IsPmntOk], [PmntTime], [App_Mobile], [Agnt_Mobile], [TxnId], [IP] FROM [CheckPmntStatus] where [JRId]="&intJobRefIdDB &" and [App_Mobile]='"&strMobileNumberDB&"'" 
				
					If Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" or Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("SERVER_NAME") = "server-ers" Then 	
					'response.Write(sqlCheckPaymentTable)

					End If					
				
				arrSqlCheckPaymentTable = objERS.RetrieveData(sqlCheckPaymentTable, errMsg)
				ErrorMessage "56",errMsg,0	
			
				'surecash api call by get method and compare with bdjobs database for re-check 
												
				If arrSqlCheckPaymentTable(0,0) <> "Nothing" Then
					
					intJobRefCP = arrSqlCheckPaymentTable(1,0)
					strMobileCPDB = arrSqlCheckPaymentTable(4,0)
					strStatus = arrSqlCheckPaymentTable(2,0)

%>
                    <tr>
                        <td align="center"><%=i+1%></td>
                        <td><%=intJobRefCP%></td>
                        <td><%=strMobileCPDB%></td>
                        <td>
						<%
						 If strStatus = True Then
                        	RESPONSE.Write("Successful")	
					     else
						 	RESPONSE.Write("Failed")
						 End If
						
						%>
							
                        
                        </td>
                    </tr>                    

<%													
							
				Else
%>
                    <tr>
                        <td align="center"><%=i+1%></td>
                        <td><%=intJobRefIdDB%></td>
                        <td><%=strMobileNumberDB%></td>
                        <td><%RESPONSE.Write("Pending...")%></td>                        
                    </tr>                    

                    <tr>
                   	   <td colspan="4" align="center">&nbsp;</td>
                    </tr>
<%				
				
				End If
		
			Else
				Response.Write("NOT APPLIED.")
				Response.End()
			End If		
		
		NEXT
%>
                    </table>
<%
						
	End If
							
Else
	response.Write("<h3 align='center'>NO RECORD FOUND.</h3>")
	response.End()
End If
%>
