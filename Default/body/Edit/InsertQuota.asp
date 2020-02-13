<div class="col-sm-12">
    <div class="summery-view bg-style">

<%
'response.Write("TrackNo:"&TrackNo)

strFredomFighter = Request.Form("ddlFFQ")
strFredomFighterAnswer = Request.Form("ddlFF")
strOrphan = Request.Form("ddlOQ") 	
strTribal = Request.Form("ddlTQ")
strDisableDetails = Request.Form("ddlDisable")
strAnserVdpQuota = Request.Form("ddlAVQ")
						
'response.Write("Orphan"&strOrphan&"<br>")	   
'response.Write("Tribal"&strTribal&"<br>")
'response.Write("FreedomFighter"&strFredomFighter&"<br>")
'response.Write("strFredomFighterAnswer"&strFredomFighterAnswer&"<br>")
'response.Write("Disable"&strDisableDetails&"<br>")
'response.Write("Ansarvdp"&strAnserVdpQuota&"<br>")


'response.End()
%>

<form action="?<%=Encode("Location=Edit&FormAction=quota")%>" method="post" name="frmApplicationInsert" id="frmApplicationInsert">	
<input name="txtBlank" id="txtBlank" type="hidden" value="True" />
<input name="txtTrackingNo" id="txtTrackingNo" type="hidden" value="<%=TrackNo%>" />	
<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">
<input name="TrackNoNew" id="TrackNoNew" type="hidden" value="<%=TrackNoNew%>" />

<input name="ddlFFQ" id="ddlFFQ" type="hidden" value="<%=strFredomFighter%>" />	
<input name="ddlFF" id="ddlFF" type="hidden" value="<%=strFredomFighterAnswer%>" />	
<input name="ddlOQ" id="ddlOQ" type="hidden" value="<%=strOrphan%>" />	
<input name="ddlTQ" id="ddlTQ" type="hidden" value="<%=strTribal%>" />
<input name="ddlDisable" id="ddlDisable" type="hidden" value="<%=strDisableDetails%>" />	
<input name="ddlAVQ" id="ddlAVQ" type="hidden" value="<%=strAnserVdpQuota%>" />

<input name="txtBlank" id="txtBlank" type="hidden" value="True" />
    
</form>

<%

If strFredomFighter = 1 Then
	'response.Write(strFredomFighter)
	if strFredomFighterAnswer = "" then
		strFredomFighterAnswer = CheckValidation("True",strFredomFighterAnswer,"text","1","1","Freedom Fighter Grand Child/Child Quota")
	end if	
	strFredomFighter = strFredomFighterAnswer
ElseIf strFredomFighter = 0 Then
	strFredomFighter = 0
End If

	ReDim arrPersonalSQL(0)
	ReDim arrPersonalData(0,5)
	
	arrPersonalData(0, 0) = strFredomFighter
	arrPersonalData(0, 1) = strTribal
	arrPersonalData(0, 2) = strDisableDetails
	arrPersonalData(0, 3) = strAnserVdpQuota
	arrPersonalData(0, 4) = strOrphan
	arrPersonalData(0, 5) = now 
	
	USERID = TrackNo
	currentUser = TrackNo 
	strModuleName = "Quota Update" 
	
	SQLInsertRef = strFredomFighterAnswer & "-" & TrackNo & "-" &  strOrphan & "-" &  strTribal & "-" &  strDisableDetails & "-" &  strAnserVdpQuota & "-" & Request.ServerVariables("REMOTE_ADDR")

	strDescription = ReplacedAllTypeOfSpecialChar(SQLInsertRef) 
	strAction = "Update Quota"
			%>
			  <!--#include File = "UserLog.asp" -->
			<%

		
		
		   If TrackNo <> "" Then 
			arrPersonalSQL(0) = "SELECT [FreedomFighter], [Tribal], [Disable], [Ansarvdp], [Orphan], [insertDatetime] FROM Quota WHERE id =" & TrackNo
		
			objERS.UpdateData arrPersonalSQL, arrPersonalData, errMsg
			ErrorMessage "86", errMsg, 0
		
		  End IF 
		
%>
<!--#include File = 'BackToEditResume.asp' -->
    
        </div>
   </div>