<%If IsBlank= "" or isnull(IsBlank) or isempty(IsBlank) Then%>
 <!--#include File = 'Academic\BdjobsDataAcademic.asp'-->
 
<%End If%>

<!--#include File = 'Academic\ContentManagementOfAcademic.asp' -->

<fieldset>
<legend>Academic Qualification</legend>
<div class="academic">                          

<%
	For i = 1 To row_total_academic    ' from system.asp 
%>

  <div class="row">
    <div class="col-sm-12">
        <div class="aca-sub">
                    
          <fieldset>
             <%if i = 1 then %>
                <legend>
                	<!--JSC <span>(or Equivalent Level)</span>-->
                    SSC <span>(or Equivalent Level)</span>
                </legend>   
             <%elseif i = 2 then %>
                <legend>
                	<!--SSC <span>(or Equivalent Level)</span>-->
                    HSC <span>(or Equivalent Level)</span>
                </legend>
             <%elseif i = 3 then %>    
                <legend>Graduation</legend>
             <%elseif i = 4 then %>    
                <legend>Post Graduation<!-- <span>(Level)</span>--></legend>
             <%elseif i = 5 then %>    
                <legend>Masters 2 (if any)<span>(Level)</span></legend>
             <%end if%>                

<input type="hidden" id="ddlDegreeName<%=i%>hidden" name="ddlDegreeName<%=i%>hidden" value=""  />

<input type="hidden" id="ddlSubject<%=i%>hidden" name="ddlSubject<%=i%>hidden" value=""  />

<input type="hidden" id="ddlSubject2<%=i%>hidden" name="ddlSubject2<%=i%>hidden" value=""  />

<input type="hidden" id="ddlUniversity<%=i%>hidden" name="ddlUniversity<%=i%>hidden" value=""  />

<input type="hidden" id="txtUniversity<%=i%>hidden" name="txtUniversity<%=i%>hidden" value=""  />

<input type="hidden" id="ddlCountry<%=i%>hidden" name="ddlCountry<%=i%>hidden" value=""  />
                    
           	<!--#include File = 'Academic\bdjEduLevel.asp'-->
               
                <div class="einf">
                      <div class="row">
                      
                        <div class="col-sm-6">
                          <div class="form-group">
                            <div class="row">
                                <!--#include File = 'Academic\bdjDegreeName.asp'-->
                            </div>
                          </div>
                        </div>   
    
                        <div class="col-sm-6">
                          <div class="form-group">
                            <div class="row">   
                                <!--#include File = 'Academic\bdjYear.asp'-->
                            </div>
                          </div>
                        </div>
                 
                     </div>                       

                      <div class="row">
                        
                             <div id="sp_OL<%=i%>">      
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


                      <div class="row">
                      
                        <div class="col-sm-6">
                          <div class="form-group">
                            <div class="row" id="row_id_div_institute<%=i%>">   
                               <!--#include File = 'Academic\bdjInstitute.asp'-->
                            </div>
                          </div>
                        </div>
                        
                        <div class="col-sm-6">
                          <div class="form-group" id="row_id_div_district<%=i%>">
                            <div class="row">  
                               <%if system <> "trustbank" or system <> "ksb" then
							   'changed by sony 
							   'strPhotoFolder <> "trustbank" or 
							    %>
                                  
                                 <!--#include File = 'Academic\academic_district.asp'-->  
                               <%end if%>   
                             </div>
                          </div>
                        </div>   
                        
                     </div>                 
                 
                    
                      <div class="row">
                        <div class="col-sm-6">
                          <div class="form-group">
                            <div class="row">   
                                     <!--#include File = 'Academic\bdjBoardUniversity.asp'-->
                            </div>
                          </div>
                        </div>
    
                        <div class="col-sm-6">
                          <div class="form-group" id="row_id_div_result<%=i%>">
                            <div class="row">   
                                  <!--#include File = 'Academic\bdjResult.asp'-->     
                            </div>
                          </div>
                        </div>
                   
                   </div>                     
                     
               
                  <div class="row">
                        <div class="col-sm-6">
                          <div class="form-group">
                            <div class="row">   
                                
                             </div>
                          </div>
                        </div>  
                                               
                        <div class="col-sm-6">
                          <div class="form-group" id="row_id_div_resultpoint<%=i%>">
                            <div class="row">   
                                 <!--#include File = 'Academic\bdjResultPoint.asp'-->
                             </div>
                          </div>
                        </div>                 
                    

                   </div>
               
                  <div class="row">
                  
                    <div class="col-sm-6">
                      <div class="form-group" id="row_id_div_district<%=i%>">
                        <div class="row">   
                             <!--#include File = 'Academic\bdjSubject.asp'-->
                        </div>
                      </div>
                    </div>                  
                  
                    <div class="col-sm-6">
                      <div class="form-group">
                        <div class="row">   
                            <%if i > 2 then %>
                            	<%if system <> "ksb" then%>
                               <!--#include File = 'Academic\bdjSubject2.asp'-->
                                 <%end if%>
                             <%end if%>   
                        </div>
                      </div>
                    </div>
              

                                  
               </div>
              
            
            
            </fieldset>
        </div>
   </div>
</div>
<%
		AcademicUB = i
		'response.Write("academic id:::::"&AcademicUB)
	Next
	varEduRows = 0
%>     
   <label id="help_academic" class ='error'> </label>
       
   
    <input name="count_edu" type="hidden" value="<%=AcademicUB%>" />
   
    <input type="hidden" name="hide_edu" value="<%=varEduRows%>" />
   
	
    </div>
    
</fieldset>

<!--#include file = 'Academic\js.asp'--> <!-- why needed this ?? function of js on change of o level or a level we dont find where it is ... so we put it and find any change easyly -->