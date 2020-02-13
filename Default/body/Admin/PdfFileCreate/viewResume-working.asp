<%

on error resume next 

If Request.QueryString("ID")<>"" Then
	Dim qID(1)'Redim qId(1)
	qID(0)=Request.QueryString("ID")
ElseIf Request.Form("ID")<>"" Then
	ReDim qID(1)'Redim qId(1)
	qID(0)=Request.Form("ID")
Else
	ReDim qID(50)
	qID=Split(Request.Form("pID"),",")

	response.Write("query string value:"&qID(0)&"<BR>")
'	For a=0 To UBound(qID)
'		Response.Write("<BR>Q ID: "&qID(a))
'	NExt
End If
'Response.Write("Array: "&Ubound(qID)&"<BR>")
'response.End()
For i=0 To Ubound(qID)
	'Response.Write("<BR>ID: "&qID(i))
	strResume=""
	If qID(i)<>"" And IsEmpty(qID(i))=False And IsNull(qID(i))=False Then
	
	qPer="SELECT p.[id], p.FirstName + ' ' + p.LASTNAME as name, p.[FatherName], p.[MotherName], p.[DateOfBirth], p.[MaritalStatus], p.[Nationality], p.[Email], p.[ContactPhone], p.[CellPhone], p.[NationalId], p.[BloodGroup], p.[Gender], p.[HomeDistrict], p.[HomeDistrict2], p.[Religion], p.[ContactAddress], p.[PermanentAddress], p.[Photo], p.[Reading], p.[Writing], p.[Speaking], p.[Experience], p.[ProfessionalQualification], p.[AcademicDistinctions], p.[ExtraCurricularActivities], p.[ComputerSkills], p.[OtherDisclose], p.[BdjobsID], p.[BdjobsPhoto], p.[PhotoURL],  p.[FathersProfession], p.[MothersProfession], p.[ProfessionalCertification] FROM [Personal] p where p.id ="&qID(i)&" Order by p.Id"

	'RESPONSE.Write(qPer)

	lastID = Trim(qID(i))		'Request.QueryString("ID"))
	
	'response.Write(lastID&"<br>")
	
	arrPersonal = objERS.RetrieveData(qPer, strErr)
	ErrorMessage "71", errMsg, 0 

	If arrPersonal(0,0) <> "Nothing" Then
		    %>
           <!--#include File = 'Resume\Photo.asp' -->
            <%
			strHomeDistrict = arrPersonal(13,0) 
			strHomeDistrict2 = arrPersonal(14,0) 			
			%>
			
           <!--#include File = 'Resume\District.asp' -->
           <!--#include File = 'Resume\Personal.asp' -->
			<%

			
			strResume = strResume &  "<tr> <td align='left'>Correspondence Address</td><td>:</td><td>"&arrPersonal(16,0)&"</td>  </tr><tr> <td width='22%' align='right'><div align='left'>Permanent Address</div></td> <td width='1%'>:</td>  <td>"&arrPersonal(17,0)&"</td></tr><tr>  <td align='left'>Present District</td> <td>:</td> <td>"&dist2&"</td>  </tr><tr>  <td width='22%' align='right'><div align='left'>Home District</div></td><td width='1%'>:</td>  <td>"&dist&"</td>      </tr></table>"
		
%>
           <!--#include File = 'Resume\Academic.asp' -->
           <!--#include File = 'Resume\Others.asp' -->
           <!--#include File = 'Resume\Reference.asp' -->
           <!--#include File = 'Resume\CVmaking.asp' -->
    <%
			End If

	End If
Next

'End If
%>