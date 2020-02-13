<tr>
		<td valign="top"><input type="hidden" name="hidEducationID<%=i%>" id="hidEducationID<%=i%>" value="<%=arrAcademicId(i-1)%>" />
		<!--<input type="hidden" id="EDUAUTO<%'=i%>" name="EDUAUTO<%'=i%>"  value="<%'=arrAcademicId(i-1)%>" />-->
		<select name="ddlEducationLevel<%=i%>" id="ddlEducationLevel<%=i%>" class="newSelect" style="WIDTH:100px;" onChange="return LoadDegree(this,<%=i%>);">
		<option value="-1" >Select</option>
		<%
		flag_edulevel = False
		'RSN_EDU_L.MoveFirst
		'do until RSN_EDU_L.EOF 
		If arrEduLevel(0, 0) <> "Nothing" Then
			For eduIndex = 0 To UBound(arrEduLevel, 2)
				newI = i-1 
			flag_edulevel = True
        %>  
		<% If newI = 0 Then %>                 
        <option value="<%=arrEduLevel(0, newI)%>" <%If arrEducationId(i-1)=arrEduLevel(0, newI) Then%>selected<%End If%>><%=arrEduLevel(1, newI)%></option>               
                <%
				Exit For
				ElseIf i-1=1 Then				
				%>
        <option value="<%=arrEduLevel(0, newI)%>" <%If arrEducationId(i-1)=arrEduLevel(0, newI) Then%>selected<%End If%>><%=arrEduLevel(1, newI)%></option>       
                <%
				Exit For
				ElseIf i-1=2 Then	
				'ValuePrint arrEducationId(i-1)"arrEducationIdarrEduLevel	"		
				%>                
        <option value="<%=arrEduLevel(0, newI)%>" <%If arrEducationId(i-1)=arrEduLevel(0, newI) Then%>selected<%End If%>><%=arrEduLevel(1, newI)%></option>         
                     
                <%
				Exit For
				ElseIf i-1=3 Then				
				%>
         <option value="<%=arrEduLevel(0, newI)%>" <%If arrEducationId(i-1)=arrEduLevel(0, newI) Then%>selected<%End If%>><%=arrEduLevel(1, newI)%></option> 
                     
               <%
				Exit For
				ElseIf i-1=4 Then
				%> 
			<%  For eduIndex1 = 3 To UBound(arrEduLevel, 2) %>
       <option value="<%=arrEduLevel(0, eduIndex1)%>" <%If arrEducationId(i-1)=arrEduLevel(0, eduIndex1) Then%>selected<%End If%>>
       <%=arrEduLevel(1, eduIndex1)%></option>
            <% Next %>
					     <%
							  
					Exit For
				End If
			Next
		End If
	%>            

		</select>		</td>
		<td valign="top">
		<div id="spnDegree<%=i%>">
		<select name="ddlDegreeName<%=i%>" id="ddlDegreeName<%=i%>" class="newSelect" style="WIDTH:70px;" onChange="return LoadJubject(this,<%=i%>);">
		<option value="S" selected="selected">Select</option>
		<%
		
		strEduLevel = arrEducationId(i-1)
		If strEduLevel = 1 Then
		%>
			<option value='SSC' <%If arrDegreeName(i-1) = "SSC" Then%> selected="selected" <%End If%>>SSC</option>
			<option value='Dakhil' <%If arrDegreeName(i-1) = "Dakhil" Then%> selected="selected" <%End If%>>Dakhil</option>
			<option value='O Level' <%If arrDegreeName(i-1) = "O Level" Then%> selected="selected" <%End If%>>O Level</option>
			<option value='Vocational' <%If arrDegreeName(i-1) = "Vocational" Then%> selected="selected" <%End If%>>Vocational</option>
			<option value='Equivalent' <%If arrDegreeName(i-1) = "Equivalent" Then%> selected="selected" <%End If%>>Equivalent</option>
		<%
		ElseIf strEduLevel = 2 Then
		%>
			<option value='HSC' <%If arrDegreeName(i-1) = "HSC" Then%> selected="selected" <%End If%>>HSC</option>
			<option value='Alim' <%If arrDegreeName(i-1) = "Alim" Then%> selected="selected" <%End If%>>Alim</option>
			<option value='Business Management' <%if arrDegreeName(i-1) = "Business Management" Then%> selected="selected" <%End If%>>Business Management</option>
			<option value='Diploma' <%If arrDegreeName(i-1) = "Diploma" Then%> selected="selected" <%End If%>>Diploma</option>
            <option value='A Level' <%If arrDegreeName(i-1) = "A Level" Then%> selected="selected" <%End If%>>A Level</option>
			<option value='Equivalent' <%If arrDegreeName(i-1) = "Equivalent" Then%> selected="selected" <%End If%>>Equivalent</option>
	   <%					
		ElseIf strEduLevel = "3" Then
		%>
          
            <option value="BA(Hons)"<%If arrDegreeName(i-1) = "BA(Hons)" Then%> selected="selected" <%End If%>>BA(Hons)</option>
            <option value="BBA"<%If arrDegreeName(i-1) = "BBA" Then%> selected="selected" <%End If%>>BBA</option>
            <option value='BBS(Hons)' <%If arrDegreeName(i-1) = "BBS(Hons)" Then%> selected="selected" <%End If%>>BBS(Hons)</option>
            <option value='BCom(Hons)' <%If arrDegreeName(i-1) = "BCom(Hons)" Then%> selected="selected" <%End If%>>BCom(Hons)</option>           
            <option value='BSc(Hons)' <%If arrDegreeName(i-1) = "BSc(Hons)" Then%> selected="selected" <%End If%>>BSc(Hons)</option>
            <option value='BSc(Engg)' <%If arrDegreeName(i-1) = "BSc(Engg)" Then%> selected="selected" <%End If%>>BSc(Engg)</option>
            <option value='BSS(Hons)' <%If arrDegreeName(i-1) = "BSS(Hons)" Then%> selected="selected" <%End If%>>BSS(Hons)</option>
                                      
		<%					
		ElseIf  strEduLevel = "4" Then
		%>
        
        	<option value='MA' <%If arrDegreeName(i-1) = "MA" Then%> selected="selected" <%End If%>>MA</option>
        	<option value='MBA' <%If arrDegreeName(i-1) = "MBA" Then%> selected="selected" <%End If%>>MBA</option>
            <option value='MBS' <%If arrDegreeName(i-1) = "MBS" Then%> selected="selected" <%End If%>>MBS</option>            
            <option value='MBM' <%If arrDegreeName(i-1) = "MBM" Then%> selected="selected" <%End If%>>MBM</option>           
            <option value='MCom' <%If arrDegreeName(i-1) = "MCom" Then%> selected="selected" <%End If%>>MCom</option>
            <option value='MSc' <%If arrDegreeName(i-1) = "MSc" Then%> selected="selected" <%End If%>>MSc</option>
            <option value="MSc(Engg)"<%If arrDegreeName(i-1) = "MSc(Engg)" Then%> selected="selected" <%End If%>>MSc(Engg)</option>
            <option value='MSS' <%If arrDegreeName(i-1) = "MSS" Then%> selected="selected" <%End If%>>MSS</option>           
           <option value='MS' <%If arrDegreeName(i-1) = "MS" Then%> selected="selected" <%End If%>>MS</option>       
