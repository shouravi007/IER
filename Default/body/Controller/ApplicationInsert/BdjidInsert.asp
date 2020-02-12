<%
 If errMsg = "" Then 

		id_my = Request.Form("id_my")
		
		ValuePrint id_my, "id_my"
		
		If id_my <> "" and TrackNo <> "" Then 
		    id_my = cstr(id_my)
		    If isnumeric(id_my) = true then
			 bdjID2 = id_my
			else
			 bdjID2 = Decode(id_my)
			end if  

			resumeServer="MyBdjobsView"
			strPageName="imp_bdj_to_ers.asp"
			
			'USP_ERSReferences @P_ID,@ERS_TrackID,@ERS_ID
			
			strSql = ""
			strSql = "USP_ERSReferences  "&bdjID2&","&TrackNo&","&SID
			ValuePrint strSql , "773-sql "    
			
			USERID = TrackNo
			currentUser = TrackNoNEW 
			strModuleName = "Resume Submit" 
			SQLInsertBdjID = strSql & "-" & Request.ServerVariables("REMOTE_ADDR")

			strDescription = ReplacedAllTypeOfSpecialChar(SQLInsertBdjID) 
			strAction = "Insert ERSID_To_BdJobs"
			%>
			  <!--#include File = "UserLog.asp" -->
			<%
			objResumeServer.ExecuteQuery strSql,strErr
			ValuePrint strErr, "778-errmsg"
		End IF 
End if 

%> 