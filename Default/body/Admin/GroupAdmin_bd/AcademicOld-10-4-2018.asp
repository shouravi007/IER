       <div class="col-md-12">
	  <div class="smallHeaderName" style="font-weight:bold;">Academic Qualification</div>
     <table align="center" width="100%" border="1" cellpadding="3" cellspacing="0" class="table-striped">
    <tr>
 	 <td>
    
      <%
	  
	  if ddlJobs = 6 then 
	    jobsCondition = " and personalid between 600000 and 699999"
	  elseif ddlJobs = 7 then 
	    jobsCondition = " and personalid between 700000 and 799999"
	  end if 
	  
	  
	  
	  For  diffedulevel = 1 To 4 
	  
 Select Case diffedulevel
   Case 1
     strdisplayEduLevel  =  "Secondary"
	 strCondtionDegree =  "1"
	 strConditionSubject = "1"
	 strDegreeForId =  "stxtDegreeName"
	 strInstituteForId = "sINSTITUTE"
	 strSubjectForId = "sSUBJECT"
	 strHight = 150
	 strColor = "#DDEEFF"
	 strDisplay = "disabled"
  Case 2
    strdisplayEduLevel  = "Higher Secondary"
	 strCondtionDegree =  "2" 
	 strDegreeForId =  "stxtDegreeName"
	 strConditionSubject = "2"
	 strInstituteForId = "sINSTITUTE"	 
	 strSubjectForId = "sSUBJECT" 
     strHight = 150
	 strColor = "#E8E8E8"
	 strDisplay = "disabled"
  Case 3
   strdisplayEduLevel = "Graduation"
   	strCondtionDegree =  "3" 
	strDegreeForId =  "stxtDegreeName"
	 strConditionSubject = "3"
	strInstituteForId = "sINSTITUTE"	
    strSubjectForId = "sSUBJECT"
	strHight = 150
	strColor = "#DDEEFF"

  Case 4 
   strdisplayEduLevel =  "Post Graduation"
   strCondtionDegree =  "4" 
    strConditionSubject = "4"
   strDegreeForId =  "stxtDegreeName"
   strInstituteForId = "sINSTITUTE"   
   strSubjectForId = "sSUBJECT"
   strHight = 150 ' 235
  strColor = "#E8E8E8"
 ' Case 5 
'  strdisplayEduLevel =  "Others"
'  strCondtionDegree =  "5" 
'   strConditionSubject = "5"
'  strDegreeForId =  "stxtDegreeName"
'  strInstituteForId = "sINSTITUTE" 
'  strSubjectForId = "sSUBJECT"
'  strHight = 150
'  strColor = "#DDEEFF" 

  Case Else
   
End Select
	  
	  %>
  <!--  
	  <div align="left" style="width:120px;"><img src="images/collapse.gif" id="CA" /><img src="images/expand.gif" id="EA" /></div> 
	   -->
      
