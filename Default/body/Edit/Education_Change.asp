<!--#include File = 'RetrieveHiddenValueNew.asp' -->
<!--#include File = 'ContentManagementOfAcademic.asp' -->
<div class="col-sm-12">
	<div class="edit-profile bg-style">
		<h1 class="post-name">Edit Form Academic Profile </h1>
		   <div class="wrapper">
			  <!--#include File = 'GeneralInformation.asp' -->
              <!--#include File = 'Education_Change\RetrieveData.asp' -->
              

              
               <form <%=form_details%>>               
                    <input type="hidden" id="ddlDegreeName1hidden" name="ddlDegreeName1hidden" value=""  />
                    
                    <input type="hidden" id="ddlSubject1hidden" name="ddlSubject1hidden" value=""  />
                    
                    <input type="hidden" id="ddlSubject2hidden" name="ddlSubject2hidden" value=""  />
                    <input type="hidden" id="ddlUniversity1hidden" name="ddlUniversity1hidden" value=""  />
                    <input type="hidden" id="txtUniversity1hidden" name="txtUniversity1hidden" value=""  />
                    <input type="hidden" id="ddlCountry1hidden" name="ddlCountry1hidden" value=""  /> 
               
<fieldset>
               
                <legend>Education Profile <%=noEducation%></legend>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="row">
                               <!--#include File = 'Education_Change\EduLevel.asp' -->
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="row">
                               <!--#include File = 'Education_Change\DegreeName.asp' -->
                            </div>
                        </div>
                    </div>
                </div>
                
                
	 <%' if i = 1 then 
		
		If InStr(lcase(strEducation),"o level") > 0 Then
			strVisibilityOL = "display:block;"
		Else
			strVisibilityOL = "display:none;"
		End If
	
	%>
     
     <div id="ol" class="col-md-12" style="<%=strVisibilityOL%>">
              <!--#include File = 'Education_Change\OLevel.asp'-->
     </div>
     <% 
	 'end if 
	 %>
    	
      <%' if i = 2 then 
	    'response.Write("hello"&InStr(lcase(strDegreeName2),"a level"))
		If InStr(lcase(strEducation),"a level") > 0 Then
			strVisibilityAL = "display:block;"
		Else
			strVisibilityAL = "display:none;"
		End If
	 
	  %>
       <div id="al" class="col-md-12" style="<%=strVisibilityAL%>">
              <!--#include File = 'Education_Change\ALevel.asp'-->
       </div>
      <%
	 ' end if
	  %>
                
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="row">
                               <!--#include File = 'Education_Change\PassingYear.asp' -->
                            
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="row">
                               <!--include File = 'Education_Change\bdjResultYear.asp'-->
                              
                            </div>
                        </div>
                    </div>
                    
                </div>
                
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="row">
                               <!--#include File = 'Education_Change\Institute.asp' -->
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="row">
                             <!--#include File = 'Education_Change\University.asp' -->
							                            
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="row">
							<%
							If InStr(lcase(strEducation),"o level") > 0 or InStr(lcase(strEducation),"a level") > 0  Then%>
                        <span id="spn_subject"> </span>
                        
                        <%	
							
                            Else
							%>
                            
                            
                               <!--#include File = 'Education_Change\Subject.asp' -->
                            
                            <%
							End If
							%>
                            
                            </div>
                        </div>
                    </div>
                  
                  
                  
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="row">
                               <%
							  If bytEduLevel = 1 or bytEduLevel = 2 Then
							  
							  
							  Else
							  %>
                               <!--#include File = 'Education_Change\Subject2.asp' -->
                               
                               <%
							   End If
							   %>
                            </div>
                        </div>
                    </div>
                </div>
                                  
                  
                  
                  
                  <div class="row"> 
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="row">
                              <%
							 ' If bytEduLevel = 1 or bytEduLevel = 2 Then
							  
							  'Else
							  %>
                               <!--include File = 'Education_Change\Subject2.asp' -->
                               
                               <%
							  ' End If
							   %>
                               
                            
                            <%
							If InStr(lcase(strEducation),"o level") > 0 or InStr(lcase(strEducation),"a level") > 0  Then %>
                        <span id="spn_result"> </span>
                        
                        <%	
                            Else
							%>
                            
                               <!--#include File = 'Education_Change\Result.asp' -->
                            
                            <%
							End If
							%>
                               
                               
                            </div>
                        </div>
                    </div>
                
                
                
               

                    <div id="cgpa1" class="col-sm-6" style="<%If strResult <> "12" Then%>display:block;<%Else%>display:none;<%End IF%> ">
                        <div class="form-group">
                            <div class="row">
                        <%
						If InStr(lcase(strEducation),"o level") > 0 or InStr(lcase(strEducation),"a level") > 0  Then  %>
                        <span id="spn_marks"> </span>
                        
                        <%
							
                        Else
						%>

                               <!--#include File = 'Education_Change\Marks.asp' -->
                       <%End If%>
                            
                            </div>
                        </div>
                    </div>
               </div>
               
               
                <div class="row">     
                    <div id="scale1" class="col-sm-6" style="<%If strResult = 0 or isnull(strResult) Then%>display:block;<%Else%>display:none;<%End IF%> ">
                        <div class="form-group">
                            <div class="row">
                            <%
							If InStr(lcase(strEducation),"o level") > 0 or InStr(lcase(strEducation),"a level") > 0  Then        %>
                            
                             
                             <span id="spn_cgpascale"> </span>
                            
							
							<%
                            Else
							%>
    
                            
                               <!--#include File = 'Education_Change\CGPAscale.asp' -->
                            
							<%End If%>
                            
                            </div>
                        </div>
                    </div>                   
                    
                </div>    
                    
      
       </fieldset>



<!--#include File = 'HiddenValueNew.asp' --> 			
<!--#include File = 'CommonFooterActionAcademic.asp' --> 			

 <%'End IF%>  