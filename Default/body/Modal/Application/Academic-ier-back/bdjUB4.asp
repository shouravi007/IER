<%   If bdjAcademicUB >=4 Then 

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
	 
	 For bdj = 1 To bdjAcademicUB  

      bdjstrEduLevel = arrData3(0, bdj)
	  
	  ValuePrint bdjstrEduLevel , "bdjstrEduLevel-bjub4.asp"
	    If bdjstrEduLevel = "1" Then 
	        strAcademicId1 = -1
			strDegreeName1 = arrData3(1, 1)

			strInstitute1 = arrData3(3, 1)
			strSubject1 = arrData3(4, 1)
			strPassingYear1 = arrData3(2, 1)
			strUniversity1 = ""
			strResult1 = arrData3(6, 1)
			strResultPoint1 = arrData3(7, 1)
			strUniversityType1 = arrData3(5, 1)
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
			strEduLevel1 = arrData3(0, 1) 
 
 	    ElseIf bdjstrEduLevel = "2" Then 
			strAcademicId2 = -1
			strDegreeName2 = arrData3(1, 2)

			strInstitute2 = arrData3(3, 2)
			strSubject2 = arrData3(4, 2)
			strPassingYear2 = arrData3(2, 2)
			strUniversity2 = ""
			strResult2 = arrData3(6, 2)
			strResultPoint2 = arrData3(7, 2)
			strUniversityType2 = arrData3(5, 2)
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
			strEduLevel2 = arrData3(0, 2) 
 

        ElseIf bdjstrEduLevel = "4" Then 
		 ValuePrint bdjstrEduLevel , "GraduationForOneRow"
		 'CALL GraduationForOneRow
			
			strAcademicId3 = -1
			strDegreeName3 = arrData3(1, 3)

			strInstitute3 = arrData3(3, 3)
			strSubject3 = arrData3(4, 3)
			strPassingYear3 = arrData3(2, 3)
			strUniversity3 = ""
			strResult3 = arrData3(6, 3)
			strResultPoint3 = arrData3(7, 3)
			strUniversityType3 = arrData3(5, 3)
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
			strEduLevel3 = arrData3(0, 3) 
		
        ElseIf bdjstrEduLevel = "5" Then 
			strAcademicId4 = -1
			strDegreeName4 = arrData3(1, 4)

			strInstitute4 = arrData3(3, 4)
			strSubject4 = arrData3(4, 4)
			strPassingYear4 = arrData3(2, 4)
			strUniversity4 = ""
			strResult4 = arrData3(6, 4)
			strResultPoint4 = arrData3(7, 4)
			strUniversityType4 = arrData3(5, 4)
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
			strEduLevel4 = arrData3(0, 4) 
 
		End IF 
      Next 
 
   End If 
%>