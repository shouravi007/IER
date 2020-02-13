<%

sql = ""
sql = "select personalid,id from jobpos where [personalid] = "&intTrackingNo
arrID = objERS.RetrieveData(sql, strErr)
ErrorMessage "34", errMsg, 0

if arrID(0, 0) <> "Nothing" Then 
   TrackNo = arrID(0, 0) 

SQLPersonal = ""
SQLPersonal = "SELECT id, (FirstName+' '+LastName) as Name, Email,ContactPhone, CellPhone, Gender, PostedOn, UpdatedOn, Pass, Photo, photoURL,jobid FROM Personal WHERE id = " & TrackNo & "  and postedon >= '2018-03-01'   "
'Response.Write("<br>"& SQLPersonal)
arrPersonal = objERS.RetrieveData(SQLPersonal, errMsg)
ErrorMessage "6", errMsg, 0


		If arrPersonal(0, 0) = "Nothing" Then
			ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! Incorrect Login ID and/or Password.<br>Please try again.<br></strong></font></center>"&phone)
			DivCreateForAds
			EndOfAllProcess
		Else 		
			   IF  cstr(strPassword)  <> Cstr(arrPersonal(8, 0)) Then 
					ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>Sorry! Incorrect  Password.<br>Please try again.<br></strong></font></center>"&phone)
					DivCreateForAds
					EndOfAllProcess
			   End IF 
	   End IF

End If 


jobid = arrPersonal(11,0)



	'strQuery_1 = "SELECT  p.personalId, p.pass, jp.JOBID FROM Personal P INNER JOIN JOBPOS JP ON P.PERSONALID = JP.PERSONALID where JP.SHORTLISTED = 1 and  p.personalid = "& intTrackingNo
	strQuery_1 = "SELECT  j.id, p.pass, j.JOBID,r.rollno FROM Personal p inner join jobpos j on j.personalid = p.id inner join roll r on r.personalid = p.id  where  r.rollno is not null and j.SHORTLISTED = 1 and j.personalid = "& TrackNo  ' and j.jobid = "&jobid&"   r.jobid = "&jobid&" and 
		
	'Response.Write strQuery_1
	arrSelect_1 = objERS.RetrieveData(strQuery_1, errMsg)	
    ErrorMessage "9", errMsg, 0

	
If arrSelect_1(0,0) = "Nothing" Then	

	ShowValidateMsgOnly("<br/><center><font color=#CC3333 size=2 face=Arial><strong>SORRY, YOU ARE NOT SHORTLISTED  </ucase> .<br></strong></font></center>"&phone) ' FOR <ucase> MANAGEMENT TRAINEE 
	DivCreateForAds
	EndOfAllProcess

else

%>
<div align="center " style="position:absolute; left: 250px; top: 250px; width: 700px; height: 700px;">
<span><img src="http://ers.bdjobs.com/applications/images/wait.gif" width="600" height="400" class="img-responsive" /></span>
</div>
<script>
	alert("Please take a color print of the Admit Card");
</script>
<%	
			intJobId = arrSelect_1(2,0)
End If

%> 