<!--           <option value='M.Ed' <%'If arrDegreeName(i-1) = "M.Ed" Then%> selected="selected" <%'End If%>>M.Ed</option>-->		
		<%					
		Else
		%>
			<option value="<%If Right(arrDegreeName(i - 1), 3) = "@@@" Then%>Others<%Else%><%=arrDegreeName(i-1)%><%End If%>" selected="selected">
			<%If Right(arrDegreeName(i - 1), 3) = "@@@" Then%>
				Others
			<%Else%>
				<%=arrDegreeName(i-1)%>
			<%End If%>
			</option>
		<%
		End If
		%>
		</select>
		</div>
		<div id="spnDoctorate<%=i%>">
		<%
		If Right(arrDegreeName(i - 1), 3) = "@@@" Then
			strDoctorate = Replace(arrDegreeName(i - 1), "@@@", "")
		%>
			<input name='txtDoctorate<%=i%>' type='text' id='txtDoctorate<%=i%>' class="newText" value="<%=strDoctorate%>" />
		<%
		End If
		%>
		</div></td>
		<td valign="top"><select id="ddlPassingYear<%=i%>" name="ddlPassingYear<%=i%>" class="newSelect" style="WIDTH:60px;">
		<option value="S" selected="selected">year</option>
<%

		For j=CInt(Year(Date)) to (CInt(Year(Date))-20) Step -1
		%>
			<option value="<%=j%>" <%If CInt(arrPassingYear(i-1))=j Then%>selected<%End If%>><%=j%></option>
		<%
		Next
		%>
		</select>                                                </td>
		<td valign="top">
        <input name="txtInstitute<%=i%>" type="text" id="txtInstitute<%=i%>" value="<%=arrInstitute(i-1)%>" class="newText" style="width:100px;" maxlength="255"/></td>
		<td valign="top">
