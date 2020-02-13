<!-- #include virtual = "\Class\c_Data_batch.asp" -->


<%ON ERROR RESUME NEXT%>

		 <FORM name="frmErr" id="frmErr" action="?<%=Encode("Location=Admin&FormAction=Login")%>" method="post">
        
        <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
        
        <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />
         
			<INPUT type="hidden" name="T" value="False">
		 </FORM>


<%
 
if isnull(Session("USERNAME")) or isempty(Session("USERNAME")) then 
	  if isnull(Request.Cookies("USERNAME")) or isempty(Request.Cookies("USERNAME")) or Request.Cookies("USERNAME") = "" then 	
		Session.Abandon()
		
		'Response.Redirect("default.asp")
		%>
		 <SCRIPT language="javascript">
			alert("Sorry unauthorized access.\nPlease click ok to login...");
			document.getElementById('Login').submit();
		 </SCRIPT>		 
        
     <%
	end if 
End if 

MLA = SESSION("MLA")
if MLA = "" Then 
 MLA = Request.Cookies("MLA")
end if


JA = SESSION("JA")
if JA = "" Then 
 JA = Request.Cookies("JA")
end if


 currentUser = Session("FullName")
 if currentUser = "" Then 
  currentUser = Request.Cookies("USERNAME")
 end if 
 
 
 if currentUser = "" Then 
  currentUser = Session("USERNAME")
 end if 
 
 if currentUser = "" Then 
  currentUser = Request.Cookies("USERNAME")
 end if  
 
 currentUserType = Session("UserType")
 if currentUserType = "" then 
 currentUserType = Request.Cookies("UserType")
 end if 



 USERID = Session("UserId")
 If USERID = "" then 
  USERID = Request.Cookies("UserId")
 End If 

	strPassword = Session("PWORD") 
	
	if strPassword = "" then 
	strPassword = Request.Cookies("PWORD") 
    
	end if 

IF ERR.NUMBER <> 0 THEN
'Response.Write(err.description)
ERR.CLEAR
%>
		 <SCRIPT language="javascript">
			//alert("Sorry unauthorized access.\nPlease click ok to login...");
			//document.getElementById('Login').submit();
		 </SCRIPT>		 
<%eND IF







' This Procedure is Used by All Class, Function & Procedure. This is an Error Message Displaying Procedure.
Public Sub ErrorMessage(LineNumber, errLog, flag)
	If errLog <> "" Then
	   If flag = 1 Then
			objERS.RollBackTransaction errLog
	   End If
	   Set objERS = Nothing
		If InStr(Request.ServerVariables("HTTP_REFERER"), "serverbdj") > 0  Or   Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141"  Then
			Response.Write(errLog)
			Response.End()
		End If
	   ShowMessage_ADOErrors errLog, "ShortList.asp", LineNumber, "trustbank_2016"
	End If
End Sub


strMessage = ""
TrackingNumber = Request.Form("TrackingNumber")	
jobid = Request.Form("jobid") 
rollno = Request.Form("rollno") 


 currentUser = Session("FullName")
 if currentUser = "" Then 
  currentUser = Request.Cookies("USERNAME")
 end if 
 
 
 if currentUser = "" Then 
  currentUser = Session("USERNAME")
 end if 
 
 if currentUser = "" Then 
  currentUser = Request.Cookies("USERNAME")
 end if  
 
 currentUserType = Session("UserType")
 if currentUserType = "" then 
 currentUserType = Request.Cookies("UserType")
 end if 



 USERID = Session("UserId")
 If USERID = "" then 
  USERID = Request.Cookies("UserId")
 End If 



