<!--#include File = 'RetrieveHiddenValueNew.asp' -->
<div class="col-sm-12">
    <div class="summery-view bg-style">
        <h1 class="post-name">Academic Profile</h1>
           <div class="wrapper">
			 <!--#include File = 'GeneralInformation.asp' -->
             
<% 
If TrackNo = "" Then 
  Response.Redirect("?"&Encode("Location=Modal&FormAction=Login"))
Else

	SQLAcademic = "SELECT [Personalid], [EducationID], [DegreeName], [PassingYear], [INSTITUTE], [RESULT], [SUBJECT], [University], [UniversityType], [ResultPoint], [cgpaScale], [id],[AcademicDistrict],[Subject2]  FROM [Academic] WHERE [Personalid]=" & TrackNo & " Order by EducationID Desc " '[ResultPublishDate]
'Response.Write(SQLAcademic)
	'Response.End()	
	arr_Academic = objERS.RetrieveData(SQLAcademic, errMsg)
	ErrorMessage "454", errMsg, 0
			 
			
	If arr_Academic(0, 0) <> "Nothing" Then
				
 		intUBEdu = UBound(arr_Academic, 2)
		'response.Write("total : "& intUBEdu) 
	
				For intEduIndex = 0 To intUBEdu
						' Variable Initialization.
						intEduID = arr_Academic(11, intEduIndex)
						
						bytEduLevel = arr_Academic(1, intEduIndex)
						
						strEducation = arr_Academic(2, intEduIndex)'Response.Write("degree : "& strEducation)						
						strEducation = GiveReplacedString(strEducation)
						
						intPassYear = arr_Academic(3, intEduIndex)
						
						strInstitute = arr_Academic(4, intEduIndex)
						strInstitute = GiveReplacedString(strInstitute)
						
						strResult = arr_Academic(5, intEduIndex)
						
						strSubject = arr_Academic(6, intEduIndex)
						strSubject = GiveReplacedString(strSubject)
						
						strSubject2 = arr_Academic(13, intEduIndex)
						strUniversity = arr_Academic(7, intEduIndex)
						strUniversity = GiveReplacedString(strUniversity)
						
						strForeign = arr_Academic(8, intEduIndex)
						
						strPercent = arr_Academic(9, intEduIndex)
						
						strCGPAScale = arr_Academic(10, intEduIndex)
						
						'ResultPublishDate = arr_Academic(12, intEduIndex)
						
						
			            strSubject2 = GiveReplacedString(strSubject2)
						strAcademicDist = arr_Academic(12, intEduIndex)
			            'ResultPublishDate =  GiveReplacedString(ResultPublishYear) 			
						intRecordId = intEduID
						
						'if isnull(ResultPublishDate) = false then 
'							 if isdate(ResultPublishDate) then 
'							  strResultPublishDay = Day(ResultPublishDate)
'							  strResultPublishMonth = Month(ResultPublishDate)
'							  strResultPublishYear = Year(ResultPublishDate)
'							 else
'							  strResultPublishDay = ""
'							  strResultPublishMonth = ""
'							  strResultPublishYear = ""
'							 end if
'						else
'							  strResultPublishDay = ""
'							  strResultPublishMonth = ""
'							  strResultPublishYear = ""
'						end if


%>        
<fieldset>
    <legend>Education Profile  <%=intEduIndex+1%></legend>
    <div class="btn-wrap text-right">
        
<form action="?<%=Encode("Location=Edit&FormAction=Education_Edit")%>" method="post" id="editEducation<%=intEduIndex+1%>" name="editEducation<%=intEduIndex+1%>" >
	<!--#include File = 'HiddenValueNew.asp' -->   
    <input type="hidden" id="hidID" name="hidID" value="<%=intEduID%>"  />   
    <input type="hidden" id="Action" name="Action" value="Edit"  />   
    <input type="hidden" id="noEducation" name="noEducation" value="<%=intEduIndex+1%>"  />
    <button type="button" class="btn-style" onclick="return IsEdit<%=intEduIndex+1%>();">
    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</button>   