<!--  <div id="Academic" align="center" style="background-color:<%'=strColor%>; width:95%;" class="bodytext">
-->    <br />
	<table align="center" width="98%" border="0" cellpadding="3" cellspacing="0" class="text" bgcolor="<%=strColor%>">
    <tr>
      <td colspan="2" valign="top" class="bodyTextHeader">Education Level
        <select name="ddlEducationLevel<%=diffedulevel%>" class="text" id="ddlEducationLevel<%=diffedulevel%>" style="WIDTH:120px" >
          <option value="S" selected="selected">Select</option>
          <% If  diffedulevel = 1 Then %>
          <option value="1" <%'If intEducationLevel1 = 1 Then %> <%'End if%> >Secondary</option>
          <%End if %>
          <%If  diffedulevel = 2 Then %>
          <option value="2" <%'If intEducationLevel2 = 2 Then %> <%'End if%> >Higher Secondary</option>
          <%End if %>
          <%If  diffedulevel = 3 Then %>
          <option value="3" <%'If intEducationLevel3 = 3 Then %>  <%'End if%>  >Graduation</option>
          <%End if %>
          <%If  diffedulevel = 4 Then %>
          <option value="4" <%'If intEducationLevel4 = 4 Then %>  <%'End if%> >Post Graduation</option>
          <%End if %>
          <%'If  diffedulevel = 5 Then %>
          <!--<option value="5" <%'If intEducationLevel5 = "5" Then %> selected="selected" <%'End if%> >Doctoral</option>-->
          <%'End if %>
        </select></td>
      <!-- passing year --!-->
      <td  valign="top" width="316" class="bodyTextHeader">Passing Year
        <select name="ddlPassingYear<%=diffedulevel%>" class="text" id="ddlPassingYear<%=diffedulevel%>" style="WIDTH:100px">
          <option value="S" >Select</option>
          <%For i = Year(Date) To Year(Date)-25 Step -1%>
          <option value="<%=i%>" <% If  strGroupName <> ""  Then  %> <%  If  intPassingYear(diffedulevel)  <>  ""  Then  %> <%   If i =  Cint(intPassingYear(diffedulevel))  Then %>     selected="selected"  <%End if  %>  <% End if  %>  <%  End if%>> <%=i%>  </option>
          <%Next%>
        </select></td>
      <!-- Result -->
      <td  width="96"valign="top" class="bodyTextHeader">Result</td>
      <td width="219" valign="top">
         <table width="100%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td><select name="RESULT<%=diffedulevel%>" class="text" id="RESULT<%=diffedulevel%>" style="WIDTH:100px">
        <option value="S" >Select</option>
        <option value="15" >First</option>
        <option value="14" >Second</option>
        <option value="0">Grade</option>
        <%If  diffedulevel = 4 Then %>
        <option value="12">Appeared</option>
        <%eND iF %>
        </select></td>
    <td>  <select name="RESULT<%=diffedulevel%>_" class="text" id="RESULT<%=diffedulevel%>_" style="WIDTH:100px"> 
        <option value="S" >Select</option>
        <option value="15" >First</option>
        <option value="14" >Second</option>
        <option value="0">Grade</option>
        <%If  diffedulevel = 4 Then %>
        <option value="12">Appeared</option>
        <%eND iF %>
        </select></td>
  </tr>
  <tr>
    <td>
    <div id="sp_grd<%=diffedulevel%>"> 
      <input type='text' name='txtPercentFrom<%=diffedulevel%>' id='txtPercentFrom<%=diffedulevel%>'  maxlength='5' size='5' style='width:40px;font-size:7pt;background-color:#F1F7DE'> To <input type='text' name='txtPercentTo<%=diffedulevel%>' id='txtPercentTo<%=diffedulevel%>'value='' maxlength='5' size='5' style='width:40px;font-size:7pt;background-color:#F1F7DE'>
    </div>
    </td>
    <td> 
           <div id="sp_grd<%=diffedulevel%>_"> 
          <input type='text' name='txtPercentFrom<%=diffedulevel%>_' id='txtPercentFrom<%=diffedulevel%>_'  maxlength='5' size='5' style='width:40px;font-size:7pt;background-color:#F1F7DE'> To <input type='text' name='txtPercentTo<%=diffedulevel%>_' id='txtPercentTo<%=diffedulevel%>_'value='' maxlength='5' size='5' style='width:40px;font-size:7pt;background-color:#F1F7DE'>
          </div>      
          
          </td>
  </tr>
</table>
        <%
		'If Request.ServerVariables("HTTP_REFERER") = "http://serverbdj/ebl/admin/SearchResult.asp" Then
		'	strPercentFrom = Request.Form("txtPercentFrom")
		'	strPercentTo = Request.Form("txtPercentTo")
%>
        <!--<input type='text' name='txtPercentFrom' id='txtPercentFrom' value='<%'=strPercentFrom%>' maxlength='5' size='5' style='width:30px;font-size:7pt;background-color:#F1F7DE'> To <input type='text' name='txtPercentTo' id='txtPercentTo' value='<%'=strPercentTo%>' maxlength='5' size='5' style='width:30px;font-size:7pt;background-color:#F1F7DE'>	-->
        <%		
		'End If
