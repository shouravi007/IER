
               <form id="frmRollto" name="frmRollto" action="?<%=Encode("Location=Admin&FormAction=Roll_Generate_All")%>" method="post">
                 <input type="hidden" name="txtPosition" value="<%=Request.Form("txtPosition")%>"  />
                 <input type="hidden" name="txtPrefixRoll" value="<%=Request.Form("txtPrefixRoll")%>"  />  
                 <input type="hidden" name="txtDelimeter1" value="<%=Request.Form("txtDelimeter1")%>"  />  
                 <input type="hidden" name="txtNumberRoll" value="<%=Request.Form("txtNumberRoll")%>"  />  
                 <input type="hidden" name="txtDelimeter2" value="<%=Request.Form("txtDelimeter2")%>"  />  
                 <input type="hidden" name="txtPostfix" value="<%=Request.Form("txtPostfix")%>"  />  
                </form>
<%


strJobId = Request.Form("txtPosition")
'strPosition =Request.Form("txtPosition")
strPrefix = Request.Form("txtPrefixRoll")
strDelimeter1 =Request.Form("txtDelimeter1")  
strNumberRoll=Request.Form("txtNumberRoll") 
strDelimeter2 =Request.Form("txtDelimeter2")  
strPostfix = Request.Form("txtPostfix")  


Response.Write("Trip in session: " &Session("TRIP"))	
If Session("TRIP") = "" Then
	varTrip = 1
	
	strNotin = " and  p.id not in  (select personalid from roll where jobid = "&strJobId&" )  "
	
	strSQL = "Select p.id From PERSONAL p inner join jobpos j on j.personalid = p.id  where j.shortlisted = 1 and j.jobid = "&strJobId&strNotin&"  Order By p.DateOfBirth, RIGHT(p.CellPhone, 8) Desc, p.FirstName, p.FatherName Desc  "
	Response.Write "<br/>"&strSQL
	'ValuePrint strSQL,"strSQL" 
	
	arrUserInfo = objERS.RetrieveData(strSQL, errLog)
	ErrorMessage "131", errLog, 0
	LoopFrom = 0
	LoopTo = 199
	Session("arrUserInfo") = arrUserInfo
	Response.Write("If" & UBound(arrUserInfo,2))
Else
	varTrip = CInt(Session("TRIP"))	+ 1
	LoopFrom = Session("LoopTo") + 1
	arrUserInfo = Session("arrUserInfo")
	Response.Write("<br>Array: " &Ubound(Session("arrUserInfo"), 2)&"<br>" & Session("LoopTo"))
	If Ubound(Session("arrUserInfo"), 2) - Session("LoopTo") =< 200 Then
		intRound = "Last"
		LoopTo = Ubound(Session("arrUserInfo"), 2) '- Session("LoopTo")
	ElseIf Ubound(Session("arrUserInfo"), 2) < Session("LoopTo") Then
		Response.Write("<br/>End of array.")
		Response.End()
	Else
		LoopTo = Session("LoopTo") + 200
	End If
	Response.Write("Else")
End If

Session("TRIP") = varTrip
Session("LoopFrom") = LoopFrom
Session("LoopTo") = LoopTo


Response.Write("</br>Trip: " & varTrip & "</br>=========================================================================</br>LoopFrom: ")		
Response.Write(LoopFrom & "</br>LoopTo: " & LoopTo & "</br>=========================================================================</br>")		
i=1   

if arrUserInfo(0, 0) <> "Nothing" then 	
For x = LoopFrom  To  LoopTo   ' Clng(Ubound(Session("arrUserInfo")))	'Ubound(arrUserInfo,2) 
	If arrUserInfo(0,x) <> "Nothing" Then 
		If x = LoopTo Then 
			RollProb = Clng(arrUserInfo(0,x)) - Clng(arrUserInfo(0,x-1))
		Else
			RollProb =  Clng(arrUserInfo(0,x)) - Clng(arrUserInfo(0,x+1))
		End IF 

	    If Abs(RollProb) > 10 Then   
			intMaxID = objERS.GetNewId("[Roll]  where jobid = "&strJobId, "[RollNo]", errMsg)
			ErrorMessage "118", errMsg, 0			
			RollNo = strPrefix&strDelimeter1&intMaxID&strDelimeter2&strPostfix	
			
			strSqlinsert = "" 
			strSqlinsert = "Insert Into Roll([PersonalId],[RollNo],[RollProb],[jobid]) Values ( "
			strSqlinsert = strSqlinsert & arrUserInfo(0,x) & ","&RollNo&","&RollProb&", "&strJobId&")" 
			Response.Write "</br> Roll  :  "&x&" "& strSqlinsert 'strSqlinsert
			
			objERS.ExecuteQuery strSqlinsert, errMsg
			ErrorMessage "1306", errMsg, 0	


		Else 

			'intMaxID = objERS.GetNewId("[Roll] where jobid = 4  ", "[RollNo]", errMsg)
		    'ErrorMessage "133", errMsg, 0			
			'RollNo = intMaxID	
			
			strSqlinsert = "" 
			strSqlinsert = "Insert Into Roll([PersonalId],[RollProb],[jobid]) Values ( "
			strSqlinsert = strSqlinsert & arrUserInfo(0,x) & ", "&RollProb&","&strJobId&")"  
			Response.Write "</br> Roll Prob "&x&"  : "& strSqlinsert 'strSqlinsert
			
			objERS.ExecuteQuery strSqlinsert, errMsg
			ErrorMessage "1306", errMsg, 0	
          End IF 
	End If  
Next 
else
Response.Write("</br>No Records found </br></br></br>==================================================================================")

end if 
		   	   
objERS.CloseConnection()
Set objERS = Nothing
			   
Response.Write("</br>END OF GROUP</br></br></br>==================================================================================")
If intRound = "Last" Then
	Response.Write("<br><br>End of record")
	Response.End()
End If
%>

<script type="text/javascript">
	function ReloadForm()
	{
		window.location.reload(true);
		//var strPath = window.location;
		//alert(strPath);
		//window.location.assign(strPath<%'="?Trip="&varTrip%>);
	}
	//alert("Hello");
	window.setTimeout(ReloadForm(), "10000"); 
</script>
<a href="#" onclick="ReloadForm();">Next >></a>


