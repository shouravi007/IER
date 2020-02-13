<%
	'response.Write("strDegreeName:"&strDegreeName)
	If strDegreeName = "O Level" Then
		
		Dim arrAcademicSQL(5)
		Dim arrAcademicData(5,3)			
		
		resultLevel = Array(resultLevel_O1,resultLevel_O2,resultLevel_O3,resultLevel_O4,resultLevel_O5)			
		strSubject = Array(strSubject_O1,strSubject_O2,strSubject_O3,strSubject_O4,strSubject_O5)			
		
		For aca = 0 To 4
												
				counter = aca		
				autoLev = Request.Form("hidAuto"&aca+1)
				if autoLev = "" or isempty(autoLev) or isnull(autoLev) then
				  autoLev = -1 
				end if
				
				arrAcademicData(counter, 0) = TrackNo
				arrAcademicData(counter, 1) = strSubject(aca)
				arrAcademicData(counter, 2) = resultLevel(aca)
				arrAcademicData(counter, 3) = strDegreeName
				 
				If strDegreeName = "O Level" Then								
					
					arrAcademicSQL(counter) = "SELECT PersonalId, Subject, Grade_Point,Degree_level  FROM level_Table WHERE ID=" & autoLev
					
				End If	
				
				'response.Write(arrAcademicSQL(counter))			
		Next
				
				objERS.UpdateData arrAcademicSQL, arrAcademicData, errMsg
				ErrorMessage "977", errMsg, 0		
	
	Else
		If bytEduLevel = 1 Then
			
			If strDegreeName <> "O Level" Then
				
				'response.Write(strDegreeName)
				
				deleteSqlLevel = "DELETE FROM LEVEL_TABLE WHERE PERSONALID = "&TrackNo & " AND Degree_level='O Level'"
				
				objERS.ExecuteQuery deleteSqlLevel, strErr
				ErrorMessage "718", strErr, 0
				 
			End If
		End If
	
	End If
	
			
	If strDegreeName = "A Level" Then
			
		Dim arrAcademicSQL1(2)
		Dim arrAcademicData1(2,3)
		
		strSubject_1 = Array(strSubject_A1,strSubject_A2)
		resultLevel_1 = Array(resultLevel_A1,resultLevel_A2)		
		
		For acaAL = 0 To 1
				
				counter_AL = acaAL
				autoLev_A = Request.Form("hidAuto_A"&acaAL+1)
				
				if autoLev_A = "" or isempty(autoLev_A) or isnull(autoLev_A) then
				  autoLev_A = -1 
				end if
				'response.Write(autoLev_A)
				arrAcademicData1(counter_AL, 0) = TrackNo
				arrAcademicData1(counter_AL, 1) = strSubject_1(acaAL)
				arrAcademicData1(counter_AL, 2) = resultLevel_1(acaAL)
				arrAcademicData1(counter_AL, 3) = strDegreeName
	
			IF  strDegreeName = "A Level" then
													
				arrAcademicSQL1(counter_AL) = "SELECT PersonalId, Subject, Grade_Point,Degree_level  FROM level_Table WHERE ID=" & autoLev_A
			
			END IF
				'response.Write(arrAcademicSQL1(counter_AL))				
		Next
				
				objERS.UpdateData arrAcademicSQL1, arrAcademicData1, errMsg
				ErrorMessage "738", errMsg, 0
	
	Else
	
		If bytEduLevel = 2 Then
			
			If strDegreeName <> "A Level" Then
								
				deleteSqlALevel = "DELETE FROM LEVEL_TABLE WHERE PERSONALID="&TrackNo & " AND Degree_level='A Level'"
				
				objERS.ExecuteQuery deleteSqlALevel, strErr
				ErrorMessage "770", strErr, 0
				 
			End If
		End If
	
	End If
%>
