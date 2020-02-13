<!--#include File = "ApplicantsCopy\RetrieveData.asp" -->

<%
if imgSrc = "" or isnull(imgSrc) or isnull(strSignature) or strSignature = false then 
 objERS.CloseConnection()
 Set objERS = Nothing 
 ShowValidateMsg("<h1>Sorry you can not upload your photograph/signature. please login for <a href='?"&Encode("Location=Modal&FormAction=Login")&"'>upload</ first</h1>")
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
    Response.Write "<br>"&strBody
%>


<form id="form2" name="form2" method="post" action="http://ers2.bdjobs.com/PDFBulider/applicants_copy.php?RollNo=<%=intRoll%>&track_no=<%=intTrakingNo%>&JobPosition=<%=position%>&system=<%=strSystemName%>"> 

 
<input type="hidden" name="NAME" id="NAME" value="<%=strSystemName%>_Admit_RollNo_<%=intRoll%>_JobReffNo_<%=intTrakingNo%>"> 

<input type="hidden" name="varTN" id="varTN" value="<%=intTrakingNo%>">  

<input type="hidden" name="varJobReffid" id="varJobReffid" value="<%=id%>">  


<input type="hidden" name="strName" id="strName" value="<%=strName%>"> 
<input type="hidden" name="strGenderName" id="strGenderName" value="<%=strGenderName%>"> 
 
<input type="hidden" name="intRoll" id="intRoll" value="<%=intRoll%>">  
<input type="hidden" name="strEmail" id="strEmail" value="<%=strEmail%>">  
<input type="hidden" name="strMobile" id="strMobile" value="<%=strMobile%>">  
<input type="hidden" name="strContactAddress" id="strContactAddress" value="<%=strContactAddress%>">  
<input type="hidden" name="IsPhoto" id="IsPhoto" value="<%=IsPhoto%>">  
<input type="hidden" name="strFahterName" id="strFahterName" value="<%=strFahterName%>">  
<input type="hidden" name="strMotherName" id="strMotherName" value="<%=strMotherName%>">  
<input type="hidden" name="varImg" id="varImg" value="<%=varImg%>">  

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