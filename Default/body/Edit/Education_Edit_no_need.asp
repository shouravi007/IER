<!--#include File = 'RetrieveHiddenValueNew.asp' -->
<!--#include File = 'ContentManagementOfAcademic.asp' -->

<div class="col-sm-12">
	<div class="edit-profile bg-style">
		<h1 class="post-name">Edit Form Academic Profile </h1>
		<div class="wrapper">
			
			  <!--#include File = 'GeneralInformation.asp' -->                                

<fieldset>

<%

    hidID = Request.Form("hidID") 
	
	SQLAcademic = "SELECT Personalid, EducationID, DegreeName, PassingYear, INSTITUTE, [RESULT], SUBJECT, University, [UniversityType], [ResultPoint], cgpaScale, [id], [PassingYear],[subject] FROM Academic WHERE Personalid=" & TrackNo & " and [id] = "& hidID
	
	Response.Write(SQLAcademic)
	'Response.End()	
	
	arr_Academic = objERS.RetrieveData(SQLAcademic, errMsg)
	ErrorMessage "454", errMsg, 0 
			
	If arr_Academic(0, 0) <> "Nothing" Then
			 
		input_form = "input-form" 
		
		form_details = " action='?"&Encode("Location=Edit&FormAction=Education_Update")&"'  id='frmSubmit'  name='frmSubmit'  method='post'   "
		
		row = "row"
		
		column_12_grid = "column_12_grid"
		
		column_no_3_content = "column_no_3_content"
		
		req = "required"
		
		frmcon = "form-control input-sm"
		
		noreq = "required-none" 


	  	intUBEdu = UBound(arr_Academic, 2) 
	
		For intEduIndex = 0 To intUBEdu
			
			' Variable Initialization.
			intEduID = arr_Academic(11, intEduIndex)
			ResultPublishYear = arr_Academic(12, intEduIndex)
			bytEduLevel = arr_Academic(1, intEduIndex)
			strEducation = arr_Academic(2, intEduIndex)
			strEducation = GiveReplacedString(strEducation)
			intPassYear = arr_Academic(3, intEduIndex)
			
			strInstitute = arr_Academic(4, intEduIndex)
			strResult = arr_Academic(5, intEduIndex)
			strSubject = arr_Academic(6, intEduIndex)
			strSubject2 = arr_Academic(13, intEduIndex)
			
			strUniversity = arr_Academic(7, intEduIndex)
			strUniversity = GiveReplacedString(strUniversity)
			strForeign = arr_Academic(8, intEduIndex)
			strPercent = arr_Academic(9, intEduIndex)
			strGrade = arr_Academic(10, intEduIndex)
			
			strInstitute = GiveReplacedString(strInstitute)
			strSubject = GiveReplacedString(strSubject)
			strSubject2 = GiveReplacedString(strSubject2)
						
			intRecordId = intEduID
						
			If IsNull(strEducation) Then 
			  strEducation = "" 						
			End If  
			
			
			If IsNull(strSubject) Then 
			  strSubject = "" 						
			End If
						
						
			'ResultPublishDate = arr_Academic(12, intEduIndex)
'					    ResultPublishDate =  GiveReplacedString(ResultPublishYear) 			
'						
'						
'						if isnull(ResultPublishDate) = false then 
'						 if isdate(ResultPublishDate) then 
'						  strResultPublishDay = Day(ResultPublishDate)
'						  strResultPublishMonth = Month(ResultPublishDate)
'						  strResultPublishYear = Year(ResultPublishDate)
'						 else
'						  strResultPublishDay = ""
'						  strResultPublishMonth = ""
'						  strResultPublishYear = ""
'						 end if
'						else
'						  strResultPublishDay = ""
'						  strResultPublishMonth = ""
'						  strResultPublishYear = ""
'						
'						end if
						 
						  
%>          

<form <%=form_details%>>
        
        <legend>Education Profile <%=noEducation%></legend>

        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="firstName">
                                <h4>Education Level
                                    <span>*</span>
                                </h4>
                            </label>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group degree-level">  <input type="hidden" name="hidID1" id="hidID1" value="<%=intEduID%>" />
                            
                             <select name="EDULEVEL1" id="EDULEVEL1" class="<%=frmcon%>">

<option value="S"<%If bytEduLevel = "S" Then%> selected="selected" <%End If%>>Select  Education Level </option>


<option value="5" <%If bytEduLevel = "5" Then%> selected="selected" <%End If%>>Post Grad -2.</option>


<option value="4" <%If bytEduLevel = "4" Then%> selected="selected" <%End If%>>Post Grad.</option>
         
<option value="3" <%If bytEduLevel = "3" Then%> selected="selected" <%End If%>>Graduation.</option>
      
<option value="2" <%If bytEduLevel = "2" Then%> selected="selected" <%End If%>>Higher Sec.</option>

<option value="1" <%If bytEduLevel = "1"  Then%> selected="selected" <%End If%>>Secondary</option>
</select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="firstName">
                                <h4>Exam / Degree Title
                                    <span>*</span>
                                </h4>
                            </label>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group exam-name">
                                 <select id="EDUCATION1" name="EDUCATION1" class="<%=frmcon%>"  <%=onChange%>>                           
<%                     
If bytEduLevel = 1 Then 
%>

