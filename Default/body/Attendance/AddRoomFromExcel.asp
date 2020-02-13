
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

   if(document.getElementById('txtCenter').value == 'S')
	 {
		 alert('Please select a center name');
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
	
    ' response.Write(sql) 

	 sql = "select jobid,JobTitle,deadline from JobPosting " '  where Deadline >= '"&deadline2&"'"

    err.clear 
	
	arrJobPosting = objERS.RetrieveData(sql, errMsg) 
	
	ddlJobs = Request.Form("ddlJobPosting")
	
%>



<%
'If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0  Then 
%>
<div style="padding-top:20px; padding-left:10px; padding-bottom:10px; border:2px solid  #C00; border-radius:2px;" align="center">
<form name="Upload" enctype="multipart/form-data" method="post" action="clsUpload_room.php">

<div style="color:#00F;"><INPUT TYPE="file" NAME="file"  > 
<input type="submit" name="FileUpload" value="Upload File">(upload an exel file .xls/xlsx only.. please note : your exel sheet name will be sheet1 and this sheet1 has 3 columns centername,rollfrom and rollto )    </div>
</form>
 </div>
 <br/>
 <br/>
   <form action="?<%=Encode("Location=attendance&FormAction=AddRoomAction")%>" method="post" name="frmResume" id="frmResume">


 <div style="padding-top:100px; padding-left:250px; padding-bottom:50px; border:2px solid #93F; border-radius:5px; float:left; display:inline" align="center">
 
	<input name="txtUB" type="hidden" id="txtUB" value="<%=UB%>">
	<input name="hPage" type="hidden" id="hPage" value="<%=pg%>">
    <table width="80%" border="0" align="center" cellspacing="0" cellpadding="0">
<tr>
  <td colspan="3">&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
</tr>
<tr>
   <td colspan="3">Position
        <select id="txtPosition" name="txtPosition" >	
          <option value="S" selected="selected">Select</option> 
           <%if arrJobPosting( 0, 0) <> "Nothing" then %>
		  <%For i = 0 to ubound(arrJobPosting, 2)%>
          <option value="<%=arrJobPosting(0, i)%>" <%if cstr(ddlJobs) = cstr(arrJobPosting(0, i)) then %>selected="selected"<%end if%>><strong><%=arrJobPosting(1, i)%></strong>--<i>(Deadline : <%=arrJobPosting(2, i)%>)</i></option>
           <%next
		    end if
		  %>
         </select></td>
   <td>&nbsp;</td>
   <td>&nbsp;</td>
   <td>&nbsp;</td>
 </tr>
<tr>
  <td colspan="3">&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
</tr>
<tr>
  <td colspan="6" align="left">
  <%


'strSQL ="SELECT [CenterCode] ,[NameofCenter] ,[Address] ,[Seats] ,[From] ,[To] FROM [ersRupaliBankOnline].[dbo].[CenterOfficer] where [Jobid]=1 order by [NameofCenter]"
strSQL = "SELECT *  FROM Center  order by id   " 
  
arrSQL = objERS.RetrieveData(strSQL, errLog)
  
ErrorMessage "131", errLog, 0
%> 

<div id="ShowCenter" align="left" >
   Center :  &nbsp;&nbsp;<select id='txtCenter' name='txtCenter' onChange="ShowRoll(this.value,document.getElementById('txtPosition').value);">
        <option value='S' selected="selected">Select</option>
        <%  
			
            For i = 0 to ubound(arrSQL,2) 
			 centerN = arrSQL(2,i)
			 'centerN = Replace(centerN,"'","'") 
        %>
           
        <option value="<%=arrSQL(0,i)%>"><%=centerN%></option>
    <%	
        next   
    %>
    </select>
</div>
  
  &nbsp;</td>

</tr>
<tr>
  <td colspan="3">&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
</tr>
  <tr>
    <td width="2%">SL.</td>
    <td width="38%">Room Location</td>
    <td width="10%">Room No.</td>    
    <td width="20%">Roll From <input type="hidden" id="centerID" name="centerID" value="<%=strCenterId%>" /></td>
    <td width="20%">Roll To<input type="hidden" id="JobID" name="JobID" value="<%=strJobId%>" /></td>
    <td width="10%">Total</td>
  </tr>
 
 <%
'Dims
'Dim cn
'Dim rs
'Dim strQuery

	If InStr(Request.ServerVariables("SERVER_NAME"), "serverbdj") > 0  Or  InStr(Request.ServerVariables("SERVER_NAME"), "server-ers") > 0  Then  
		'Response.Write "serverbdj"
        ' strPath = server.mappath("/data") & "/" & "Room.xls"
		strPath = server.mappath("/dhakabank/default/body/attendance") & "/" & "Room.xls"
	Else 
	   ' strPath = server.mappath("/applications/data") & "/" & "Room.xls"
		
		'strPath = server.mappath("/applications/pcb/admin/attendence") & "/" & "MTO_seatplan.xls"


		'strPath = server.mappath("/applications/dhakabank/admin/attendence") & "/" & "room1.xls"
		strPath = server.mappath("/applications/bankjobs/default/body/attendance") & "/" & "room22.xls"

	End If 
	

Response.Write(strPath) 
'---------

set cn = server.CreateObject("ADODB.Connection")
cn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& strPath &";Extended Properties='Excel 8.0;HDR=Yes;IMEX=1'"
set rs = server.CreateObject("adodb.recordset")
'With cn
'.Provider = "MSDASQL"
'.ConnectionString = "Driver={Microsoft Excel Driver (*.xls)}; DriverId=790;Dbq=" & strPath &"; ReadOnly=False;"
'.Open
'End With
   rs.ActiveConnection = cn
     rs.CursorType = 3
     rs.LockType = 2
     rs.Source = "SELECT * FROM [Begum Badrunnessa$]"
     rs.Open
'If not using a named range, replace myrange1 with [sheet1$]
'strQuery = "SELECT * FROM [sheet1$]"
'rs.Open strquery, cn
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

r1 = split(rs.Fields(2),"-")

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
<!--<%'=rs.Fields(1)%>(<%'=rs.Fields(2)%>)-->
  <tr>

    <td><%=i%>.</td>
     <td><input type="text" id="txtRoomLocation<%=i%>" name="txtRoomLocation<%=i%>" style="width:280px;" value="<%=rs.Fields(1)%>#<%=rs.Fields(2)%>"  /> </td>
    <td><input type="text" id="txtRoomNo<%=i%>" name="txtRoomNo<%=i%>" style="width:100px;" value="<%=rs.Fields(3)%>"  /></td>
    <td><input type="text" id="txtRollFrom<%=i%>" name="txtRollFrom<%=i%>" style="width:100px;"  value="<%=rs.Fields(4)%>" onChange="total<%=i%>(document.getElementById('txtRollTo<%=i%>').value,this.value);" onKeyPress="return intonly(this, event);total<%=i%>(document.getElementById('txtRollTo<%=i%>').value,this.value);" /></td>
    <td><input type="text" id="txtRollTo<%=i%>" name="txtRollTo<%=i%>" style="width:100px;" value="<%=rs.Fields(5)%>"  onchange="total<%=i%>(this.value,document.getElementById('txtRollFrom<%=i%>').value);"    onKeyPress="return intonly(this, event);total<%=i%>(document.getElementById('txtRollTo<%=i%>').value,this.value);"  /></td>
    <td><input type="text" id="txtTotal<%=i%>" name="txtTotal<%=i%>" style="width:100px;" value="<%=rs.Fields(6)%>"   /></td><script>
	                        function total<%=i%>(objTo,objFrom)
							  {
								  try
								  {
								  if(objTo !='' && objFrom !='')
								   {
								  var total = objTo-objFrom;
								  document.getElementById('txtTotal<%=i%>').value = total+1;
								  var count = "<%=i%>";
								  var cn = parseInt(count); 
								  // if (cn < 30 ) 
//								    {
								//		if(document.getElementById('txtRollFrom<%'=i+1%>').value == '' )
//										{
											document.getElementById('txtRollFrom<%=i+1%>').value = parseFloat(document.getElementById('txtRollTo<%=i%>').value) + 1; 
									//	}
								//	}
								   }
								  }
								  catch(ex)
								  {
									  alert("Invalid Process"+ex.message); 
								  }
								   
							  }
	                  </script>
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

%>

  <%For x = Last To 100%>
    <tr>
				  <td  name="cust_room<%=x%>" id="cust_room<%=x%>" colspan="6" align="center"></td>
	</tr><script>
	                        function total<%=x%>()
							  {
								  try
								  {
								  if(document.getElementById('txtRollTo<%=x%>').value !=''  && document.getElementById('txtRollFrom<%=x%>').value !='' )
								   {
				  var total = document.getElementById('txtRollTo<%=x%>').value - document.getElementById('txtRollFrom<%=x%>').value ;
								  document.getElementById('txtTotal<%=x%>').value = total+1;
								  	document.getElementById('txtRollFrom<%=x+1%>').value = parseFloat(document.getElementById('txtRollTo<%=x%>').value) + 1; 
								   }
								  }
								  catch(ex)
								  {
									  alert("Invalid Process "+ex.message); 
								  }
							  }
	                  </script>

  <%Next%>


  
  
  <tr>
    <td colspan="6" align="center"><input type="submit" id="btnSubmit" name="btnSubmit" value="Save"  onclick="return empty();" /> </td>

  </tr>

</table>
  
</div>
</form>
<%'end if%>

                     </div>
                </div>
