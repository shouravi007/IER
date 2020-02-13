<%
 sql = ""
 sql = sql & " Exec [USP_FORM_SUBMIT]  "
 sql = sql & " '" & strFirstName & "'," ' @strFirstName varchar(40)
 sql = sql & " '" & strLastName & "', " ' @strLastName varchar(40)
 sql = sql & "  '" & strFatherName & "', " '@strFatherName varchar(70)
 sql = sql & " '" & strMotherName & "', " ' @strMotherName varchar(70)
 sql = sql & " '" & strFathersProfession & "',"'@strFathersProfession varchar(100)
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""
 sql = sql & ""

			SQLInsertPersonal = "  '" & strMothersProfession & "', '" & dtmDateOfBirth & "', '" & strMeritalStatus & "', '" & strNationality & "', '" & strEmail & "', '" & strContactPhone & "', '" & strCellPhone & "', '" & intNationalId & "', '" & strBloodGroup & "', '" & strGender & "', '" & strHomeDistrict & "', '" & strHomeDistrict2 & "', '" & strThanaPrmDist & "', '" & strReligion & "', '" & strContactAddress & "', '" & strPermanentAddress & "', '" & strPassword & "', '" & now & "', " & IsDeclaration & ", '" & strReading & "', '" & strWriting & "', '" & strSpeaking & "', '" & strExperience & "', '"& strProfessionalQualification &"', '" & strAcademicDistinctions & "', '" &strExtraCurricularActivities  & "', '" & strComputerSkills & "', '" & strOtherDisclose & "',"&bdjID&","&socialID&","&BDJOBSPHOTO&",'"&bdjPHOTOURL&"', "&ersSignature&", ' "&signatureURL&"', " &strTestCV &", "&TrackNo&","&jobid&",'"&cert&"','"&strDegreeName1&"','"&strInstitute1&"','"&strAcademicDist1&"','"&strSubject1&"','"&strSubject21&"',"&strPassingYear1&","&strEducationId1&",'"&strUniversity1&"','"&strUniversityType1&"',"&strResult1&","&strResultPoint1&","&strCGPAScale1&","&strSubject_Others1&","&strSubject_Others21&",'"&strDegreeName2&"','"&strInstitute2&"','"&strAcademicDist2&"','"&strSubject2&"','"&strSubject22&"',"&strPassingYear2&","&strEducationId2&",'"&strUniversity2&"','"&strUniversityType2&"',"&strResult2&","&strResultPoint2&","&strCGPAScale2&","&strSubject_Others2&","&strSubject_Others22&",'"&strDegreeName3&"','"&strInstitute3&"','"&strAcademicDist3&"','"&strSubject3&"','"&strSubject23&"',"&strPassingYear3&","&strEducationId3&",'"&strUniversity3&"','"&strUniversityType3&"',"&strResult3&","&strResultPoint3&","&strCGPAScale3&","&strSubject_Others3&","&strSubject_Others23&",'"&strDegreeName4&"','"&strInstitute4&"','"&strAcademicDist4&"','"&strSubject4&"','"&strSubject24&"',"&strPassingYear4&","&strEducationId4&",'"&strUniversity4&"','"&strUniversityType4&"',"&strResult4&","&strResultPoint4&","&strCGPAScale4&","&strSubject_Others4&","&strSubject_Others24&",'"&strReferenceName1&"','"&strReferencePosition1&"','"&strReferenceAddress1&"','"&strReferencePhone1&"','"&strReferenceEmail1&"','"&strReferenceName2&"','"&strReferencePosition2&"','"&strReferenceAddress2&"','"&strReferencePhone2&"','"&strReferenceEmail2&"','"&strip&"','"&strApplyingAs&"','"&strTraining&"', '" &strSubject_O1&"',"&resultLevel_O1&",'"&strSubject_O2&"',"&resultLevel_O2&",'"&strSubject_O3&"',"&resultLevel_O3&",'"&strSubject_O4&"',"&resultLevel_O4&",'"&strSubject_O5&"',"&resultLevel_O5&",'"&strSubject_A1&"',"&resultLevel_A1&",'"&strSubject_A2&"',"&resultLevel_A2


%>