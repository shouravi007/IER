<form id="form1" name="form1" method="post" action="?<%=Encode("Location=Admin&FormAction=ajaxGenerateRoll")%>">
     
  <tr>
    <td align="left" height="auto" style="padding:10px; vertical-align:top; color:#339; font-weight:bold; font-size:14px;" width="25%"><!--List Of Applicants--><!-- (<%'=arr_sqlCount(0,0)%>)<br /><br />-->

    <div id="ShowApplicantList">
   <!-- <select name="ddlListOfApplicants" id="ddlListOfApplicants" multiple="multiple" size="20" style="width:350px;" onchange="ShowAppName(this.value);">-->
   	 	<%
		'If arr_SQL(0,0) <> "Nothing" Then
			'For i = 0 to ubound(arr_SQL,2)
		%>
        <!--<option value="<%'=arr_SQL(0,i)%>"<%'If Request.QueryString("id") <> "" Then%> selected<%'End If%>><%'=arr_SQL(0,i)%>. <%'=arr_SQL(1,i)%> &nbsp;[<%'=arr_SQL(2,i)%>]</option>-->
        <%'
			'Next
		'Else
			'RESPONSE.Write("No Record Found")
		'End If
		%>
   <!-- </select>-->
   
    1. please select a  select a job to see the all shortlisted applicants. 
    
    </div>
    </td>
    
    <td width="55%" valign="top">

    <table width="100%" border="0" cellspacing="1" cellpadding="0" style=" border:thin; padding:5px;">
  		
         <tr>
    		<td style="padding:5px; color:#339; font-weight:bold; font-size:14px;">Job Position&nbsp;<i style="font-size:10px;">(select a job for shortlisted applicanst)</i></td>
  		</tr>
       
    		 
              
             <%if arrJobPosting( 0, 0) <> "Nothing" then %>
		  <%For i = 0 to ubound(arrJobPosting, 2)%>
           <tr><td>
           <input type="radio" name="jobid" id="jobid<%=i%>" value="<%=arrJobPosting(0, i)%>" onclick="ShowApplicants_New(this.value);"/><strong><%=arrJobPosting(1, i)%></strong>--<i style="font-size:10px">(Deadline : <%=arrJobPosting(2, i)%>)</i>
          
           </td></tr>
           <%next
		    end if
		  %>  
              
             <tr>
              <td> <input type="radio" name="orderby" id="id" value="Id" checked="checked" onclick="javascript:location.reload(true);"/>Reset  &nbsp; </td>
            </tr>  
              
       <!-- include file = 'Form_All_Roll.asp'  -->
        
        <tr>
    		<td style="padding:5px; color:#339; font-weight:bold; font-size:14px;">Want to Create&nbsp;Single Roll </td>
  		</tr>    
        <tr>
    		<td> 
              
         <%if arrJobPosting( 0, 0) <> "Nothing" then %>
		  <%For i = 0 to ubound(arrJobPosting, 2)%>
           <tr><td>
           <input type="radio" name="orderby" id="new<%=i%>" value="<%=arrJobPosting(0, i)%>" onclick="ShowApplicants_New_Not_In(document.getElementById('jobid<%=i%>').value);"/><strong>New roll for <%=arrJobPosting(1, i)%></strong>
          
           </td></tr>
           <%next
		    end if
		  %>  
              
       <tr>
         <td>       
             <input type="radio" name="orderby" id="reid2" value="reset" checked="checked" onclick="javascript:location.reload(true);"/>Reset  &nbsp;
    			
            </td>
  		</tr>
        <tr>
    		<td>&nbsp;</td>
  		</tr>
	
        <tr>
    		<td style="padding:5px; color:#339; font-weight:bold; font-size:14px;">Generate Roll No (For all Shortlisted who get no roll : please see the left part.. when you click to new roll option its take some time to load please wait until then.. )</td>
        </tr>
        <tr>
          <td style="padding:5px; color:#339; font-weight:bold; font-size:14px;"><input type="text" id="txtTracking" name="txtTracking" value="<%=RollMax%>" placeholder ="(Tracking No.. which i need to generate for roll ex: 654879 (only single ) )"  /><br /></td>
        </tr>
        <tr>
          <td><input type="text" id="txtRoll" name="txtRoll" value="<%=RollMax%>"  placeholder ="(Roll number .. which i give for this tracking  ex: 136008 (only single ) )"   /><br /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>  
        <td>
            <div id="showName">
<input name="generateButton" id="generateButton" type="submit" value="Generate Roll" onClick="return RollGen();"  class="btn btn-primary" /> <br /> <br />
             </div>
            </td>
  		</tr>
    </table>
    </td>
  </tr>
  </form>
  
</table>

<script>
function RollGen()
{
		   if ( CheckValidation("True",document.getElementById('txtRoll'),"text","Text","10", "Roll Number Start From " ,1600 ) == false)
				{
					   return false;
					   //break;	   
				}	
}
</script>
