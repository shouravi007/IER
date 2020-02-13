
<script>
function PageSubmit(pNo)
{
	//alert(pNo);
	document.getElementById('hPage').value=pNo;
	document.getElementById('frmResume').submit();
}

function empty()
{
	 if(document.getElementById('txtPosition').value == 'S')
	 {
		 alert('Please select a position');
		 return false;
	 }
	// return true; 
}
function DeleteForm(strForm)
{
	strUB = parseInt(document.getElementById("count_room").value);
	strUB1 = parseInt(document.getElementById("hide_room").value); 
	if(strUB > strUB1)
	{
		document.getElementById("cust_room"+strUB).innerHTML = "";
		document.getElementById("count_room").value = strUB - 1;
	}
	else
	{
		document.getElementById("remove_exp").disabled = true;
	}
	
}


function CreateRoomAll(myform)
{
	data_exp = "";    
	inter = "'";
	var i_exp=10;
	i_exp=parseInt(myform.count_room.value);
	//alert('Exp: '+i_exp);
	if(i_exp <= 100)
	{
		data_exp="<table width='850' border='0' cellspacing='2' cellpadding='0'> <tr><td width='10%'>Center -"+(i_exp+1)+"</td><td width='2%'>&nbsp;</td> <td width='46%'><input type='text' id='txtCenter"+(i_exp+1)+"' name='txtCenter"+(i_exp+1)+"' style='width:400px;'  /> </td><td width='2%'>&nbsp;</td><td width='20%'>From <input  id='txtFrom"+(i_exp+1)+"' name='txtFrom"+(i_exp+1)+"' type='text'  maxlength='500' style='width:100px;'  /></td><td width='2%'>&nbsp;</td><td width='18%'>To <input id='txtTo"+(i_exp+1)+"' name='txtTo"+(i_exp+1)+"' type='text'  maxlength='500' style='width:100px;'  /></td> </tr></table>";
	
	if (document.layers)
	{
		document.layers.cust_room30.document.write(data_exp);
		document.layers.cust_room30.document.close();
		myform.count_room.value = ++i;
	}
	else
	{
	  	  if (document.all || document.getElementById)
		 {
			document.getElementById("remove_exp").disabled = false;
			i_exp_f = i_exp+1;
			var obj = "cust_room"+i_exp_f;
				document.getElementById(obj).innerHTML = data_exp;
        	}
			//document.all.TBL_EXP.style.backgroundColor='#003399'
			myform.count_room.value = ++i_exp;
		}//if
	}//else
}//function

</script>
				<div class="col-sm-12">
					<div class="summery-view bg-style">



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
	
	   sql = "select jobid,JobTitle,deadline from JobPosting " 'where Deadline >= '"&deadline2&"'"
	
     response.Write(sql) 
    err.clear 
	arrJobPosting = objERS.RetrieveData(sql, errMsg) 
	
	ddlJobs = Request.Form("ddlJobPosting")
	
%>





<%'If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0  Then  %>
<div style="padding-top:20px; padding-left:10px; padding-bottom:10px; border:2px solid  #C00; border-radius:2px;" align="center">

<form name="Upload" enctype="multipart/form-data" method="post" action="clsUpload.php">

<div style="color:#00F;"><INPUT TYPE="file" NAME="file"  > 
<input type="submit" name="FileUpload" value="Upload File">(upload an exel file .xls/xlsx only.. please note : your exel sheet name will be sheet1 and this sheet1 has 3 columns centername,rollfrom and rollto )    </div>
</form>
 </div>
 <br/>
 <br/>
   <form action="?<%=Encode("Location=attendance&FormAction=AddCenterAction")%>" method="post" name="frmResume" id="frmResume">

<div style="padding-top:20px; padding-left:10px; padding-bottom:10px; border:2px solid #93F; border-radius:2px;" align="center">
	<input name="txtUB" type="hidden" id="txtUB" value="<%=UB%>">
	<input name="hPage" type="hidden" id="hPage" value="<%=pg%>">
    <table width="80%" border="0" align="center" cellspacing="0" cellpadding="0">
<tr>
   <td width="10%">Position</td>
   <td width="2%">&nbsp;</td>
   <td width="46%">        <select id="txtPosition" name="txtPosition" >	
         <option value="S" selected="selected">Select</option> 
 
           <%if arrJobPosting( 0, 0) <> "Nothing" then %>
		  <%For i = 0 to ubound(arrJobPosting, 2)%>
          <option value="<%=arrJobPosting(0, i)%>" <%if cstr(ddlJobs) = cstr(arrJobPosting(0, i)) then %>selected="selected"<%end if%>><strong><%=arrJobPosting(1, i)%></strong>--<i>(Deadline : <%=arrJobPosting(2, i)%>)</i></option>
           <%next
		    end if
		  %>
