<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admit Card :: Range :: Dhaka Bank</title>
<script>
function GetRollRange(id)
{
	var jobId = id.value;
	if(jobId==5)
	{
		from = "20001"
		tos = "20011"
	}

	if(jobId==4)
	{
		from = "10001"
		tos = "10011"
	}

	document.getElementById("txtRollFrom").value = from;
	document.getElementById("txtRollTo").value = tos; 	
}
</script>
</head>
<!-- #include virtual = "\Class\c_data_batch.asp" -->
<!-- #include File = "include_file\Utility_dhakabank.asp" -->
<!-- #include File = "include_file\Utility.asp" -->
<!--#include File = "CheckSession.asp" -->

<%
Set objDhakaBank = New c_data
objDhakaBank.OpenConnection "DhakaBankSQL", strErr
ErrorMessage "34", errMsg, 0



	strModuleName = "Admit Print" 
	strDescription = "Admit Print with  : "&strUserName&"##"&strPassword
	strAction = "Admit Print for.. "
	
	SQLUserLog = "INSERT INTO UserLog (UserId, UserName, ModuleName, [Description], ActionDate, [Action]) values (" 
	SQLUserLog = SQLUserLog & intUserId & ", '" & strUserName  & "', '" & strModuleName & "', '" & strDescription & "', '" & Now & "' ,'" & strAction & "')"
	
	ValuePrint SQLUserLog, "2163-SQLUserLog"
	
	objDhakaBank.ExecuteQuery SQLUserLog, strErr


    sql = "" 
	sql = "select top 1 deadline from jobposting order by jobid desc  "
    
	arrTop1DeadLine = objDhakaBank.RetrieveData(sql, errMsg) 
	
	if arrTop1DeadLine(0, 0) <> "Nothing" then 
	  if isdate(arrTop1DeadLine(0, 0)) then 
	   yy = year(arrTop1DeadLine(0, 0))
	   mm = month(arrTop1DeadLine(0, 0))
	   dd = day(arrTop1DeadLine(0, 0)) 
	   
	   dd2 = dd - 1 
	   
	   deadline2 = yy & "-" & mm & "-" & dd2 & " 17:59:00.000"
	  
	   sql = "select jobid,JobTitle,deadline from JobPosting where Deadline >= '"&deadline2&"'"
	  
	  else
	   sql = "select top 1 jobid,JobTitle,deadline from JobPosting order by jobid desc "
	  end if 
	else 
	   sql = "select top 1 jobid,JobTitle,deadline from JobPosting order by jobid desc "
	end if 
	
    ' response.Write(sql) 

	arrJobPosting = objDhakaBank.RetrieveData(sql, errMsg) 
	
	ddlJobs = Request.Form("ddlJobPosting")
	'Response.Write(ddlJobs) 
	
%>    
     

<body> <form id="form1" name="form1" method="post" action="ViewAdmitCard_admin_mto.asp" target="_blank">
<table width="90%" border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td width="0%">&nbsp;</td>
    <td width="22%">&nbsp;</td>
    <td width="22%">&nbsp;</td>
    <td width="56%">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <%

	If from = "" Then
		from = 10001 
	End IF 
  
	If tos = "" Then 
		tos = 10011 
	End If 

'session("ff") = cdbl(session("ff")) + 50 
'session("tt") = cdbl(session("tt")) + 50 
  
  %>
  <tr>    
  <td>Position 
    <select name="ddlJobPosition" id="ddlJobPosition" onchange="GetRollRange(this)">
    <option value="S">Select</option>
          <%if arrJobPosting( 0, 0) <> "Nothing" then %>
		  <%For i = 0 to ubound(arrJobPosting, 2)%>
          <option value="<%=arrJobPosting(0, i)%>" <%if cstr(ddlJobs) = cstr(arrJobPosting(0, i)) then %>selected="selected"<%end if%>><strong><%=arrJobPosting(1, i)%></strong>--<i>(Deadline : <%=arrJobPosting(2, i)%>)</i></option>
           <%next
		    end if
		  %>
   </select>
    </td>
     <td>&nbsp;</td>
    <td>ROLL FROM 
      <label for="txtRollFrom"></label>
    <input type="text" name="txtRollFrom" id="txtRollFrom" value="<%=from%>" /></td>
    <td>ROLL TO
        <input type="text" name="txtRollTo" id="txtRollTo" value="<%=tos%>" />
   </td>
   
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="3" align="CENTER"><input name="btnContinue" type="button" value="Next" onclick="change();"  />&nbsp;</td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
 <script type="text/javascript">
     function change()
	 {
		 document.getElementById('form1').submit(); 
		 
		 var from = document.getElementById('txtRollFrom').value ; 
		 var toos = document.getElementById('txtRollTo').value  ;
		 
		 if (from !='')
		  {
			  var from2 = parseFloat(from)+10;
		  }
		  if(toos !='')
		  {
			   var toos2 = parseFloat(toos)+10;
		  }
		 //alert(from2+"-"+toos2);
		 document.getElementById('txtRollFrom').value = from2;
		 document.getElementById('txtRollTo').value = toos2;
		 
       //  location.href = 'ViewAdmitCardRange.asp';
		// location.reload(true);
	 }
 </script>
 </form>

</body>
</html>
