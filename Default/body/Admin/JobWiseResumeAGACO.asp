<%
'Server.ScriptTimeout = 360
%>
<!--#include File = "CheckSession.asp" -->

<%
	strModuleName = "Datewise Application" 
	strDescription = "Day wise Apply count view for  : "&strUserName&"##"&strPassword
	strAction = "Total Resume View for  "
%>
<!--#include File = "UserLog.asp" -->

<!--include virtual = "/applications/common/view/PhotoProblem_New.asp" -->
<!--include virtual = "/applications/common/view/SignatureProblem_New.asp" -->


<%
'on error resume next 

' This Procedure is Used by All Class, Function & Procedure. This is an Error Message Displaying Procedure.

'SQLPersonal = "SELECT convert(date , APPDATE) as AppDate, COUNT(CASE WHEN JOBID = 1 THEN PERSONALID END) As [JobID-1], COUNT(CASE WHEN JOBID = 2 THEN PERSONALID END) As [JobID-2] FROM JOBPOS Where APPDATE>'09/27/2019' GROUP BY convert(date , APPDATE)"

SQLPersonal = "USP_Daily_Apply '9/28/2019', '10/27/2019', '9/26/2019'"

'response.Write(strErr)
arrPersonal = objERS.RetrieveData(SQLPersonal, strErr)
ErrorMessage "20", errMsg, 0

SQLPayment = "SELECT convert(date, PMNTTIME) as PaymentDate, COUNT(JRID) AS TOTAL FROM [CheckPmntStatus] Where PMNTTIME>'09/27/2019' GROUP BY convert(date , PMNTTIME) order by convert(date, PMNTTIME) "

arrSQLPayment = objERS.RetrieveData(SQLPayment, strErr)
ErrorMessage "25", errMsg, 0

If err.number <> "" Then 
  'Response.Write err.number & err.description 
End If


If  arrPersonal(0,0) <> "Nothing" Then

	strMessage1 = "<div class='col-sm-12'><div class='date-wise-resume bg-style'><h1 class='post-name'>Total resume</h1><div class='wrapper'><div class='row job-list-row hidden-xs'><div class='col-sm-2'><h3 class='title'>Day</h3></div><div class='col-sm-6'><h3 class='title'>Application Date</h3></div><div class='col-sm-2'><h3 class='title'><span title='AO(General)'>AO(General)</span></h3></div><div class='col-sm-2'><h3 class='title'><span title='AO(Cash)'>AO(Cash)</span></h3></div><div class='col-sm-2'><h3 class='title'>Total Apply</h3></div><div class='col-sm-2'><h3 class='title'><span title='Payment Date'>Payment Date</span></h3></div><div class='col-sm-2'><h3 class='title'><span title='Total Payment'>Total Payment</span></h3></div></div><hr class='first-hr'>"
 
' Response.Write("<br/>Array: " & Ubound(arrPersonal,2)) 
	For i = 0  To  Ubound(arrPersonal,2) 
		'Response.Write("<br/>Value i: " & i) 
		If i mod 2 = 0 Then
			varBGCol = "FFFFFF"
		Else
			varBGCol = "E6FAF0"
		End If
		
		strMessage1  = strMessage1 & " <div class='row job-list-row'><div class='col-sm-2'><h4 class='date-Wise-data'>"& i+1 & "</h4></div>"
		
		strApplyDate = arrPersonal(0, i)
		
		strMessage1  = strMessage1 & " <div class='col-sm-6'><h4 class='date-Wise-data'>" & FormatDateTime(strApplyDate, vbLongDate) & "</h4></div>"
		
		strMessage1  = strMessage1 & " <div class='col-sm-2'><h4 class='date-Wise-data'>" & arrPersonal(1, i) &"</h4></div>"
		
		strMessage1  = strMessage1 &" <div class='col-sm-2'><h4 class='date-Wise-data'>" & arrPersonal(2, i) &"</h4></div><div class='col-sm-2'><h4 class='date-Wise-data'>"& arrPersonal(1, i)+ arrPersonal(2, i) & "</h4></div>"
		
		'if arrSQLPayment(0,0) <> "Nothing" then  
			'for j = 0 to ubound(arrSQLPayment,2)
			strMessage1  = strMessage1 & "<div class='col-sm-2'><h4 class='date-Wise-data'>"& arrSQLPayment(0, i)& "</h4></div><div class='col-sm-2'><h4 class='date-Wise-data'>" & arrSQLPayment(1, i) &"</h4></div>"		
			'next
		'end if
		strMessage1  = strMessage1 & "</div><hr>"
		
		varAGO = CLng(varAGO) + arrPersonal(1, i)
		
		varACO = CLng(varACO) + arrPersonal(2, i)
		
		varTotal = CLng(varTotal) + arrPersonal(1, i) +  arrPersonal(2, i)
	
	Next
	
	strMessage1 = strMessage1 &" <div class='row job-list-row hidden-xs'><div class='col-sm-6'><h3 class='title'>Grand Total</h3></div>"
	
	strMessage1 = strMessage1 & " <div class='col-sm-2'>&nbsp;</div>"
	
	strMessage1 = strMessage1 & "<div class='col-sm-2'><h3 class='title'>" & varAGO & "</h3></div>"
	
	strMessage1 = strMessage1 & "<div class='col-sm-2'><h3 class='title'>" & varACO & "</h3></div>"
	
	strMessage1 = strMessage1 & "<div class='col-sm-2'><h3 class='title'><span title='payTotal'>"&varTotal&"</span></h3></div>"
	
	strMessage1 = strMessage1 & "<div class='col-sm-2'><h3 class='title'><span title='payTotal'>&nbsp;</span></h3></div>"
	
	if arrSQLPayment(0,0) <> "Nothing" then  
		for j = 0 to ubound(arrSQLPayment,2)
			
			varPaymentTotal =  CLng(varPaymentTotal) +  arrSQLPayment(1, j)
		next
	end if
	
	strMessage1 = strMessage1 & "<div class='col-sm-2'><h3 class='title'><span title='totalPay'>" & varPaymentTotal & " </span></h3></div>"
	
	strMessage1 = strMessage1 &" </div></div></div>"
	

	Response.Write(strMessage1)

Else
  
    Response.Write("<div class='col-sm-12'><h1>No Records Found</h1></div>")

End If 

%>

<script>
       // var thisTimeout = setTimeout(function() {
//            location.reload();
//        }, 60000);
//
//        var datetime = new Date();
//        if(datetime < Date('10/29/2019')){
//            thisTimeout()
//        }
</script>
  
