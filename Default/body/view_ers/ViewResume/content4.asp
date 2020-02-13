    
<%    
'Response.End()

'**************************** English Language Profeciency Details End ********************************************************* 

'****************************  Prefered Location1 Start *********************************************************     
%>	
	<!--  <tr>
	    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2"><span class="style24">Prefered Location</span></td>
          </tr></table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tr><td><hr align="center" color="#666666" width="100%" style="height:1px;"></td></tr>

			 <tr>
			   <td class="style22">
			   <%'=strPreferredLocation%>
			   </td>
		    </tr>
			
            <tr>
			   <td class="style22">&nbsp;</td>
			</tr>
			<tr>
			   <td class="style22">&nbsp;</td>
			</tr>
	</table>	
    </td> </tr>-->
    
<%    
'Response.End()

'**************************** English Language Profeciency Details End ********************************************************* 
'****************************  Reference Start *******************************************************************       
%>     	
	  <tr>
	    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2"><span class="style24">Referees</span></td>
          </tr></table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tr><td colspan="4"><hr align="center" color="#666666" width="100%" style="height:1px;"></td></tr>
<%         
		'For i = 0 To intUBRef
%>		
			<tr>
			   <td width="13%" class="style22"> 
               	<strong>Name</strong>			   </td>
			   <td width="38%" class="style22"> 
			   	<strong>:</strong>&nbsp;<%=strRefName%>              </td>
			   <%If intUBRef >= 1 Then%>
			   <td width="14%" class="style22"><strong>Name</strong></td>
			   <td width="35%" class="style22"><strong>:</strong>&nbsp;<%=strRefName2%> </td>
			   <%End If%>
			</tr>
            
			 <tr>
			   <td class="style22"> 
               	<strong>Position</strong>			   </td>
			   <td class="style22"> 
			  	<strong>:</strong>&nbsp;<%=strRefPos%>				</td>
			   <%If intUBRef >= 1 Then%>
			   <td class="style22"><strong>Position</strong></td>
			   <td class="style22"><strong>:</strong>&nbsp;<%=strRefPos2%> </td>
			   <%End If%>
		    </tr>
            
             <tr>
			   <td class="style22"> 
               	<strong>Address</strong>			   </td>
			   <td class="style22"> 	
				<strong>:</strong>&nbsp;<%=strRefAdd%>               </td>
			   <%If intUBRef >= 1 Then%>
			   <td class="style22"><strong>Address</strong></td>
			   <td class="style22"><strong>:</strong>&nbsp;<%=strRefAdd2%> </td>
			   <%End If%>
            </tr>
			
            <tr>
			   <td class="style22"> 
               	<strong>Contact Phone</strong></td>
			   <td class="style22"> 
			   	<strong>:</strong>&nbsp;<%=strRefPhone%>               </td>
				
			   <%If intUBRef >= 1 Then%>
			   <td class="style22"><strong>Contact Phone</strong></td>
			   <td class="style22"><strong>:</strong>&nbsp;<%=strRefPhone2%> </td>
			   <%End If%>
            </tr>
            
			<%If strRefEmail <> "" Then%>
            <tr>
			
			   <td class="style22"> 
               	<strong>Email</strong>			   </td>
			   <td class="style22"> 
			   	<strong>:</strong>&nbsp;<%=strRefEmail%>               </td>
			
			   <%If intUBRef >= 1 Then%>
			   <td class="style22"><strong>Email</strong></td>
			   <td class="style22"><strong>:</strong>&nbsp;<%=strRefEmail2%> </td>
			   <%End If%>
            </tr>
			<%End If%>	
            <tr>
			   <td class="style22" colspan="2" align="left">
               <br /> <br />
               <div id="paraPrint">
	<p align="left">
        <!--<img src="http://ers.bdjobs.com/applications/images/print.png" width="98" height="45" onclick="printIT();"/>&nbsp;&nbsp;&nbsp;	-->
            <!--<img src="http://ers.bdjobs.com/applications/images/close_2.png" width="98" height="45" onclick="closeIT();"/>-->
<!--        <a href="#" style="text-decoration:none;" onclick="javascript:window.close()">
        </a>-->
	</p>
</div></td>
			</tr>
<% 
		
		'Next  
%>
		</table>		</td> </tr>
        
        
        
        
<!--	  <tr>
	    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2"><span class="style24">Signature</span></td>
          </tr></table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tr><td colspan="4"><hr align="center" color="#666666" width="100%" style="height:1px;"></td></tr>
	
			<tr>
			   <td width="13%" class="style22"><br />
               <%'TrackNo = intTrakingNo%>  
                <!--include Virtual = '/applications/shahjalalbank/default/showsignature.asp' -->
               <!--</td>
            </tr>
         </table>
      </td>
     </tr>-->
        
        
<%		
'**************************** Reference End ********************************************************* 		
Else  
%>
	<table border="0" cellspacing="0" cellpadding="0" align="center">
	<tr>
	<td width="16%"><font face="Geneva, Arial, Helvetica, sans-serif" color="#003366" size="5">Sorry!<br />
	  Either your session has been expired<br />Or, authentication failed.<br />Please <a href="Login.asp">click here</a> to login.</font></td>
	</tr>
	</table>
<%	
End If


%> 

</table>
<script>
 var TrackNo = "<%=intTrakingNo%>";
 if ( TrackNo != "")
 {
	 document.getElementById('login').innerHTML = "Logout";
	 //document.getElementById('backMenu').style.display = "block";
	 document.getElementById('homeMenu').style.display = "block";
	document.getElementById('printMenu').style.display = "block"; 
 }
 else
 {
	 
 }
 
 var admin = "<%=admin%>";
 if(admin == "true")
 {
	 document.getElementById('login').style.display = "none";
	 //document.getElementById('backMenu').style.display = "block";
	 document.getElementById('homeMenu').style.display = "none";
	 document.getElementById('printMenu').style.display = "none"; 
 

	 document.getElementById('ForgetLogin').style.display = "none";
	 document.getElementById('Apply').style.display = "none";
 }
 
</script>
 
<%
 strTrackNoNew = Trim(Request.Form("TrackNoNew"))
 if strTrackNoNew = "" then
   strTrackNoNew = TrackNoNew
 end if 
 strTracking2 = Trim(Request.Form("txtTrackingNo"))
 if strTracking2 = "" then
  strTracking2 = intTrakingNo
 end if 
 strPassword = Trim(Request.Form("txtPassword"))
 
 if strPassword = "" then
  strPassword = strPasswordDB
 end if
%>
  
<form id="back" name="back" action="?<%=Encode("Location=Controller&FormAction=AfterLogin")%>" method="post">
<INPUT type="hidden" name="txtTrackingNo" value="<%=intTrakingNo%>">
<INPUT type="hidden" name="txtPassword"  value="<%=strPassword%>">
<input type="hidden" id="jobid" name="jobid" value="<%=jobid%>"  /> 
</form>          



<form id="logout" name="logout" action="" method="post" style="padding:0;">
<INPUT type="hidden" name="txtTrackingNo" value="<%=intTrakingNo%>">
<INPUT type="hidden" name="txtPassword" value="<%=strPassword%>">
<input type="hidden" id="jobid" name="jobid" value="<%=jobid%>"  /> 
</form>