if TrackingNumber <> ""  and jobid <> "" and rollno <> "" Then 
	
	Set objERS = new c_Data
	objERS.OpenConnection "DhakaBankSQL", errMsg
	ErrorMessage "43", errMsg, 0



	SQL_ID = "" 
	SQL_ID = "select rollno from roll where jobid = "&jobid&" and rollno = "&rollno
	
	'Response.Write("<br>"&SQL_ID)
	'Response.End()
	' Response.Write("<br>jobid:"&jobid)
	arr_rollduplicate = objERS.RetrieveData(SQL_ID, errMsg)
	ErrorMessage "163", errMsg, 0	
	
	if arr_rollduplicate(0, 0) = "Nothing" then
		sql = "Select p.ID,(p.FirstName + ' ' + p.LastName) AS Name,P.FATHERNAME, P.HOMEDISTRICT,j.trackingno From PERSONAL p inner join jobpos j on j.personalid = p.id  where p.shortlisted = 1 and p.jobid = " & jobid & " and j.change is null and j.trackingno = "&TrackingNumber&" order by  p.DateOfBirth, RIGHT(p.CellPhone, 8) Desc, (p.FirstName+ ' '+p.LastName), p.FatherName Desc"
		'response.Write(sql)
		arr_SQL = objERS.RetrieveData(sql, errMsg)
		ErrorMessage "56", errMsg, 0
		
		
            str = ""
			for i = 0 to ubound(arr_SQL,2)
			    rollcount = 0 
				intPersonalId = arr_SQL(0,i)
				TrackNo = arr_SQL(4,i)
				'RESPONSE.Write(intPersonalId)
				strName = arr_SQL(1,i)
				strFatherName = arr_SQL(2,i)
				strHomeDistrict = arr_SQL(3,i)
				
				
				ReDim sqlUpdateRollTable(i)
				ReDim arrUpdateData(i,6)
				
				arrUpdateData(0, 0) = intPersonalId
				'str = str & "<br><br><p> Tracking No :" & TrackNo 
				arrUpdateData(0, 1) = strName
				'str = str & "&nbsp; Name :" & strName 
				arrUpdateData(0, 2) = strFatherName
				'str = str & "&nbsp; Fathers Name :" & strFatherName 
				arrUpdateData(0, 3) = strHomeDistrict
				arrUpdateData(0, 4) = jobid
				
				arrUpdateData(0, 5) = rollno
				'arrUpdateData(0, 5) = rollnoStart
				strMsg = strMsg & "&nbsp; Roll no :" & rollno & "<p>"
				rollcount = rollcount + 1 
				'arrUpdateData(0, 5) = rollnoStart
				sqlUpdateRollTable(0) = "SELECT PERSONALID, Name, FatherName, HomeDistrict, JobID, RollNo from roll WHERE PersonalId=" & intPersonalId
				
				
				'response.Write(sqlUpdateRollTable(0))		
				objERS.UpdateData sqlUpdateRollTable, arrUpdateData, errMsg
				'response.Write(errMsg)
				ErrorMessage "128", errMsg, 0
				
			    strMsg = strMsg & " Created successfully "
			
			 
			next
		
		
		

    else
			 strMsg = strMsg & arr_rollduplicate(0, 0) &" rollno already exist ! "
			 'strMsg = strMsg & TrackingNumber&" has shortlisted successfully."' 
             strAction = "Roll Create"
	
	
	end if 
               
		   
	

		strModuleName = "Roll Gen"
	

		
		SQLUserLog = "INSERT INTO UserLog (UserId, UserName, ModuleName, [Description], ActionDate, [Action]) values (" 
		SQLUserLog = SQLUserLog & USERID & ", '" & currentUser  & "', '" & strModuleName & "', '"&strMsg&"', '" & Now & "' ,'" & strAction & "')"
		
	        IF Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0 Then		
	   		'Response.Write(SQLUserLog&"<br/>")
			End If
			
		objERS.ExecuteQuery SQLUserLog, strErr
		


	
	
	objERS.CloseConnection()
	Set objERS = Nothing

End If 

   if errMsg = "" then 
	 Response.Write("<strong style='color:#F00; font-size: 12px;'><br>( "&strMsg&" ) </strong>")
   end if


%> 