<%For d = 0 To Ubound(arrDegreeNameSec,1) %>
<option value="<%=arrDegreeNameSec(d)%>" <%If Cstr(strEducation) = Cstr(arrDegreeNameSec(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNameSec(d)%>
</option>
<%Next%>

<%
ElseIf bytEduLevel = 2 Then 
'ElseIf strEduLevel = "2" Then		
%>
<%For d = 0 To Ubound(arrDegreeNameHigh,1) %>
<option value="<%=arrDegreeNameHigh(d)%>" <%If Cstr(strEducation) = Cstr(arrDegreeNameHigh(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNameHigh(d)%></option>
<%Next%>
<%
ElseIf bytEduLevel = 3 Then 					
'ElseIf strEduLevel = "3" Then
%>		
<%For d = 0 To Ubound(arrDegreeNameGrad,1) %>
<option value="<%=arrDegreeNameGrad(d)%>" <%If Cstr(strEducation) = Cstr(arrDegreeNameGrad(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNameGrad(d)%></option>
<%Next%>
<%					
ElseIf bytEduLevel = 4 or bytEduLevel = 5  Then 
'ElseIf  strEduLevel = "4" Then
%>
<%For d = 0 To Ubound(arrDegreeNamePostGrad,1) %>
<option value="<%=arrDegreeNamePostGrad(d)%>" <%If Cstr(strEducation) = Cstr(arrDegreeNamePostGrad(d)) Then%> selected="selected" <%End If%>><%=arrDegreeNamePostGrad(d)%></option>
<%Next%>

<%End if%>
 
</select>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="firstName">
                                <h4>Passing Year
                                    <span>*</span>
                                </h4>
                            </label>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group passing-year"> <select id="FYEAR1" name="FYEAR1" class="<%=frmcon%>" >
  <option value="S" selected="selected">Select  Passing Year</option>
<%For i = Year(Date)+3 To Year(Date)-50 Step -1%>
<option value="<%=i%>" <%If cstr(intPassYear) = cstr(i) Then%> selected="selected" <%End If%>><%=i%></option>
<%Next%>
</select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                        <label for="firstName">
                                <h4>University/Board<span>*</span> </h4>
                                    
                               
                            </label>
                        </div>
                        <div class="col-sm-6">
                                  <input  id="INSTITUTE1" name="INSTITUTE1" type="text"  onchange="return createEdu(this, 1);" class="form-control" value="<%=strUniversity%>" />

                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="firstName">
                                <h4>Institute / Faculty<span>*</span> </h4>                               
                            </label>
                        </div>
                        <div class="col-sm-6">
           <input name="INST1" type="text" class="form-control" id="INST1"  value="<%'=strInstitute%>"   />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="firstName">
                                <h4>Subject/Major
                                    <span>*</span>
                                </h4>
                            </label>
                        </div>
                        <div class="col-sm-6">
          <input type="text"  id="SUBJECT1" name="SUBJECT1" class="form-control" value="<%=strSubject%>" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="firstName">
                                <h4>Result
                                    <span>*</span>
                                </h4>
                            </label>
                        </div>
                        <div class="col-sm-6">
                             <select  name="RESULT1" id="RESULT1" onchange="return createGrd(this, 1);"  class="form-control">
<option value="S" <%If strResult = "S" Then%> selected="selected" <%End If%> >Select</option>

<option value="0" <%If strResult = "0" Then%> selected="selected" <%End If%>>Grade</option>

<option value="15" <%If strResult = "15" Then%> selected="selected" <%End If%>>First Class/Div</option>
<option value="14" <%If strResult = "14" Then%> selected="selected" <%End If%>>Second Class/Div</option>

</select>

<%
'	If strResult = 0 Then
%>
<!--							<input type='text' name='PERCENT<%'=intEduIndex+1%>' id='PERCENT<%'=intEduIndex+1%>' value='<%'=strPercent%>' size='5' maxlength='4' style='width:20px;font-size:7pt;background-color:#EEEEEE' onKeyPress='return resultPoint(this, event)' class="<%'=frmcon%>" />-->
<%	
'	End If
%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="firstName">
                                <h4> <%If strResult = 0 Then%> CGPA <%Else%>Marks<%End If%>  
                                    <span>*</span>
                                </h4>
                            </label>
                        </div>
                        <div class="col-sm-6">
                            <input type='text' name='PERCENT<%=intEduIndex+1%>' id='PERCENT<%=intEduIndex+1%>' value='<%=strPercent%>' size='5' maxlength='4'  onKeyPress='return resultPoint(this, event)'class="form-control">
                        </div>
                    </div>
                </div>
            </div>
            
            
<%If strResult = 0 or isnull(strResult) Then%>    
      
            <div class="col-sm-4">
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="firstName">
                                <h4>CGPA Scale
                                    <span>*</span>
                                </h4>
                            </label>
                        </div>
                        <div class="col-sm-6">
                             <select  name="cgpaScale1" id="cgpaScale1" onchange="return createGrd(this, 1);"  class="form-control">
<option value="S" <%If strGrade = "S" Then%> selected="selected" <%End If%> >Select</option>
<option value="5" <%If strGrade = "5" Then%> selected="selected" <%End If%>>5</option>   

<option value="4" <%If strGrade = "4" Then%> selected="selected" <%End If%>>4</option>



</select>

                        </div>
                    </div>
                </div>
            </div>
        
        
<%End IF%>                      
        
        </div>


</fieldset>


<%

Next 

End if 

%>



<!--#include File = 'HiddenValueNew.asp' --> 			
<!--#include File = 'CommonFooterActionAcademic.asp' --> 			

