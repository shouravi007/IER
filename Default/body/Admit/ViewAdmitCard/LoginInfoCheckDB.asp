<%

sql = ""
sql = "select personalid,id,jobid from jobpos where [personalid] = "&intTrackingNo
ValuePrint sql, "sql"
err.clear 
arrID = objERS.RetrieveData(sql, strErr)
ValuePrint strErr, "strErr"
ErrorMessage "34", errMsg, 0

if arrID(0, 0) <> "Nothing" Then 
   TrackNo = arrID(0, 0) 

SQLPersonal = ""
SQLPersonal = "SELECT id, (FirstName+' '+LastName) as Name, Email,ContactPhone, CellPhone, Gender, PostedOn, UpdatedOn, Pass, Photo, photoURL,jobid FROM Personal WHERE id = " & TrackNo & "  and postedon >= '2018-03-01'   "
ValuePrint SQLPersonal, "SQLPersonal"
'Response.Write("<br>"& SQLPersonal)
arrPersonal = objERS.RetrieveData(SQLPersonal, errMsg)
ValuePrint errMsg, "errMsg"

ErrorMessage "6", errMsg, 0


		If arrPersonal(0, 0) = "Nothing" Then
			ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! Incorrect Login ID and/or Password.<br>Please try again.<br><br />Click <a href='?"&Encode("Location=Admit&FormAction=Logout")&"'>here</a> to re-try.<br></strong></font></center>"&phone)
			EndOfAllProcess
		Else 		
			   IF  cstr(strPassword)  <> Cstr(arrPersonal(8, 0)) Then 
					ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! Incorrect  Password.<br>Please try again.<br><br />Click <a href='?"&Encode("Location=Admit&FormAction=Logout")&"'>here</a> to re-try.<br></strong></font></center>"&phone)
					EndOfAllProcess
			   End IF 
	   End IF

End If 



jobid = arrID(2,0)


	strQuery_1 = "SELECT  j.id, p.pass, j.JOBID,r.rollno FROM Personal p inner join jobpos j on j.personalid = p.id inner join roll r on r.personalid = p.id  where r.jobid = "&jobid&" and r.rollno is not null and j.SHORTLISTED = 1 and j.jobid = "&jobid&" and j.personalid = "& TrackNo
		
	'Response.Write strQuery_1
	arrSelect_1 = objERS.RetrieveData(strQuery_1, errMsg)	
    ErrorMessage "9", errMsg, 0
	
	
    sql = ""
	sql = " select jobtitle from jobposting where jobid = "&jobid     
	arrJobTitle = objERS.RetrieveData(sql, errMsg)
	
	if arrJobTitle(0,0) <> "Nothing" then 
     job_position = arrJobTitle(0,0)
    end if 
		  	
If arrSelect_1(0,0) = "Nothing" Then	

	ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>SORRY, YOU ARE NOT SHORTLISTED FOR  "&ucase(job_position)&"  POSITION.<br></strong></font></center>"&phone)
	DivCreateForAds
	EndOfAllProcess

else

%>
 <div class="wrapper">
       <img src="http://ers.bdjobs.com/applications/images/wait.gif" />
 </div>
<script>
	alert("Please take a color print of the Admit Card");
</script>
<%	
			intJobId = arrSelect_1(2,0)
End If

%> 