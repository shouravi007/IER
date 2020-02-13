<%If IsAcademic = True Then%>
<section>
    <div class="qualifiq">
        <h4 class="title">Academic Qualification</h4>
    </div>
    
<%	For i=0 To AcademicUB %>
    <div class="qualifiq">
        <h5 class="label-title">
            <% If arrDegreeName(i) <> "" Then%> 
               <%If Right(arrDegreeName(i), 3) = "@@@" Then
                 strDoctorate = Replace(arrDegreeName(i), "@@@", "")
            %>
                   Doctoral, <%=strDoctorate%>
               <%Else%>
                  <%=arrDegreeName(i)%>
               <%End If%>
             <%Else%>
               UNKNOWN
             <%End If%> 
            
            <%If Right(arrSubject(i), 3) = "@@@" Then
               strSubject = Replace(arrSubject(i), "@@@", "")
             Else
               strSubject = arrSubject(i)
             End If	
            
 
 
strEducation =  arrDegreeName(i)

If strEducation = "O Level" Then

	sql_O_Level = "SELECT [SUBJECT], [GRADE_POINT], [DEGREE_LEVEL] FROM [level_Table] where degree_level = '"&strEducation&"' and [personalid] ="& intTrackingNo
	
	arr_sql_O_Level = objERS.RetrieveData(sql_O_Level, errMsg)
	ErrorMessage "454", errMsg, 0

	if arr_sql_O_Level(0,0) <> "Nothing" Then
				
		for o = 0 to ubound(arr_sql_O_Level,2)
			if o =  ubound(arr_sql_O_Level,2) then 
			  strSubject = strSubject &  arr_sql_O_Level(0,o)
			else
			
			  strSubject = strSubject & arr_sql_O_Level(0,o)&", "
			
			end if 
			
			'response.Write(strSubjectOL&", ") 
			
		next
		
	End If
End If
										
If strEducation = "A Level" Then

	sql_A_Level = "SELECT [SUBJECT], [GRADE_POINT], [DEGREE_LEVEL] FROM [level_Table] where degree_level = '"&strEducation&"' and [personalid] ="& intTrackingNo
	
	arr_sql_A_Level = objERS.RetrieveData(sql_A_Level, errMsg)
	ErrorMessage "454", errMsg, 0

	if arr_sql_A_Level(0,0) <> "Nothing" Then
				
		for a = 0 to ubound(arr_sql_A_Level,2)
			if a = ubound(arr_sql_A_Level,2) then
		    	strSubject = strSubject &  arr_sql_A_Level(0,a)
			else
			   strSubject = strSubject &  arr_sql_A_Level(0,a)&", "
			end if 
			
			'response.Write(strSubjectAL&", ") 
			
		next
		
	End If
											
End If ' olevel and a level 
 
 
 
 
 
 
             If strSubject <> "" And strSubject <> "NA" Then%> in <%= strSubject %> <%End If%>
            
             <%If Right(arrSubject2(i), 3) = "@@@" Then
                 strSubject2 = Replace(arrSubject2(i), "@@@", "")
               Else
                strSubject2 = arrSubject2(i)
               End If	
            
            If strSubject2 <> "S" And strSubject2 <> "0"  And strSubject2 <> "" Then%> and <%= strSubject2 %> <%End If%> 
            &nbsp;<%= arrPassingYear(i) %>  &nbsp;
            
            <!--#include File = 'content_academic_district.asp' -->
            
            <%				
            'response.Write(arrAcademicDist(i)&"<br>")
            
            If arrAcademicDist(i) = 0 or arrAcademicDist(i) = "0" Then
            
            else
            %>					
            (<%=ssc_hsc_dist_name%>)
            <%
            End If
            %>
            
            </h5>
            
            <p>
            <%If arrInstitute(i) <> "" Then
              strUniversity = Replace(arrUniversity(i), "@***@", ", ")
            %>
             <%=arrInstitute(i)%>, <%If strUniversity <> "" Then%><%=strUniversity%><%End If%>
            <%End if%>
            
            <br>
            
            <%If arrResult(i) = 15 Then%>
              First division <%'= arrResultPoint(i) %>
            <%End If%>
            
            <%If arrResult(i) = 14 Then%>
              Second division <%'= arrResultPoint(i) %>
            <%End If%>
            
            <%If arrResult(i) = 13 Then%>
              Third division <%'= arrResultPoint(i) %>
            <%End If%>
            
            <%If arrResult(i) = 12 Then%>
               Appeared
            <%End If%>
            
            <%If arrResult(i) < 12 Then%>
              CGPA: <%=arrResultPoint(i)%>
            <%End If%>
            </p>
         </div>   
            <%		
            Next
            %>     
        
</section>
<%end if%>