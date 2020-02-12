<%If strExperience <> "" or strProfessionalQualification <> "" or strAcademicDistinctions <> "" or strExtraCurricularActivities <> "" or strComputerSkills <> "" or strOtherDisclose <> "" Then%>
<section>
    <div class="qualifiq">
        <h4 class="title">Others Information</h4>
        <%If strProfessionalCertification <> "" and strProfessionalCertification <> "0" Then%>
        <h5 class="label-title">Professional Certification</h5>
        <p><%=strProfessionalCertification%></p>        
        <%End If%>	
    </div>
     
	 <%If strExperience <> "" Then%>
    <div class="qualifiq">
        <h5 class="label-title">Experience</h5>
        <p><%=strExperience%></p>
    </div>
    <%End If%>
    
	 <%If strTraining <> "" Then%>
    <div class="qualifiq">
        <h5 class="label-title">Training</h5>
        <p><%=strTraining%></p>
    </div>
    <%End If%>
        
    <%If strProfessionalQualification <> "" Then%>
    <div class="qualifiq">
        <h5 class="label-title">Professional Qualification</h5>
        <p><%=strProfessionalQualification%></p>        
    </div>
    <%End If%>
    
    <%If strAcademicDistinctions <> "" Then%>
    <div class="qualifiq">
        <h5 class="label-title">Academic Distinctions</h5>
        <p><%=strAcademicDistinctions%></p>
    </div>
   <%End If%>
   
   <%If strExtraCurricularActivities <> "" Then%>
    <div class="qualifiq">
        <h5 class="label-title">Extra Curricular Activities</h5>
        <p><%=strExtraCurricularActivities%></p>
    </div>
   <%End If%>  
   
    <%If strOtherDisclose <> "" Then%>
    <div class="qualifiq">
        <h5 class="label-title">Other Disclose</h5>
        <p><%=strOtherDisclose%></p>
    </div>
   <%End If%>     
      
</section>

<%End If%> 	