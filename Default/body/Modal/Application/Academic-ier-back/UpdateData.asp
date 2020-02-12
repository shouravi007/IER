    <!--#include file = 'InsertVariable.asp'-->

<%
		If TrackNo = "-1" Then
%>

        <!--#include File = "Duplicate_ID_Problem.asp" -->

<%    	ErrorMessage "1302", errMsg, 0	
	
				
	SQL_ID = "" 
	SQL_ID = "SELECT [id] FROM Personal WHERE FirstName = '" & strFirstName & "' AND FatherName = '" & strFatherName & "' AND MotherName = '" & strMotherName & "' AND DateOfBirth = '" & dtmDateOfBirth & "' and postedon >= '2018-03-07' " 
			
			'Response.Write("<br>"&SQL_ID)
           ' Response.Write("<br>jobid:"&jobid)
			arr_ID = objERS.RetrieveData(SQL_ID, errMsg)
			'Response.Write errMsg
			ErrorMessage "163", errMsg, 0	
	
	if arr_ID(0, 0) <> "Nothing" then
	  TrackNo = arr_ID(0, 0)	 
	end if
	
%>
        <!--#include file = 'FeedBackInsert.asp'-->
        <!--#include file = 'JobPosUpdate.asp'-->
        <!--#include File = 'SendMail.asp' -->

<%							


			
			Else
				Response.Write("<center><strong>Duplicate user found.<br /></strong></center>")  ' Click <a href='#' onclick='PageSubmit();'>here</a> to re-try.
				
				SQL_ID = "" 
				SQL_ID = "Exec [selectTracking] " & TrackNo 
				
				'Response.Write("<br>"&SQL_ID)
				'Response.End()
				' Response.Write("<br>jobid:"&jobid)
				arr_Tracking = objERS.RetrieveData(SQL_ID, errMsg)
				ErrorMessage "163", errMsg, 0	
				
				if arr_Tracking(0, 0) <> "Nothing" then
				TrackNoNEW = arr_Tracking(0, 0)	 
				end if
				
				Response.Write("<center><strong><br />Your tracking number is: " & TrackNoNEW & ".<br /> We request you to <a href='?"&Encode("Location=Modal&FormAction=Login")&"'>edit</a> your CV.</strong></center>")
				objERS.CloseConnection()
				Set objERS = Nothing 
				Response.End()
			End If	
		Else
			
		End If
		
		'Response.Write("<center>Personal table Insert/Update successfully.</center>")
%>
        <!--#include File = 'InsertAcademic.asp' -->
        <!--#include File = 'InsertReference.asp' -->


<% If errMsg = "" then  %>
<!--#include File = "BdjidInsert.asp" -->
<%End if%>
<form id="fotFrm" action="?<%=Encode("Location=View&FormAction=Photo")%>" method="post" >

<!--<input type="submit" value="UPLOAD PHOTO" class="footer"/>-->
<input type="hidden" id="track_no" name="track_no" value="<%=TrackNo%>">
<input type="hidden" id="TrackNoNEW" name="TrackNoNEW" value="<%=TrackNoNEW%>"  />
<input type="hidden" id="systemName" name="systemName" value="dhakabank_2018" >  
<input type="hidden" id="txtPassword" name ="txtPassword" value="<%=strPassword%>">
<input type="hidden" id="IsPhoto" name ="IsPhoto" value="<%=IsPhoto%>">               
 <input type="hidden" id="ImageName" name ="ImageName" value="<%=phtoto%>">               
<input type="hidden" id="JOB_ID" name ="JOB_ID" value="<%=strJobId%>">               
               
</form>

<script type="text/javascript">
   function goForFChange()
	{
		document.getElementById('fotFrm').submit();
	}
    var formSubmit = "<%=formSubmit%>";
	if(formSubmit == "") 
	{
       goForFChange();
	}

</script>
