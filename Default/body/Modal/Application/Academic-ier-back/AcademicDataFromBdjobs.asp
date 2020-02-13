<!--#include File = 'BdjobsDataToDhakaBank.asp'-->
<%
	For i = 1 To 5
%>
  <div class="row">
    <div class="col-sm-12">
      <div class="uf">
        <div class="row">
  
        <input type="hidden" id="ddlDegreeName<%=i%>hidden" name="ddlDegreeName<%=i%>hidden" value=""  />
      
        <input type="hidden" id="ddlSubject<%=i%>hidden" name="ddlSubject<%=i%>hidden" value=""  />
  
        <input type="hidden" id="txtUniversity<%=i%>hidden" name="txtUniversity<%=i%>hidden" value=""  />

        <input type="hidden" id="ddlCountry<%=i%>hidden" name="ddlCountry<%=i%>hidden" value=""  />
        
       <div class="col-sm-1">
        <!--#include File = 'bdjEduLevel.asp'-->
       </div>
          
       <div class="col-sm-1">         
        <!--#include File = 'bdjDegreeName.asp'-->
       </div>
	             
	   <div class="col-sm-1">
        <!--#include File = 'bdjYear.asp'-->
       </div>
	  

       <div class="col-sm-2">
         <!--#include File = 'bdjInstitute.asp'-->
       </div>
	   
       <div class="col-sm-2">
        <!--#include File = 'bdjBoardUniversity.asp'-->
       </div>
	   
        <div class="col-sm-1">
             <!--#include File = 'bdjResult.asp'-->     
         </div>
           
         <div class="col-sm-1">
              <!--#include File = 'bdjResultPoint.asp'-->
         </div> 
         
        <div class="col-sm-2">
         <!--#include File = 'bdjSubject.asp'-->
       
         <div id="sp_OL<%=i%>">      
         </div>
       
        </div>
           
	    
<%
		AcademicUB = i
		'response.Write("academic id:::::"&AcademicUB)
	Next
	varEduRows = 0
%> 