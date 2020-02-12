<%  bdjAcademicUB = ubound(arrData3, 2 ) 
    ValuePrint bdjAcademicUB , "bdjAcademicUB-2" 
 	ReDim bdjarrAcademicId(4)
	ReDim bdjarrDegreeName(4)
	ReDim bdjarrInstitute(4)
	ReDim bdjarrSubject(4)
	ReDim bdjarrPassingYear(4)
	ReDim bdjarrEducationId(4)
	ReDim bdjarrUniversity(4)
	ReDim bdjarrResult(4)
	ReDim bdjarrResultPoint(4)
	ReDim bdjarrUniversityType(4)
	ReDim bdjarrCGPAScale(4)
 
  IF bdjAcademicUB=0 Then 
	strAcademicId1 = "-1"
	strDegreeName1 = "S" 
	strInstitute1 = ""
	strPassingYear1 = "S"
	strEducationId1 = "-1" 
	strUniversity1 = ""
	strResult1 = "-1"
	strResultPoint1 = ""
	strUniversityType1 = ""
	strCGPAScale1 = "-1"
	strEduLevel1 = "-1" 
	strSubject1 = "S"
	
	strAcademicId2 = "-1"
	strDegreeName2 = "S" 
	strInstitute2 = ""
	strPassingYear2 = "S"
	strEducationId2 = "-1" 
	strUniversity2 = ""
	strResult2 = "-1"
	strResultPoint2 = ""
	strUniversityType2 = ""
	strCGPAScale2 = "-1"
	strEduLevel2 = "-1" 
	strSubject2 = "S"	
	
	strAcademicId3 = "-1"
	strDegreeName3 = "S" 
	strInstitute3 = ""
	strPassingYear3 = "S"
	strEducationId3 = "-1" 
	strUniversity3 = ""
	strResult3 = "-1"
	strResultPoint3 = ""
	strUniversityType3 = ""
	strCGPAScale3 = "-1"
	strEduLevel3 = "-1" 
	strSubject3 = "S"


	strAcademicId4 = "-1"
	strDegreeName4 = "S" 
	strInstitute4 = ""
	strPassingYear4 = "S"
	strEducationId4 = "-1" 
	strUniversity4 = ""
	strResult4 = "-1"
	strResultPoint4 = ""
	strUniversityType4 = ""
	strCGPAScale4 = "-1"
	strEduLevel4 = "-1" 
	strSubject4 = "S"
	
  Else
	 
	 For bdj = 1 To bdjAcademicUB  

      bdjstrEduLevel = arrData3(0, bdj)
	  
	  ValuePrint bdjstrEduLevel , "bdjstrEduLevel-bjub4.asp"
	    If bdjstrEduLevel = "1" Then 
	        strAcademicId1 = -1
			strDegreeName1 = arrData3(1, bdj)

			strInstitute1 = arrData3(3, bdj)
			strSubject1 = arrData3(4, bdj)
			strPassingYear1 = arrData3(2, bdj)
			strUniversity1 = ""
			strResult1 = arrData3(6, bdj)
			strResultPoint1 = arrData3(7, bdj)
			strUniversityType1 = arrData3(5, bdj)
			If strResultPoint1 <> "" Then 
			  If strResultPoint1 <= 5 Then 
				strCGPAScale1 = "5"  ' 000
			  Else
				strCGPAScale1 = "100"
			  End IF 	
			Else
			  strCGPAScale1 = "100" 
			End IF 
			
			strEducationId1 = "1"	
			strEduLevel1 = arrData3(0, bdj) 
 
 	    ElseIf bdjstrEduLevel = "2" Then 
			strAcademicId2 = -1
			strDegreeName2 = arrData3(1, bdj)

			strInstitute2 = arrData3(3, bdj)
			strSubject2 = arrData3(4, bdj)
			strPassingYear2 = arrData3(2, bdj)
			strUniversity2 = ""
			strResult2 = arrData3(6, bdj)
			strResultPoint2 = arrData3(7, bdj)
			strUniversityType2 = arrData3(5, bdj)
			If strResultPoint2 <> "" Then 
			  If strResultPoint2 <= 5 Then 
				strCGPAScale2 = "5"  ' 000
			  Else
				strCGPAScale2 = "100"
			  End IF 	
			Else
			  strCGPAScale2 = "100" 
			End IF 
			
			strEducationId2 = "2"	
			strEduLevel2 = arrData3(0, bdj) 
 

        ElseIf bdjstrEduLevel = "4" Then 
		 ValuePrint bdjstrEduLevel , "GraduationForOneRow"
		 'CALL GraduationForOneRow
			
			strAcademicId3 = -1
			strDegreeName3 = arrData3(1, bdj)

			strInstitute3 = arrData3(3, bdj)
			strSubject3 = arrData3(4, bdj)
			strPassingYear3 = arrData3(2, bdj)
			strUniversity3 = ""
			strResult3 = arrData3(6, bdj)
			strResultPoint3 = arrData3(7, bdj)
			strUniversityType3 = arrData3(5, bdj)
			If strResultPoint3 <> "" Then 
			  If strResultPoint3 < 5 Then 
				strCGPAScale3 = "4"  ' 000
			  Else
				strCGPAScale3 = "100"
			  End IF 	
			Else
			  strCGPAScale3 = "100" 
			End IF 
			
			strEducationId3 = "3"	
			strEduLevel3 = 3
		
        ElseIf bdjstrEduLevel = "5" Then 
			strAcademicId4 = -1
			strDegreeName4 = arrData3(1, bdj)

			strInstitute4 = arrData3(3, bdj)
			strSubject4 = arrData3(4, bdj)
			strPassingYear4 = arrData3(2, bdj)
			strUniversity4 = ""
			strResult4 = arrData3(6, bdj)
			strResultPoint4 = arrData3(7, bdj)
			strUniversityType4 = arrData3(5, bdj)
			If strResultPoint4 <> "" Then 
			  If strResultPoint4 < 5 Then 
				strCGPAScale4 = "4"  ' 000
			  Else
				strCGPAScale4 = "100"
			  End IF 	
			Else
			  strCGPAScale4 = "100" 
			End IF 
			
			strEducationId4 = "4"	
			strEduLevel4 = 4
 
		End IF 
      Next 
 
   End If 