<%
		If arrUniversityType(i-1)="F" Then
			If arrUniversity(i-1) = "" Or IsNull(arrUniversity(i-1)) Then
				strUniversityCountry = ""
				strUniversityName = ""
			Else
				fInf=Split(arrUniversity(i-1),"@***@")
				'varSelValF="selected"
				strUniversityName = fInf(0)
				strUniversityCountry = fInf(1)
				varSelValO = ""
			End If	
		
			'fInf=Split(arrEduIns(i-1),"@***@")
			varSelValF="selected"
			'strUniversityCountry=fInf(0)
			'strUniversityName=fInf(1)
			'varSelValO=""
		ElseIf arrUniversityType(i-1)="O" Then
			varSelValO="selected"
			strUniversityName=arrUniversity(i-1)
			varSelValF=""
		Else
			varSelValF=""
			varSelValO=""
		End If
%>
<%
		strUniName = Replace(arrUniversity(i-1), "&", "&amp;")
%>		

	<select id="ddlUniversity<%=i%>" name="ddlUniversity<%=i%>" class="newSelect" style="width:170px;" onChange="return createEdu(this,<%=i%>);" >
       
        <% IF i<3 THEN %>
        <option value="S">Select</option>        
         <%For d = 0 To Ubound(arrBoardNameList,1) %>
         <option value="<%=arrBoardNameList(d)%>" <%If Cstr(strUniName) = Cstr(arrBoardNameList(d)) Then%> selected="selected" <%End If%>><%=arrBoardNameList(d)%></option>
		  <%Next%>
        <% Else %>
        <option value="S">Select</option>
        <option value="BIBM-Dhaka University"<%If strUniName = "BIBM-Dhaka University" Then%> selected <%End If%>>BIBM-Dhaka University</option>
          <%
		strPath = "UNIVERSITY"	
		errLog=""
		LoadDataFromXML arrUni,strPath,"ID_uni","name_uni"
         If arrUni(0,0) <> "Nothing" Then 
      		For f = 0 To Ubound(arrUni,1)
		 %>
        <option value="<%=arrUni(f,1)%>"  <%If strUniName = arrUni(f,1)  Then  %> selected <%End if  %> ><%=arrUni(f,1)%></option>    
			
		  <% Next 
		
          End If 
		
		End if%>
		<option value="S">-----------------------------------</option>
		<option value="Foreign" <%=varSelValF%>>Foreign Institute</option>
		<option value="Others" <%=varSelValO%>>Others</option>
		</select>
		<div id="sp_edu<%=i%>">
<%
		If arrUniversityType(i-1)="F" Then
%>
			<font face="Verdana" color="#FF0000" size="1">* Campus location</font><br />
			<select id="ddlCountry<%=i%>" name="ddlCountry<%=i%>" class="newSelect" style="width:170px;">
     			<option value="<%=strUniversityCountry%>" selected="selected"><%=strUniversityCountry%></option>
                <!--#include File = "OptionForeignCountry.asp" -->
		    	</select>
			<br />
            <font face="Verdana" color="#FF0000" size="1">
		<%if i<3 then%>
			* Institute Name
        <%else%>
            * University Name
        <%end if%>
        </font>
	<input type="text" id="txtUniversity<%=i%>" name="txtUniversity<%=i%>" style="width:170px;" maxlength="255" class="newText" value="<%=strUniversityName%>" />
			<%		
		ElseIf arrUniversityType(i-1)="O" Then
		%>
			<font face="Verdana" color="#FF0000" size="1">            
			<%if i<3 then%>
			* Institute Name
            <%else%>
            * University Name
            <%end if%></font><br />
			<input type="text" name="txtUniversity<%=i%>" id="txtUniversity<%=i%>" style="width:170px;" maxlength="255" class="newText" value="<%=strUniversityName%>" />
		<%
		End If
%>      </div>		</td>

		<td valign="top">
