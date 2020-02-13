  <div class="form-group">
                        <div class="row">
                          <div class="col-sm-3">
                            <label for="ProfessionalCertification">Professional Certification (if any)</label>
                          </div>
                          <div class="col-sm-9">
                            <div class="form-group">
                         
                         
  <input type="checkbox" <%if instr(strProfessionalCertification,"PGDHRM") > 0 then response.Write("checked")%> name="chkCertification" id="chkCertification1" value="PGDHRM"/>
  PGDHRM&nbsp;&nbsp;
  
  <input type="checkbox"  <%if instr(strProfessionalCertification,"CDCS") > 0 then response.Write("checked")%> name="chkCertification" id="chkCertification2" value="CDCS"/>
  CDCS&nbsp;&nbsp;
  
  <input type="checkbox" <%if instr(strProfessionalCertification,"CFA") > 0 then response.Write("checked")%>  name="chkCertification" id="chkCertification3" value="CFA"/>
  CFA&nbsp;&nbsp;
  
  <input type="checkbox" <%if instr(strProfessionalCertification,"Others") > 0 then response.Write("checked")%>  name="chkCertification" id="chkCertification4" onclick="othersCert(this);" value="Others"/>
  Others         
  
<%
if strProfessionalCertification_others = "" then 
	strDisplay = "display:none;"  
else
	strDisplay = "display:block;"
	 
end if
%>
  		<div style="<%=strDisplay%>" id="spnCert">
					<input class="form-control input-sm" name='txtCertification' type='text' id='txtCertification' value="<%=strProfessionalCertification_others%>" placeholder="type here professional certification name "  maxlength="50"/>
		</div>
                    
                                <span id="txtCertification_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
       
                                                     
                          </div>
                        </div>
                      </div>
                      </div>
                   