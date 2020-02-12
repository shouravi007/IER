<!--#include file = 'Retrieve\VariableDeclare.asp' -->
<%
on error resume next 

strUserName=Request.form("txtUserName2")
If strUserName = "" Then 
strUserName=Request.form("txtUserName4")
End IF 
strPassword=Request.form("txtPassword2")
If strPassword = "" Then 
strPassword = Request.form("txtPassword4")
End IF 
intErsId = Request.form("ersId2")
If intErsId = "" Then 
intErsId = Request.form("ersId4")
End IF 

'Response.Write("IsBlank:"&IsBlank)
socialid = trim(request.Form("socialid"))
If socialid = "" Then 
socialid=Request.form("socialid2")
End IF 
socialemail = trim(request.Form("socialemail"))
If socialemail = "" Then 
socialemail=Request.form("socialemail2")
End IF 
se = trim(request.Form("social_se"))
If se = "" Then 
se=Request.form("social_se2")
End IF 
strMobileForImport = Trim(Request.Form("txtContactMobile"))
If strMobileForImport = "" Then 
strMobileForImport=Request.form("txtContactMobile2")
End IF 


if strUserName <> "" and strPassword <>"" and intErsId <> "" or  socialid <> "" or strMobileForImport <> ""  then
	%> 
		<script>
		  $('#myModal_popup').modal('hide'); 
       </script>

     <%If IsBlank= "" or isnull(IsBlank) or isempty(IsBlank) Then%>
      <!--#include file = 'Retrieve\RetrieveDataFromBdjobs.asp'-->
     <%End If%>
 <%
Else 
  If IsBlank = "" or isempty(IsBlank) or isnull(IsBlank) Then
	' do nothing  
	AcademicUB=0
	ReDim arrAcademicId(6)
	ReDim arrDegreeName(6)
	ReDim arrInstitute(6)
	ReDim arrAcademicDist(6)
	ReDim arrSubject(6)
	ReDim arrSubject2(6)

	ReDim arrPassingYear(6)
	ReDim arrEducationId(6)
	ReDim arrUniversity(6)
	ReDim arrResult(6)
	ReDim arrResultPoint(6)
	ReDim arrUniversityType(6)
	
	For i=1 To 5
	arrAcademicId(i)=""
	arrDegreeName(i)=""
	arrInstitute(i)=""
	arrAcademicDist(i) = ""
	arrSubject(i)=""
	arrSubject2(i)=""
	arrPassingYear(i)=""
	arrEducationId(i)=""
	arrUniversity(i)=""
	arrResult(i)=""
	arrResultPoint(i) = ""
	arrUniversityType(i) = ""
	arrCGPAScale(i) = ""
	Next	
  Else 
   %>
      <!--#include File = 'Retrieve\blankDataFromBack.asp' -->
   <%
   
  End If 
End If
%>