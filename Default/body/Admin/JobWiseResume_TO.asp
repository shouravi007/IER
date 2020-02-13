				<div class="col-sm-12">
					<div class="summery-view bg-style">
<!--#include File = "CheckSession.asp" -->
<%
	strModuleName = "Datewise total resume" 
	strDescription = "Day wise resume view for  : "&strUserName&"##"&strPassword
	strAction = "Total Resume View for  "
%>
<!--#include File = "UserLog.asp" -->

<%
sql = ""
sql = "exec USP_Daily_Apply 2, '2019-03-23 23:59:59.000', '2019-03-23', '2019-03-03 14:00:00.000' "
ValuePrint sql , "sql"
arrPersonal = objERS.RetrieveData(sql, strErr)
ErrorMessage "34", errMsg, 0


strMessage1 = "<div class='col-sm-12'><div class='date-wise-resume bg-style'><h1 class='post-name'>Total resume</h1><div class='wrapper'><div class='row job-list-row hidden-xs'><div class='col-sm-1'><h3 class='title'>Day</h3></div><div class='col-sm-3'><h3 class='title'>Application Date</h3></div><div class='col-sm-6'><h3 class='title'><span title='Management Trainee'>Trainee Offier (TO)</span></h3></div><div class='col-sm-2'><h3 class='title'>Total</h3></div></div><hr class='first-hr'>"
 
If  arrPersonal(0,0) <> "Nothing" Then
	For i = 0  To  Ubound(arrPersonal,2) 
		If i mod 2 = 0 Then
			varBGCol = "FFFFFF"
		Else
			varBGCol = "E6FAF0"
		End If
		strMessage1  = strMessage1 & "<div class='row job-list-row'><div class='col-sm-1'><h4 class='date-Wise-data'>"& i+1 & "</div>"
		strMessage1  = strMessage1 & "<div class='col-sm-3'><h4 class='date-Wise-data'>" & FormatDateTime(arrPersonal(0, i), vbLongDate) & "</div><div class='col-sm-6'><h4 class='date-Wise-data'>" & arrPersonal(1, i) 
		strMessage1  = strMessage1 & "</div><div class='col-sm-2'><h4 class='date-Wise-data'>" & arrPersonal(1, i)& "</div></div><hr>"
		varSO = CLng(varSO) + arrPersonal(1, i)
		varTotal = CLng(varTotal)+  arrPersonal(1, i)    ' + arrPersonal2(1, i)
		
		Next
	strMessage1 = strMessage1 & "<div class='row job-list-row hidden-xs'><div class='col-sm-4'><h3 class='title'>Grand Total</h3></div><div class='col-sm-6'><h3 class='title'>" & varSO & "</h3></div><div class='col-sm-2'><h3 class='title'><span title='Trainee Officer'>" & varTotal & "</span></h3></div></div></div></div></div>" 
End If 
%>


<%=strMessage1%>

<%
sql = ""
sql = "exec USP_Daily_Apply_Update  2, '2019-03-23 23:59:59.000', '2019-03-23', '2019-03-03 14:00:00.000' "
ValuePrint sql , "sql"
objERS.ExecuteQuery sql, errMsg
ErrorMessage "34", errMsg, 0

%>



                       </div>
                     </div>
                     
                   </div>
             </div>
              </div>
              
              

<!--No Signature Problem solve by ajax -->
 <!-- include Virtual = '/applications/shahjalalbank/dev/default/body/problem/SignatureProblem.asp'-->
  <!-- include Virtual = '/applications/shahjalalbank/dev/default/body/problem/PhotoProblem.asp'-->