<%

    strModuleName = "CRM Login"
	strDescription = "CRM View Summery for the tracking : "&arrUserInfo(9,s)
	strAction = "View"
	SQLUserLog = "INSERT INTO UserLog (UserId, UserName, ModuleName, [Description], ActionDate, [Action]) values (" 
	SQLUserLog = SQLUserLog & Request.form("UserId") & ", '" & Request.form("UserName")  & "', '" & strModuleName & "', '" & strDescription & "', '" & Now & "' ,'" & strAction & "')"
	
	ValuePrint SQLUserLog, "2163-SQLUserLog"
	
	objERS.ExecuteQuery SQLUserLog, strErr
			   


	IsPhoto = arrUserInfo(5,s)
	IsBdjPhoto = arrUserInfo(10,s)
	BdjobsId = arrUserInfo(12,s)

    imgSrc = arrUserInfo(8,s)
    
	TrackNo = arrUserInfo(6,s) 
    TrackNoNew = arrUserInfo(9,s)
	strPassword = arrUserInfo(4,s)
	
	strName = arrUserInfo(0,s)
	updatedOn = arrUserInfo(14,s)
	postedOn = arrUserInfo(15,s)
		
		

		    sql = ""
			sql = "select jj.JobTitle,j.id,j.jobid, j.shortlisted from JobPosting jj inner join jobpos j on jj.jobid = j.jobid  where j.personalid ="&TrackNo
			ValuePrint sql, "sql"

			arrJobTitle = objERS.RetrieveData(sql, errMsg) 
			ErrorMessage "153", errMsg, 0

            if arrJobTitle(0, 0) <> "Nothing" Then 
			  position = "" 
			  For i = 0 to ubound(arrJobTitle, 2)
			    position = position & arrJobTitle(0 , i ) & "  ( Job Reference ID : "& arrJobTitle(1 , i ) & " ) <br>"
				TrackNoNEW = arrJobTitle(3 , i ) 
				jobid = arrJobTitle(4 , i )
				 
			  Next			 
			end if  		
		
					
					
If IsPhoto = True Then 

Else 
   If IsBdjPhoto = True then  
		onlyPhotoSrc = arrUserInfo(15,s)
		imgSrc =  "http://ers.bdjobs.com/applications/ImageResize/Photos/"&strPhotoFolder&"/bdjobs/"&onlyPhotoSrc &".jpg"				
   End If 
End If 
			

		   strButton = Request.Form("btnSubmit") 
		  
		   'strLink = "?"&Encode("Location=Controller&FormAction=AfterLogin")

           strLink = "?"&Encode("Location=Admit&FormAction=viewAdmitCard")
		   
           ' strLink = "http://ers.bdjobs.com/applications/"&commonFolder&"/?"&Encode("Location=Admit&FormAction=viewAdmitCard_ezone")
		   
          ' strLink = "?"&Encode("Location=Admit&FormAction=viewAdmitCard_ezone")
		   
		   
		   intJobid = arrUserInfo(16,s)
		   
		   rollno = arrUserInfo(17,s)
		   
		   if isnull(rollno) or isempty(rollno) then 
		      rollno = "" 	
		   else
		      intRollNo = rollno	   
		   end if 		   
		   
%>