%></td>
    </tr>
    <tr>
      <td width="261" valign="top" class="bodyTextHeader">Degree Name </td>
      <td colspan="2" valign="top" class="bodyTextHeader">Institution Name</td>
      <td colspan="2" valign="top" class="bodyTextHeader">Major Subject</td>
      </tr>

    <tr>
      <td  valign="top"><% 
	
		
	SQLDegree = "SELECT  Distinct DegreeName, EducationId FROM  Academic where  EducationId In  ( "&strCondtionDegree&")  "
	'Response.Write SQLDegree&"<br/>" 
	arr_Degree = objERS.RetrieveData(SQLDegree, errMsg)
	ErrorMessage "235", errMsg, 0
	  
	  %>
<select name="<%=strDegreeForId &diffedulevel%>" class="text" id="<%=strDegreeForId &diffedulevel%>" style="width:85%;height:<%=strHight%>px;" multiple="multiple" >

		    <option value='S' selected='selected'>Select</option>      
        <% If  diffedulevel = 1  Then %>
			 <option value="SSC">SSC</option>
             <option value="Dakhil">Dakhil</option>
             <option value="O Level">O Level</option>
             <option value="Vocational">Vocational</option>
             <option value="Equivalent">Equivalent</option>
         <%ElseIf diffedulevel = 2 Then %>
			 <option value="HSC">HSC</option>
             <option value="Alim">Alim</option>
             <option value="Business Management">Business Management</option>
             <option value="A Level">A Level</option>
             <option value="Equivalent">Equivalent</option>
         <%Elseif diffedulevel = 3 Then %>
            <option value="BA(Hons.)">BA(Hons.)</option>
            <option value="BBA">BBA</option>
            <option value="BBM">BBM</option>
            <option value="BBS(Hons.)">BBS(Hons.)</option>
            <option value="BCom(Hons.)">BCom(Hons.)</option>
            <option value="B.Ed.">B.Ed.</option>
            <option value="BSc(Hons.)">BSc(Hons.)</option>
            <option value="BSc(Engg)">BSc(Engg)</option>
            <option value="BSS(Hons.)">BSS(Hons.)</option>
            <option value="LLB(Hons.)">LLB(Hons.)</option>
            <option value="BA(Pass)">BA(Pass)</option>
            <option value="BBS(Pass)">BBS(Pass)</option>
            <option value="BCom(Pass)">BCom(Pass)</option>
            <option value="BSc(Pass)">BSc(Pass)</option>
            <option value="BSS(Pass)">BSS(Pass)</option>
            <option value="LLB(Pass)">LLB(Pass)</option>    
      
         <%ElseIf diffedulevel = 4 Then %> 
			<option value="MA">MA</option>
            <option value="MBA">MBA</option>
            <option value="MBM">MBM</option>
            <option value="MBS">MBS</option>
            <option value="MCom">MCom</option>
            <option value="M.Ed.">M.Ed.</option>
            <option value="MSc">MSc</option>
            <option value="MSc(Engg)">MSc(Engg)</option>
            <option value="MSS">MSS</option>
            <option value="LLM">LLM</option>      
         <%'ElseIf diffedulevel = 5 Then %>
			<!--<option value="Others">Others</option>-->
         <%End if %>
        
        </select>
          
          </td>
      <td colspan="2" valign="top">
  <select name="<%=strInstituteForId&diffedulevel%>" multiple="multiple" class="text" id="<%=strInstituteForId&diffedulevel%>" style="WIDTH:100%;height:<%=strHight%>px;" onChange="return createEdu(this,<%=diffedulevel%>);FillListValues(this);" onmousedown="GetCurrentListValues(this);">
        <option value="S" selected="selected">Select</option>
        <%
		 ' strSqlInstitute = "Select Distinct UNIVERSITY From ACADEMIC where UniversityType = 'N'  and  EducationId In  ( "&strCondtionDegree&") "&jobsCondition&"  order by University " 
		 
		 
	if diffedulevel > 2 then
	strSQL = "select distinct e.institutename  from [institute] e "
	else
	strSQL = "select distinct e.board  from [board] e "
	end if 
		 
		 
		 
		 ' Response.Write("<br/> sql institute"&strSqlInstitute)  
		  arrInstitute = objERS.RetrieveData(strSQL,strErr)
		  strUbound = Ubound(arrInstitute,2)
		  If arrInstitute(0,0) <> "" Then 
		   For i = 0 To strUbound 		
		%>
        <option value="<%=arrInstitute(0,i)%>"> <%=Replace(arrInstitute(0,i),"BIBM-Dhaka University", "BIBM")%> </option>
        
         <%
			   Next
			  End if  
		  %>
        <option value="O" <%If strForeign = "O" Then%> <%End If%>>Others</option>
        <option value="F"<%If strForeign = "F" Then%> <%End If%>>Foreign Institute</option>
      </select>
      <%If diffedulevel > 2 Then %>
      <br /> <br />
      <%If diffedulevel = 4 Then %>
      
       <input name="chkInstitute<%=diffedulevel%>" type="checkbox" value="BIBM-Dhaka University" /> Bangladesh Institute of Bank Management(BIBM), Afffiliated with Dhaka University&nbsp; <br />
      <%End If%>
      <input name="chkInstitute<%=diffedulevel%>" type="checkbox" value="IBA-Dhaka University" />IBA-Dhaka University
      <%End If%>
      </td>
      <td colspan="3" valign="top">
