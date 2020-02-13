<%
system = trim(request.Form("system"))


'rollno = request.Form("txtRoll")
'response.Write("another page:: "&rollno)

orderby = request.form("type")
intPersonalId = Replace(Request.form("id"), "'", "")

sqlCount = "SELECT COUNT(Personalid) FROM  jobpos   WHERE  SHORTLISTED = 1 and jobid = " & orderby&" and Personalid not in (select personalid from roll where  jobid = " & orderby&" and personalid not in (0) )"
'response.Write("<br>"&sqlCount)
arr_sqlCount = objERS.RetrieveData(sqlCount, errMsg)
ErrorMessage "56", errMsg, 0

chkRollTableSql = "SELECT COUNT(*) FROM ROLL where jobid = " & orderby & " and personalid not in (select personalid from roll where  jobid = " & orderby&" )"
'response.Write("<br>"&chkRollTableSql)
arr_chkRollTableSql = objERS.RetrieveData(chkRollTableSql, errMsg)
ErrorMessage "53", errMsg, 0



maxroll = "SELECT max(rollno) + 1  FROM ROLL where ID <> 0 and rollno not in (10000,20000) and  jobid = " & orderby
'response.Write("<br>"&chkRollTableSql)
arrmaxroll = objERS.RetrieveData(maxroll, errMsg)
ErrorMessage "53", errMsg, 0




		sql = "SELECT distinct P.ID, (p.FirstName + ' ' + p.LastName) AS Name, R.ROLLNO, j.id FROM PERSONAL P  inner join jobpos j on j.personalid = p.id  Left JOIN ROLL R ON P.ID = R.PERSONALID  where  j.shortlisted = 1 and j.jobid = " & orderby & " and P.ID not in (select personalid from roll where  jobid = " & orderby&" and personalid not in (0) )  order by r.RollNo  "
	
'response.Write(sql)
arr_SQL = objERS.RetrieveData(sql, errMsg)
ErrorMessage "56", errMsg, 0

        jobid = orderby
		If arr_SQL(0,0) <> "Nothing" Then
		  str = "<ol style='padding:1%;'>" 
			For i = 0 to ubound(arr_SQL,2)
		     rollno = arr_SQL(2,i)
			 intTrakingNumber_New = arr_SQL(3,i)
			     if system = "bankjobs" then
					if jobid = 1 then 
					 intTrakingNumber_New = intTrakingNumber_New + 100000
					elseif jobid = 2 then 
					 intTrakingNumber_New = intTrakingNumber_New + 200000
					elseif jobid = 3 then 
					 intTrakingNumber_New = intTrakingNumber_New + 300000
					end if  			 
			     end if
			expectedroll = arr_SQL(2,i)
			
			if isnull(expectedroll) or isempty(expectedroll) then
					if jobid = 1 then 
					 expectedroll = expectedroll + 10000
					elseif jobid = 2 then 
					 expectedroll = expectedroll + 20000
					elseif jobid = 3 then 
					 expectedroll = expectedroll + 30000
					end if	
					
					expectedroll = expectedroll + i 		
			else
			   expectedroll = arrmaxroll(0,0) + i 
			end if 
			
		 
			 rollnobox = "&nbsp;&nbsp;&nbsp;<button style='padding-left:1%' type='button' class='btn btn-primary' onclick='RollGen("&arr_SQL(0,i)&","&orderby&")'>Generate Roll</button><div id='span_shortlist_"&arr_SQL(0,i)&"'></div>"
			 
			
             str = str & "<li style='padding:2%'>Tracking#"&intTrakingNumber_New&".&nbsp;&nbsp;&nbsp;"&arr_SQL(1,i)&"&nbsp;&nbsp; &nbsp<strong style='color:#F00'>Roll No</strong>#<input type ='textbox' clas='form-control' id='roll_"&arr_SQL(0,i)&"' name = 'roll_"&arr_SQL(0,i)&"' value ='"&expectedroll&"' placeholder='please type roll no' />" & rollnobox & "</li>"
        
			Next
		Else
			RESPONSE.Write("<h5 class='notice'>* No shortlisted applicants found of this position ( please shortlist some applicants of this position )</h5>")
		End If
		
	
	response.Write( "<br>Total Shortlisted : "&arr_sqlCount(0, 0)&"<br> Total Roll Created :"&arr_chkRollTableSql(0, 0)&" <br>"&str&"</ol><br><input type='checkbox' id='existing' onclick='RollViewExist("&orderby&")'>View Existing Roll<br><div id='span_viewlist'></div>")	

%>