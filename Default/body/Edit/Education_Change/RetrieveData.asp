<%
hidID = Request.Form("hidID") 
strAction = Trim(Request.Form("Action"))

SQLAcademic = "SELECT Personalid, EducationID, DegreeName, PassingYear, [INSTITUTE], [RESULT], [SUBJECT], University, [UniversityType], [ResultPoint], cgpaScale, [id], [PassingYear], [subject_others], [subject2], [subject_others2], [AcademicDistrict] FROM Academic WHERE Personalid=" & TrackNo & " and [id] = "& hidID
'Response.Write(SQLAcademic)
'Response.End()	
arr_Academic = objERS.RetrieveData(SQLAcademic, errMsg)
ErrorMessage "454", errMsg, 0 

If strAction = "Add" Then
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
End If

input_form = "input-form" 
form_details = " action='?"&Encode("Location=Edit&FormAction=Education_Update")&"'  id='frmSubmit'  name='frmSubmit'  method='post'   "
row = "row"
column_12_grid = "column_12_grid"
column_no_3_content = "column_no_3_content"
req = "required"
frmcon = "form-control input-sm"
noreq = "required-none" 

intUBEdu = UBound(arr_Academic, 2) 

IF strAction = "Edit" Then
    
	If arr_Academic(0, 0) <> "Nothing" Then
    
		' Variable Initialization.
		intEduID = arr_Academic(11, 0)
		ResultPublishYear = arr_Academic(12, 0)
		bytEduLevel = arr_Academic(1, 0)
		strEducation = arr_Academic(2, 0)
		strEducation = GiveReplacedString(strEducation)
	
		If strEducation = "O Level" or strEducation = "A Level" Then
		
			sql_O_A_Level = "SELECT [ID], [SUBJECT], [GRADE_POINT], [DEGREE_LEVEL] FROM [level_Table] where [personalid] ="& TrackNo & " and [DEGREE_LEVEL]='"& strEducation &"'"
			
			'response.Write(sql_O_A_Level)
			
			arr_sql_O_A_Level = objERS.RetrieveData(sql_O_A_Level, errMsg)
			ErrorMessage "56", errMsg, 0
		
			If arr_sql_O_A_Level(0,0) <> "Nothing" Then
				
				levelUB = ubound(arr_sql_O_A_Level,2)
				
				If strEducation = "O Level" Then
				
					IF (levelUB <> 0 and  levelUB <> 1) or levelUB = 4 THEN		
						
						hidLevelId_O1 = arr_sql_O_A_Level(0,0)
						strSubject_O1= arr_sql_O_A_Level(1,0)
						resultLevel_O1 = arr_sql_O_A_Level(2,0)	
						
						hidLevelId_O2 = arr_sql_O_A_Level(0,1)
						strSubject_O2= arr_sql_O_A_Level(1,1)
						resultLevel_O2 = arr_sql_O_A_Level(2,1)	
						
						hidLevelId_O3 = arr_sql_O_A_Level(0,2)
						strSubject_O3= arr_sql_O_A_Level(1,2)
						resultLevel_O3 = arr_sql_O_A_Level(2,2)	
						
						hidLevelId_O4 = arr_sql_O_A_Level(0,3)
						strSubject_O4= arr_sql_O_A_Level(1,3)
						resultLevel_O4 = arr_sql_O_A_Level(2,3)	
						
						hidLevelId_O5 = arr_sql_O_A_Level(0,4)
						strSubject_O5= arr_sql_O_A_Level(1,4)	
						resultLevel_O5 = arr_sql_O_A_Level(2,4)	
					Else
						hidLevelId_O1 = "-1"
						hidLevelId_O2 = "-1"
						hidLevelId_O3 = "-1"
						hidLevelId_O4 = "-1"
						hidLevelId_O5 = "-1"
												
					End If
				
				ElseIf strEducation = "A Level" Then 
					
					IF levelUB = 1 or levelUB > 3 THEN
						
						hidLevelId_A1 = arr_sql_O_A_Level(0,0)
						strSubject_A1 = arr_sql_O_A_Level(1,0)
						resultLevel_A1 = arr_sql_O_A_Level(2,0)	
						
						hidLevelId_A2 = arr_sql_O_A_Level(0,1)
						strSubject_A2 = arr_sql_O_A_Level(1,1)	
						resultLevel_A2 = arr_sql_O_A_Level(2,1)		
	
					Else
						hidLevelId_A1 = "-1"
						hidLevelId_A2 = "-1"
	
					End If
					
				End If
			
			Else		
				' not o level and a level
				
				hidLevelId_O1 = "-1"
				hidLevelId_O2 = "-1"
				hidLevelId_O3 = "-1"
				hidLevelId_O4 = "-1"
				hidLevelId_O5 = "-1"
				hidLevelId_A1 = "-1"
				hidLevelId_A2 = "-1"		
			End If
		
		End If
	
		intPassYear = arr_Academic(3, 0)
		
		strInstitute = arr_Academic(4, 0)
		strAcademicDist = arr_Academic(16, 0)
		'response.Write(strAcademicDist)
		strResult = arr_Academic(5, 0)
		strSubject = arr_Academic(6, 0)
		'response.Write("main::"&strSubject)
		strSubject2 = arr_Academic(14,0)
		strUniversity = arr_Academic(7, 0)
		strUniversity = GiveReplacedString(strUniversity)
		strForeign = arr_Academic(8, 0)
		strPercent = arr_Academic(9, 0)
		strGrade = arr_Academic(10, 0)
		
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
		
		subject_others = arr_Academic(13, 0)
		'response.Write("ret"&subject_others)
		subject_others2 = arr_Academic(15, 0)
		
		If strForeign = "F" Then
			strUniversityForeign = split(strUniversity,"@***@")
			strUniversityOthers = strUniversityForeign(0)
			strCountry = strUniversityForeign(1)
		elseif strForeign = "O" Then
			strUniversityOthers = strUniversity
		else
			'RESPONSE.Write("UNIIIIIIIIIIIIIIIIIII"&strUniversityName)
		END IF
	
		strCGPAScale =  arr_Academic(10, 0)
	
		'if subject_others = true or subject_others = 1 or subject_others = "1" then
		 'strOthers = strSubject
		'end if
	 
    End If 	