</form>

<% If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66"  Or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0  Then  %>
	<%If intUBEdu > 2 and intEduIndex > 2 then %>
        <!--include File = 'Delete.asp'-->
    <%End if%>
<%End if%>
<script type="text/javascript">

function IsEdit<%=intEduIndex+1%>()
{
var isEdit = false;
		
		isEdit = confirm("You really want to edit?")
		
		if(isEdit)
		{
			//alert(isEdit);
			document.getElementById('editEducation<%=intEduIndex+1%>').submit();
			return true;
		}
		else
		{
			return false;
		}	
}

</script>                                            
 </div>
    <div class="form-group">
        <div class="row">
            <div class="col-sm-4">
                <h4>Education Level :</h4>
            </div>
            <div class="col-sm-8">
                <p>
				<%If bytEduLevel = 4 or bytEduLevel = 5  Then%>Post Graduation<%End If%>
					<%If bytEduLevel = 3 Then%>Graduation<%End If%>
                    <%If bytEduLevel = 2 Then%>Higher Sec.<%End If%>
                    <%If bytEduLevel = 1 Then%>Secondary<%End If%>
                 </p>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="col-sm-4">
                <h4>Exam / Degree Title : </h4>
            </div>
            <div class="col-sm-8">
                <p><%=strEducation%></p>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="col-sm-4">
                <h4>Passing Year : </h4>
            </div>
            <div class="col-sm-8">
                <p><%=intPassYear%></p>
            </div>
        </div>
    </div>

    <!--<div class="form-group">
        <div class="row">
            <div class="col-sm-4">
                <h4>Result Publish Date : </h4>
            </div>
            <div class="col-sm-8">
                <p>
				<%'IF ResultPublishDate <> "1900-01-01" Then%>
					<%'=Day(ResultPublishDate)%>/<%'=Month(ResultPublishDate)%>/<%'=Year(ResultPublishDate)%>
                <%'End If%>
                </p>
            </div>
        </div>
    </div>-->


    <div class="form-group">
        <div class="row">
            <div class="col-sm-4">
                <h4>Institute / Faculty <%If bytEduLevel < 3 Then%>& District<%End If%> </h4>
            </div>
            <div class="col-sm-8">
                <p><%=strInstitute%>
                <%
				If bytEduLevel < 3 Then
				%>
                <!--#include File = 'AcademicDistrictName.asp' -->
               ,<b><%=ssc_hsc_dist_name%></b>
                <%End If%>
                </p>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="col-sm-4">
                <h4>University/Board : </h4>
            </div>
            <div class="col-sm-8">
                <p>    
					<%
                    If strForeign = "O" Then 
                    %>
                    * University Name (Other) : <%=strUniversity%>
                    <%
                    ElseIf strForeign = "F" Then 
                    arrInstitute = Split(strUniversity, "@***@")
                    strInstitute22 = arrInstitute(0)
                    If UBound(arrInstitute) = 1 Then
                    strCampus = arrInstitute(1)
                    End If
                    %>
                    <i> Foreign University	</i>  * Campus location :
                    <%=strInstitute22%>, <%=strCampus%> 
                    <%Else%>
                    <%=strUniversity%>
                    <%					  
                    End If
                    %>
			</p>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="col-sm-4">
                <h4>Result : </h4>
            </div>
            <div class="col-sm-8">
                <p><%If strResult = "15" Then%> First Class/Div<%End If%>
					<%If strResult = "14" Then%>Second Class/Div <%End If%>
                    <%'If strResult = "13" Then%><!--Third Class/Div --><%'End If%>
                    <%If strResult = "12" Then%>Appeared <%End If%>
                    <%If strResult = "0" Then%>Grade <%End If%></p>
            </div>
        </div>
    </div>
				<%If strResult <> "12" Then%>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-4">
                                <h4> <%If strResult = 0 Then%> CGPA <%Else%>Marks<%End If%> : </h4>
                            </div>
                            <div class="col-sm-8">
                                <p><%If strPercent <> 0 Then%> 
									<%=strPercent%>
									<%end if%></p>
                            </div>
                        </div>
                    </div>
                <%End If%>
                
    
    <div class="form-group">
        <div class="row">
            <div class="col-sm-4">
                <h4>Major 1 : </h4>
            </div>
            <div class="col-sm-8">
            
            <p>