<%
		If arrResult(i-1) < 12 Then
			varSelG="selected"
			varSelFst=""
			varSelSnd=""
			varSelTrd=""
			varSelApp=""
		ElseIf arrResult(i-1)=15 Then
			varSelG=""
			varSelFst="selected"
			varSelSnd=""
			varSelTrd=""
			varSelApp=""
		ElseIf arrResult(i-1)=14 Then
			varSelG=""
			varSelFst=""
			varSelSnd="selected"
			varSelTrd=""
			varSelApp=""
		ElseIf arrResult(i-1)=13 Then
			varSelG=""
			varSelFst=""
			varSelSnd=""
			varSelTrd="selected"
			varSelApp=""
		ElseIf arrResult(i-1)=12 Then
			varSelG=""
			varSelFst=""
			varSelSnd=""
			varSelTrd=""
			varSelApp="selected"
		End If
%>

		<div id="spnResult<%=i%>">
		<select name="ddlResult<%=i%>" id="ddlResult<%=i%>" class="newSelect" style="WIDTH:70px;" onChange="return createGrd(this,<%=i%>);" >
		<option value="-1" selected="selected">Select</option>
		<%
		'strEduLevel = arrEducationId(i-1)
		If CInt(strEduLevel) = 1 Or CInt(strEduLevel) = 2 Or CInt(strEduLevel) = 3 Then
		%>
		  <option value="15" <%=varSelFst%>>First</option>
		  <option value="14" <%=varSelSnd%>>Second</option>
		  <option value="0" <%=varSelG%>>Grade</option>
		<%					
		ElseIf CInt(strEduLevel) > 3 Then
		%>
		  <option value="15" <%=varSelFst%>>First</option>
		  <option value="14" <%=varSelSnd%>>Second</option>
		  <option value="0" <%=varSelG%>>Grade</option>
		<%					
		End If
		%>
		</select>
		</div>
</td>
        
       <td valign="top" align="center">
         <table width="100%">
            <tbody>
              <tr>
   <%
		    If arrCGPAScale(i-1)=5 Then
				varSel4 = ""
		   		varSel5 = "selected"
			ElseIf arrCGPAScale(i-1)=4 Then
				varSel4 = "selected"
		   		varSel5 = ""
			Else
		   		varSel5 = ""
				varSel4 = ""					
			End If				
			'Response.Write("R4: "&varSel4&" - R5:"&varSel5)
%>
		 <%If arrResult(i-1) = 12 Then%>
		   <td width="50%">				
       <input type="text" name="txtResultPoint<%=i%>" id="txtResultPoint<%=i%>" maxlength="5" class="newText" style="WIDTH:50px;" disabled="disabled"  onClick="valueRemove(this);" />
             </td>
          <td width="50%">
				<select id="ddlCGPAScale<%=i%>" name="ddlCGPAScale<%=i%>" class="newSelect" style="WIDTH:60px;visibility:hidden;">
					                  <option value="-1" selected="selected">Out of</option>
					                  <option value="5">5</option>
					                  <option value="4">4</option>
				                    </select>
                                    </td>
					                <%Else%>
                                 <td width="50%">
			<input type="text" name="txtResultPoint<%=i%>" id="txtResultPoint<%=i%>" class="newText" maxlength="5" style="WIDTH:50px;" value="<%=arrResultPoint(i-1)%>" onKeyPress="return resultPoint(this, event)"  onClick="valueRemove(this);"/>
                                    </td>
					                <%If arrResult(i-1) =0 Then%>
					                 <td width="50%">
                                    <select id="ddlCGPAScale<%=i%>" name="ddlCGPAScale<%=i%>" class="newSelect" style="WIDTH:60px;">
					                  <option value="-1" selected="selected">Out of</option>
					                  <option value="5" <%=varSel5%>>5</option>
					                  <option value="4" <%=varSel4%>>4</option>
				                    </select>
                                    </td>
					                <%Else%>
                                    <td width="50%">
					                <select id="ddlCGPAScale<%=i%>" name="ddlCGPAScale<%=i%>" class="newSelect" style="WIDTH:60px;visibility:hidden;">
					                  <option value="-1" selected="selected">Out of</option>
					                  <option value="5">5</option>
					                  <option value="4">4</option>
				                    </select>
                                    </td>
					                <%End If%>
					                <%End If%>
                                             
                                       </tr>
                                          </tbody>
                                        </table> 
        
	
		<td valign="top">

		<div id="spnSubject<%=i%>">
