<!--#include File = 'AcademicOld\ContentManagementOfAcademic.asp' -->
<fieldset>
    <legend>Academic Qualification</legend>


    
      <% For  diffedulevel = 1 To 5 %>
         <!--#include File = 'AcademicOld\FormInputName.asp' -->
         <div class="row">
         <!--#include File = 'AcademicOld\EduLevel.asp' -->
         <!--#include File = 'AcademicOld\PassingYear.asp' -->
         <!--#include File = 'AcademicOld\Result.asp' -->
         </div>
         <br>
         <div class="row">
		 <!--#include File = 'AcademicOld\DegreeName.asp' -->         
         <!--#include File = 'AcademicOld\University.asp' -->
         <!--#include File = 'AcademicOld\Subject.asp' -->
         </div>
        <br>
        <hr>
        <br>  
	<% Next %>
 
</fieldset>
