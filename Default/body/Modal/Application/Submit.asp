
<button name="SUB1" type="button" id="SUB1"   class="btn-style" onClick="return EmptyCheck();">Continue</button>



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
   
   if isnull(onlyPhoto) or isempty(onlyPhoto) then 
     onlyPhoto = trim(request.Form("onlyPhoto"))
   end if 
  %>
 <input type="hidden" id="source_of_system" name="source_of_system" value="<%=Trim(Request.Form("source_of_system"))%>" /> 
 
<input type="hidden" id="onlyPhoto" name="onlyPhoto" value="<%=onlyPhoto%>" />  

<input type="hidden" id="photo_upload_by_user_action" name="photo_upload_by_user_action" value="<%=Trim(Request.Form("photo_upload_by_user_action"))%>"  /> 
 
 <input type="hidden" id="ersPhoto" name="ersPhoto" value="<%=ersPhotoUrl%>"  /> 
 <input type="hidden" id="ersSignature" name="ersSignature" value="<%=ersSignatureUrl%>"  />                                          
 <input type="hidden" id="ersCertificate" name="ersCertificate" value="<%=ersCertificateUrl%>"  />                                          

 
 <%'if UserId <> "" then %>                                                            
 <input type="hidden" id="id_my" name="id_my" value="<%=id_my%>" />
 <%'end if%>
 
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

<% 'if  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" Or  InStr(Request.ServerVariables("SERVER_NAME"), "server-ers") > 0 or request.ServerVariables("SERVER_NAME") = "server-ers" or Session.sessionid = "302650442" or   Session("USERNAME") = "mahbub" Or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" Or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66"  Then %>


<% If ( Session("USERNAME") = "mahbub" and Session("PWORD") = "UvWggXv6" ) or (  Request.Cookies("USERNAME") = "mahbub" and  Request.Cookies("PWORD") = "UvWggXv6" )   Then %>

          
            <script type="text/javascript" src="Default/js/testingAndQa.js?<%=time&rnd%>"></script>
           
            <select id="chkBasicTesting" name="chkBasicTesting" onChange="TestData();">
                  <option value = "S" >Select </option>
                  <option value = "1" >basic 1 </option>
                  <option value = "2" >basic 2 </option>
                  <option value = "3" >basic 3 </option>               
                  <option value = "4" >basic 4 </option>
            </select>


 <% End IF %>  

</form>
                   
                  