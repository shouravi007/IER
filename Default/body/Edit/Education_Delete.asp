<%

intRecordId = Request.Form("hidID")
'Response.Write(intRecordId)
strTableName = Request.Form("TableName")

' Validation (Server)
If IsNumeric(TrackNo) = False Or TrackNo = 0 Then
	        ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! Tracking Number should be numeric.<br>Please try again.<br></strong></font></center>"&phone)
				DivCreateForAds
				EndOfAllProcess
		
Else
	TrackNo = CLng(TrackNo)	
End If
	

If intRecordId <> "" And intRecordId <> "-1" Then
	SQLDeleteJobPos = "DELETE FROM " & strTableName & " WHERE [id]=" & intRecordId
	
	USERID = TrackNo
	currentUser = TrackNoNew 
	strModuleName = "Resume Update" 
	
	sql = ""
	sql = "select [DegreeName] ,[Institute] ,[Subject],[PassingYear] ,[EducationId],[University],[UniversityType],[Result],[ResultPoint],[CGPAScale],[subject_others] from academic  where id = " & intRecordId
	'Response.Write(sql) 
	arr = objERS.RetrieveData(sql, errMsg)
	
	
	
	SQLInsertAcademic =  intRecordId & "-" & TrackNo & "-" &  arr(4,0) & "-" &  arr(0, 0)  & "-" &  arr(3, 0)  & "-" &  arr(1, 0) & "-" &  arr(7, 0)  & "-" &  arr(2, 0) & "-" & arr(5, 0) & "-" &  arr(8, 0) & "-" &arr(6, 0) & "-" & arr(9, 0)  & "-" & Request.ServerVariables("REMOTE_ADDR")& "-" & arr(10, 0) 

	strDescription = ReplacedAllTypeOfSpecialChar(SQLInsertAcademic) 
	strAction = "Delete Academic"

	%>
	  <!--#include File = "UserLog.asp" -->
	<%

	'Response.Write(SQLDeleteJobPos)
	'Response.End()
				
	objERS.ExecuteQuery SQLDeleteJobPos, errMsg
	
		
	strMessage = "Educational Record deleted succesfully."
Else
	strMessage = "Educational Record not deleted."
End If

%>
	<!--#include File = 'BackToAcademic.asp' -->