<%
ValuePrint strSubject1, "strSubject1"
ValuePrint strSubject2, "strSubject2"
ValuePrint strSubject3, "strSubject3"
ValuePrint strSubject4, "strSubject4"

	If i =1 Then
		 strSubject = strSubject1
		 strOthers = strOthers1 
		 subject_others = subject_others1
	ElseIf i = 2 Then 
		 strSubject = strSubject2
		 strOthers = strOthers2 
		 subject_others = subject_others2
	ElseIf i = 3 Then 
		 strSubject = strSubject3
		 strOthers = strOthers3 
		 subject_others = subject_others3
	ElseIf i = 4 Then 
		 strSubject = strSubject4
		 strOthers = strOthers4 
		 subject_others = subject_others4
	ElseIf i = 5 Then 
		 strSubject = strSubject5
		 strOthers = strOthers5 
		 subject_others = subject_others5
	Else
		 strSubject = "S"
	End If

 	If strSubject = "" or strSubject = "S" Then 
    	' bgColorSubject = " background-color: #FF0000;" 
	Else 
	     bgColorSubject = ""
	End If


%>

  <div class="col-sm-4" id="maj1<%=i%>">
      <label for="degreelvl"><%If i =1 or i = 2 Then%>Group<%Else%>Major 1<%End If%></label>
  </div>
  
  <div class="col-sm-8">
        <div class="form-group">
             <div id="spnSubject<%=i%>">
                    <select class="form-control input-sm" name="ddlSubject<%=i%>" id="ddlSubject<%=i%>" style="<%=bgColorSubject%><%=strVisibility%>" onchange="putValueInHidden(this,<%=i%>);LoadOthers(this,<%=i%>);" >
        
                  <%
                 ' response.Write(arrSubject(i)&"<br>")
                  If arrSubject(i) = "S" Then
                    subjectName = "Select"
                  Else
                    subjectName = arrSubject(i)
                  End If
                  %> 
           
               <option value="S" selected="selected">Select</option>
                  <%If i < 3 Then%>
                      <%For s = 0 To Ubound(arrSubjectNameSec,1) %>
                         <option value="<%=arrSubjectNameSec(s)%>"<%If Cstr(strSubject) = Cstr(arrSubjectNameSec(s)) Then %>selected="selected"<%End If%>><%=arrSubjectNameSec(s)%>
                        </option>
                     <%Next%>
                    
                    <%ElseIf i = 3 or i = 4 or i = 5 then 
                    'response.Write(Ubound(arrSub,2))
                    %>
                   <%For sg = 0 To Ubound(arrSub,2)%>
                       <option value="<%=arrSub(1,sg)%>"<%If Cstr(strSubject) = Cstr(arrSub(1,sg)) Then %>selected="selected"<%End If%>><%=arrSub(1,sg)%>
                      </option>
                   <%Next%>
                     <option value="Others"<%If Cstr(strSubject) = Cstr("Others") Then %>selected="selected"<%End If%>>Others</option>
                    <%End if%>
               </select>
                   
         </div>
           
           
        <div style="<%if subject_others = true or subject_others = 1 or subject_others = "1" then%>display:block<%Else%>display:none;<%End If%>" id="spnOthers<%=i%>">	<input class="form-control input-sm" name='txtOthers<%=i%>' type='text' id='txtOthers<%=i%>' value="<%=strOthers%>" placeholder="type here major 1" />
        </div>
   </div>
              
 </div>                   
                    