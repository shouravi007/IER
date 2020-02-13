<%
	For intEduIndex = 1 To 1
		' Variable Initialization 4 Academic.
		bytEduLevel = Request.Form("ddlEducationLevel" & intEduIndex)
		
		strDegreeName = Request.Form("ddlDegreeName" & intEduIndex)
		
		If strDegreeName = "" Then 		
			strDegreeName = Request.Form("ddlDegreeName" & intEduIndex & "hidden")
		End IF
		'response.Write(strDegreeName)
		
		'strDegreeName = GiveReplacedString4DB(strDegreeName)
		intPassYear = Request.Form("ddlPassingYear" & intEduIndex) 
		
		'intResultDay = Trim(Request.Form("ddlResultDay" & intEduIndex))
'		intResultMonth = Trim(Request.Form("ddlResultMonth" & intEduIndex))
'		intResultYear = Trim(Request.Form("ddlResultYear" & intEduIndex))
'			
'		strResultPublishYear = intResultYear & "/" & intResultMonth & "/"& intResultDay	
		
		
		strUniversity = Request.Form("ddlUniversity" & intEduIndex) 
		
		strInstitute = Request.Form("txtInstitute" & intEduIndex)
		strAcademicDist = Request.Form("ddlAcademicDist" & intEduIndex) 
		
		
		If strDegreeName = "O Level" or strDegreeName = "A Level" Then
			strSubject = "NA"
		Else
			strSubject = Request.Form("ddlSubject" & intEduIndex)
		End If
				
		If strSubject = "" Then 
			strSubject = Request.Form("ddlSubject" & intEduIndex & "hidden")
		End IF 
		
		strSubject2 = Request.Form("ddlSubject2")
		
		If strSubject2 = "" Then 
			strSubject2 = Request.Form("ddlSubject2hidden")
		End IF
		 
		If strDegreeName = "O Level" or strDegreeName = "A Level" Then
			strResult = 0
		Else
			strResult = Trim(Request.Form("ddlResult"& intEduIndex))
		End If		
						
		If strDegreeName = "O Level" Then
					
			If IsNumeric(resultLevel_O1) and IsNumeric(resultLevel_O2) and IsNumeric(resultLevel_O3) and IsNumeric(resultLevel_O4) and IsNumeric(resultLevel_O5) Then
		
				strResultPoint_new_o = cint(resultLevel_O1) + cint(resultLevel_O2)  + cint(resultLevel_O3) + cint(resultLevel_O4) + cint(resultLevel_O5)
		
				strResultPoint_new_AVG = strResultPoint_new_o/5
				strResultPoint = strResultPoint_new_AVG
				strCGPAScale = 5
				'response.Write("O LEVEL"&strResultPoint)
			End If
				
		ElseIf strDegreeName = "A Level" Then
		
			If IsNumeric(resultLevel_A1) and IsNumeric(resultLevel_A2) Then					
				strResultPoint_new_a = cint(resultLevel_A1) + cint(resultLevel_A2)
				strResultPoint_a_AVG = strResultPoint_new_a/2 
				strResultPoint = strResultPoint_a_AVG	
				'response.Write("A LEVEL"&strResultPoint)
				strCGPAScale = 5		
			End If		
		
		Else
			strResultPoint = Request.Form("txtResultPoint" & intEduIndex)
			strCGPAScale = Trim(Request.Form("ddlCGPAScale" & intEduIndex))	
		End If
		
		
		strUniversityOthers = Trim(Request.Form("txtUniversity" & intEduIndex))
		strCountry = Trim(Request.Form("ddlCountry" & intEduIndex)) 
		
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
			
			If strResult = 15 or strResult = 14 Then
				strCGPAScale = 100
			End If
												
			If strUniversity = "Foreign" Then				 
				'strUniversity = strUniversityOthers & "@***@" & strCountry
				strForeign = "F"
			ElseIf strUniversity = "Others" Then	
				'strUniversity = strUniversityOthers		
				strForeign = "O"
			Else
				strForeign = "N"	
			End If			
			
			If strSubject = "Others" Then
				strOthers = Trim(Request.Form("txtOthers" & intEduIndex))
				'strSubject = strOthers 
	            subject_others = 1		
			Else
			    subject_others = 0
			End If		
		
			If strSubject2 = "Others" Then
				strOthers2 = Trim(Request.Form("txtOthers2"))
				'strSubject = strOthers 
	            subject_others2 = 1		
			Else
			    subject_others2 = 0
			End If		
						
