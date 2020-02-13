<%
ValuePrint strSubject21, "strSubject1"
ValuePrint strSubject22, "strSubject2"
ValuePrint strSubject23, "strSubject3"
ValuePrint strSubject24, "strSubject4"

	If i =1 Then
		 strSubject2 = strSubject21
		 strOthers2 = strOthers21 
		 subject_others2 = subject_others21
	ElseIf i = 2 Then 
		 strSubject2 = strSubject22
		 strOthers2 = strOthers22 
		 subject_others2 = subject_others22
	ElseIf i = 3 Then 
		 strSubject2 = strSubject23
		 strOthers2 = strOthers23 
		 subject_others2 = subject_others23
	ElseIf i = 4 Then 
		 strSubject2 = strSubject24
		 strOthers2 = strOthers24 
		 subject_others2 = subject_others24
	ElseIf i = 5 Then 
		 strSubject2 = strSubject25
		 strOthers2 = strOthers25 
		 subject_others2 = subject_others25
	Else
		 strSubject2 = "S"
	End If

 	If strSubject2 = "" or strSubject2 = "S" Then 
    	' bgColorSubject = " background-color: #FF0000;" 
	Else 
	     bgColorSubject2 = ""
	End If
%>

  <div class="col-sm-4">
      <label for="degreelvl">Major 2</label>
  </div>
  
  <div class="col-sm-8">
       <div class="form-group">
            <div id="spnSubject2<%=i%>">
	      
            <select class="form-control input-sm" name="ddlSubject2<%=i%>" id="ddlSubject2<%=i%>" style="<%=bgColorSubject%><%=strVisibility%>" onchange="putValueInHidden2(this,<%=i%>);LoadOthers2(this,<%=i%>);" >
            
		  <%
         ' response.Write(arrSubject(i)&"<br>")
          If arrSubject2(i) = "S" Then
            subjectName2 = "Select"
          Else
            subjectName2 = arrSubject2(i)
          End If
          %> 
       <option value="S" selected="selected">Select</option>
 
           <%If i < 3 Then%>
             <%For s = 0 To Ubound(arrSubjectNameSec,1) %>
              <option value="<%=arrSubjectNameSec(s)%>"<%If Cstr(strSubject2) = Cstr(arrSubjectNameSec(s)) Then %>selected="selected"<%End If%>><%=arrSubjectNameSec(s)%>
              </option>
		    <%Next%>
            
            <%ElseIf i = 3 or i = 4 or i = 5  then %>
             <%For sg = 0 To Ubound(arrSub,2) %>
              <option value="<%=arrSub(1,sg)%>"<%If Cstr(strSubject2) = Cstr(arrSub(1,sg)) Then %>selected="selected"<%End If%>><%=arrSub(1,sg)%>
              </option>
		    <%Next%>
            <option value="Others"<%If Cstr(strSubject) = Cstr("Others") Then %>selected="selected"<%End If%>>Others</option>
            <%End if%>
	      
           </select>
           
           </div>
	              
            <div style="<%if subject_others2 = true or subject_others2 = 1 or subject_others2 = "1" then%>display:block<%Else%>display:none;<%End If%>" id="spnOthers2<%=i%>">	<input class="form-control input-sm" name='txtOthers2<%=i%>' type='text' id='txtOthers2<%=i%>' value="<%=strOthers2%>" placeholder="type here major 2" /></div>
             
                    
           </div>
       </div>
     
           
                    