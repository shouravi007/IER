<%
'strDate =  day(Date)&" "&MonthName(month(date)) &" "&year(date)
		If arrSelect(0,0) <> "Nothing" Then	
				varTN = arrSelect(0,0)
				strName = arrSelect(1,0)
				strEmail = arrSelect(2,0)
				strMobile = "Mobile: "&arrSelect(3,0)
				strCell = arrSelect(4,0)
				
				strContactAddress = trim(arrSelect(5,0))
				strContactAddress = Replace(strContactAddress,"<"," ")
				strContactAddress = Replace(strContactAddress,"<br><br>"," ")	
				strContactAddress = Replace(strContactAddress,"<br>",", ")	
				strContactAddress = Replace(strContactAddress,",,",", ")	
				strContactAddress = Replace(strContactAddress,".,"," ")
				strContactAddress = Replace(strContactAddress,""""," ,")
				strContactAddress = Replace(strContactAddress,""""," ,")
				
				a1 = split(strContactAddress , " ") 
				lena = ubound(a1,1)
				'Change by Auny on 11 Aug 2015
				intBR = 6
				strAddress = ""
				If lena > intBR Then
					For s = 0 To lena
						'Response.Write("<br/>"&a1(s)&"<br/>")
						If s = intBR Then
							strAddress = strAddress & a1(s) & "<br>"
						Else
							strAddress = strAddress & a1(s) & " "
						End If
					Next
					strContactAddress = strAddress
				End If

                if instr(strContactAddress, "<br>") > 0 then 
				
				else
				   'strContactAddress = strContactAddress & "<br>"
				
					a2 = split(strContactAddress , "~") 
					lena2 = ubound(a2,1)
					'Change by Auny on 11 Aug 2015
					intBR2 = 3
					strAddress2 = ""
					If lena2 > intBR2 Then
						For s2 = 0 To lena2
							'Response.Write("<br/>"&a1(s)&"<br/>")
							If s2 = intBR2 Then
								strAddress2 = strAddress2 & a2(s2) & "<br>"
							Else
								strAddress2 = strAddress2 & a2(s2) & " "
							End If
						Next
						strContactAddress = strAddress2
					End If

				end if 

				IsPhoto = arrSelect(6,0)
				strGender = arrSelect(7,0)
				
				If strGender = "Male" Then
					strGenderName = "Mr."
				elseIf strGender = "Female" Then
					strGenderName = "Ms."
				end if
			    jobid = arrSelect(8,0)
				intRoll =  clng(arrSelect(9,0)) 	
				'intRoll = CStr(CInt(arrSelect(7,0))+80000) 
				'response.Write("<br>"&intRoll)
				IsShortlisted = arrSelect(10,0)
				imgSrc = arrSelect(11,0)
                IsBdjPhoto = arrSelect(12,0) 
				BdjobsId = arrSelect(13,0)
				
				strFatherName = arrSelect(16,0)
				strMotherName = arrSelect(17,0)
				
				if jobid = 1 then 
					strJobPosition = "Management Trainee Officer" ' Trainee Cash Officer (TCO)
					strExamTime = "10:00 a.m."
					strExamDate = "Friday, 12 April 2019"
					strRef = "DBL/HR/19/3605"
					strSubject = "Management Trainee Officer (MTO) Recruitment – Written Test"
					strDate =  "27 March 2019"
					strCenter = "Eden Mohila College, Azimpur, Dhaka 1205."
				elseif jobid = 2 then 
				    strRef = "DBL/HR/19/3605"
					strJobPosition = "Trainee Officer"
					strExamTime = "10:00 a.m."
					strExamDate = "Friday, 12 April 2019"
					strSubject = "Trainee Officer (TO) Recruitment – Written Test"
					strDate =  "27 March 2019"
					strCenter = "Eden Mohila College, Azimpur, Dhaka 1205."
				elseif jobid = 3 then 
				    strRef = "DBL/HR/19/3605"
					strJobPosition = "Trainee Assistant Cash Officer"
					strExamTime = "10:00 a.m."
					strExamDate = "Friday, 12 April 2019"
					strSubject = "Trainee Assistant Cash Officer (TACO) Recruitment – Written Test"
					strDate =  "27 March 2019"
					strCenter = "Begum Badrunnessa Govt. Girls College, 7 Bakshi Bazar Road, Dhaka 1211."
				end if 
				
				'If intRoll <> "" Then
					'intRoll = clng(60000) + clng(intRoll)
				'End If
				
				If IsPhoto = True Then 
				
				Else 
					If IsBdjPhoto = True then  	
						onlyPhotoSrc = arrSelect(15,0)
						imgSrc =  "http://ers.bdjobs.com/applications/ImageResize/Photos/"&strPhotoFolder&"/bdjobs/"&onlyPhotoSrc &".jpg"		  

					else
						imgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"
					end if
				
				End If 
				
				
		varImg = "<img src='"&imgSrc&"' width='150' height='160' align ='right' style='padding:1px;border:thin solid black;'/>"
	
		
		Else 
		
		End If

 
 %>