Else ' FORM BACK 
   
    intEduID = Request.Form("hidID")

	bytEduLevel = Request.Form("ddlEducationLevel1")	
	
    strInstitute = Request.Form("txtInstitute1")
	
	strAcademicDist = Request.Form("ddlAcademicDist1")	
	'response.Write("form back"&strAcademicDist)
	strEducation = Trim(Request.Form("ddlDegreeName1")) 

	If strEducation = "O Level" Then
		
		hidLevelId_O1 = Request.Form("hidAuto1")
		hidLevelId_O2 = Request.Form("hidAuto2")
		hidLevelId_O3 = Request.Form("hidAuto3")		
		hidLevelId_O4 = Request.Form("hidAuto4")
		hidLevelId_O5 = Request.Form("hidAuto5")
				
'		If hidLevelId_O5 = "" Then
'			hidLevelId_O5 = "-1"
'		End If			
		
		resultLevel_O1 = Trim(Request.Form("txtLevel_O1"))
		resultLevel_O2 = Trim(Request.Form("txtLevel_O2"))
		resultLevel_O3 = Trim(Request.Form("txtLevel_O3"))
		resultLevel_O4 = Trim(Request.Form("txtLevel_O4"))
		resultLevel_O5 = Trim(Request.Form("txtLevel_O5"))
		
		strSubject_O1 = Trim(Request.Form("txtSubO1"))		
		strSubject_O2 = Trim(Request.Form("txtSubO2"))		
		strSubject_O3 = Trim(Request.Form("txtSubO3"))		
		strSubject_O4 = Trim(Request.Form("txtSubO4"))
		strSubject_O5 = Trim(Request.Form("txtSubO5"))
	Else
		resultLevel_O1 = 0
		resultLevel_O2 = 0
		resultLevel_O3 = 0
		resultLevel_O4 = 0
		resultLevel_O5 = 0
		
		strSubject_O1 = ""	
		strSubject_O2 = ""
		strSubject_O3 = ""
		strSubject_O4 = ""
		strSubject_O5 = ""
	
	End If

	If strEducation = "A Level" Then
		
		hidLevelId_A1 = Request.Form("hidAuto_A1")
		hidLevelId_A2 = Request.Form("hidAuto_A2")
				
		resultLevel_A1 = Trim(Request.Form("txtLevel_A1"))
		resultLevel_A2 = Trim(Request.Form("txtLevel_A2"))		
		
		strSubject_A1 = Trim(Request.Form("txtSubA1"))
		strSubject_A2 = Trim(Request.Form("txtSubA2"))
	Else
		resultLevel_A1 = 0
		resultLevel_A2 = 0
		
		strSubject_A1 = ""
		strSubject_A2 = ""
	
	End If
	
	intPassYear = Trim(Request.Form("ddlPassingYear1"))
		
	strUniversity = Trim(Request.Form("ddlUniversity1")) 
	
	strUniversityOthers = Trim(Request.Form("txtUniversity1"))
	
	strCountry = Trim(Request.Form("ddlCountry1"))
	
	strForeign = Trim(Request.Form("txtUniversityType1"))
	
	strResult = Trim(Request.Form("ddlResult1"))
	
	strPercent = Trim(Request.Form("txtResultPoint1"))
	
	strCGPAScale = Trim(Request.Form("ddlCGPAScale1"))
	
	strSubject = Trim(Request.Form("ddlSubject1"))
	
	strOthers = Trim(Request.Form("txtOthers1"))
	
	subject_others = Trim(Request.Form("subject_others1"))
	
	strSubject2 = Trim(Request.Form("ddlSubject21"))
	
	strOthers2 = Trim(Request.Form("txtOthers2"))
	
	subject_others2 = Trim(Request.Form("subject_others2"))
	
End If

if subject_others = "" or isnull(subject_others) or isempty(subject_others) then
 subject_others = 0 
end if 

if subject_others2 = "" or isnull(subject_others2) or isempty(subject_others2) then
 subject_others2 = 0 
end if  

if strResult = "" or isnull(strResult) or isempty(strResult) then
 strResult = 16 
end if 



%>          

