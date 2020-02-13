
      
<% 
     strSqlSubject = "select distinct e.subject  from [subject] e order by e.subject "   
	' Response.Write(strSqlSubject) 
	' Response.End()
     arrSubject = objERS.RetrieveData(strSqlSubject,strErr)	
	 strUbonud = Ubound(arrSubject,2)
%>
    
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

%>          <div class="checkbox">                            
        <label>  <input name="<%=strSubjectForId&diffedulevel%>"   id="<%=strSubjectForId&diffedulevel&i%>" type="checkbox" value="<%=strSubject%>"><%=strSubjectName%> 
            </label>
      </div>   
<%
			End If
		Next 
	End if 
%>