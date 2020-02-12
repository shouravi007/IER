  <div class="form-group">
                        <div class="row">
                          <div class="col-sm-3">
                            <label for="experience">Professional Certification (if any)</label>
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
If Request.Form("txtCertification") <> "" Then
	strProfessionalCertification_others = Request.Form("txtCertification")
End If

if instr(strProfessionalCertification,"Others") > 0 then
	varDisplayPC = "display:block;"	
ElseIf strProfessionalCertification_others <> "" then 	
	varDisplayPC = "display:block;"
else
	varDisplayPC = "display:none;"
end if

%>
  <div style="<%=varDisplayPC%>" id="spnCert">	
<input class="form-control input-sm" name='txtCertification' type='text' id='txtCertification' value="<%=strProfessionalCertification_others%>" placeholder="type here professional certification name " maxlength="50"/>
</div>
                    
                   
                                                     
                          </div>
                        </div>
                      </div>
                      </div>
                   