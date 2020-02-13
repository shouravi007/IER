
<br /><br />
  <div class="col-sm-12">

<%


strPosition = Request.Form("txtPosition") 
strRollFormat = Request.Form("txtNumberRoll")



    sql = "" 
	sql = "select top 1 deadline from jobposting order by jobid desc  "
    
	arrTop1DeadLine = objERS.RetrieveData(sql, errMsg) 
	
	if arrTop1DeadLine(0, 0) <> "Nothing" then 
	  if isdate(arrTop1DeadLine(0, 0)) then 
	   yy = year(arrTop1DeadLine(0, 0))
	   mm = month(arrTop1DeadLine(0, 0))
	   dd = day(arrTop1DeadLine(0, 0)) 
	   strDeadLine = dd &"-" & mm &"-" & yy
	   if dd = 1 then
	    dd2 = dd 
	   else
	    dd2 = dd - 1 
	   end if
	   
	   deadline2 = yy & "-" & mm & "-" & dd2 & " 17:59:00.000"
	  
	   sql = "select jobid,JobTitle,deadline from JobPosting where Deadline >= '"&deadline2&"'"
	  
	  else
	   sql = "select top 1 jobid,JobTitle,deadline from JobPosting order by jobid desc "
	  end if 
	else 
	   sql = "select top 1 jobid,JobTitle,deadline from JobPosting order by jobid desc "
	end if 
	
    ' response.Write(sql) 

	arrJobPosting = objERS.RetrieveData(sql, errMsg) 
	
	ddlJobs = Request.Form("ddlJobPosting")
	
%>

<div style="padding-top:100px; padding-left:50px; padding-bottom:50px; border:2px solid #93F; border-radius:5px;" align="center">
    
    <table width="600" border="0" align="center" cellspacing="2" cellpadding="0">


 <form action="?<%=Encode("Location=Admin&FormAction=Roll_Generate_Problem")%>" method="post" name="frmResume" id="frmResume">
	<input name="txtUB" type="hidden" id="txtUB" value="<%=UB%>">
	<input name="hPage" type="hidden" id="hPage" value="<%=pg%>">
   <tr>
     <td colspan="3" align="right" style="font-size:14px;"><a href="Center.asp" tabindex="1" accesskey="1">Back</a>&nbsp;&nbsp;<a href="Default.asp" tabindex="2" accesskey="2">Home</a></td>
     </tr>
   <tr>
     <td colspan="3" align="right" style="font-size:14px;">&nbsp;</td>
   </tr>
   <tr>
   <td width="15%">Position</td>
   <td width="50%">        <select id="txtPosition" name="txtPosition" >	
          <option value="S" selected="selected">Select</option> 
 
           <%if arrJobPosting( 0, 0) <> "Nothing" then %>
		  <%For i = 0 to ubound(arrJobPosting, 2)%>
          <option value="<%=arrJobPosting(0, i)%>" <%if cstr(ddlJobs) = cstr(arrJobPosting(0, i)) then %>selected="selected"<%end if%>><strong><%=arrJobPosting(1, i)%></strong>--<i>(Deadline : <%=arrJobPosting(2, i)%>)</i></option>
           <%next
		    end if
		  %>
<!-- 
          <option value="1">Management Trainee Officer</option> 
-->        </select>

</td>
   <td width="35%">&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <script type="text/javascript">
   	 function clear22()
	 {
		 var str = '';
		 document.getElementById('txtPrefixRoll').value = '';
		 document.getElementById('txtDelimeter1').value = '';
		 document.getElementById('txtNumberRoll').value = '';
		 document.getElementById('txtDelimeter2').value = '';
		 document.getElementById('txtPostfix').value = '';
		 
		 prefix = '';
		 delimeter1 = '';
		  number = '';
		  delimeter2 = '';
		   postfix =''; 
		 document.getElementById('prev').innerHTML = str;
	 }
 
  function validate()
   {
	   if(document.getElementById('txtPosition').value == 'S')
	   {
		   alert('please select a position');
		   return false; 
	   }
   }
 
   </script>
   <tr>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td><input name="btnSubmit" type="submit" value="Continue" onclick="validate();" />&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td colspan="3" align="center" style="font-size:14px;">&nbsp;</td>
   </tr>
   <tr>
     <td colspan="3" align="right" style="font-size:14px;"><p>&nbsp;</p> </td>
   </tr> 
     </form>
 </table>
 </div>



<%	
strPosition = Trim(Request.Form("txtPosition"))

If strPosition <> "S" and strPosition <> ""   Then 

strIn = "  p.id  in (select personalid from roll where ( [rollno] is NULL or rollno = 0 ) and jobid = "&strPosition&"  ) "

	strSQL = "Select p.id,p.FirstName,p.FatherName From PERSONAL p where   "&strIn
	
	Response.Write "<font style='font-weight:bold;'>---------------------------------------------------Sl No: " & i & "-----------------------------------------------------------------</font><br/>"&strSQL
	'ValuePrint strSQL,"strSQL" 
	
	arrUserInfo = objERS.RetrieveData(strSQL, errLog)
	ErrorMessage "131", errLog, 0



	
For x = 0  To  Ubound(arrUserInfo,2) 

	If arrUserInfo(0,x) <> "Nothing" Then 

			intMaxID = objERS.GetNewId("[Roll]  where jobid = "&strPosition, "[RollNo]", errMsg)
			ErrorMessage "158", errMsg, 0			
			RollNo = intMaxID	
			
			strSqlinsert = "" 
			strSqlinsert = "update Roll  set [RollNo] = "&RollNo&" where personalid = "&arrUserInfo(0,x)&" and jobid = "&strPosition
			Response.Write "</br>"& strSqlinsert 'strSqlinsert
			objERS.ExecuteQuery strSqlinsert, errMsg
		
			If errMsg <> "" Then
				Response.Write("<br/>Error in update: " & err.description & "[" & err.Number & "]")
			End If
			ErrorMessage "1306", errMsg, 0	

	End If  
Next

End If  



%>

  </div>
  
