<!--#include File = "ApplicantsCopy\RetrieveData.asp" -->

<%
if imgSrc = "" or isnull(imgSrc) or isnull(strSignature) or strSignature = false then 
 objERS.CloseConnection()
 Set objERS = Nothing 
 ShowValidateMsg("<h1>Sorry you didn't upload your photograph/signature. please login for <a href='?"&Encode("Location=Modal&FormAction=Login")&"'>upload and then download your applicant copy.</a></h1>")
end if

If IsPersonal = True Then
strBody = "" 
strBody = strBody & "<table width='95%' border='0' cellspacing='0' cellpadding='0' align='center' style='font-family:Arial, Helvetica, sans-serif;font-size:12px;'>"
strBody = strBody & "  <tr>    <td width='100%' >"%>
<!--#include File = "ApplicantsCopy\applicantscopy.asp" --> 
<% strBody = strBody & "</td>  </tr>  <tr>    <td> "%>
<!--#include File = "ApplicantsCopy\Header.asp" --> 
<% strBody = strBody & "<br /></td>  </tr>  <tr>    <td> "%>
<!--#include File = "ApplicantsCopy\UserId.asp" --> 
<% strBody = strBody & " <br /></td>   </tr>   <tr>     <td>" %> 
<!--#include File = "ApplicantsCopy\PhotoAndPersonalinfo.asp" -->
<% strBody = strBody & " <br /></td>   </tr>   <tr>     <td>" %> 
<!--#include File = "ApplicantsCopy\Quota.asp" -->
<%strBody = strBody & " <br /></td>   </tr>   <tr><td> "%> 
<!--#include File = "ApplicantsCopy\Address.asp" -->
<%strBody = strBody & " <br /></td>   </tr> <tr> <td> "%>
<!--#include File = "ApplicantsCopy\Academic.asp" -->
<%strBody = strBody & " <br /></td>   </tr> "%> 
<%IF strComputerSkill <> "" Then %>
<% strBody = strBody & "  <tr>   <td> "%> 
<!--#include File = "ApplicantsCopy\ComputerSkills.asp" --> 
<% strBody = strBody & "<br /></td>   </tr> " 
 End If%>
 
 <%
 IF strExp <> "" Then   
  strBody = strBody & "<br />   <tr>     <td>" %> 
  <!--#include File = "ApplicantsCopy\Experience.asp" -->
  <%strBody = strBody & "</td>   </tr> "
  End If
  
strBody = strBody & "<tr><td>" %>

<!--#include File = "ApplicantsCopy\Declaration.asp" -->
<% strBody = strBody & "</td>   </tr>   <tr>     <td> " %>  

<!--#include File = "ApplicantsCopy\Instructions.asp" -->
<%strBody = strBody & "</td> </tr> </table>" 

	'Server_FOR_PDF_DOC_IS_NOW = "ers.bdjobs.com/applications/pdfbuilder" 
	'Server_FOR_PDF_DOC_IS_NOW = "ers2.bdjobs.com/PDFBulider/" 
	strBody = strBody & "" 	
 
	'Response.Write "<input type=""hidden"" id=""MainCV"" value="""&strBody&"""  > "
    'Response.Write "<br>"&strBody
%>


<form id="form2" name="form2" method="post" action="http://ers2.bdjobs.com/PDFBulider/applicants_copy.php"> 

 
<input type="hidden" name="pdf_NAME" id="pdf_NAME" value="<%=strSystemName%>_Applicants_Copy_App_ID_<%=Ref_No%>"> 

<input type="hidden" name="User_ID" id="User_ID" value="<%=User_ID%>">  

<input type="hidden" name="Ref_No" id="Ref_No" value="<%=Ref_No%>">  



<input type="hidden" name="imgSrc" id="imgSrc" value="<%=imgSrc%>"> 

<input type="hidden" name="Post_Name" id="Post_Name" value="<%=Post_Name%>"> 

<input type="hidden" name="ApplicantsName" id="ApplicantsName" value="<%=ApplicantsName%>"> 


<input type="hidden" name="FathersName" id="FathersName" value="<%=FathersName%>"> 


<input type="hidden" name="MothersName" id="MothersName" value="<%=MothersName%>"> 


<input type="hidden" name="DateofBirth" id="DateofBirth" value="<%=DateofBirth%>"> 


<input type="hidden" name="MaritalStatus" id="MaritalStatus" value="<%=MaritalStatus%>"> 



<input type="hidden" name="ContactMobile" id="ContactMobile" value="<%=ContactMobile%>"> 

<input type="hidden" name="EMail" id="EMail" value="<%=EMail%>">

<input type="hidden" name="Gender" id="Gender" value="<%=Gender%>">

<input type="hidden" name="Religion" id="Religion" value="<%=Religion%>">

<input type="hidden" name="FreedomFighterStatus" id="FreedomFighterStatus" value="<%=FreedomFighterStatus%>">

<input type="hidden" name="Orphan" id="Orphan" value="<%=Orphan%>">
<input type="hidden" name="AnsarVdp" id="AnsarVdp" value="<%=AnsarVdp%>">

<input type="hidden" name="Tribal" id="Tribal" value="<%=Tribal%>">

<input type="hidden" name="NationalID" id="NationalID" value="<%=NationalID%>">


