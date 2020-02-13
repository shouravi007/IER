<!--#include File = 'Academic\AcademicHeader.asp' -->
<!--#include File = 'Academic\ContentManagementOfAcademic.asp' -->

<%If IsBlank= "" or isnull(IsBlank) or isempty(IsBlank) Then%>
 <!--#include File = 'Academic\BdjobsDataAcademic.asp'-->
<%End If%>
<%
	For i = 1 To 4
%>
  <div class="row">
  
<input type="hidden" id="ddlDegreeName<%=i%>hidden" name="ddlDegreeName<%=i%>hidden" value=""  />

<input type="hidden" id="ddlSubject<%=i%>hidden" name="ddlSubject<%=i%>hidden" value=""  />

<input type="hidden" id="ddlSubject2<%=i%>hidden" name="ddlSubject2<%=i%>hidden" value=""  />

<input type="hidden" id="ddlUniversity<%=i%>hidden" name="ddlUniversity<%=i%>hidden" value=""  />

<input type="hidden" id="txtUniversity<%=i%>hidden" name="txtUniversity<%=i%>hidden" value=""  />

<input type="hidden" id="ddlCountry<%=i%>hidden" name="ddlCountry<%=i%>hidden" value=""  />
        
    <div class="col-sm-3">
      <div class="row">
            <div class="col-sm-4">
              <div class="form-group" data-visual-label="Degree Level-<%=i%>">
                <!--#include File = 'Academic\bdjEduLevel.asp'-->
              </div>
            </div>
          
           <div class="col-sm-4">         
              <div class="form-group" data-visual-label="Exam Name">
              <!--#include File = 'Academic\bdjDegreeName.asp'-->
              </div>
           </div>
	             
           <div class="col-sm-4">
            <div class="form-group" data-visual-label="Passing Year">
            <!--#include File = 'Academic\bdjYear.asp'-->
            </div>
           </div>
	   </div>
     </div>
     
      
	   <div class="col-sm-3">
        <div class="form-group" data-visual-label="Result Publish Date">
         <!--#include File = 'Academic\bdjResultYear.asp'-->
        </div>
       </div>


       <div class="col-sm-3">
          <div class="row">
                <div class="col-sm-6">
                  <div class="form-group" data-visual-label="Institute / Faculty">
                 <!--#include File = 'Academic\bdjInstitute.asp'-->
                 </div>
                </div>
	   
               <div class="col-sm-6">
                 <div class="form-group" data-visual-label="University / Board">
                <!--#include File = 'Academic\bdjBoardUniversity.asp'-->
                </div>
               </div>
            </div>
        </div>
	   
        <div class="col-sm-3">
          <div class="row">
            <div class="col-sm-6">
               <div class="form-group" data-visual-label="Result">
                 <!--#include File = 'Academic\bdjResult.asp'-->     
    
                  <!--#include File = 'Academic\bdjResultPoint.asp'-->
               </div>
            </div> 
         
            <div class="col-sm-6">
             <div class="form-group" data-visual-label="Group / Subject">
                 <!--#include File = 'Academic\bdjSubject.asp'-->
                    
                 <div id="sp_OL<%=i%>">      
                 </div>
             </div>
          </div>
         </div>
       </div>   
	 
    

           
	 <% if i = 1 then 
		
		If InStr(lcase(strDegreeName1),"o level") > 0 Then
			strVisibilityOL = "display:block;"
		Else
			strVisibilityOL = "display:none;"
		End If
	
	%>
     
     <div id="ol" class="col-md-12" style="<%=strVisibilityOL%>">
              <!--#include File = 'Academic\OLevel.asp'-->
     </div>
     <% 
	 end if 
	 %>
    	
      <% if i = 2 then 
	    'response.Write("hello"&InStr(lcase(strDegreeName2),"a level"))
		If InStr(lcase(strDegreeName2),"a level") > 0 Then
			strVisibilityAL = "display:block;"
		Else
			strVisibilityAL = "display:none;"
		End If
	 
	  %>
       <div id="al" class="col-md-12" style="<%=strVisibilityAL%>">
              <!--#include File = 'Academic\ALevel.asp'-->
       </div>
      <%
	  end if
	  %>
     </div>   
<%
		AcademicUB = i
		'response.Write("academic id:::::"&AcademicUB)
	Next
	varEduRows = 0
%>  
     <label id="help_academic" class ='error'> </label>
         <!--For foreign institute, select Foreign Institute and mention Campus location and   Institute name. For any other institute not listed here, select Others and mention Institute name-->
    <input name="count_edu" type="hidden" value="<%=AcademicUB%>" />
    <input type="hidden" name="hide_edu" value="<%=varEduRows%>" />
    <%'Response.Write("[Rows: "&varEduRows&" || Data: "&AcademicUB&"]")%>
        
     
    </div>
  </fieldset>