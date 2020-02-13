				<div class="col-sm-12">
					<div class="summery-view bg-style">


<div style="padding-top:20px; padding-left:10px; padding-bottom:10px; border:2px solid #93F; border-radius:2px;" align="center">

<%

strPosition =  Request.Form("txtPosition")
If strPosition = "1" Then 
   strPositionName = "Management Trainee Officer" 
ElseIF strPosition = "2" Then  
   strPositionName = "Trainee Officer" 
ElseIF strPosition = "3" Then  
   strPositionName = "Trainee Cash Officer" 
ElseIF strPosition = "4" Then  
   strPositionName = "Telephone Operator" 
End IF 
%>
<table width="80%" cellpadding="0" cellspacing="0" border="1">
  <tbody>


<%
'If Instr( Request.ServerVariables("HTTP_REFERER"),"AddCenterFromExcel.asp") > 0 Then  
	
	Response.Write("Position:"&strPositionName)
	Last = Cint(Request.Form("count_room"))
	  Response.Write(" <tr><td width ='2%' style='font-weight:bold' >SL</td><td width ='48%' style='font-weight:bold' >Center</td><td width ='10%' style='font-weight:bold'>Roll From</td><td width ='10%' style='font-weight:bold'>Roll To</td><td width='10%' style='color:#F00;font-weight:bold''>Action</td><td width ='10%' style='color:#F00;font-weight:bold'>Completion</td></tr>")
	For i = 1 To Last 
	  strCenter = Request.Form("txtCenter"&i) 
	  strFrom = Request.Form("txtFrom"&i)
	  strTo = Request.Form("txtTo"&i) 
	  Response.Write(" <tr><td width ='2%'>"&i&"</td><td width ='48%'>"&strCenter&"</td><td width ='10%'>"&strFrom&"</td><td width ='10%'>"&strTo&"</td>")
	

				 strSqlExamCenterInsert = " Insert into center([CenterName],[from],[to],[sl],[jobid]) values ( '"&GiveReplacedString4DB(strCenter)&"' ,"&strFrom&","&strTo&","&i&","&strPosition&")"
				 Response.Write("<br/>sql examcenter insert"&strSqlExamCenterInsert)
				 objERS.ExecuteQuery strSqlExamCenterInsert,errMsg 
				 ErrorMessage "63",errMsg,0 
			       Response.Write("<td width ='10%'  style='color:#F00'>Successfully added !</td>")
			  
		Response.Write("</tr>")
	Next 
'Else
 ' Response.Write("else"&Request.ServerVariables("HTTP_REFERER")) 
'End IF 

%>
    </tbody>
   </table>
</div>
       </div>
     </div>