<input type="hidden" name="PresentAddress" id="PresentAddress" value="<%=PresentAddress%>">

<input type="hidden" name="PhysicallyChallenged" id="PhysicallyChallenged" value="<%=PhysicallyChallenged%>">


<input type="hidden" name="HomeDistrict" id="HomeDistrict" value="<%=strHomeDistBDJ%>"> 

<input type="hidden" name="PermanentAddress" id="PermanentAddress" value="<%=PermanentAddress%>"> 



<input type="hidden" name="SSC_Examination" id="SSC_Examination" value="<%=SSC_Examination%>"> 


<input type="hidden" name="HSC_Examination" id="HSC_Examination" value="<%=HSC_Examination%>"> 

<input type="hidden" name="Graduation_Examination" id="Graduation_Examination" value="<%=Graduation_Examination%>"> 


<input type="hidden" name="PostGraduation_Examination" id="PostGraduation_Examination" value="<%=PostGraduation_Examination%>"> 



<input type="hidden" name="SSC_University" id="SSC_University" value="<%=SSC_University%>"> 


<input type="hidden" name="HSC_University" id="HSC_University" value="<%=HSC_University%>"> 


<input type="hidden" name="Graduation_University" id="Graduation_University" value="<%=Graduation_University%>"> 

<input type="hidden" name="PostGraduation_University" id="PostGraduation_University" value="<%=PostGraduation_University%>"> 




<input type="hidden" name="SSC_Subject" id="SSC_Subject" value="<%=SSC_Subject%>"> 
 
<input type="hidden" name="HSC_Subject" id="HSC_Subject" value="<%=HSC_Subject%>">  

<input type="hidden" name="Graduation_Subject" id="Graduation_Subject" value="<%=Graduation_Subject%>"> 

<input type="hidden" name="PostGraduation_Subject" id="PostGraduation_Subject" value="<%=PostGraduation_Subject%>">  



<input type="hidden" name="SSC_Year_of_passing" id="SSC_Year_of_passing" value="<%=SSC_Year_of_passing%>"> 
 
<input type="hidden" name="HSC_Year_of_passing" id="HSC_Year_of_passing" value="<%=HSC_Year_of_passing%>">  

<input type="hidden" name="Graduation_Year_of_passing" id="Graduation_Year_of_passing" value="<%=Graduation_Year_of_passing%>"> 

<input type="hidden" name="PostGraduation_Year_of_passing" id="PostGraduation_Year_of_passing" value="<%=PostGraduation_Year_of_passing%>">  




<input type="hidden" name="SSC_Division_Class" id="SSC_Division_Class" value="<%=SSC_Division_Class%>"> 
 
<input type="hidden" name="HSC_Division_Class" id="HSC_Division_Class" value="<%=HSC_Division_Class%>">  

<input type="hidden" name="Graduation_Division_Class" id="Graduation_Division_Class" value="<%=Graduation_Division_Class%>"> 

<input type="hidden" name="PostGraduation_Division_Class" id="PostGraduation_Division_Class" value="<%=PostGraduation_Division_Class%>">  




<input type="hidden" name="SSC_GPA_CGPA" id="SSC_GPA_CGPA" value="<%=SSC_GPA_CGPA%>"> 
 
<input type="hidden" name="HSC_GPA_CGPA" id="HSC_GPA_CGPA" value="<%=HSC_GPA_CGPA%>">  

<input type="hidden" name="Graduation_GPA_CGPA" id="Graduation_GPA_CGPA" value="<%=Graduation_GPA_CGPA%>"> 

<input type="hidden" name="PostGraduation_GPA_CGPA" id="PostGraduation_GPA_CGPA" value="<%=PostGraduation_GPA_CGPA%>">  





<input type="hidden" name="SSC_Out_of" id="SSC_Out_of" value="<%=SSC_Out_of%>"> 
 
<input type="hidden" name="HSC_Out_of" id="HSC_Out_of" value="<%=HSC_Out_of%>">  

<input type="hidden" name="Graduation_Out_of" id="Graduation_Out_of" value="<%=Graduation_Out_of%>"> 

<input type="hidden" name="PostGraduation_Out_of" id="PostGraduation_Out_of" value="<%=PostGraduation_Out_of%>">  





<input type="hidden" name="Experience_If_any" id="Experience_If_any" value="<%=Experience_If_any%>">  
<input type="hidden" name="ApplicantsSignature" id="ApplicantsSignature" value="<%=ApplicantsSignature%>">  
<input type="hidden" name="WHMDSOisyourID" id="WHMDSOisyourID" value="<%=WHMDSOisyourID%>">  
<input type="hidden" name="s2019YYYYMMDDhrsminsec" id="s2019YYYYMMDDhrsminsec" value="<%=s2019YYYYMMDDhrsminsec%>">  

</form>



 <script>
 document.getElementById("form2").submit() ; 
 </script>



<%	
Else  
%>
	<table border="0" cellspacing="0" cellpadding="0" align="center">
	<tr>
	<td width="16%"><font face="Geneva, Arial, Helvetica, sans-serif" color="#003366" size="5">Sorry!<br />
	  Either your session has been expired<br />Or, authentication failed.<br />Please <a href="?<%=Encode("Location=Modal&FormAction=Login")%>">click here</a> to login.</font></td>
	</tr>
	</table>
<%	
End If	
%>   