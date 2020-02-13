
<button name="SUB1" type="button" id="SUB1" onClick="return EmptyCheck();"  class="btn-style">Continue</button>



<span id="wait" style="display:none;">
  <br />
    <img src="http://ers.bdjobs.com/applications/images/wait.gif" />
  <br />
</span>

 <%'if UserId <> "" then
' Response.Write("UserId:"&UserId)
   If UserId <> "" Then ' and isnull(UserId) = False and isempty(UserId) = False and isnumeric(UserId) then 
    id_my = Encode(UserId)
	bdjPhoto = photoName2
   else
    id_my = trim(request.Form("id_my"))
    bdjPhoto = trim(request.Form("bdjPhoto")) 
   end if
  %>
 <input type="hidden" id="source_of_system" name="source_of_system" value="<%=Trim(Request.Form("source_of_system"))%>" /> 
 <input type="hidden" id="ersPhoto" name="ersPhoto" value="<%=ersPhotoUrl%>"  /> 
 <input type="hidden" id="ersSignature" name="ersSignature" value="<%=ersSignatureUrl%>"  />                                          
 
 <%if UserId <> "" then %>                                                            
 <input type="hidden" id="id_my" name="id_my" value="<%=Encode(UserId)%>" />
 <%end if%>
 
 <input type="hidden" id="bdjPhoto" name="bdjPhoto" value="<%=photoName2%>"  /> 
 <input type="hidden" id="folderName" name="folderName" value="<%=strPhotoFolder%>" >                                        
 <input type="hidden" id="JOB_ID" name="JOB_ID" value="<%=Request.Form("JOB_ID")%>"  />    

<input type="hidden" name="hide_box" value="1">
<input type="hidden" name="APP_TYPE" value="<%=vApp%>">
<%
If TrackNo = "" Then
	TrackNo = "-1"
	'response.Write(Session.sessionid)
End If
%>
<input name="TrackNo" type="hidden" id="TrackNo" value="<%=TrackNo%>" />
<input name="IsEdit" type="hidden" id="IsEdit" value="<%=IsEdit%>"/>

<% if  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" Or  InStr(Request.ServerVariables("SERVER_NAME"), "server-ers") > 0 or request.ServerVariables("SERVER_NAME") = "server-ers" or Session.sessionid = "302650442" or   Session("USERNAME") = "mahbub" Or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" Or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66"  Then %>
          
            <script type="text/javascript" src="http://ers.bdjobs.com/applications/common/js/testingAndQa.js?<%=time&rnd%>"></script>
           
           
            <input type="checkbox" name="chkBasicTesting" id="chkBasicTesting" tabindex="2" onclick="basicFill();" />Basic Test
            <label for="chkBasicTesting"></label>
            
             
            <input type="checkbox" name="chkBasicTesting_level" id="chkBasicTesting_level" tabindex="2" onclick="basicFill_level();" />Basic Test level
            <label for="chkBasicTestinglevel"></label>
            
          
  
 <% End IF %>  

</form>
                   
                  