%> 
<input name="ddlEducationLevel<%=intEduIndex%>" id="ddlEducationLevel<%=intEduIndex%>" type="hidden" value="<%=bytEduLevel%>" />
<input name="ddlDegreeName<%=intEduIndex%>" id="ddlDegreeName<%=intEduIndex%>" type="hidden" value="<%=strDegreeName%>" />
<input name="ddlPassingYear<%=intEduIndex%>" id="ddlPassingYear<%=intEduIndex%>" type="hidden" value="<%=intPassYear%>" />
<input name="txtInstitute<%=intEduIndex%>" id="txtInstitute<%=intEduIndex%>" type="hidden" value="<%=strInstitute%>" />
<input name="ddlAcademicDist<%=intEduIndex%>" id="ddlAcademicDist<%=intEduIndex%>" type="hidden" value="<%=strAcademicDist%>"/>

<!--<input name="ddlResultDay<%'=intEduIndex%>" id="ddlResultDay<%'=intEduIndex%>" type="hidden" value="<%'=intResultDay%>" />        
<input name="ddlResultMonth<%'=intEduIndex%>" id="ddlResultMonth<%'=intEduIndex%>" type="hidden" value="<%'=intResultMonth%>" />        
<input name="ddlResultYear<%'=intEduIndex%>" id="ddlResultYear<%'=intEduIndex%>" type="hidden" value="<%'=intResultYear%>" />-->

<input name="ddlUniversity<%=intEduIndex%>" id="ddlUniversity<%=intEduIndex%>" type="hidden" value="<%=strUniversity%>"/>
<input name="txtUniversityType<%=intEduIndex%>" id="txtUniversityType<%=intEduIndex%>" type="hidden" value="<%=strForeign%>"/>
<input name="txtUniversity<%=intEduIndex%>" id="txtUniversity<%=intEduIndex%>" type="hidden" value="<%=strUniversityOthers%>"/>
<input name="ddlCountry<%=intEduIndex%>" id="ddlCountry<%=intEduIndex%>" type="hidden" value="<%=strCountry%>"/>
<input name="ddlResult<%=intEduIndex%>" id="ddlResult<%=intEduIndex%>" type="hidden" value="<%=strResult%>"/>
<input name="txtResultPoint<%=intEduIndex%>" id="txtResultPoint<%=intEduIndex%>" type="hidden" value="<%=strResultPoint%>"/>
<input name="ddlCGPAScale<%=intEduIndex%>" id="ddlCGPAScale<%=intEduIndex%>" type="hidden" value="<%=strCGPAScale%>"/>

<input name="ddlSubject<%=intEduIndex%>" id="ddlSubject<%=intEduIndex%>" type="hidden" value="<%=strSubject%>"/>
<input name="ddlSubject2" id="ddlSubject2" type="hidden" value="<%'=strSubject2%>"/>

<input type="hidden" id="txtOthers<%=intEduIndex%>" name="txtOthers<%=intEduIndex%>" value="<%=strOthers%>" />  
<input type="hidden" id="txtOthers2" name="txtOthers2" value="<%'=strOthers2%>" />
 
<input name="subject_others" id="subject_others" type="hidden" value="<%=subject_others%>"/>
<input name="subject_others2" id="subject_others2" type="hidden" value="<%'=subject_others2%>"/>

<%		
	Next	
%>  
  

