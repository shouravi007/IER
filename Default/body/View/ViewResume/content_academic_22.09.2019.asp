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
            
             If strSubject <> "" And strSubject <> "NA" Then%> in <%= strSubject %> <%End If%>
            
             <%If Right(arrSubject2(i), 3) = "@@@" Then
                 strSubject2 = Replace(arrSubject2(i), "@@@", "")
               Else
                strSubject2 = arrSubject2(i)
               End If	
            
            If strSubject2 <> "S" And strSubject2 <> "0" Then%> and <%= strSubject2 %> <%End If%> 
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
              First division (<%= arrResultPoint(i) %>%)
            <%End If%>
            
            <%If arrResult(i) = 14 Then%>
              Second division (<%= arrResultPoint(i) %>%)
            <%End If%>
            
            <%If arrResult(i) = 13 Then%>
              Third division (<%= arrResultPoint(i) %>%)
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