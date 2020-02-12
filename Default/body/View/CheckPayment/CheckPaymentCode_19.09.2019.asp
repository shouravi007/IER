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
	
	'response.Write(SQL_CHECK_JOBREFID)
	'response.Write(intJobRefId)
	
	arr_SQL_CHECK_JOBREFID = objERS.RetrieveData(SQL_CHECK_JOBREFID, errMsg)
	ErrorMessage "17",errMsg,0		
	
	If arr_SQL_CHECK_JOBREFID(0,0) = "Nothing" Then											
		response.Write("<h3 align='center'>NOT APPLIED.</h3>")
		response.End()
	
	Else
%>
        <table id="tab1" width="90%" align="center" border="1" style="border:thin">
         
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
				
				'RESPONSE.Write(sqlCheckPaymentTable)						
				
				arrSqlCheckPaymentTable = objERS.RetrieveData(sqlCheckPaymentTable, errMsg)
				ErrorMessage "56",errMsg,0	
			
				'surecash api call by get method and compare with bdjobs database for re-check 
												
				If arrSqlCheckPaymentTable(0,0) <> "Nothing" Then
					
					intJobRefCP = arrSqlCheckPaymentTable(1,0)
					strMobileCP = arrSqlCheckPaymentTable(4,0)
					strStatus = arrSqlCheckPaymentTable(2,0)

%>
                    <tr>
                        <td align="center"><%=i+1%></td>
                        <td><%=intJobRefCP%></td>
                        <td><%=strMobileCP%></td>
                        <td>
						<%
						 If strStatus = True Then
                        	RESPONSE.Write("SUCCESSFUL")	
					     else
						 	RESPONSE.Write("FAILED")
						 End If
						
						%>
							
                        
                        </td>
                    </tr>                    

<%													
							
				Else
%>
					<tr>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    
					<tr>
                        <td colspan="4" align="center">
                        You didn't pay your Application Fee Yet. Please pay your Application Fee within 72 hrs.
                        </td>
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
