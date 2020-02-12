<%
intJobId = Request.Form("jid")
centerid = Request.Form("center")
If intJobId <> "" and centerid <> ""  Then    
    If IsNumeric(intJobId) and IsNumeric(centerid) Then 
	strSQL = "" 
	
	strSQL = "SELECT id, RoomNumber, RoomLocation, [from],[to] FROM Attendance where Centerid = "&centerid&" and jobid = "&intJobId&" order by [from]" 
	'response.Write(strSQL )
	arrSQL2 = objERS.RetrieveData(strSQL, errLog)
	  
	ErrorMessage "123", errLog, 0
%> 
	
&nbsp;&nbsp;
<select id='txtRoom' name='txtRoom' onchange="BdjobsPhotoUpdate(document.getElementById('txtPosition'),document.getElementById('txtCenter'),this);" class="form-control">
    <option value='S'>Select</option>
    <%  
    If arrSQL2(0,0) <> "Nothing" Then
        For i = 0 to ubound(arrSQL2,2) 
         room = arrSQL2(1,i)
		  'if room = 0 then
			'room = "Extra"
		 'end if
    %>
       
    <option value="<%=arrSQL2(0,i)%>" ><%= arrSQL2(2,i)%>&nbsp;--&nbsp;<%=room%></option>
<%	
    	next  
%>
 <!--<option value="133">Missing</option>-->
<%
    End If 
%>
		</select>
<% 
  End If 
End If


%>     