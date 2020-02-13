
       <div class="personal-modal">
         <div class="modal fade" id="error-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header">
                                      <h4 class="modal-title" id="myModalLabel">Dhaka limited  Helpdesk</h4>
                  </div>
                  <div class="modal-body">
                     <div class="row">
                             <div class="col-md-6">
                                 <h4 id="dialog-edit-message">  
                                   
                                </h4>
                               </div>
                        </div>
                  </div>
                  <div class="modal-footer">
                     <button type="button" class="btn btn-primary"   onclick="javascript:hideModal22();">Retry</button>
                  </div>
                           </div>
                         </div>
                       </div>
                    </div>
              
                                 
            <div class="row">
                <div class="col-md-12">
                 


 <!--#include File = "ContentManagementOfAcademic.asp" -->
 
                <div class="col-md-12" style="padding-top:5%">
 
  <table><tr> <!--#include File = 'FooterBack.asp' --><td>&nbsp;</td><td>
                        
                          <form id="back" name="back" action="?<%=Encode("Location=Edit&FormAction=Academic")%>" method="post">
<!--#include File = 'HiddenValue.asp' -->   

 <button type="submit" class="btn btn-default">Back</button>
           
	   </form>    </td>
       
       <td>&nbsp;</td>
       
        </tr> </table> 
                    
 
 
                    <div class="personal">
                     <div class="panel panel-default">
                  <!--      <div class="panel-heading personal-info">Academic Profile</div>
                   -->     <div class="panel-body">

 
<%


    hidID = Request.Form("hidID") 
	
	
	 input_form = "input-form" 
	 form_details = " action='?"&Encode("Location=Edit&FormAction=Education_Update")&"'  id='frmSubmit'  name='frmSubmit'  method='post'   "
	 row = "row"
	 column_12_grid = "column_12_grid"
	 column_no_3_content = "column_no_3_content"
	 req = "required"
	 frmcon = "form-control"
	 noreq = "required-none" 	
	
		
	  SQLAcademic = "SELECT Personalid, EducationID, DegreeName, PassingYear, INSTITUTE, [RESULT], SUBJECT, University, [UniversityType], [ResultPoint], cgpaScale, [AcademicID], [ResultPublishYear] FROM Academic WHERE Personalid=" & TrackNo & " and [AcademicID] = "& hidID
			'Response.Write(SQLAcademic)
			'Response.End()	
			arr_Academic = objERS.RetrieveData(SQLAcademic, errMsg)
			ErrorMessage "454", errMsg, 0 
			
	If arr_Academic(0, 0) <> "Nothing" Then
	  ub = ubound(arr_Academic,2)
	  if ub = 0 then 
	    bytEduLevel = 1
	  elseif ub = 1 then 
	    bytEduLevel = 1
	  elseif ub = 2 then
	    bytEduLevel = 1
	  else
	    bytEduLevel = 1
	  end if 
	Else
	 bytEduLevel = 1
	End If 
	
	
	
	
	%>
                     
     <button type="button" class="close" data-dismiss="modal" aria-label="Cancel"  onclick="PageSubmit_Cancel();"><span aria-hidden="true">&times;</span></button>
                     <h4 class="modal-title" id="myModalLabel">Add Form Academic Profile &nbsp;<%=noEducation%></h4>
                  </div>  
   
      <form <%=form_details%>>

                     <div class="row">
                        <div class="col-md-4">
                           <h4> 
		                     Education Level<span class="required">*</span></h4>
                             	  <input type="hidden" name="hidID1" id="hidID1" value="<%=intEduID%>" />
					  <select name="EDULEVEL1" id="EDULEVEL1" class="<%=frmcon%>">
						<!--<option value="9" <'%If bytEduLevel = 9 Then%> selected="selected" <%'End If%>>Other</option>-->
                      
                       <option value="S"<%If bytEduLevel = "S" Then%> selected="selected" <%End If%>>Select  Education Level </option>
             	
						<option value="4" <%If bytEduLevel = "4" Then%> selected="selected" <%End If%>>Post Grad.</option>
                                     
						<option value="3" <%If bytEduLevel = "3" Then%> selected="selected" <%End If%>>Graduation.</option>
                                  
            			<option value="2" <%If bytEduLevel = "2" Then%> selected="selected" <%End If%>>Higher Sec.</option>
						
					
						
						<option value="1" <%If bytEduLevel = "1"  Then%> selected="selected" <%End If%>>Secondary</option>
					  </select>
                            
                         </div>
                        
                      
                      
                
      <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600,700' rel='stylesheet' type='text/css'>
    <!-- Main stylesheet -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
    <link rel="stylesheet" type="text/css" href="css/change.css">
    <link href="css/font-awesome.min.css" rel="stylesheet">
     <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    
   <script type="text/javascript" src="js/app.js?10:22:18 AM0.7055475"></script>