<% 
     strSqlSubject = "select distinct e.subject  from [subject] e order by e.subject "   
	' Response.Write(strSqlSubject) 
	' Response.End()
     arrSubject = objERS.RetrieveData(strSqlSubject,strErr)	
	 strUbonud = Ubound(arrSubject,2)
%>
      <select name="<%=strSubjectForId&diffedulevel%>" multiple="multiple" class="text" id="<%=strSubjectForId&diffedulevel%>" style="WIDTH:100%;height:<%=strHight%>px;" onChange="return createEdu(this,<%=diffedulevel%>);FillListValues(this);" onmousedown="GetCurrentListValues(this);"> <!--return createMaj(this,<%'=diffedulevel%>);-->
        <%If diffedulevel = 1 or diffedulevel = 2 Then%>
		<option value='S'>Not Applicable</option>
        <%End If%>
<%	 
	  If  arrSubject(0,0) <> "Nothing" Then 				

		For i = 0  To Ubound(arrSubject,2)

			If arrSubject(0, i)  = "NA" or arrSubject(0, i) = "Not Applicable" or arrSubject(0, i)  = "Others"   Then
				
			Else
				strSubject = arrSubject(0, i)
				strSubjectName = Replace(strSubject,"_"," & ")
				'strSubjectName = Replace(strSubject,"CE","Civil Engg.")
				'strSubjectName = Replace(arrSubject(0, i),"ME","Mechanical Engg")
				'strSubjectName = Replace(arrSubject(0, i),"EEE","Electrical and Electronics Engg")
				'strSubjectName = Replace(arrSubject(0, i),"CSE","Computer Science and Engg")
				
				If strSubject = "CE" Then
					strSubjectName = "Civil Engg"
				elseIf strSubject = "ME" Then
					strSubjectName = "Mechanical Engg"
				elseIf strSubject = "MIS" Then
					strSubjectName = "Management Information System"
				End IF 		

%>               
			<option value="<%=strSubject%>"><%=strSubjectName%></option>       
<%
			End If
		Next 
	End if 
%>
        <!-- <option value='Others'>Others</option> -->
      </select></td>
      </tr>
   
    <tr>
      <td  valign="top">
        <table width="100%">
          <!--<tr>
            <td width="122"><input name="cmdAdd<%'=diffedulevel%>" type="button" class="text" id="cmdAdd<%'=diffedulevel%>" onclick="append('stxtDegreeName<%'=diffedulevel%>','hidDegreeName<%'=diffedulevel%>','txtDegreeName<%'=diffedulevel%>','100','You cannot add more than 100 area of DegreeName!');" value="Add to list below" />
              <input type="button" name="cmdRemove2" id="cmdRemove2" class="text" style="margin-top:22px;" value="Remove from list" onclick="Remove_Element('hidDegreeName<%'=diffedulevel%>','stxtDegreeName<%'=diffedulevel%>','txtDegreeName<%'=diffedulevel%>');" /></td>
          </tr>-->
          <!--<tr>
            <td><input type="hidden" name="txtDegreeName<%'=diffedulevel%>" id="txtDegreeName<%'=diffedulevel%>" value="" /></td>
          </tr>-->
        </table></td>
      <td colspan="2" valign="top">
        <table width="100%">
          <!--<tr>
            <td width="107"><input name="cmdAdd2" type="button" class="text" id="cmdAdd2" onclick="append('sINSTITUTE<%'=diffedulevel%>','hidINSTITUTE<%'=diffedulevel%>','INSTITUTE<%'=diffedulevel%>','100','You cannot add more than 100 Institute Name!');" value="Add to list below" />
              <input type="button" name="cmdRemove3" id="cmdRemove3" class="text" style="margin-top:22px;" value="Remove from list" onclick="Remove_Element('hidINSTITUTE<%'=diffedulevel%>','sINSTITUTE<%'=diffedulevel%>','INSTITUTE<%'=diffedulevel%>');" /></td>
          </tr>-->
          <!--<tr>
            <td><input name="INSTITUTE<%'=diffedulevel%>" type="hidden" id="INSTITUTE<%'=diffedulevel%>" value="" />
              <input type="hidden" name="txtSelectedSubDepartmentList3" id="txtSelectedSubDepartmentList3" value="<%'=Request.Form("txtSelectedSubDepartmentList")%>" /></td>
          </tr>-->
      </table>
       </td>
      <td colspan="3" valign="top">
        <table width="100%">
          <!--<tr>
            <td width="183"><input name="cmdAdd" type="button" class="text" id="cmdAdd" onclick="append('sSUBJECT<%'=diffedulevel%>','hidSUBJECT<%'=diffedulevel%>','SUBJECT<%'=diffedulevel%>','100','You cannot add more than 100 Subject Name!');" value="Add to list below" />
              <input type="button" name="cmdRemove" id="cmdRemove" class="text" style="margin-top:22px;" value="Remove from list" onclick="Remove_Element('hidSUBJECT<%'=diffedulevel%>','sSUBJECT<%'=diffedulevel%>','SUBJECT<%'=diffedulevel%>');" /></td>
            </tr>-->
          <!--<tr>
            <td><input type="hidden" name="SUBJECT<%'=diffedulevel%>" id="SUBJECT<%'=diffedulevel%>" value="" /></td>
          </tr>-->
          </table>
       </td>
      </tr>
    <tr>
      <td  valign="top">
        <!--<input name="txtDegreeName" type="text" class="text" id="txtDegreeName"  style="width:80px;" value="<%'=strInstituteName%>" size="10" />-->
        <!--<select  name="hidDegreeName<%'=diffedulevel%>" class="text" id="hidDegreeName<%'=diffedulevel%>" style="width:85%;height:<%'=strHight%>px; "  multiple="multiple"  onmousedown="GetCurrentListValues(this);" >
        </select>-->

       
      </td>
      <td colspan="2" valign="top">
    
      <!--<select name="hidINSTITUTE<%'=diffedulevel%>" multiple="multiple" class="text" id="hidINSTITUTE<%'=diffedulevel%>" style="WIDTH:100%;height:<%'=strHight%>px; "  onmousedown="GetCurrentListValues(this);">
      </select>-->
        <div id="sp_edu<%=diffedulevel%>"></div></td>
      <td colspan="3" valign="top">
      <!--<select name="hidSUBJECT<%'=diffedulevel%>" class="text" id="hidSUBJECT<%'=diffedulevel%>" style="WIDTH:100%;height:<%'=strHight%>px; "  onmousedown="GetCurrentListValues(this);"  multiple="multiple" >
      </select>-->      
        <div id="sp_maj<%=diffedulevel%>"></div></td>
      </tr>
    </table>
  </div> 
 
	<br />  
    <% Next %>
   
                      


        </td>
       </table> 
</div> 
