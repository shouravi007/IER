<%
   ' sql = ""
	' sql = " select degreename from education where edulevel = 1 and degreename like = '%ssc%' and replace(ltrim(rtrim(degeename))) "
' replce dot 	


	If strDegreeName1 = "S.S.C" Or strDegreeName1 = "S.S.C."  Or strDegreeName1 = "S. S. C." Or strDegreeName1 = "S. S. C. " Or strDegreeName1 = " S. S. C. " Or strDegreeName1 = "S. S .C ."    Then 
	  strDegreeName1 = "SSC" 
	End IF 
	
	If strSubject1 = "SCIENCE" or strSubject1 = "Science " Then
	  strSubject1 = "Science" 
	End If 
	
	If strSubject2 = "SCIENCE" or strSubject2 = "Science " Then
	  strSubject2 = "Science" 
	End If 
	
	If strSubject2 = "BUSINESS STUDIES" or strSubject2 = "Business studies" Then 	
	  strSubject2 = "Business Studies" 
	End IF 
	
	
	IF strDegreeName2 = "H.S.C" or strDegreeName2 = "H.S.C." Then 
	 strDegreeName2 = "HSC" 
	End IF
	
	If strDegreeName3 = "B.B.A" Then
	  strDegreeName3 = "BBA" 
	End IF 
	
	If strDegreeName4 = "M.B.A" Then
	  strDegreeName4 = "MBA" 
	End IF 

   if instr(lcase(trim(strDegreeName3)),"bschons") > 0 then 
     strDegreeName3 = "BSc(Hons)"
   end if 

%>