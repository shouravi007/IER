<%
strDate =  MonthName(month(date)) &" "&day(Date)&", "&year(date)


'strCenter = ""
'positon = " Management Trainee Officer  "
'examTime = "28 February 2014,  Friday  at  10 am  "
'reportingTime = "9:30 am"	

		If arrSelect(0,0) <> "Nothing" Then	
		
				strName = arrSelect(1,0)
				'strName = ReplacedAllTypeOfSpecialChar(strName)
				varTN = arrSelect(0,0)
				intRoll = CStr(CInt(arrSelect(9,0))) 
				'response.Write(intRoll)
				
				strEmail = arrSelect(2,0)
				strMobile = "Mobile: "&arrSelect(3,0)
				strContactAddress = trim(arrSelect(5,0))
				strContactAddress = ReplacedAllTypeOfSpecialChar(strContactAddress)
				
				
				strContactAddress = Replace(strContactAddress,"<"," ")
				strContactAddress = Replace(strContactAddress,"<br><br>"," ")	
				strContactAddress = Replace(strContactAddress,"<br>",", ")	
				strContactAddress = Replace(strContactAddress,",,",", ")	
				strContactAddress = Replace(strContactAddress,".,"," ")
				strContactAddress = Replace(strContactAddress,""""," ,")
				strContactAddress = Replace(strContactAddress,""""," ,")
				strContactAddress = ReplacedAllTypeOfSpecialChar(strContactAddress)				
								
				
				IsPhoto = arrSelect(6,0)
				strGender = arrSelect(7,0)
				
				
				IsShortlisted = arrSelect(10,0)
				imgSrc = arrSelect(11,0)
                IsBdjPhoto = arrSelect(12,0) 
				BdjobsId = arrSelect(13,0)
				
				strFahterName = arrSelect(16,0)
				strMotherName = arrSelect(17,0)
				imgSigSrc = arrSelect(18,0)
				
				'if intJobId = 1 then 
'				  strShortNamePost = "ASSISTANT CASH"
'				elseif intJobId = 2 then 
'				  strShortNamePost = "JUNIOR"
'				end if 
				
				
				
If IsPhoto = True Then 

Else 
  If IsBdjPhoto = True then  
  
			    onlyPhotoSrc = arrSelect(15,0)
				imgSrc =  "http://ers.bdjobs.com/applications/ImageResize/Photos/SJIBL/bdjobs/"&onlyPhotoSrc &".jpg"				
  
  
				'intErsId = 1 
				'UserId = BdjobsId  'arrPersonal(3,i)
				'secPhoto = 4 '   10025
				'strSqlPhoto = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secPhoto 
				'Response.Write(strSqlPhoto)
				'Response.End()
				
				
				'arrDataPhoto = objResumeServer.RetrieveData(strSqlPhoto,strErr)
				
				'if arrDataPhoto(0, 0) <> "Nothing" Then
				  
				 ' if ubound(arrDataPhoto, 2) > 0 then 
				
					'if isnull(arrDataPhoto(0,1)) or isempty(arrDataPhoto(0,1)) or arrDataPhoto(0,1) = "" then  
					 %>
                     <script>
					// alert("If you really fail to download admit card ? then please follow the steps ... please upload your pictures on My Bdjobs/Bdjobs Account Resume and login again.\nআপনি কি এডমিট কার্ড ডাউনলোড করতে পারছেন না ? আপনি যদি আপনার এডমিট কার্ড ডাউনলোড করতে চান, দয়া করে মাই বিডিজবস-এ আপনার ছবি আপলোড করে; পুনরায় লগইন করুন")
					 </script>
					 <%
					'else
					
					'imgSrc =  "http://my.bdjobs.com/photos/"&arrDataPhoto(0,1) &".jpg"	
					'end if
				
				  'else
	              ' imgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"
				 ' end if 
				'end if 					

  else
	  imgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"
  end if

End If 

				
				If strGender = "Male" Then
					strGenderName = "Mr."
				elseIf strGender = "Female" Then
					strGenderName = "Ms."
				end if
			
							If Request.Form("txtTestEmail") <> "" Then
								strEmail = Request.Form("txtTestEmail")
							Else
								strEmail = strName&"<"&arrSelect(2,0)&">"
							End If
							
							
		
		varImg = "<img src='"&imgSrc&"' width='150' height='150' align ='center' />"
		varSigImg = "<img src='"&imgSigSrc&"' width='150' height='40' align ='center' />"
		
		
		
		imgLoc= "http://ers.bdjobs.com/applications/dsebd/admit/signature.jpg"
		varImgT = "<img src='"&imgLoc&"' width='120' height='84' />"
		strERecruitmentSystemName = "abbank_mto_2014"
		
		strEmc1 = "" 
		strEmc1 = "http://ers.bdjobs.com/applications/dsebd/admit/logo.jpg " 
		strEmc =  "<img src='"&strEmc1&"' width='170' height='60' />"
		
		imgBorder1 = "http://ers.bdjobs.com/applications/UCB/images/border.gif"
		
		varImgBorder1 =  "<img src='"&imgBorder1&"' border='1' style='background-repeat:repeat-x;width:150px; height:1px;padding:0px;' align='baseline'/>"	
		
		varImgBorder2 =  "<img src='"&imgBorder1&"' border='1' style='background-position:right; background-repeat:repeat-y; width:1px; height:15px; padding:0px;' align='justify'/>"	
		
		varImgBorder3 =  "<img src='"&imgBorder1&"' border='1' style='background-position:top; background-repeat:repeat-y;width:1px; height:15px;padding:0px;' align='justify'/>"		
		
		varImgBorder4 =  "<img src='"&imgBorder1&"'  border='1' style=' background-position:top; background-repeat:repeat-x;width:150px; height:1px;padding:0px;' align='justify' />"
		
		varImgBorder5 =  "<img src='"&imgBorder1&"' border='1' style='background-position:right; background-repeat:repeat-y;width:1px; height:15px;padding:0px;' align='justify'/>"	
		
		'imgBorder2 = "http://ers.bdjobs.com/applications/abbank/2014/MTO/images/border.gif"
		
		'varImgBorder_7 =  "<img src='"&imgBorder2&"' border='1' style='background-repeat:repeat-x;width:665px; height:1px;padding:0px;' align='baseline'/>"	
		
		'varImgBorder_8 =  "<img src='"&imgBorder2&"' border='1' style='background-position:right; background-repeat:repeat-y; width:2px; height:170px; padding:0px;' align='justify'/>"	


		imgBorder2 = "http://ers.bdjobs.com/applications/abbank/2014/MTO/images/border.gif"
		
        varImgBorder_6 =  "<img src='"&imgBorder2&"' border='1' style='background-repeat:repeat-y; width:1px; height:190px; padding:0px;' align='top'/>"
        
		varImgBorder_7 =  "<img src='"&imgBorder2&"' border='1' style='background-repeat:repeat-x;width:675px; height:1px;padding:0px;' align='baseline'/>"	
		
		varImgBorder_8 =  "<img src='"&imgBorder2&"' border='1' style='background-repeat:repeat-y; width:1px; height:190px; padding:0px;' align='top'/>"

		varImgBorder_9 =  "<img src='"&imgBorder2&"' border='1' style='background-repeat:repeat-x;width:675px; height:1px;padding:0px;' align='top'/>"	
        
		varImgBorder_10 =  "<img src='"&imgBorder2&"' border='1' style='background-repeat:repeat-y; width:1px; height:170px; padding:0px;' align='top'/>"

 End if 
 
 
 %>