<!--#include File = 'CheckSession.asp' -->
<div class="col-sm-12">
    <div class="summery-view bg-style">
<h1 class="post-name">Search with Job Reference id </h1>
 <div class="wrapper">

<%
	strModuleName = "ResumeSearch" 
	strDescription = "Position Filter with  : "&strUserName&"##"&strPassword
	strAction = "Search Option filter for.. "
%>
<!--#include File = 'UserLog.asp' -->
<!--#include File = 'GroupAdmin_bd\Content1.asp' -->  
<!--  include File = 'GroupAdmin_bd\Welcome.asp' -->

<form action="?<%=Encode("Location=Admin&FormAction=JobReferenceIdSearchResult")%>"  method="post" name="form1" id="form1" target="_blank">
<input type="hidden" name="hidUserID" id="hidUserID" value="<%=intUserID%>" />
<input type="hidden" name="strDeadLine" value="<%=strDeadLine%>" />

<div class="row">
    	
  <!--#include File = 'GroupAdmin_bd\JobPosition.asp' -->
           
</div>


<div class="row">
<div class="col-sm-4">  

     <div class="row">
       <div class="col-sm-6">
           <div class="form-group">
            <!--#include File = 'GroupAdmin_bd\CVType\JobReferenceId.asp' -->
           </div>
        </div>
        
       <div class="col-sm-6">
        <div class="form-group">
         <!--  include File = 'GroupAdmin_bd\CVType\RollNumber.asp' -->
       </div>
       </div>
    </div>
        
    
    </span>
   


</div>

</div>


<div class="btn-wrap text-center">
    <button type="submit" class="btn-style" onclick="return jobposition();">Search</button> 
</div>
</form>
       
<!--#include File = 'GroupAdmin_bd\Footer.asp' -->
        </div>
    </div>
</div>

          