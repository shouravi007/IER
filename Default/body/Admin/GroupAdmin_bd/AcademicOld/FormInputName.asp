<%
 Select Case diffedulevel
   Case 1
     strdisplayEduLevel  =  "Secondary"
	 strCondtionDegree =  "1"
	 strConditionSubject = "1"
	 strDegreeForId =  "stxtDegreeName"
	 strInstituteForId = "sINSTITUTE"
	 strSubjectForId = "sSUBJECT"
	 strHight = 150
	 strColor = "#DDEEFF"
	 strDisplay = "disabled"
  Case 2
    strdisplayEduLevel  = "Higher Secondary"
	 strCondtionDegree =  "2" 
	 strDegreeForId =  "stxtDegreeName"
	 strConditionSubject = "2"
	 strInstituteForId = "sINSTITUTE"	 
	 strSubjectForId = "sSUBJECT" 
     strHight = 150
	 strColor = "#E8E8E8"
	 strDisplay = "disabled"
  Case 3
   strdisplayEduLevel = "Graduation"
   	strCondtionDegree =  "3" 
	strDegreeForId =  "stxtDegreeName"
	 strConditionSubject = "3"
	strInstituteForId = "sINSTITUTE"	
    strSubjectForId = "sSUBJECT"
	strHight = 150
	strColor = "#DDEEFF"

  Case 4 
   strdisplayEduLevel =  "Post Graduation"
   strCondtionDegree =  "4" 
    strConditionSubject = "4"
   strDegreeForId =  "stxtDegreeName"
   strInstituteForId = "sINSTITUTE"   
   strSubjectForId = "sSUBJECT"
   strHight = 150 ' 235
  strColor = "#E8E8E8"
  Case 5 
  strdisplayEduLevel =  "Post Graduation - 2"
  strCondtionDegree =  "5" 
   strConditionSubject = "5"
  strDegreeForId =  "stxtDegreeName"
  strInstituteForId = "sINSTITUTE" 
  strSubjectForId = "sSUBJECT"
  strHight = 150
  strColor = "#DDEEFF" 

  Case Else
   
End Select
	  
	  %>