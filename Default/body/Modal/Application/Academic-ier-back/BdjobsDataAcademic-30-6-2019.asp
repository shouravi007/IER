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
	
  End IF 

%>	
<!--#include file = 'bdjUB1.asp'-->
<!--#include file = 'bdjUB2.asp'-->
<!--#include file = 'bdjUB3.asp'-->
<!--#include file = 'bdjUB4.asp'-->
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