%>

<!--#include File = 'bdjContentManagement.asp'-->

<%
	ValuePrint strAcademicId1, "bdjarrAcademicId1"
	ValuePrint strDegreeName1, "bdjarrDegreeName1"
	ValuePrint strInstitute1,"bdjarrInstitute1"
	ValuePrint strPassingYear1,"bdjarrPassingYear1"
	ValuePrint strEducationId1, "bdjarrEducationId1"
	ValuePrint strUniversity1, " bdjarrUniversity1"
	ValuePrint strResult1, "bdjarrResult1"
	ValuePrint strResultPoint1, "bdjarrResultPoint1"
	ValuePrint strUniversityType1, "bdjarrUniversityType1"
	ValuePrint strCGPAScale1,"bdjarrCGPAScale1"
	ValuePrint strSubject1,"bdjstrSubject1"
	
	ValuePrint strAcademicId2, "bdjarrAcademicId1"
	ValuePrint strDegreeName2, "bdjarrDegreeName1"
	ValuePrint strInstitute2,"bdjarrInstitute2"
	ValuePrint strPassingYear2,"bdjarrPassingYear2"
	ValuePrint strEducationId2, "bdjarrEducationId2"
	ValuePrint strUniversity2, " bdjarrUniversity2"
	ValuePrint strResult2, "bdjarrResult2"
	ValuePrint strResultPoint2, "bdjarrResultPoint2"
	ValuePrint strUniversityType2, "bdjarrUniversityType2"
	ValuePrint strCGPAScale2,"bdjarrCGPAScale2"
	ValuePrint strSubject2,"bdjstrSubject2"
		
	ValuePrint strAcademicId3, "bdjarrAcademicId3"
	ValuePrint strDegreeName3, "bdjarrDegreeName3"
	ValuePrint strInstitute3,"bdjarrInstitute3"
	ValuePrint strPassingYear3,"bdjarrPassingYear3"
	ValuePrint strEducationId3, "bdjarrEducationId3"
	ValuePrint strUniversity3, " bdjarrUniversity3"
	ValuePrint strResult3, "bdjarrResult3"
	ValuePrint strResultPoint3, "bdjarrResultPoint3"
	ValuePrint strUniversityType3, "bdjarrUniversityType3"
	ValuePrint strCGPAScale3,"bdjarrCGPAScale3"
	ValuePrint strSubject3,"bdjstrSubject3"
		
	ValuePrint strAcademicId4, "bdjarrAcademicId4"
	ValuePrint strDegreeName4, "bdjarrDegreeName4"
	ValuePrint strInstitute4,"bdjarrInstitute4"
	ValuePrint strPassingYear4,"bdjarrPassingYear4"
	ValuePrint strEducationId4, "bdjarrEducationId4"
	ValuePrint strUniversity4, " bdjarrUniversity4"
	ValuePrint strResult4, "bdjarrResult4"
	ValuePrint strResultPoint4, "bdjarrResultPoint4"
	ValuePrint strUniversityType4, "bdjarrUniversityType4"
	ValuePrint strCGPAScale4,"bdjarrCGPAScale4"
	ValuePrint strSubject4,"bdjstrSubject4"
%> 