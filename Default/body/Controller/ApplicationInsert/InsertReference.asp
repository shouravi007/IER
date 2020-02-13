
<%

		ReDim arrRefSQL(2)
		ReDim arrRefData(2, 6)
		' LOOP 4 Referee.
		For intRefIndex = 1 To 2
			' Variable Initialization 4 Reference
			intRefID = Request.Form("hidReferenceId" & intRefIndex)
			strRefName = Request.Form("txtReferenceName" & intRefIndex)
			strRefName = GiveReplacedString4DB(strRefName)
			strRefName = ReplacedAllTypeOfSpecialChar(strRefName)
			
			strRefPos = Request.Form("txtReferencePosition" & intRefIndex)
			strRefPos = GiveReplacedString4DB(strRefPos)
			strRefPos = ReplacedAllTypeOfSpecialChar(strRefPos)
			
			strRefAdd = Request.Form("txtReferenceAddress" & intRefIndex) 
			strRefAdd = GiveReplacedString4DB(strRefAdd)
			strRefAdd = ReplacedAllTypeOfSpecialChar(strRefAdd)
			
			strRefPhone = Request.Form("txtReferencePhone" & intRefIndex) 
			strRefPhone = GiveReplacedString4DB(strRefPhone)
			strRefPhone = ReplacedAllTypeOfSpecialChar(strRefPhone)
			'strRefCell = Request.Form("txtReferenceCellPhone" & intRefIndex) 
			strRefEmail = Request.Form("txtReferenceEmail" & intRefIndex) 
			strRefEmail = GiveReplacedString4DB(strRefEmail)
			strRefEmail = ReplacedAllTypeOfSpecialChar(strRefEmail)
			
			USERID = TrackNo
			currentUser = TrackNoNEW 
			strModuleName = "Resume Submit" 
			SQLInsertRef = intRefID & "-" & TrackNo & "-" &  strRefName & "-" &  strRefPos & "-" &  strRefAdd & "-" &  strRefPhone & "-" &  strRefEmail & "-" & Request.ServerVariables("REMOTE_ADDR")

			strDescription = ReplacedAllTypeOfSpecialChar(SQLInsertRef) 
			strAction = "Insert Reference"
			%>
			  <!--#include File = "UserLog.asp" -->
			<%
		
			
			'Response.Write("<br />intRefID: " & intRefID)
			If strRefName <> "" Or strRefPos <> "" Or strRefAdd <> "" Or strRefPhone <> "" Or strRefCell <> "" Or strRefEmail <> "" Then 
				refDataCount = intRefIndex - 1
				
				arrRefData(refDataCount, 0) = TrackNo
				arrRefData(refDataCount, 1) = strRefName
				arrRefData(refDataCount, 2) = strRefPos
				arrRefData(refDataCount, 3) = strRefAdd
				arrRefData(refDataCount, 4) = strRefPhone
				'arrRefData(refDataCount, 5) = strRefCell
				arrRefData(refDataCount, 5) = strRefEmail
				arrRefData(refDataCount, 6) =  Request.ServerVariables("REMOTE_ADDR")

				arrRefSQL(refDataCount) = "SELECT PersonalId, Name, Position, Address, Phone, Email,ip FROM Reference WHERE id=" & intRefID
			End If
			
		Next

		objERS.UpdateData arrRefSQL, arrRefData, errMsg
		ErrorMessage "1302", errMsg, 0
		
		SQLUpdateUDate = "UPDATE Personal SET ip = '"&Request.ServerVariables("REMOTE_ADDR")&"' ,  UpdatedOn='"  & now &  "' WHERE id=" & TrackNo
		objERS.ExecuteQuery SQLUpdateUDate, errMsg
		ErrorMessage "1306", errMsg, 0	



		
%>