<!-- 
          <option value="1">Management Trainee Officer</option> 
-->        </select></td>
   <td width="2%">&nbsp;</td>
   <td width="20%">&nbsp;</td>
   <td width="2%">&nbsp;</td>
   <td width="18%">&nbsp;</td>
 </tr>

<%
'Dims
Dim cn
Dim rs
Dim strQuery

If InStr(Request.ServerVariables("SERVER_NAME"), "serverbdj") > 0  Or  InStr(Request.ServerVariables("SERVER_NAME"), "server-ers") > 0  Then  
		'Response.Write "serverbdj"
        ' strPath = server.mappath("/data") & "/" & "Room.xls"
		strPath = server.mappath("/primebank/default/body/attendance") & "/" & "Center.xls"
Else 

'strPath = server.mappath("/applications/data") & "/" & "Center.xls"
strPath = server.mappath("/applications/primebank/default/body/attendance") & "/" & "Center.xls"

End If 

Response.Write(strPath) 
'---------
set cn = server.CreateObject("ADODB.Connection")
set rs = server.CreateObject("adodb.recordset")
With cn
.Provider = "MSDASQL"
.ConnectionString = "Driver={Microsoft Excel Driver (*.xls)}; DriverId=790;Dbq=" & strPath &"; ReadOnly=False;"
.Open
End With
'If not using a named range, replace myrange1 with [sheet1$]
strQuery = "SELECT * FROM [sheet1$]"
rs.Open strquery, cn
'Check for records
rs.MoveFirst
if rs.BOF = true and rs.EOF = true then
'no records
response.Write "Error:: Products spreadsheet is empty!"
else
'Records Exist
'Loop through records printing out the fields
i=0
while not rs.EOF
'response.Write rs.Fields(0) & " " & rs.Fields(1) & " " & rs.Fields(2) & "<BR><BR>"
i=i+1
Last = i 
%>
 
 <tr>
   <td>&nbsp;</td>
   <td>&nbsp;</td>
   <td>&nbsp;</td>
   <td>&nbsp;</td>
   <td>&nbsp;</td>
   <td>&nbsp;</td>
   <td>&nbsp;</td>
 </tr>
 <tr>
    <td >Center -<%=i%></td>
    <td >&nbsp;</td>
    <td ><input name="txtCenter<%=i%>" type="text"  maxlength="500" style="width:400px;" value="<%=rs.Fields(0)%>" /></td>
    <td >&nbsp;</td>
    <td>From <input name="txtFrom<%=i%>" type="text"  maxlength="500" style="width:100px;" value="<%=rs.Fields(1)%>" /></td>
    <td >&nbsp;</td>
    <td >To <input name="txtTo<%=i%>" type="text"  maxlength="500" style="width:100px;" value="<%=rs.Fields(2)%>" /></td>
  </tr>
<%
rs.MoveNext
wend
end if
'Cleanup
rs.close
cn.Close
set cn = nothing
set rs = nothing

For x = Last To 100
%>
     <tr>
				  <td  name="cust_room<%=x%>" id="cust_room<%=x%>" colspan="7" align="center"></td>
	</tr>
 
 <%Next%>
    
    <tr>
    <td colspan="7" align="right">	<input type='hidden' name='count_room' id="count_room" value="<%=Last%>" />
					<input type='hidden' name='hide_room' id="hide_room" value="<%=Last%>" /><input type="button" id="btnAdd" name="btnAdd" onClick="CreateRoomAll(frmResume);" value="Add More(if needed)" />	<input type="button" name='remove_exp' id="remove_exp" value='Remove' class="button" onclick='DeleteForm(frmResume);' style="width:110px;" disabled="disabled"/> </td>

  </tr>
  <tr>
    <td colspan="7" align="center"><input name="btnSave" type="submit" value="Save" onClick="return empty();" /></td>
<input name="id" type="hidden" value="<%=Request.QueryString("id")%>" />
<input name="action" type="hidden" value="<%=Request.QueryString("action")%>" />
  </tr>
  
  

  
</table>
</div>
</form>
<%'end if%>

                     </div>
                </div>
                
