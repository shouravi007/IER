

<%
on error resume next 
r1 = time&rnd
r1 = trim(r1) 
r1 = Replace(r1, "'", "")
r1 = Replace(r1, ".", "")
r1 = Replace(r1, ":", "")
r1 = Replace(r1, " ", "")
r1 = Replace(r1, "  ", "")
RNDD = r1 
strSubmit = Request.Form("btnSubmit")
'Response.Write("submit: " & )
If strSubmit = "Next >>" Then
   
   strCvType = Request.Form("ddlCvType")  
   
   
   strJobTitle = Request.Form("ddlJobPosting")
   
   sql = ""
   sql = "select jobtitle from jobposting where jobid ="&strJobTitle
   Response.Write("<br>sql:"&sql)
   arr = objERS.RetrieveData(sql, errMsg)
   'ErrorMessage "126", errMsg

   if arr(0, 0) <> "Nothing" then
     position = arr(0, 0)    
		p1 = position&strCvType&r1
		p1 = Replace(p1, " ", "_")
		p1 = Replace(p1, " ", "_")
		p1 = Replace(p1, " ", "_")
		p1 = Replace(p1, " ", "_")
		p1 = Replace(p1, " ", "_")
		p1 = Replace(p1, " ", "_")
	
		p1 = Replace(p1, ",", "_")
		p1 = ReplacedAllTypeOfSpecialChar(trim(p1)) 
		p1 = Replace(p1, "~", "_")
		p1 = Replace(p1, "~", "_")
		p1 = Replace(p1, "~", "_")
		p1 = Replace(p1, "~", "_")
		p1 = Replace(p1, "~", "_")
		p1 = Replace(p1, "~", "_")
		p1 = Replace(p1, " ", "_")
		p1 = Replace(p1, " ", "_")
		p1 = Replace(p1, " ", "_")
		p1 = Replace(p1, " ", "_")
		p1 = Replace(p1, " ", "_")
		p1 = Replace(p1, " ", "_")
		p1 = Replace(p1, " ", "_")
		p1 = Replace(p1, " ", "_")
		p1 = Replace(p1, " ", "_")
		
		p1 = Replace(p1, ",", "_")
		p1 = Replace(p1, ",", "_")
		p1 = Replace(p1, ",", "_")
		
		p1 = Replace(p1, "&", "_")
		p1 = Replace(p1, "&", "_")
		p1 = Replace(p1, "&", "_")
		p1 = Replace(p1, "&", "_")

		p1 = Replace(p1, "~", "_")
		p1 = Replace(p1, "~", "_")
		p1 = Replace(p1, "~", "_")
		
   end if 

   condition = ""
   
		strStartDate = Trim(Request.Form("txtStartDate"))
		'strStartDate=dateFunction(strStartDate)
		strEndDate = Trim(Request.Form("txtEndDate"))
		'strEndDate = dateFunction(strEndDate)   
   
 if strCvType = "0" then 
     condition = "  where j.jobid  = "& strJobTitle & " and  j.[personalid] not in ( select [personalID] from  jobpos  where jobid = "& strJobTitle & ")  Order by j.ID " 
	 strJoin = " left outer join jobpos j on j.[personalid] = p.[id] "
	 cvTypeDetails = "Not_ShortList"
   elseif strCvType = "1" then
    ' condition = " where j.jobid = "& strJobTitle& " Order by j.ID  " 
	' strJoin = " inner join shortlist s on s.personalid = p.[ID] "
	 cvTypeDetails = "ShortList_Resume"
  
     condition = " where j.jobid = "& strJobTitle& " and j.eligible = 1  and  j.appdate >= '"&strStartDate&"' and j.appdate <= '"&strEndDate&"' and  p.testcv = 0  and j.shortlisted = 1  Order by j.ID  " 	' and j.doc = 1
	 
	 strJoin = " left outer join jobpos j on j.[personalid] = p.[ID] "
	 cvTypeDetails = "Eligible_Resume"
	 
    elseif strCvType = "2" then
     condition = "  where j.jobid  = "& strJobTitle&"   Order by j.ID  "  
	 strJoin = " left outer join jobpos j on j.[personalid] = p.[ID] "
	 cvTypeDetails = "All_Resume" 
  
   elseif strCvType = "3" then

     condition = " where j.jobid = "& strJobTitle& " and j.eligible = 1  and  j.appdate >= '"&strStartDate&"' and j.appdate <= '"&strEndDate&"' and  p.testcv = 0  Order by j.ID  " ' and j.doc = 1 	 
	 
	 strJoin = " left outer join jobpos j on j.[personalid] = p.[ID] "
	 cvTypeDetails = "Eligible_Resume"
	 
   elseif strCvType = "4" then
     condition = "  where j.jobid  = "& strJobTitle&" and p.testcv = 1  Order by j.ID "  
	 strJoin = " left outer join jobpos j on j.[personalid] = p.[ID] "
	 cvTypeDetails = "Test_Resume"
  
    elseif strCvType = "5" then
     condition = "  where j.jobid  = "& strJobTitle&" and p.id in ("&trim(request.Form("txtCVType"))&")  Order by j.ID  "  
	 strJoin = " left outer join jobpos j on j.[personalid] = p.[ID] "
	 cvTypeDetails = "Others_Resume" 
  
   end if
    
	
	'strJobPosting = 7
	SQLShortListed = "SELECT  P.[ID],p.[Pass],p.FirstName+' '+p.lastname,p.photo,p.photourl,p.bdjobsphoto,p.bdjobsid,SUBSTRING(LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4), CHARINDEX('/', LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4))+1, LEN(LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4))),j.id  FROM PERSONAL P  "&strJoin&condition
	ValuePrint SQLShortListed , "SQLShortListed"
		'Response.End()
	'End If
	arr_ShortListed = objERS.RetrieveData(SQLShortListed, errMsg)
	'ErrorMessage "126", errMsg
	ValuePrint errMsg , "errMsg"
	
	if err.number <> 0 then 
	  response.Write("<br><br>"&SQLShortListed)
	  Response.Write("<br><br><strong>"&err.description&"<br>")
	  
	  EndOfAllProcess
	  
	end if 
	
	If arr_ShortListed(0, 0) <> "Nothing" Then
		UBShortListed = UBound(arr_ShortListed, 2)
	    ValuePrint UBShortListed , "UBShortListed"
		ValuePrint strLastID, strLastID 
		strModuleName = "Resumes"
		strAction = "Doc CV Generate"
		
		j = 199
		strLastID = "0," 

        intTotalCount = Round(UBShortListed/200)
		   
		    For i = 0 to UBShortListed 
			   if i = 0 then 
				strLastID = strLastID & arr_ShortListed(0, 199)
			   else
				j = j + 200
				strLastID = strLastID & "," & arr_ShortListed(0, j)
			   end if 

			Next 
		
		Response.Write("<br>"&strLastID)

	    zipFile = p1&".zip"
		folderName_file_create = p1
	   

	%>
      