<%		
		strValue = CStr(arrDegreeName(i - 1))
		If arrSubject(i - 1) <> "" Then
			strSubject = CStr(arrSubject(i - 1))
		End If
		If Right(strSubject, 3) = "@@@" Then
			strOtherSelect = "selected"
		Else
			strOtherSelect = ""
			
		End If	
%>		
		<select name="ddlSubject<%=i%>" id="ddlSubject<%=i%>" class="newSelect"  onChange="return LoadOthers(this,<%=i%>);" style="WIDTH:130px;" >

 <option value='S' >Select</option>
	
	<% if strValue =  "MBA" or  strValue =  "BBA" Then %>

<option value='Finance' <%If strSubject = "Finance" Then%> selected="selected"<%End If%>>Finance</option><option value='Banking' <%If strSubject = "Banking" Then%> selected="selected"<%End If%>>Banking</option><option value='Finance_Banking' <%If strSubject = "Finance_Banking" Then%> selected="selected"<%End If%>>Finance & Banking</option><option value='Accounting' <%If strSubject = "Accounting" Then%> selected="selected"<%End If%>>Accounting</option><option value='Accounting_Information System' <%If strSubject = "Accounting_Information System" Then%> selected="selected"<%End If%>>Accounting & Information System</option><option value='MIS'<%If strSubject = "MIS" Then%> selected="selected"<%End If%>>MIS</option><option value='International Business' <%If strSubject = "International Business" Then%> selected="selected"<%End If%>>International Business</option><option value='Marketing' <%If strSubject = "Marketing" Then%> selected="selected"<%End If%>>Marketing</option><option value='Management' <%If strSubject = "Management" Then%> selected="selected"<%End If%>>Management</option><option value='Human Resource' <%If strSubject = "Human Resource" Then%> selected="selected"<%End If%>>Human Resource</option><option value='Strategic International Management' <%If strSubject = "Strategic International Management" Then%> selected="selected"<%End If%>>Strategic International Management</option>
		
  <% Elseif  strValue = "HSC" Or strValue = "Alim" Or  strValue = "A Level"  Or strValue =  "Equivalent" or  strValue = "SSC" Or strValue = "Dakhil" Or strValue = "Dakhil" Or strValue = "O Level" Or strValue = "Vocational" or strValue = "Business Management" or strValue = "Diploma" Then %> 

  <option value='NA'  <%If strSubject = "NA" Then%> selected="selected"<%End If%>>N/A</option>


<% Elseif strValue = "MBM" Then %> 
	
	<option value='Bank Management'<%If strSubject = "Bank Management" Then%> selected="selected"<%End If%> >Bank Management</option>
	
<% Elseif strValue = "MSc" OR strValue = "BSc(Hons)" Then %> 

<option value='Economics' <%If strSubject = "Economics" Then%> selected="selected"<%End If%>>Economics</option><option value='IT' <%If strSubject = "IT" Then%> selected="selected"<%End If%>>IT</option><option value='Computer Science' <%If strSubject = "Computer Science" Then%> selected="selected"<%End If%>>Computer Science</option><option value='Mathematics' <%If strSubject = "Mathematics" Then%> selected="selected"<%End If%>>Mathematics</option><option value='Statistics' <%If strSubject = "Statistics" Then%> selected="selected"<%End If%>>Statistics</option>

<% Elseif   strValue = "BSc(Engg)"  or    strValue = "MSc(Engg)" Then %> 

    <option value='CSE' <%If strSubject = "CSE" Then%> selected="selected" <%End IF %>>CSE</option>
    <option value='CE' <%If strSubject = "CE" Then%> selected="selected"  <%End IF %>>Civil Engg</option>
    <option value='ME' <%If strSubject = "ME" Then%> selected="selected"  <%End IF %>>Mechanical Engg</option>
    <option value='EEE' <%If strSubject = "EEE" Then%> selected="selected"  <%End IF %>>EEE</option></select> 
	
<% Elseif  strValue = "MSS" or strValue = "MA"  or strValue = "MS" or strValue = "BSS(Hons)" or strValue = "BA(Hons)" Then %>

