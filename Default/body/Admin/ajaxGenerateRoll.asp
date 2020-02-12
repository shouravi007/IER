<!--#include File = "CheckSession.asp" -->
<div class="col-md-12">
<%


rollnoStart = request.Form("txtRoll")
'response.Write("another page rollno :: "&rollno)

orderby = request.Form("orderby")
intPersonalId = Replace(Request.QueryString("id"), "'", "")
'response.Write("another page orderby :: "&orderby)

'Response.End()

sqlCount = "SELECT COUNT(ID) FROM Personal WHERE SHORTLISTED = 1 and jobid = " & orderby
'Response.Write(sqlCount)
arr_sqlCount = objERS.RetrieveData(sqlCount, errMsg)
ErrorMessage "56", errMsg, 0

chkRollTableSql = "SELECT COUNT(*) FROM ROLL where jobid = " & orderby
'Response.Write(chkRollTableSql)
arr_chkRollTableSql = objERS.RetrieveData(chkRollTableSql, errMsg)
ErrorMessage "53", errMsg, 0

TrackingNoNew = request.Form("txtTracking")


if TrackingNoNew <> "" then 
		sql = "Select p.ID,(p.FirstName + ' ' + p.LastName) AS Name,P.FATHERNAME, P.HOMEDISTRICT,j.trackingno From PERSONAL p inner join jobpos j on j.personalid = p.id  where p.shortlisted = 1 and p.jobid = " & orderby & " and j.change is null and P.ID not in (select personalid from roll where  jobid = " & orderby&" ) and j.trackingno = "&TrackingNoNew&" order by  p.DateOfBirth, RIGHT(p.CellPhone, 8) Desc, (p.FirstName+ ' '+p.LastName), p.FatherName Desc"
'response.Write(sql)
arr_SQL = objERS.RetrieveData(sql, errMsg)
ErrorMessage "56", errMsg, 0
 
       if arr_SQL(0, 0) <> "Nothing" Then 

            str = ""
			for i = 0 to ubound(arr_SQL,2)
			    rollcount = 0 
				intPersonalId = arr_SQL(0,i)
				TrackNo = arr_SQL(4,i)
				'RESPONSE.Write(intPersonalId)
				strName = arr_SQL(1,i)
				strFatherName = arr_SQL(2,i)
				strHomeDistrict = arr_SQL(3,i)
				

				
				
                If rollnoStart <> "" Then 
				
				sql = ""
				sql = "select rollno from roll where jobid = "&orderby&" and rollno = "&rollnoStart
				
				arrDuplicateRoll = objERS.RetrieveData(sql, errMsg)
				if arrDuplicateRoll(0, 0) <> "Nothing" Then
				  duplicateroll = arrDuplicateRoll(0, 0)
				end if				
				
				
				
				
				
				
				
				ReDim sqlUpdateRollTable(i)
				ReDim arrUpdateData(i,6)
				
				arrUpdateData(0, 0) = intPersonalId
				str = str & "<br><br><p> Tracking No :" & TrackNo 
				arrUpdateData(0, 1) = strName
				str = str & "&nbsp; Name :" & strName 
				
				arrUpdateData(0, 2) = strFatherName
				str = str & "&nbsp; Fathers Name :" & strFatherName 
				arrUpdateData(0, 3) = strHomeDistrict
				arrUpdateData(0, 4) = orderby
				if duplicateroll = "" or isempty(duplicateroll) or isnull(duplicateroll) then 
				arrUpdateData(0, 5) = rollnoStart
				else
				'arrUpdateData(0, 5) = intRoll
				end if 
				
				
				if duplicateroll = "" or isempty(duplicateroll) or isnull(duplicateroll) then 
				'arrUpdateData(0, 5) = rollnoStart
				str = str & "&nbsp; Roll no :" & rollnoStart & "<p>"
				rollcount = rollcount + 1 
				else
				'arrUpdateData(0, 5) = intRoll
				str = str & "&nbsp; Roll no is duplicate :  :" & duplicateroll & "<p>"
				end if 
				
		    
				if duplicateroll = "" or isempty(duplicateroll) or isnull(duplicateroll) then 
				'arrUpdateData(0, 5) = rollnoStart
				sqlUpdateRollTable(0) = "SELECT PERSONALID, Name, FatherName, HomeDistrict, JobID, RollNo from roll WHERE PersonalId=" & intPersonalId
				
				else
				'arrUpdateData(0, 5) = intRoll
				'sqlUpdateRollTable(0) = "SELECT PERSONALID, Name, FatherName, HomeDistrict, JobID, RollNo from roll WHERE PersonalId=" & intPersonalId
				
				str = str & "&nbsp; <br> Roll no :" & duplicateroll & " Already exist no need to create again <p>"
				Response.Write(str)
				objERS.CloseConnection()
				Set objERS = Nothing 
				Response.End()
				
				end if 
			
				'response.Write(sqlUpdateRollTable(0))		
				objERS.UpdateData sqlUpdateRollTable, arrUpdateData, errMsg
				'response.Write(errMsg)
				ErrorMessage "128", errMsg, 0
			
			   end if 
			next




	
	strMsg = "<br><br><p> Total Roll  :"&arr_sqlCount(0, 0)&" <br>"&str&" <br>Created Now :"&rollcount&" <br><br><a href='?"&Encode("Location=Admin&FormAction=Roll_Generate")&"'>Roll Generate Again</a>"	
	
	Response.Write(strMsg)
	
	strModuleName = "Roll"
		
		
		strAction = "Roll Generate"
%>
<!--#include File = "UserLog.asp" -->
<%
   else
    response.Write("This tracking : "&TrackingNoNew&" was not in list ")
   end if 
end if%>
</div>
		
