<%
                      '  0                                        1       2
	strQuery = "SELECT j.id, (p.FirstName + ' ' + p.LastName) AS Name, p.Email, P.CONTACTPHONE, p.CellPhone, p.ContactAddress, p.Photo, p.Gender, j.JOBID, r.RollNo, j.SHORTLISTED,p.photourl,p.bdjobsphoto,p.bdjobsid,p.id, SUBSTRING(LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4), CHARINDEX('/', LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4))+1, LEN(LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4))), p.fathername,p.mothername,p.signatureurl FROM Personal p inner join jobpos j on j.personalid = p.id  INNER JOIN ROLL R ON P.id = R.PERSONALID  where j.SHORTLISTED = 1 and j.jobid="&intJobId &" and p.id="&TrackNo		
	'Response.Write strQuery
	'response.End() 	
	arrSelect = objERS.RetrieveData(strQuery, errMsg)	

	If errMsg <> "" Then
		Response.Write(errMsg)
		Response.End()
	End If
	
	


%>