<option value='Economics' <%If strSubject = "Economics" Then%> selected="selected"<%End If%>>Economics</option><option value='Public Administration' <%If strSubject = "Public Administration" Then%> selected="selected"<%End If%>>Public Administration</option><option value='Development Studies' <%If strSubject = "Development Studies" Then%> selected="selected"<%End If%>>Development Studies</option>

<% Elseif strValue = "BBS(Hons)" OR strValue = "BCom(Hons)" OR strValue = "MBS" or strValue = "MCom" Then %>

	<option value='Economics' <%If strSubject = "Economics" Then%> selected="selected"<%End If%>>Economics</option><option value='Finance' <%If strSubject = "Finance" Then%> selected="selected"<%End If%>>Finance</option><option value='Banking' <%If strSubject = "Banking" Then%> selected="selected"<%End If%>>Banking</option><option value='Accounting' <%If strSubject = "Accounting" Then%> selected="selected"<%End If%>>Accounting</option><option value='Management' <%If strSubject = "Management" Then%> selected="selected"<%End If%>>Management</option><option value='Marketing' <%If strSubject = "Marketing" Then%> selected="selected"<%End If%>>Marketing</option>

<%' Elseif strValue = "B.Ed(Hons)" or strValue = "M.Ed" Then %>

	<!--<option value='Economics' <%'If strSubject = "Economics" Then%> selected="selected"<%'End If%>>Economics</option><option value='Finance' <%'If strSubject = "Finance" Then%> selected="selected"<%'End If%>>Finance</option><option value='Banking' <%'If strSubject = "Banking" Then%> selected="selected"<%'End If%>>Banking</option><option value='Accounting' <%'If strSubject = "Accounting" Then%> selected="selected"<%'End If%>>Accounting</option><option value='Management' <%'If strSubject = "Management" Then%> selected="selected"<%'End If%>>Management</option><option value='Marketing' <%'If strSubject = "Marketing" Then%> selected="selected"<%'End If%>>Marketing</option><option value='Public Administration' <%'If strSubject = "Public Administration" Then%> selected="selected"<%'End If%>>Public Administration</option><option value='Development Studies' <%'If strSubject = "Development Studies" Then%> selected="selected"<%'End If%>>Development Studies</option><option value='Mathematics' <%'If strSubject = "Mathematics" Then%> selected="selected"<%'End If%>>Mathematics</option>
    --> 
<%		
		Else
	
	    errLog=""
                           strPath = "subject" 
						                    LoadDataFromXML arrSub2,strPath,"ID","SUBJECT"
                                              If arrSub2(0,0) <> "Nothing" Then 
                                                For sss2 = 0 To Ubound(arrSub2,1)
                                                 %>
     <option value="<%=arrSub2(sss2,1)%>" <%If  strSubject = arrSub2(sss2,1)  Then %> selected="selected" <%End If%>><%=arrSub2(sss2,1)%></option>    
                                                <%
												Next 
                                            End IF  									
					                       %>
					

<%If Right(arrSubject(i - 1), 3) = "@@@" Then%>
		<option value="S">Select</option>
		<option value="<%If Right(arrSubject(i - 1), 3) = "@@@" Then%>Others<%Else%><%=arrSubject(i-1)%><%End If%>" selected="selected">
		<%If Right(arrSubject(i - 1), 3) = "@@@" Then%>
			Others
		<%Else%>
			<%=arrSubject(i-1)%>
		<%End If%>
		<% If strValue <> "" Then  %>
        <option value="<%=strValue%>" selected><%=strValue%> </option>
		<%End if %>
        </option>
		
<%
		End If
 End if 
%>		
		</select>
		</div>
		<div id="spnOthers<%=i%>">
<%
		If Right(arrSubject(i - 1), 3) = "@@@" Then
			strOthers = Replace(arrSubject(i - 1), "@@@", "")
%>
			<input name='txtOthers<%=i%>' type='text' class='newText' id='txtOthers<%=i%>' value="<%=strOthers%>" />
<%
		End If
%>
		</div>
<%
			'Response.Write(AcademicUB)
			'If AcademicUB > 2 And i <= 2 Then
			If arrEducationId(i-1) > 4 Then
%>				
				<a href="DeleteRecord.asp?<%=encode("p="&PassWrd)%>&<%=encode("TrakingNo=" & intTrakingNo & "&TableName=Academic&RecordId=" & arrAcademicId(i-1))%>" onClick="return IsDelete();">Delete</a>
<%									
			End If
%>			
		</td>

		</tr>
