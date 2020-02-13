<% 
		resultLevel_O1 = Trim(Request.Form("txtLevel_O1"))
		resultLevel_O2 = Trim(Request.Form("txtLevel_O2"))
		resultLevel_O3 = Trim(Request.Form("txtLevel_O3"))
		resultLevel_O4 = Trim(Request.Form("txtLevel_O4"))
		resultLevel_O5 = Trim(Request.Form("txtLevel_O5"))
		
		strSubject_O1 = Trim(Request.Form("txtSubO1"))		
		strSubject_O2 = Trim(Request.Form("txtSubO2"))		
		strSubject_O3 = Trim(Request.Form("txtSubO3"))		
		strSubject_O4 = Trim(Request.Form("txtSubO4"))
		strSubject_O5 = Trim(Request.Form("txtSubO5"))

		resultLevel_A1 = Trim(Request.Form("txtLevel_A1"))
		resultLevel_A2 = Trim(Request.Form("txtLevel_A2"))
		
		strSubject_A1 = Trim(Request.Form("txtSubA1"))
		strSubject_A2 = Trim(Request.Form("txtSubA2"))

%>

<input type="hidden" name="hidAuto1" id="hidAuto1" value="<%=Request.Form("hidAuto1")%>" />
<input type="hidden" name="hidAuto2" id="hidAuto2" value="<%=Request.Form("hidAuto2")%>" />
<input type="hidden" name="hidAuto3" id="hidAuto3" value="<%=Request.Form("hidAuto3")%>" />
<input type="hidden" name="hidAuto4" id="hidAuto4" value="<%=Request.Form("hidAuto4")%>" />
<input type="hidden" name="hidAuto5" id="hidAuto5" value="<%=Request.Form("hidAuto5")%>" />

<input name="txtLevel_O1" id="txtLevel_O1" type="hidden" value="<%=Request.Form("txtLevel_O1")%>"/>
<input name="txtLevel_O2" id="txtLevel_O2" type="hidden" value="<%=Request.Form("txtLevel_O2")%>" />
<input name="txtLevel_O3" id="txtLevel_O3" type="hidden" value="<%=Request.Form("txtLevel_O3")%>" />
<input name="txtLevel_O4" id="txtLevel_O4" type="hidden" value="<%=Request.Form("txtLevel_O4")%>" />
<input name="txtLevel_O5" id="txtLevel_O5" type="hidden" value="<%=Request.Form("txtLevel_O5")%>" /> 

<input name="txtSubO1" id="txtSubO1" type="hidden" value="<%=Request.Form("txtSubO1")%>"/>
<input name="txtSubO2" id="txtSubO2" type="hidden" value="<%=Request.Form("txtSubO2")%>" />
<input name="txtSubO3" id="txtSubO3" type="hidden" value="<%=Request.Form("txtSubO3")%>" />
<input name="txtSubO4" id="txtSubO4" type="hidden" value="<%=Request.Form("txtSubO4")%>" />
<input name="txtSubO5" id="txtSubO5" type="hidden" value="<%=Request.Form("txtSubO5")%>" />

<input type="hidden" name="hidAuto_A1" id="hidAuto_A1" value="<%=Request.Form("hidAuto_A1")%>" />
<input type="hidden" name="hidAuto_A2" id="hidAuto_A2" value="<%=Request.Form("hidAuto_A2")%>" /> 

<input name="txtLevel_A1" id="txtLevel_A1" type="hidden" value="<%=Request.Form("txtLevel_A1")%>" />
<input name="txtLevel_A2" id="txtLevel_A2" type="hidden" value="<%=Request.Form("txtLevel_A2")%>" />
        
<input name="txtSubA1" id="txtSubA1" type="hidden" value="<%=Request.Form("txtSubA1")%>" />
<input name="txtSubA2" id="txtSubA2" type="hidden" value="<%=Request.Form("txtSubA2")%>" />

