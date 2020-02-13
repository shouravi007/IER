<form method ="post" name="frmEducation" id="frmEducation" action="?<%=Encode("Location=Edit&FormAction=academic")%>">

     <!--#include File = 'HiddenValueNew.asp' -->

<fieldset>
   <legend>Academic Qualification</legend>
    
    <div class="btn-wrap text-right">
    
<%If arrAcademic(0,0) = "Nothing" Then %>
	
    No Academic Information Submitted by User.
	
    <button type="submit" class="btn-style">
    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>Add</button>

<%
Else
%>
	<button type="submit" class="btn-style">
     <i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</button>
    
    </div>



            
<div class="form-group hidden-xs">
    <div class="row">
        <div class="col-sm-1">
            <h4 class="title">Degree Level&nbsp;</h4>
        </div>
        <div class="col-sm-1">
            <h4 class="title">Exam Name&nbsp;</h4>
        </div>

        <div class="col-sm-2">
            <h4 class="title">Institute / Faculty & District </h4>
        </div>


        <div class="col-sm-2">
            <h4 class="title">University / Board&nbsp;</h4>
        </div>
        
        <div class="col-sm-1">
            <h4 class="title">Passing Year&nbsp;</h4>
        </div>
        
        <!--<div class="col-sm-2">
            <h4 class="title">Result Publish Date&nbsp;</h4>
        </div>-->                                             
        
        <div class="col-sm-1">
            <h4 class="title">Class/CGPA</h4>
        </div>
        
        <div class="col-sm-4">
          <div class="row">
            <div class="col-md-6">
            <h4 class="title">Major 1&nbsp; </h4>
           
           </div>
            <div class="col-md-6">
            <h4 class="title">Major 2
            </h4>
           </div>
           
            </div>	
        </div>
    

        
    </div>
</div>

<%
For i = 0 To UBound(arrAcademic,2)

  strSubject2 = arrAcademic(14,i)

%>          
<div class="form-group">
    <div class="row">
        
        <div class="col-sm-1">
            <p>			  
			
<%
			  Select Case arrAcademic(5,i)
			  		 Case "1"
					 	  Response.Write("Secondary")
				     Case "2"
					 	  Response.Write("Higher Secondary")
					 Case "3"
					 	  Response.Write("Graduation")
					 Case "4"
					 	  Response.Write("Masters")
					 Case "5"
					 	  Response.Write("Doctoral")
					 Case "6"
					 	  Response.Write("Post-Doctoral")	 	  	 		  		  
			  End Select
%>			  
			</p>
        </div>
        
        <div class="col-sm-1">
            <p style="word-wrap:break-word;"><%=arrAcademic(1,i)%></p>
        </div>
        <div class="col-sm-2">
            <p style="word-wrap:break-word;"><%=arrAcademic(2,i)%>
            
            	<%If arrEducationId(i) < 3 Then%>
                 	<!--#include File = 'AcademicDistrictNameDB.asp' -->
						,<b> <%=ssc_hsc_dist_name%></b>
                <%End If%>
            
            
            </p>
        </div>

<!--university-->        
<div class="col-sm-2">
            <!--<p><%'=arrAcademic(6,i)%></p>-->
        
<p style="word-wrap:break-word;">    
      <%
	  
	  strForeign = arrAcademic(9,i)
	  strUniversity = arrAcademic(6,i)
	  
	If strForeign = "O" Then 
%>
		* University Name (Other) : <%=strUniversity%>
<%
	ElseIf strForeign = "F" Then 
		arrInstitute99 = Split(strUniversity, "@***@")
		strInstitute22 = arrInstitute99(0)
		
		If UBound(arrInstitute99) = 1 Then
			strCampus = arrInstitute99(1)
		End If
%>
		<i> Foreign University	</i>  * Campus location :
		 <%=strInstitute22%>, <%=strCampus%> 
<%
	Else
%>
		<%=strUniversity%>
<%					  
	End If
%>
</p>                                                                                         
</div>

<!--passing year-->
<div class="col-sm-1">
    <p><%=arrAcademic(4,i)%></p>
</div>
									
<!--result publish date-->
<!--<div class="col-sm-2">
    <p>
	<%
	'response.Write("hello:"&arrAcademic(13, i))
	'If arrAcademic(13, i) = "1/1/1900" OR arrAcademic(13, i) = "1900-01-01" Then
	'	response.Write("N/A")
	'else
	%>
	<%'=arrAcademic(13,i)%>
    <%
	'end if
	%>
    </p>
</div>-->

<!--result-->
<div class="col-sm-1">
<p>
<%If arrAcademic(7, i) = 15 Then%>

	First division (<%=arrAcademic(8, i)%>%)
<%End If%>

<%If arrAcademic(7, i) = 14 Then%>

	Second division (<%= arrAcademic(8, i)%>%)
<%End If%>

<%If arrAcademic(7, i) = 13 Then%>

	Third division (<%= arrAcademic(8, i)%>%)
<%End If%>

<%If arrAcademic(7, i) = 12 Then%>

	Appeared
<%End If%>

<%If arrAcademic(7, i) < 12 Then%>

	CGPA: <%=arrAcademic(8, i)%>
<%End If%>
</p>

</div>


<!--subject-->
 

        <div class="col-sm-4">
          <div class="row">
            <div class="col-md-6">
            <p><%=arrAcademic(3,i)%></p> 
           
           </div>
            <div class="col-md-6">
<%if isempty(strSubject2) = false and isnull(strSubject2) = false and strSubject2 <> "0" and strSubject2 <> "S"  then %>            
            <p><%=strSubject2%></p>
 <%end if%>           
           </div>
           
            </div>	
        </div>



    
        
      </div>
</div>




 
<%

Next

End If

%>

	</fieldset>
</FORM>