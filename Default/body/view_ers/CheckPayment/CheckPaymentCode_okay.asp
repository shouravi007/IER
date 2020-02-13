<%

'response.Write(lcase(request.ServerVariables("HTTP_REFERER")))

intJobRefId = Request.form("hiddenJobRefId") ' JOBREF ID 
strMobileCP = Request.form("hiddenMobileCP") ' APPLIED MOBILE
'response.Write("job ref id: "& intJobRefId &"<br>mobile: "&strMobileCP)
'response.End()

If intJobRefId <> "" and strMobileCP <> "" Then
	
	SQL_CHECK_JOBREFID = "SELECT J.ID, P.CONTACTPHONE, P.FirstName FROM JOBPOS J INNER JOIN PERSONAL P ON J.PERSONALID = P.ID AND J.ID="&intJobRefId &" AND P.CONTACTPHONE='"&strMobileCP&"'"
	
	 'response.Write(SQL_CHECK_JOBREFID)
	'response.Write(intJobRefId)
	
	SQL_CHECK_JOBREFID = objERS.RetrieveData(SQL_CHECK_JOBREFID, errMsg)
	ErrorMessage "17",errMsg,0		
	
	If SQL_CHECK_JOBREFID(0,0) <> "Nothing" Then									
		
		intJobRefIdDB = SQL_CHECK_JOBREFID(0,0)
		strMobileNumberDB = SQL_CHECK_JOBREFID(1,0) 
		strNameDB = SQL_CHECK_JOBREFID(2,0)								
		IsDataOk = 1 ' valid data
	Else		
		IsDataOk = 0 			
	End If
					
		If IsDataOk = 1 Then 
		
			If intJobRefIdDB <> "" and strMobileNumberDB <> "" Then
			
			sqlCheckPaymentTable = "SELECT [PaymentId], [JRId], [IsPmntOk], [PmntTime], [App_Mobile], [Agnt_Mobile], [TxnId], [IP] FROM [CheckPmntStatus] where [JRId]="&intJobRefIdDB &" and [App_Mobile]='"&strMobileNumberDB&"'" 
			
			'RESPONSE.Write(sqlCheckPaymentTable)			
			End If
			
			arrSqlCheckPaymentTable = objERS.RetrieveData(sqlCheckPaymentTable, errMsg)
			ErrorMessage "56",errMsg,0	
		
			'surecash api call by get method and compare with bdjobs database for re-check 
											
			If arrSqlCheckPaymentTable(0,0) <> "Nothing" Then
				
				intJobRefCP = arrSqlCheckPaymentTable(1,0)
				strMobileCP = arrSqlCheckPaymentTable(4,0)
				response.Write("<h3 align='center'>Payment Successful.</h3>")			
				response.End()									
						
			Else
				response.Write("<h3 align='center'>You didn't Pay your Application Fee Yet.<BR>Please Do payment within 72 hrs.</h3>")
				response.End()
			
			End If
		Else
			response.Write("<h3 align='center'>Not a valid Job Reference ID & Mobile Numeber.</h3>")
			response.End()
		End If
		
Else
	response.Write("<h3 align='center'>NO RECORD FOUND.</h3>")
	response.End()
End If
%>

