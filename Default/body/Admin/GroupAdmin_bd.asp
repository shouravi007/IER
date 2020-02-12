<!--#include File = 'CheckSession.asp' -->
<%
	strModuleName = "ResumeSearch" 
	strDescription = "Position Filter with  : "&strUserName&"##"&strPassword
	strAction = "Search Option filter for.. "
%>
<!--#include File = 'UserLog.asp' -->
<!--#include File = 'GroupAdmin_bd\Content1.asp' -->

<h1 class="post-name">CV Seach</h1>
 <div class="wrapper">

  <form action="?<%=Encode("Location=Admin&FormAction=SearchResult_Load")%>"  method="post" name="form1" id="form1" target="_blank">
<input type="hidden" name="hidUserID" id="hidUserID" value="<%=intUserID%>" />
<input type="hidden" name="strDeadLine" value="<%=strDeadLine%>" />

  <!--#include File = 'GroupAdmin_bd\Welcome.asp' -->
    <br />
    <div class="row">
           <!--#include File = 'GroupAdmin_bd\JobPosition.asp' -->
    </div>
  <br />

<div class="row">
  <div class="col-sm-4">
  
    <div class="form-group">
     <!--#include File = 'GroupAdmin_bd\CVType\cvType.asp' -->
     </div>
     
 
      
        <div class="form-group">
          <!--#include File = 'GroupAdmin_bd\Personal\Name.asp' -->
        </div>
       
    
        <div class="form-group">
          <!--#include File = 'GroupAdmin_bd\Personal\Email.asp' -->
        </div>
       
       
        <div class="form-group">
          <!--#include File = 'GroupAdmin_bd\Personal\Phone.asp' -->
        </div>
    
   </div>
 
   
<%' If Request.Cookies("USERNAME") = "mahbub" or Session("USERNAME") = "mahbub" or Session("UserName") = "mahbub"  then %>
<!-- <div class="form-group">-->
    <!--  include File = 'GroupAdmin_bd\CVType\Rejection.asp' -->
<!-- </div>-->
<%'End If %>

<div class="col-sm-4">  

     <div class="row">
       <div class="col-sm-6">
           <div class="form-group">
            <!--#include File = 'GroupAdmin_bd\CVType\TrackingNumber.asp' -->
           </div>
        </div>
        
       <div class="col-sm-6">
        <div class="form-group">
         <!--#include File = 'GroupAdmin_bd\CVType\RollNumber.asp' -->
       </div>
       </div>
    </div>
        
     <div class="row">
        <!--#include File = 'GroupAdmin_bd\CVType\JobApplicationDate.asp' -->
     </div>
     
    <div class="row">    
          <!--#include File = 'GroupAdmin_bd\Personal\Age.asp' -->   
    </div>

 
  	<div id="JobAdvertise"></div>
  
        <span id="applicationDate">
            <div class="smallHeaderName"></div>
            <link rel="stylesheet" href="http://ers.bdjobs.com/applications/common/jq/development-bundle/themes/base/jquery.ui.all.css">
			<script src="http://ers.bdjobs.com/applications/common/jq/development-bundle/jquery-1.7.1.js"></script>
            <script  src="http://ers.bdjobs.com/applications/common/jq/development-bundle/ui/jquery.ui.core.js"></script>
            <script  src="http://ers.bdjobs.com/applications/common/jq/development-bundle/ui/jquery.ui.widget.js"></script>
            <script src="http://ers.bdjobs.com/applications/common/jq/development-bundle/ui/jquery.ui.datepicker.js"></script>
<!--            <link rel="stylesheet" href="jq/development-bundle/demos/demos.css">
-->	<script>
	$(function() {
		$( "#datepicker1" ).datepicker();
	});
		$(function() {
		$( "#datepicker2" ).datepicker();
	});
	</script> 
    
    </span>
   
    <div class="form-group">
      <!--#include File = 'GroupAdmin_bd\Personal\Gender.asp' -->
    </div>

    


</div>

    <div class="col-sm-4">  
            <div class="form-group">
              <!--#include File = 'GroupAdmin_bd\Personal\PresentDistrict.asp' -->
            </div>
            <div class="form-group">
              <!--#include File = 'GroupAdmin_bd\Personal\HomeDistrict.asp' -->
            </div>
    </div>

</div>


<!--#include File = 'GroupAdmin_bd\AcademicOld\ContentManagementOfAcademic.asp' -->
<fieldset>
    <legend>Academic Qualification</legend>

      <% For  diffedulevel = 1 To 4 %>
         <!--#include File = 'GroupAdmin_bd\AcademicOld\FormInputName.asp' -->
         <div class="row">
         <!--#include File = 'GroupAdmin_bd\AcademicOld\EduLevel.asp' -->
         <!--#include File = 'GroupAdmin_bd\AcademicOld\PassingYear.asp' -->
         <!--#include File = 'GroupAdmin_bd\AcademicOld\Result.asp' -->
         </div>
         <div class="row">
		 <!--#include File = 'GroupAdmin_bd\AcademicOld\DegreeName.asp' -->         
         <!--#include File = 'GroupAdmin_bd\AcademicOld\University.asp' -->
         <!--#include File = 'GroupAdmin_bd\AcademicOld\Subject.asp' -->
         </div>
        <br>
        <hr>
        <br>  
	<% Next %>
 
</fieldset>

<div class="btn-wrap text-center">
    <button type="submit" class="btn-style" onclick="return jobposition();">Search</button>
      &nbsp;
    <button type="button" class="btn-style" onclick="javascript:location.reload(true);">Reset</button>
</div>
       </form>
       
<!--#include File = 'GroupAdmin_bd\Footer.asp' -->
        </div>
    </div>
</div>