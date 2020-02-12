				<div class="col-sm-12">
					<div class="summery-view bg-style">

 <form action="?<%=Encode("Location=Edit&FormAction=Education_Edit")%>" method="post" id="errEducation1" name="editEducation<%=intEduIndex+1%>" >			
<input type="hidden" id="hidID" name="hidID" value="<%=Trim(Request.Form("hidEducationID1"))%>"  /> 

<!--#include File = "HiddenValueNew.asp" --> 
<!--#include File = "O_A_LevelFormBack.asp" --> 
<!--#include File = "Academic_Back.asp" --> 
</FORM>

<script>
            function PageSubmit()
			{
				document.getElementById('errEducation1').submit();
			}
</script>

<form action="?<%=Encode("Location=Edit&FormAction=Academic")%>" id="frmErr" name="frmErr" method="post">

<!--#include File = "HiddenValue.asp" -->     
  

<input type="hidden" id="ddlEducationLevel1" name="ddlEducationLevel1" value="<%=Request.Form("ddlEducationLevel1")%>"/>   
<input type="hidden" id="ddlDegreeName1" name="ddlDegreeName1" value="<%=Request.Form("ddlDegreeName1")%>" />     
<input type="hidden" id="ddlPassingYear1" name="ddlPassingYear1" value="<%=Request.Form("ddlPassingYear1")%>" />     

<!--<input name="ddlResultDay1" id="ddlResultDay1" type="hidden" value="<%'=Request.Form("ddlResultDay1")%>" />        
<input name="ddlResultMonth1" id="ddlResultMonth1" type="hidden" value="<%'=Request.Form("ddlResultMonth1")%>" />
<input name="ddlResultYear1" id="ddlResultYear1" type="hidden" value="<%'=Request.Form("ddlResultYear1")%>" />-->

<input type="hidden" id="ddlUniversity1" name="ddlUniversity1" value="<%=Request.Form("ddlUniversity1")%>" />     
<input type="hidden" id="txtInstitute1" name="txtInstitute1" value="<%=Request.Form("txtInstitute1")%>" /> 
<input type="hidden" id="ddlAcademicDist1" name="ddlAcademicDist1" value="<%=Request.Form("ddlAcademicDist1")%>"/>
    
<input type="hidden" id="ddlSubject1" name="ddlSubject1" value="<%=Request.Form("ddlSubject1")%>" />   
<input type="hidden" id="txtOthers1" name="txtOthers1" value="<%=Request.Form("txtOthers1")%>" />  
<input type="hidden" id="ddlSubject2" name="ddlSubject2" value="<%=Request.Form("ddlSubject2")%>" /> 
<input type="hidden" id="txtOthers2" name="txtOthers2" value="<%=Request.Form("txtOthers2")%>" /> 
             
       
<input type="hidden" id="ddlResult1" name="ddlResult1" value="<%=Request.Form("ddlResult1")%>" />  
<input type="hidden" id="txtResultPoint1" name="txtResultPoint1" value="<%=Request.Form("txtResultPoint1")%>" />  
<input type="hidden" id="ddlCGPAScale1" name="ddlCGPAScale1" value="<%=Request.Form("ddlCGPAScale1")%>" /> 
         
