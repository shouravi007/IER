				<div class="col-sm-12">
					<div class="summery-view bg-style">


<%

err.clear 

If Request.Form("txtCenter") <> "S" And Request.Form("txtPosition") <> "S" Then 

      strCenterId = Request.Form("txtCenter")
	  strJobId = Request.Form("txtPosition") 
	
	   strMsg = "" 
	  For i = 1 To 100 
		 'strRoomLocation 
		 strRoomLocation = Request.Form("txtRoomLocation"&i) 
         strRoomNo = Request.Form("txtRoomNo"&i)
         strRollFrom = Request.Form("txtRollFrom"&i)
		 strRollTo = Request.Form("txtRollTo"&i)
         strTotal = Request.Form("txtTotal"&i) 
		 
		 If strTotal = "" Then 
		   strTotal = 0 
		 End IF 
		 
		 If strRoomNo <> "" And strRollFrom <> ""  And strRollTo <> "" Then 
		   strSQL = "" 
		   strSQL = "Select * from attendance where CenterId="&strCenterId&" and jobid="&strJobId&" and  RoomNumber = '"&strRoomNo&"' and [From] = "&strRollFrom&" and [To]= "&strRollTo
		  Response.Write(strSQL&"<br/>") 
		   arrRooms = objERS.RetrieveData(strSQL,errMsg)
		   ErrorMessage 97,errMsg,0 
		   
		    
		   If arrRooms(0,0) = "Nothing" Then 
		   
			   strSQL = "" 
			   strSQL = "Insert into Attendance (CenterID,JobID,RoomLocation,RoomNumber,[From],[To],Total) " 
			   strSQL = strSQL & " Values( "&strCenterId&","&strJobId&",'"&strRoomLocation&"','"&strRoomNo&"',"&strRollFrom&","&strRollTo&","&strTotal&")"
			   Response.Write(strSQL&"<br/>") 
			   objERS.ExecuteQuery strSQL, errMsg
			   ErrorMessage 93, errMsg, 0 
			   strMsg = strMsg & i +1 &" .  Room Number :"&strRoomNo&", Roll From : "&strRollFrom&", Roll To : "&strRollTo&" added successfully \n"
			 Else
			     strMsg = strMsg & i +1 &" .  Room Number :"&strRoomNo&", Roll From : "&strRollFrom&", Roll To : "&strRollTo&" Already Exist ! so not added . \n"
			 End IF 
		 End If 
	  Next 	
	
	%>
     <script type="text/javascript">
	     alert("<%=strMsg%>");
		 //location.href = "AddRoomFromExcel.asp";
     </script>
    <%
	
End if 

%>
       </div>
     </div>
