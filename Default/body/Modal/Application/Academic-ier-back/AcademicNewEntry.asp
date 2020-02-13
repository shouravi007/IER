<tr>
		<td valign="top">
        <input type="hidden" name="hidEducationID<%=i%>" id="hidEducationID<%=i%>" value="-1" />
		<select name="ddlEducationLevel<%=i%>" id="ddlEducationLevel<%=i%>" class="newSelect" style="WIDTH:100px;"<%If CStr(arrEducationId(i)) = "-1" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> onChange="return LoadDegree<%=jobid%>(this,<%=i%>);">
		<option value="-1" >Select</option>
	<%
		flag_edulevel = False
		'RSN_EDU_L.MoveFirst
		'do until RSN_EDU_L.EOF 
		If arrEduLevel(0, 0) <> "Nothing" Then
		'response.Write(arrEduLevel(0, 0) &"hellow")
			newI = i-1
			For eduIndex = 0 To UBound(arrEduLevel, 2)
				varAlertEduL = varAlertEduL & "Value of i = " & i & ", edu = " & eduIndex
				flag_edulevel = True
				If newI = 0 Then%>
					<option value="<%=arrEduLevel(0, newI)%>" ><%=arrEduLevel(1, newI)%></option>
				<%
					Exit For
				ElseIf i-1=1 Then
				%>
				<option value="<%=arrEduLevel(0, newI)%>" ><%=arrEduLevel(1, newI)%></option>
				<%
					Exit For				
				ElseIf i-1=2 Then
				%>
				<option value="<%=arrEduLevel(0, newI)%>" ><%=arrEduLevel(1, newI)%></option>
				<%
					Exit For
				ElseIf i-1=3 Then
				%>
				<option value="<%=arrEduLevel(0, newI)%>" ><%=arrEduLevel(1, newI)%></option>
				<%
					Exit For				
				ElseIf i-1=4  Then
			    	For eduIndex1 = 3 To UBound(arrEduLevel, 2) %>
						<option value="<%=arrEduLevel(0, eduIndex1)%>" ><%=arrEduLevel(1, eduIndex1)%></option>
					<%
					Next
					Exit For
				%>
				<option value="<%=arrEduLevel(0, eduIndex)%>" ><%=arrEduLevel(1, eduIndex)%></option>
			<%
				End If
			Next
		'RSN_EDU_L.MoveNext
		'Loop
		End If
	%>
		</select>		</td>
		<td valign="top"><div id="spnDegree<%=i%>">
		<select name="ddlDegreeName<%=i%>" id="ddlDegreeName<%=i%>" class="newSelect" style="WIDTH:70px;" <%If CStr(arrDegreeName(i)) = "S" And IsBlank = "True" Then%>"background-color:#FFCA95;"<%End If%> onChange=""> <!--return LoadJubject<%'=jobid%>(this,<%'=i%>);-->
		<option value="S" >Select</option>
		<%
		'strEduLevel = arrAcademicId(i)
		
		'If strEduLevel = "1" Then
		If i = 1 Then 
		%>

            <%For d = 0 To Ubound(arrDegreeNameSec,1) %>
              <option value="<%=arrDegreeNameSec(d)%>" <%If Cstr(arrDegreeName(1)) = Cstr(arrDegreeNameSec(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNameSec(d)%>
              </option>
		    <%Next%>
    		
		<%
		ElseIf i = 2 Then 
		'ElseIf strEduLevel = "2" Then		
		%>
             <%For d = 0 To Ubound(arrDegreeNameHigh,1) %>
               <option value="<%=arrDegreeNameHigh(d)%>" <%If Cstr(arrDegreeName(1)) = Cstr(arrDegreeNameHigh(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNameHigh(d)%></option>
		      <%Next%>
		<%
		ElseIf i = 3 Then 					
		'ElseIf strEduLevel = "3" Then
		%>		
			<%For d = 0 To Ubound(arrDegreeNameGrad,1) %>
              <option value="<%=arrDegreeNameGrad(d)%>" <%If Cstr(arrDegreeName(2)) = Cstr(arrDegreeNameGrad(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNameGrad(d)%></option>
            <%Next%>
		<%					
		ElseIf i = 4 Then 
		'ElseIf  strEduLevel = "4" Then
		%>
           <%For d = 0 To Ubound(arrDegreeNamePostGrad,1) %>
             <option value="<%=arrDegreeNamePostGrad(d)%>" <%If Cstr(arrDegreeName(3)) = Cstr(arrDegreeNamePostGrad(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNamePostGrad(d)%></option>
		   <%Next%>
		<%
		ElseIf i = 5 Then 					
		'ElseIf strEduLevel = "5" Or  strEduLevel = "6" Then
		%>
			<option value="<%If Right(arrDegreeName(i), 3) = "@@@" Then%>Others<%Else%><%=arrDegreeName(i)%><%End If%>" selected="selected">
			<%If Right(arrDegreeName(i), 3) = "@@@" Then%>
				Others
			<%Else%>
				<%=arrDegreeName(i)%>
			<%End If%>
			</option>
		<%
		End If
		%>
		</select>
        <%ValuePrint strEduLevel, "107-strEduLevel"%>
		</div>
		<div id="spnDoctorate<%=i%>">
		<%
		If Right(arrDegreeName(i), 3) = "@@@" Then
			strDoctorate = Replace(arrDegreeName(i), "@@@", "")
		%>
			<input name='txtDoctorate<%=i%>' type='text' class="newText" id='txtDoctorate<%=i%>'<%If CStr(strDoctorate) = "" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> value="<%=strDoctorate%>" />
		<%
		End If
		%>
		</div></td>
		<td valign="top">
      <select id="ddlPassingYear<%=i%>" name="ddlPassingYear<%=i%>" class="newSelect" style="WIDTH:60px;"<%If CStr(arrPassingYear(i)) = "S" And IsBlank = "True" Then%>"background-color:#FFCA95;"<%End If%>>
		<option value="S" >year</option>
	<%
		For j=CInt(Year(Date)) to (CInt(Year(Date))-20) Step -1
		%>
			<option value="<%=j%>" <%If CStr(arrPassingYear(i))=CStr(j) Then%> selected="selected"<%End If%>><%=j%></option>
		<%
		Next
	%>
		</select> 
        </td>
    	<td valign="top">
         <%'if i > 2 then%>
          <!--#include File = 'bdjResultYear.asp'-->
         <%'end if%>
       </td>

        
        <td valign="top">
        <input name="txtInstitute<%=i%>" type="text" id="txtInstitute<%=i%>" class="newText" style="width:100px;" maxlength="255" value="<%=arrInstitute(i)%>" />
 <%
If i =1 or i = 2 Then
%>        
        <br />
        
<select id="ddlAcademicDist<%=i%>" name="ddlAcademicDist<%=i%>" class="form-control" onChange="ChangeEstaricColor(this, 'spnAcademicDist<%=i%>')">
<option value="S">Select</option>
<%
for aDist = 0 to ubound(arrSqlForDistrict,2)
'response.Write("strAcademicDist"&strAcademicDist & "<br>arrSqlForDistrict(0,aDist):"& arrSqlForDistrict(0,aDist)&"<br>")
%>
<option value='<%=arrSqlForDistrict(0,aDist)%>'<%If arrSqlForDistrict(0,aDist) = strAcademicDist Then%> selected="selected"<%End If%>><%=arrSqlForDistrict(1,aDist)%></option>
<%
next
%>
</select>
<%
end if
%>        
        
        </td>
		<td valign="top">
<%
		If arrUniversityType(i)="F" Then
			If arrUniversity(i) = "" Or IsNull(arrUniversity(i)) Then
				strUniversityCountry = ""
				strUniversityName = ""
			Else
				fInf = Split(arrUniversity(i),"@***@")
				strUniversityName = fInf(1)
				strUniversityCountry = fInf(0)
				varSelValO = ""
			End If	
			varSelValF="selected"
		ElseIf arrUniversityType(i)="O" Then
			varSelValO="selected"
			strUniversityName = arrUniversity(i)
			varSelValF=""
		Else
			varSelValF=""
			varSelValO=""
		End If
%>
<%
		'Response.Write("Institute "&i&" : "&arrUniversity(i))
%>		
                  <select id="ddlUniversity<%=i%>" name="ddlUniversity<%=i%>" class="newSelect" style="width:170px;" onChange="return createEdu(this,<%=i%>);">                                  
                    <option value="S" selected="selected">Select</option>
                  <%
				  If i < 3 Then
				  %>
                      <%For d = 0 To Ubound(arrBoardNameList,1) %>
                       <option value="<%=arrBoardNameList(d)%>" <%If Cstr(strUniName) = Cstr(arrBoardNameList(d)) Then%> selected="selected" <%End If%>><%=arrBoardNameList(d)%></option>
		              <%Next%>
                   <%
				   Else
				   %>
                    <option value="BIBM-Dhaka University">BIBM-Dhaka University</option> 
                 <option value="IBA-Dhaka University">IBA-Dhaka University</option> 
                      
					<%
                    strPath = "UNIVERSITY"	
                    errLog=""
                    LoadDataFromXML arrUni,strPath,"ID_uni","name_uni"
                    If arrUni(0,0) <> "Nothing" Then 
                    For f = 0 To Ubound(arrUni,1)
                    %>
                    <option value="<%=arrUni(f,1)%>"><%=arrUni(f,1)%></option> 
                      
                    <%
                    Next 
                    End If 						
                     %>


					<%
					End If
					%>
                    <!-- <option value="S">Select</option>-->
					<option value="S">----------------------------------------------------------------</option>                    
                    <option value="Foreign">Foreign Institute</option>
                    <option value="Others">Others</option>
                    </select>

		<div id="sp_edu<%=i%>">
<%
		If arrUniversityType(i) = "F" Then
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
            <br />
			<input type="text" id="txtUniversity<%=i%>" name="txtUniversity<%=i%>" maxlength="255" class="newText" value="<%=strUniversityName%>" />
			<%		
		ElseIf arrUniversityType(i) = "O" Then
			%>
			<font face="Verdana" color="#FF0000" size="1">* Institute Name</font><br />
			<input type="text" name="txtUniversity<%=i%>" id="txtUniversity<%=i%>" maxlength="255" class="newText" value="<%=strUniversityName%>" />
		<%
		End If
		%>		
		</div></td>
		<td valign="top">
		<div id="spnResult<%=i%>">
		<select id="ddlResult<%=i%>" name="ddlResult<%=i%>" class="newSelect" style="WIDTH:70px;" onChange="return createGrd(this,<%=i%>);">
		<option value="-1" >Select</option>
		<option value='15'>First</option>
        <option value='14'>Second</option>
        <option value='0'>Grade</option>
        <%if i > 3 then%>
        <option value='12'>Appeared</option>
        </select>
        <%end if %>
        </div>
		<!--<div id="sp_grd<%'=i%>"></div>-->
        </td>
        
        <td valign="top" align="center">
                                   <table width="100%">
                                     <tbody>
                                      <tr>
                                        <td width="50%" valign="top">
 <input type="text" name="txtResultPoint<%=i%>" id="txtResultPoint<%=i%>" maxlength="5" class="newText" style="WIDTH:50px;"  onKeyPress="return resultPoint(this, event)" disabled onClick="valueRemove(this);"/>    
   <label id="marksInstrcutions" style="display:none"></label> </td>
                                  
                                  <td valign="top"> 
<select id="ddlCGPAScale<%=i%>" name="ddlCGPAScale<%=i%>" class="newSelect" style="WIDTH:60px; visibility:hidden;">
					                  <option value="-1" selected="selected">Out of</option>
					                  <option value="5">5</option>
					                  <option value="4">4</option>
				                    </select></td>
                                    </tr>
                                  </tbody>
                               </table>
                 </td>

		<td valign="top"><div id="spnSubject<%=i%>">
			<%'Response.Write("Subject: " & arrSubject(i))%>
		  <select name="ddlSubject<%=i%>" id="ddlSubject<%=i%>" class="newSelect" style="WIDTH:130px;">
            <option value="S">Select</option>
            <%If i < 3 Then%>
             <%For s = 0 To Ubound(arrSubjectNameSec,1) %>
              <option value="<%=arrSubjectNameSec(s)%>"><%=arrSubjectNameSec(s)%>
              </option>
		    <%Next%>
            
            <%ElseIf i = 3 or i = 4 then %>
             <%'For s = 0 To Ubound(arrSubjectGrad,1) 
			 For sg = 0 To Ubound(arrSub,2)
			 %>
             <!-- <option value="<%'=arrSubjectGrad(s)%>"><%'=arrSubjectGrad(s)%> </option>-->
              <option value="<%=arrSub(0,sg)%>"><%=arrSub(1,sg)%> </option>
		    <%Next%>
            
            <%'ElseIf i = 4 Then %>
             <%'For s = 0 To Ubound(arrSubjectPostGrad,1) %>
              <!--<option value="<%'=arrSubjectPostGrad(s)%>"><%'=arrSubjectPostGrad(s)%> </option>-->
             
		    <%'Next%>
            
            <%End if%>

          </select>
		</div>
		<div id="spnOthers<%=i%>" style="display:none;">
<%
		'If Right(arrSubject(i), 3) = "@@@" Then
			'strOthers = Replace(arrSubject(i), "@@@", "")
%>
			<input style="width:140px;" name='txtOthers<%=i%>' type='text' id='txtOthers<%=i%>' value="<%=strOthers%>" />
<%
		'End If
%>		
		</div>
  
  
  
          <input type="hidden" id="ddlDegreeName<%=i%>hidden" name="ddlDegreeName<%=i%>hidden" value=""  />
      
        <input type="hidden" id="ddlSubject<%=i%>hidden" name="ddlSubject<%=i%>hidden" value=""  />
  
          <input type="hidden" id="txtUniversity<%=i%>hidden" name="txtUniversity<%=i%>hidden" value=""  />


        <input type="hidden" id="ddlCountry<%=i%>hidden" name="ddlCountry<%=i%>hidden" value=""  />

  
        
        </td>
		<!--<input name="ddlSubject<%'=i%>" type="text" id="ddlSubject<%'=i%>" style="width:80px;" size="10" />-->
		</tr>
	<%
		AcademicUB = i
%>