<script type="text/javascript" src="js/Registration.js?10:22:18 AM0.533424"></script>
            
                                 
                    
                      
                        <div class="col-md-4">
                           <h4> 
		                     Exam / Degree Title<span class="required">*</span></h4> 
                             
                 <select id="EDUCATION1" name="EDUCATION1" class="<%=frmcon%>"  <%=onChange%>>                           
       
              <option value="<%=arrDegreeNameSec(d)%>" <%If Cstr(strEducation) = Cstr(arrDegreeNameSec(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNameSec(d)%>
              </option>
		   
             <%For d = 0 To Ubound(arrDegreeNameHigh,1) %>
               <option value="<%=arrDegreeNameHigh(d)%>" <%If Cstr(strEducation) = Cstr(arrDegreeNameHigh(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNameHigh(d)%></option>
		      <%Next%>
			
			<%For d = 0 To Ubound(arrDegreeNameGrad,1) %>
              <option value="<%=arrDegreeNameGrad(d)%>" <%If Cstr(strEducation) = Cstr(arrDegreeNameGrad(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNameGrad(d)%></option>
            <%Next%>
		
           <%For d = 0 To Ubound(arrDegreeNamePostGrad,1) %>
             <option value="<%=arrDegreeNamePostGrad(d)%>" <%If Cstr(strEducation) = Cstr(arrDegreeNamePostGrad(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNamePostGrad(d)%></option>
		   <%Next%>
           
      
                             
 </select>
          
                            
                          </div>
                        
                        <div class="col-md-4">
                           <h4> 
		                    Passing Year<span class="required">*</span> </h4>
                            <select id="FYEAR1" name="FYEAR1" class="<%=frmcon%>" >
							  <option value="S" selected="selected">Select  Passing Year</option>
							<%For i = Year(Date)+3 To Year(Date)-50 Step -1%>
						<option value="<%=i%>" <%If cstr(intPassYear) = cstr(i) Then%> selected="selected" <%End If%>><%=i%></option>
						<%Next%>
					  </select>
                           
                         </div>

                      <div class="col-md-12">
                        <h4> 
		                    Result Publish date <span class="required">*</span> </h4>
                         <div class="row">
                            <div  class="col-md-4">
                      
							<select name="ddlResultDay1" id="ddlResultDay1" class="form-control">
							
                            					<option value="S" >day</option>
<%
												For a=1 To 31
%>
													<option value="<%=a%>" <%If cstr(strResultPublishDay) = cstr(a)  then %>selected="selected" <%End If%>><%=a%>										</option>
<%
												Next
%>
												</select>
                                                
                                               </div>
                                               
                                               <div class="col-md-4">
<%
												'Response.Write("Mon: "&varBirthMon)
												ReDim varResultBMon(13)
												For b=1 To 12
												  if isnull(strResultPublishMonth) or isempty(strResultPublishMonth) or strResultPublishMonth = "" then 
												  
												  else
												  
													If cint(b)=cint(strResultPublishMonth) Then
														varResultBMon(b)="selected"
														'Exit For
													Else
														varResultBMon(b)=""
													End If
												  end if 
												Next
%>
												<select name="ddlResultMonth1" id="ddlResultMonth1" class="form-control" >
												<option value="S" >Mon</option>
												<option value="1" <%=varResultBMon(1)%>>Jan</option>
												<option value="2" <%=varResultBMon(2)%>>Feb</option>
												<option value="3" <%=varResultBMon(3)%>>Mar</option>
												<option value="4" <%=varResultBMon(4)%>>Apr</option>
												<option value="5" <%=varResultBMon(5)%>>May</option>
												<option value="6" <%=varResultBMon(6)%>>Jun</option>
												<option value="7" <%=varResultBMon(7)%>>Jul</option>
												<option value="8" <%=varResultBMon(8)%>>Aug</option>
												<option value="9" <%=varResultBMon(9)%>>Sep</option>
												<option value="10" <%=varResultBMon(10)%>>Oct</option>
												<option value="11" <%=varResultBMon(11)%>>Nov</option>
												<option value="12" <%=varResultBMon(12)%>>Dec</option>
												</select>
                                                </div>
                                                
                                                <div class="col-md-4">
                                                
												<select name="ddlResultYear1" id="ddlResultYear1" class="form-control">
												<option value="S" >year</option>
											<%	For j=CInt(Year(Date)) + 2  to (CInt(Year(Date))-25) Step -1
                %>
                	<option value="<%=j%>" <%If cstr(strResultPublishYear) = cstr(j) Then%> selected='selected'<%End If%>><%=j%></option>
                <%
               		 Next
                %>
</select> <label id="ddlResult<%=i%>" style="color:#FF0000;">*</label>
                      
                         
                            
                           
                         </div>
                       </div>  
                       
                     </div>
                      
                         
                        <div class="col-md-12">
                           <h4> 
		                    Institute/ College/ School<span class="required">*</span> </h4>
                            <input name="INST1" type="text" class="<%=frmcon%>" id="INST1"  value="<%=strInstitute%>"   />
                           
                         </div>

                        
                        <div class="col-md-12">
                           <h4> 
		                   University/Board<span class="required">*</span></h4>
 	  <input  id="INSTITUTE1" name="INSTITUTE1" type="text"  onchange="return createEdu(this, 1);" class="<%=frmcon%>" value="<%=strUniversity%>" />
					         

                    </div>
                        
   
                        
                        <div class="col-md-12">
                           <h4> 
		                     Subject/Major<span class="required">*</span> </h4>
					  <input type="text"  id="SUBJECT1" name="SUBJECT1" class="<%=frmcon%>" value="<%=strSubject%>" />
	
 
                         </div>
                        
 
                      <div class="col-md-4">
                           <h4> 
		                    Result<span class="required">*</span> </h4>
    <select  name="RESULT1" id="RESULT1" onchange="return createGrd(this, 1);"  class="<%=frmcon%>">
				    <option value="S" <%If strResult = "S" Then%> selected="selected" <%End If%> >Select</option>
           				<option value="12" <%If strResult = "12" Then%> selected="selected" <%End If%>>Appeared</option>   
                
            		<option value="0" <%If strResult = "0" Then%> selected="selected" <%End If%>>Grade</option>
                    
                    
                    	<option value="15" <%If strResult = "15" Then%> selected="selected" <%End If%>>First Class/Div</option>
                
                	

						<option value="14" <%If strResult = "14" Then%> selected="selected" <%End If%>>Second Class/Div</option>
						<!--<option value="13" <%'If strResult = "13" Then%> selected="selected" <%'End If%>>Third Class/Div</option>-->
		
					  </select>

						<%
					'	If strResult = 0 Then
						%>
<!--							<input type='text' name='PERCENT<%'=intEduIndex+1%>' id='PERCENT<%'=intEduIndex+1%>' value='<%'=strPercent%>' size='5' maxlength='4' style='width:20px;font-size:7pt;background-color:#EEEEEE' onKeyPress='return resultPoint(this, event)' class="<%'=frmcon%>" />-->
<%	
					'	End If
%>
                         </div>
 
 
 
                        <div class="col-md-4">
  
  
                           <h4> 
                           <!--<input type="checkbox" id="dualMajor<%'=intEduIndex+1%>" name="dualMajor<%'=intEduIndex+1%>"  onclick="dualMajors(this,'2SUBJECT<%'=intEduIndex+1%>');" <%'If strSubject2 <> "" Then Response.Write("checked") end if %>  />Dual Major.-->
		                              <%If strResult = 0 Then%> CGPA <%Else%>Marks<%End If%>   <span class="required">*</span>
                            </h4>
 

<input type='text' name='PERCENT<%=intEduIndex+1%>' id='PERCENT<%=intEduIndex+1%>' value='<%=strPercent%>' size='5' maxlength='4'  onKeyPress='return resultPoint(this, event)' class="<%=frmcon%>" />

                         </div>                        
                       <%If strResult = 0 or isnull(strResult) Then%>    
                        <div class="col-md-4">
                              <h4> 
		                    CGPA Scale<span class="required">*</span> </h4>
    <select  name="cgpaScale1" id="cgpaScale1" onchange="return createGrd(this, 1);"  class="<%=frmcon%>">
				    <option value="S" <%If strGrade = "S" Then%> selected="selected" <%End If%> >Select</option>
           				<option value="5" <%If strGrade = "5" Then%> selected="selected" <%End If%>>5</option>   
                
            			<option value="4" <%If strGrade = "4" Then%> selected="selected" <%End If%>>4</option>
                
                
		
					  </select>
                    
                            
                          </div>
                       <%End IF%>

                          </div>
                 
                  
                   <!--<p>(** For MTO and TO subject and degree name not changeble only unfilled will be filled ) </p>-->
                    <!--#include File = 'HiddenValue.asp' -->     
                    
                     <button type="button" class="btn btn-default" data-dismiss="modal" onclick="PageSubmit_Cancel();">Cancel</button>
                     <input name="count_edu" id="count_edu" type="hidden" value="<%=intUBEdu+1%>" />
                     <button type="submit" class="btn btn-primary">Save changes</button>
               
      </form>  
      



            <form  id="frmCancel" name="frmCancel" method="post" action="?<%=Encode("Location=Edit&FormAction=academic")%>">
          
   		          <!--#include File = 'HiddenValue.asp' -->     
             
              </form> 


<script>
  function PageSubmit_Cancel()
  {
	  document.getElementById('frmCancel').submit(); 
  }
</script>
    </div>
    </div>  
    </div>
  </div>

   
 
