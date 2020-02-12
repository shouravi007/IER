				<div class="col-sm-12">
					<div class="summery-view bg-style">
<form action="?<%=Encode("Location=Edit&FormAction=Refference")%>" method="post" name="frmApplicationInsert" id="frmApplicationInsert">	
	<input name="txtBlank" id="txtBlank" type="hidden" value="True" />
    <input name="txtTrackingNo" id="txtTrackingNo" type="hidden" value="<%=TrackNo%>" />
	<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">
	<input name="TrackNoNew" id="TrackNoNew" type="hidden" value="<%=TrackNoNew%>" />
<%	For intRefIndex = 1 To 2
		' Variable Initialization 4 Reference
		intRefID = Request.Form("hidReferenceId" & intRefIndex)
		strRefName = Request.Form("txtReferenceName" & intRefIndex)
		strRefName = GiveReplacedString4DB(strRefName)
		strRefPos = Request.Form("txtReferencePosition" & intRefIndex)
		strRefPos = GiveReplacedString4DB(strRefPos)
		strRefAdd = Request.Form("txtReferenceAddress" & intRefIndex) 
		strRefAdd = GiveReplacedString4DB(strRefAdd)
		strRefPhone = Request.Form("txtReferencePhone" & intRefIndex) 
		'strRefCell = Request.Form("txtReferenceCellPhone" & intRefIndex) 
		strRefEmail = Request.Form("txtReferenceEmail" & intRefIndex) 
		strRefEmail = GiveReplacedString4DB(strRefEmail)
%> 
		<input name="hidReferenceId<%=intRefIndex%>" id="hidReferenceId<%=intRefIndex%>" type="hidden" value="<%=intRefID%>" />	
		<input name="txtReferenceName<%=intRefIndex%>" id="txtReferenceName<%=intRefIndex%>" type="hidden" value="<%=strRefName%>" />	
		<input name="txtReferencePosition<%=intRefIndex%>" id="txtReferencePosition<%=intRefIndex%>" type="hidden" value="<%=strRefPos%>" />	
		<input name="txtReferenceAddress<%=intRefIndex%>" id="txtReferenceAddress<%=intRefIndex%>" type="hidden" value="<%=strRefAdd%>" />
		<input name="txtReferencePhone<%=intRefIndex%>" id="txtReferencePhone<%=intRefIndex%>" type="hidden" value="<%=strRefPhone%>" />
		<!--<input name="txtReferenceCellPhone<%'=intRefIndex%>" id="txtReferenceCellPhone<%'=intRefIndex%>" type="hidden" value="<%'=strRefCell%>" />-->
		<input name="txtReferenceEmail<%=intRefIndex%>" id="txtReferenceEmail<%=intRefIndex%>" type="hidden" value="<%=strRefEmail%>" />
<%
	Next
%>	
	<input name="txtBlank" id="txtBlank" type="hidden" value="True" />

</form>


<%
		
	For intRefIndex = 1 To 2
		' Variable Initialization 4 Reference
		intRefID = Request.Form("hidReferenceId" & intRefIndex)
		strRefName = Request.Form("txtReferenceName" & intRefIndex)
		strRefName = GiveReplacedString4DB(strRefName)
		strRefPos = Request.Form("txtReferencePosition" & intRefIndex)
		strRefPos = GiveReplacedString4DB(strRefPos)
		strRefAdd = Request.Form("txtReferenceAddress" & intRefIndex) 
		strRefAdd = GiveReplacedString4DB(strRefAdd)
		strRefPhone = Request.Form("txtReferencePhone" & intRefIndex) 
		'strRefCell = Request.Form("txtReferenceCellPhone" & intRefIndex) 
		strRefEmail = Request.Form("txtReferenceEmail" & intRefIndex) 
		strRefEmail = GiveReplacedString4DB(strRefEmail)
		
		strRefName =  CheckValidation("True",strRefName,"text","Text","100","Name " & intRefIndex&" of Reference ")
		strRefPos =  CheckValidation("True",strRefPos,"text","Text","100","Position " & intRefIndex&" of Reference ")
		strRefAdd =  CheckValidation("True",strRefAdd,"text","Text","255","Address  " & intRefIndex&" of Reference ")
		strRefPhone =  CheckValidation("True",strRefPhone,"text","Text","50","Phone " & intRefIndex&" of Reference ")
		strRefEmail =  CheckValidation("False",strRefEmail,"email","Text","100","Email " & intRefIndex&" of Reference ")
		
	Next


		ReDim arrRefSQL(2)
		ReDim arrRefData(2, 7)
		' LOOP 4 Referee.
		For intRefIndex = 1 To 2
			' Variable Initialization 4 Reference
			intRefID = Request.Form("hidReferenceId" & intRefIndex)
			strRefName = Request.Form("txtReferenceName" & intRefIndex)
			strRefName = GiveReplacedString4DB(strRefName)
			strRefPos = Request.Form("txtReferencePosition" & intRefIndex)
			strRefPos = GiveReplacedString4DB(strRefPos)
			strRefAdd = Request.Form("txtReferenceAddress" & intRefIndex) 
			strRefAdd = GiveReplacedString4DB(strRefAdd)
			strRefPhone = Request.Form("txtReferencePhone" & intRefIndex) 
			'strRefCell = Request.Form("txtReferenceCellPhone" & intRefIndex) 
			strRefEmail = Request.Form("txtReferenceEmail" & intRefIndex) 
			strRefEmail = GiveReplacedString4DB(strRefEmail)
	
	
	
			USERID = TrackNo
			currentUser = TrackNo 
			strModuleName = "Resume Update" 
			SQLInsertRef = intRefID & "-" & TrackNo & "-" &  strRefName & "-" &  strRefPos & "-" &  strRefAdd & "-" &  strRefPhone & "-" &  strRefEmail & "-" & Request.ServerVariables("REMOTE_ADDR")

			strDescription = ReplacedAllTypeOfSpecialChar(SQLInsertRef) 
			strAction = "Update Reference"
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
				
				arrRefData(refDataCount, 7) =  now


				arrRefSQL(refDataCount) = "SELECT PersonalId, Name, Position, Address, Phone, Email,ip,updatedon  FROM Reference WHERE id =" & intRefID
			End If
			
		Next

					
		objERS.UpdateData arrRefSQL, arrRefData, errMsg
		ErrorMessage "1302", errMsg, 0
%>

<!--#include File = 'BackToEditResume.asp' -->

    
        </div>
   </div>