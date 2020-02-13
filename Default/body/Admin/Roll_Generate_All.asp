<!--#include File = "CheckSession.asp" -->
<%
strModuleName = "Roll Generation" 
strDescription = "Roll Generation with : "&strUserName&"##"&strPassword
strAction = "Roll Generation for.. "
%>
<!--#include File = "UserLog.asp" -->

<br /><br />
  <div class="col-sm-12">

<div style="padding-top:100px; padding-left:50px; padding-bottom:50px; border:2px solid #93F; border-radius:5px;" align="center">
    
    <table width="600" border="0" align="center" cellspacing="2" cellpadding="0">

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

If strPosition <> "S" and strPosition <> ""  and strRollFormat <> "" Then 
	  strSqlDuplicate = "select * from roll where jobid = "&strPosition&" and rollno ="&strRollFormat
	  arrDuplicateRoll = objERS.RetrieveData(strSqlDuplicate,errMsg)
	  ErrorMessage "34", errMsg, 0 
	  If arrDuplicateRoll(0,0) = "Nothing" Then
	     strSqlInsertRoll = "insert into roll (jobid,rollno,personalid) values (" & strPosition &","&strRollFormat&", 0 )"
		 objERS.ExecuteQuery strSqlInsertRoll, errMsg 
		 ErrorMessage "39", errMsg, 0 
		  If errMsg = "" Then 
			objERS.CloseConnection()
			Set objERS = Nothing	  
			strPrefix = Request.Form("txtPrefixRoll")
			strDelimeter1 =Request.Form("txtDelimeter1")  
			strNumberRoll=Request.Form("txtNumberRoll") 
			strDelimeter2 =Request.Form("txtDelimeter2")  
			strPostfix = Request.Form("txtPostfix")  
			RollNo = strPrefix&strDelimeter1&strNumberRoll&strDelimeter2&strPostfix	
			Session.Abandon()
			'session.clear
		    %>
               <form id="frmRollto" name="frmRollto" action="?<%=Encode("Location=Admin&FormAction=Generate_Roll")%>" method="post">
                 <input type="hidden" name="txtPosition" value="<%=strPosition%>"  />
                 <input type="hidden" name="txtPrefixRoll" value="<%=Request.Form("txtPrefixRoll")%>"  />  
                 <input type="hidden" name="txtDelimeter1" value="<%=Request.Form("txtDelimeter1")%>"  />  
                 <input type="hidden" name="txtNumberRoll" value="<%=Request.Form("txtNumberRoll")%>"  />  
                 <input type="hidden" name="txtDelimeter2" value="<%=Request.Form("txtDelimeter2")%>"  />  
                 <input type="hidden" name="txtPostfix" value="<%=Request.Form("txtPostfix")%>"  />  
                 </form>
             <script type="text/javascript">
      			 var x = confirm("Roll Format is <%=RollNo%>\nAre you sure to generate roll ?");
               if (x == true)
			    {   
			    document.getElementById('frmRollto').submit(); 
				}
			 </script>
            <%
		  End IF  
	  Else
			objERS.CloseConnection()
			Set objERS = Nothing	  
			Session.Abandon()
			'session.clear			
			  %>
               <form id="frmRollto" name="frmRollto" action="?<%=Encode("Location=Admin&FormAction=Generate_Roll")%>" method="post">
                 <input type="hidden" name="txtPosition" value="<%=strPosition%>"  />
                 <input type="hidden" name="txtPrefixRoll" value="<%=Request.Form("txtPrefixRoll")%>"  />  
                 <input type="hidden" name="txtDelimeter1" value="<%=Request.Form("txtDelimeter1")%>"  />  
                 <input type="hidden" name="txtNumberRoll" value="<%=Request.Form("txtNumberRoll")%>"  />  
                 <input type="hidden" name="txtDelimeter2" value="<%=Request.Form("txtDelimeter2")%>"  />  
                 <input type="hidden" name="txtPostfix" value="<%=Request.Form("txtPostfix")%>"  />  
                </form>
             <script type="text/javascript">
      			 var x = confirm("Roll Format is <%=RollNo%>\nAre you sure to generate roll ?");
               if (x == true)
			    {   
			    document.getElementById('frmRollto').submit(); 
				}
			 </script>
            <%
	  End If 
End IF 

	objERS.CloseConnection()
	Set objERS = Nothing	  


%>

 <form action="?<%=Encode("Location=Admin&FormAction=Roll_Generate_All")%>" method="post" name="frmResume" id="frmResume">
	<input name="txtUB" type="hidden" id="txtUB" value="<%=UB%>">
	<input name="hPage" type="hidden" id="hPage" value="<%=pg%>">
  
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
   <tr>
     <td>Roll Format : </td>
     <td></td>
     <td> </td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td><table width="70%" border="0" cellspacing="1" cellpadding="1" style="border:1px solid #333;">
 <tr>
     <td>&nbsp;</td>
     <td>prefix
       <label for="txtPrefixRoll"></label></td>
     <td><input type="text" name="txtPrefixRoll" id="txtPrefixRoll" style="width:100px" /></td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>delimeter1 </td>
     <td><input type="text" id="txtDelimeter1" name="txtDelimeter1" style="width:100px;" /></td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>Number Part </td>
     <td><input type="text" id="txtNumberRoll" name="txtNumberRoll" style="width:100px;" /></td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>delimeter2</td>
     <td><input type="text" id="txtDelimeter2" name="txtDelimeter2" style="width:100px;" /></td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>postfix</td>
     <td><input type="text" id="txtPostfix" name="txtPostfix" style="width:100px;" /></td>
   </tr>
     </table>
&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
     <tr>
     <td><input type="button" id="btnPreview" name="btnPreview" onclick="preview();" value="Preview" /></td>
     <script type="text/javascript">
	 function preview()
	 {
		 var str = '';
		 var prefix = document.getElementById('txtPrefixRoll').value;
		 var delimeter1 = document.getElementById('txtDelimeter1').value;
		 var number = document.getElementById('txtNumberRoll').value;
		 var delimeter2 = document.getElementById('txtDelimeter2').value;
		 var postfix = document.getElementById('txtPostfix').value;
		 
		 var str = prefix + delimeter1 + number + delimeter2 + postfix ; 
		 document.getElementById('prev').innerHTML = str; 
	 }
     </script>
     <td><label id="prev"></label></td>
     <td><input type="button" id="btnClear" name="btnClear" onclick="clear22();" value="Clear" /></td>
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
	   if(document.getElementById('txtNumberRoll').value == '') 
	    {
			alert('Number part can not be empty');
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

 
 </div>