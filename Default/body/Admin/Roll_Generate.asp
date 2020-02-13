<!--#include File = "CheckSession.asp" -->
<%
strModuleName = "Roll Generation" 
strDescription = "Roll Generation with : "&strUserName&"##"&strPassword
strAction = "Roll Generation for.. "
%>
<!--#include File = "UserLog.asp" -->

<br /><br />
  <div class="col-sm-12">

<!--#include File = 'Roll_Generate\Position.asp' -->
<%

Function getMaxRoll()
    
	sql_maxRoll = "Select max(RollNo) as MaxRoll from Roll where jobid = "&jobid
	arr_sql_maxRoll = objERS.RetrieveData(sql_maxRoll, errMsg)
	ErrorMessage "19", errMsg, 0
   
    If IsNull(arr_sql_maxRoll(0,0)) Then
        mMaxRoll = 60000
    Else
        mMaxRoll = arr_sql_maxRoll(0,0) + 1
    End If
    'response.Write("max roll:: "&mMaxRoll)
End function


intRoll = Request.Form("txtRollNo")
'response.Write("roll:: "&intRoll)

intPersonalId = Request.Form("hiddenPersonalId")
'response.Write(intPersonalId)

If Request.Form("rdoGenerate") = "1" then
%>
<!-- include File = 'Roll_Generate\Roll_Gen_All.asp' -->
<%
ELSEIf Request.Form("rdoGenerate") = "0" then
%>
<!--  include File = 'Roll_Generate\Roll_Delete.asp' -->
<%
End If

%>    
<!--#include File = 'Roll_Generate\Roll_Count.asp' -->
<!--#include File = 'Roll_Generate\Roll_Gen_Form.asp' -->
 </div>