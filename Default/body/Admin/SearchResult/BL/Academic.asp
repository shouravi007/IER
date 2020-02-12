<%
'********************academic new start********************

'For k = 1 to 4

SQLWhere  = ""
'IsWhere = TRUE 

'For k = 1 to 4
If intEducationLevel(1) <> "" Or intEducationLevel(2) <> "" Or intEducationLevel(3) <> "" OR intEducationLevel(4) <> "" or intEducationLevel(5) <> "" Then		
	'RESPONSE.Write("hello"&intEducationLevel(1))	
	If strDegreeName(1) <> "S" Or strDegreeName(2) <> "S" Or strDegreeName(3) <> "S" OR strDegreeName(4) <> "S"  OR strDegreeName(5) <> "S" Or strInstituteName(1) <> "" Or strInstituteName(2) <> "" Or strInstituteName(3) <> "" Or strInstituteName(4) <> "" Or strExtraInstitute(3) <> "" Or strExtraInstitute(4) Or strExtraInstitute(5) <> "" Or intPassingYear(1) <> "" Or intPassingYear(2) <> "" Or intPassingYear(3) <> "" Or intPassingYear(4) <> ""  Or intPassingYear(5) <> "" Or intResult(1) <> "S" Or intResult(2) <> "S" Or intResult(3) <> "S" Or intResult(4) <> "S" Or intResult(5) <> "S"  Or intResult_(1) <> "S" Or intResult_(2) <> "S" Or intResult_(3) <> "S" Or intResult_(4) <> "S"  Or intResult_(5) <> "S" Or strMajorSubject(1) <> "S" Or strMajorSubject(2) <> "S" Or strMajorSubject(3) <> "S" Or strMajorSubject(4) <> "S" Or strMajorSubject(5) <> "S" Or strPercentFrom(1) <> "S" Or strPercentFrom(2) <> "S" Or strPercentFrom(3) <> "S" Or strPercentFrom(4) <> "S" Or strPercentFrom(5) <> "S" Or strPercentTo(1) <> "S" Or strPercentTo(2) <> "S" Or strPercentTo(3) <> "S" Or strPercentTo(4) <> "S" Or strPercentTo(5) <> "S" Or strPercentFrom_(1) <> "S" Or strPercentFrom_(2) <> "S" Or strPercentFrom_(3) <> "S" Or strPercentFrom_(4) <> "S" Or strPercentFrom_(5) <> "S" Or strPercentTo_(1) <> "S" Or strPercentTo_(2) <> "S" Or strPercentTo_(3) <> "S" Or strPercentTo_(4) <> "S" Or strPercentTo_(5) <> "S" or strCampus(1) <> "" Then
			
			strBrach =  strBrach & "("		
			strJoin = strJoin & " LEFT JOIN ACADEMIC E ON P.PERSONALID = E.PERSONALID)"
			lastBrac = ")"						
%>
     <!--#include File = 'Academic\EduLevel1.asp' -->
     <!--#include File = 'Academic\EduLevel2.asp' -->
     <!--#include File = 'Academic\EduLevel3.asp' -->
     <!--#include File = 'Academic\EduLevel4.asp' -->
     <!--#include File = 'Academic\EduLevel5.asp' -->
     
<%

	End If	' *********** endIf strDegreeName(1) <> "S" Or strDegreeName(2) <> "S".........................
End If ' ***************************endIf intEducationLevel(1) <> "" Or intEducationLevel(2) <> "".......................

'******************* academic new end**************************************************************************************

on error resume next 
ValuePrint SQLWhere, "SQLWhere"
if SQLWhere <> "" then 
	sqlAcademic =  SQLWhere
	'ValuePrint sqlAcademic, "sqlAcademic"
end if 

if err.number <> 0 then 
 err.clear 
end if 
'Response.Write("<br>academic str :"&str) 
%>