<%                                 
'  olevel and a level

If strEducation = "O Level" Then

	sql_O_Level = "SELECT [SUBJECT], [GRADE_POINT], [DEGREE_LEVEL] FROM [level_Table] where degree_level = '"&strEducation&"' and [personalid] ="& TrackNo
	
	arr_sql_O_Level = objERS.RetrieveData(sql_O_Level, errMsg)
	ErrorMessage "454", errMsg, 0

	if arr_sql_O_Level(0,0) <> "Nothing" Then
				
		for o = 0 to ubound(arr_sql_O_Level,2)
			
			strSubjectOL = arr_sql_O_Level(0,o)
			
			response.Write(strSubjectOL&", ") 
			
		next
		
	End If
End If
										
If strEducation = "A Level" Then

	sql_A_Level = "SELECT [SUBJECT], [GRADE_POINT], [DEGREE_LEVEL] FROM [level_Table] where degree_level = '"&strEducation&"' and [personalid] ="& TrackNo
	
	arr_sql_A_Level = objERS.RetrieveData(sql_A_Level, errMsg)
	ErrorMessage "454", errMsg, 0

	if arr_sql_A_Level(0,0) <> "Nothing" Then
				
		for a = 0 to ubound(arr_sql_A_Level,2)
			
			strSubjectAL = arr_sql_A_Level(0,a)
			
			response.Write(strSubjectAL&", ") 
			
		next
		
	End If
											
End If ' olevel and a level

If strSubject <> "" And strSubject <> "NA" and strSubject <> "Not Applicable" and strSubject <> "S" Then 
' normally subject
	Response.Write(strSubject) 				
End If

%>
	</p>
                
                
                
                
            </div>
        </div>
    </div>

<%
If bytEduLevel < 3 Then

Else	
	if isempty(strSubject2) = false and isnull(strSubject2) = false and strSubject2 <> "0" and strSubject2 <> "S"  then 
		
		if strSubject2 <> "S" and strSubject2 <> "0" then 
%>
    <div class="form-group">
        <div class="row">
            <div class="col-sm-4">
               <h4>Major 2 : </h4>
            </div>
            <div class="col-sm-8">
                <p><%if strSubject2 = "S" or strSubject2 = "0" Then%><%else%><%=strSubject2%><%end if%></p>
            </div>
        </div>
    </div>
<%
		end if
	end if
end if
%>

</fieldset>
								
			   <%Next%> 
           <% End If
End If 
%>
     
<%If arr_Academic(0, 0) = "Nothing"then %> <!--intUBEdu < 3 OR -->


<div class="btn-wrap text-left">
<form action="?<%=Encode("Location=Edit&FormAction=Education_Add")%>" method="post" id="addEducation<%=intEduIndex+1%>" name="addEducation<%=intEduIndex+1%>" style="float:left" >
	<!--#include File = 'HiddenValueNew.asp' -->      
    <input type="hidden" id="hidID" name="hidID" value="-1"  />   
    <input type="hidden" id="Action" name="Action" value="Add"  />   
    <input type="hidden" id="noEducation" name="noEducation" value="<%=intEduIndex+1%>"  />
    <button type="button" class="btn-style" data-toggle="modal"  onclick="return IsAdd<%=intEduIndex+1%>();">
    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
    Add Education(if required)
    </button>
</form>                                    
</div>

<script>

function IsAdd<%=intEduIndex+1%>()
{
var isAdd = false;
		
		isAdd = confirm("You really want to add?")
		
		if(isAdd)
		{
			document.getElementById('addEducation<%=intEduIndex+1%>').submit();
			return true;
		}
		else
		{
			return false;
		}	
}

</script> 

<%End If%>


 </div>
</div>
</div>
      
    
 





