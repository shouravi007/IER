
	  <div class="smallHeaderName" style="font-weight:bold;">Academic Qualification</div>
     <table  class="table-striped"   align="center" width="100%" border="0" cellpadding="3" cellspacing="0" >
    <tr>
 	 <td>
    
      <%
	  
	  if ddlJobs = 6 then 
	    jobsCondition = " and trackingno between 600000 and 699999"
	  elseif ddlJobs = 7 then 
	    jobsCondition = " and trackingno between 700000 and 799999"
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
	<table  class="table-striped"   align="center" width="98%" border="0" cellpadding="3" cellspacing="0"  bgcolor="<%=strColor%>">
    <tr>
      <td colspan="2" valign="top" class="bodyTextHeader">Education Level
        <select name="ddlEducationLevel<%=diffedulevel%>"  id="ddlEducationLevel<%=diffedulevel%>" style="WIDTH:120px" >
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
      <td align="left"  valign="top" width="316" class="bodyTextHeader">Passing Year
        <select name="ddlPassingYear<%=diffedulevel%>"  id="ddlPassingYear<%=diffedulevel%>" style="WIDTH:100px">
          <option value="S" >Select</option>
          <%For i = Year(Date) To Year(Date)-25 Step -1%>
          <option value="<%=i%>" <% If  strGroupName <> ""  Then  %> <%  If  intPassingYear(diffedulevel)  <>  ""  Then  %> <%   If i =  Cint(intPassingYear(diffedulevel))  Then %>     selected="selected"  <%End if  %>  <% End if  %>  <%  End if%>> <%=i%>  </option>
          <%Next%>
        </select></td>
     