</form> 
<%	
	jobid = Request.Form("jobid")
	
    Sub Academic()
	End Sub 

	intUBEdu =  1  '  Request.Form("count_edu")
	'intUBEdu = intUBEdu - 1
	noEducation = Request.Form("noEducation")
	
	'Response.Write("intUBEdu: " & intUBEdu & "<br />")
	'Response.Write(intUBEdu)	
	'Response.End()			
	' LOOP 4 Edu.
	For intEduIndex = 1 To 1
			
			'strResultPoint = 0
			intEduID = Request.Form("hidEducationID" & intEduIndex)
			
			IF intEduID = "" Then 
			 intEduID = -1 
			End IF 
			
			bytEduLevel = Trim(Request.Form("ddlEducationLevel" & intEduIndex))			
			strDegreeName = Trim(Request.Form("ddlDegreeName" & intEduIndex))
			strDegreeName = GiveReplacedString4DB(strDegreeName)			
			intPassYear = Trim(Request.Form("ddlPassingYear" & intEduIndex))			
			
			'intResultDay = Trim(Request.Form("ddlResultDay" & intEduIndex))
			'intResultMonth = Trim(Request.Form("ddlResultMonth" & intEduIndex))
			'intResultYear = Trim(Request.Form("ddlResultYear" & intEduIndex))
				
			'strResultPublishYear = intResultYear & "/" & intResultMonth & "/"& intResultDay	
			
			strInstitute = Trim(Request.Form("txtInstitute" & intEduIndex))
			strInstitute = GiveReplacedString4DB(strInstitute)	
			'strResult = Trim(Request.Form("ddlResult" & intEduIndex)) 
			strSubject = Trim(Request.Form("ddlSubject" & intEduIndex))
			strSubject2 = Trim(Request.Form("ddlSubject2"))
			strUniversity = Trim(Request.Form("ddlUniversity" & intEduIndex)) 
			strUniversityOthers = Trim(Request.Form("txtUniversity" & intEduIndex))
			strCountry = Trim(Request.Form("ddlCountry" & intEduIndex)) 
			'strCGPAScale = Trim(Request.Form("ddlCGPAScale" & intEduIndex))	

			If strDegreeName = "" Then			
			   strDegreeName = Trim(Request.Form("ddlDegreeName" & intEduIndex & "hidden"))
			End IF

	
			If strSubject = "" Then 
			   strSubject = Trim(Request.Form("ddlSubject" & intEduIndex & "hidden"))
			End IF 

			If strSubject2 = "" Then 
			   strSubject2 = Trim(Request.Form("ddlSubject2hidden"))
			End IF 

			if strUniversity = "" Then
               strUniversity = Trim(Request.Form("ddlUniversity" & intEduIndex & "hidden"))
			end if

			if strUniversityOthers = "" Then
             strUniversityOthers = Trim(Request.Form("txtUniversity" & intEduIndex & "hidden"))
			end if
	
			if strCountry = "" Then
               strCountry = Trim(Request.Form("ddlCountry" & intEduIndex & "hidden"))
			end if

									
			If strUniversity = "Foreign" Then
				 
				strUniversity = strUniversityOthers & "@***@" & strCountry
				
				strForeign = "F"
			ElseIf strUniversity = "Others" Then	
				
				strUniversity = strUniversityOthers
		
				strForeign = "O"
			Else
				strForeign = "N"	
			End If			
						
			If strSubject = "Others" Then
				strOthers = Trim(Request.Form("txtOthers" & intEduIndex))
				strSubject = strOthers 
	            subject_others = 1		
			Else
			    subject_others = 0
			End If	

			If strSubject2 = "Others" Then
				strOthers2 = Trim(Request.Form("txtOthers2"))
				strSubject2 = strOthers2 
	            subject_others2 = 1		
			Else
			    subject_others2 = 0
			End If	
					
			If strUniversity = "Foreign" Then
				Req = "True"
				TextTypeInputValidation Req, strUniversityOthers ,"Text","200","Foreign institute name in others in row "&intEduIndex&" of Academic Qualification"
			ElseIf strInstitute = "O" Then	
				 Req = "True"
				TextTypeInputValidation Req, strUniversityOthers ,"Text","200","Foreign institute name in others in row "&intEduIndex&" of Academic Qualification"
			Else

			End If
		
	
			Req = "True"
			
			bytEduLevel = CheckValidation(Req,bytEduLevel,"select","-1","Number","Education Level of  Row  "&intEduIndex&" of Academic Qualification ")
		
			strDegreeName = CheckValidation(Req,strDegreeName,"select","S","255","Exam/Degree title of row  "&intEduIndex&" of Academic Qualification ")
 
            '***********O_A_Level_Check Result Validation*******
%>	
<!--#include File = "O_A_Level_CheckResultValidation.asp" -->
<!--#include File = "Academic_Validation.asp" -->
<!--#include File = "Update_Academic.asp"-->
<!--#include File = "O_A_Level_InsertData.asp"-->

<%		
		SQLUpdateUDate = "UPDATE Personal SET ip = '"&Request.ServerVariables("REMOTE_ADDR")&"' , UpdatedOn='"  & now &  "'  WHERE id =" & TrackNo
		'response.Write(SQLUpdateUDate)
		objERS.ExecuteQuery SQLUpdateUDate, errMsg
		ErrorMessage "581", errMsg, 0	

%>				
<!--#include File = "UserLog.asp"-->  
<!--#include File = "Eligibility_Edit_ksb.asp"-->
<!--#include File = "BackToAcademic.asp"-->
    
        </div>
   </div>