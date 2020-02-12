<%
			intPersonalId = arrPersonal(0,0)
			'response.Write(lastID&"<br>"& intPersonalId)
			
			SQL_TRACKING = "SELECT ID FROM JOBPOS WHERE PERSONALID ="&intPersonalId
			arrSQL_TRACKING = objERS.RetrieveData(SQL_TRACKING, strErr)
			ErrorMessage "118", errMsg, 0 
			
			If arrSQL_TRACKING(0,0) <> "Nothing" Then
				intTrackingNumber = arrSQL_TRACKING(0,0)
			End If
		
			
			response.Write("ers: "&arrPersonal(18,0) & "<br>bdjobs photo:" & arrPersonal(29,0))
			
			If arrPersonal(18,0) = True Then
				
				srcImg = "photos/pcb"&intPersonalId&".jpg"
				'srcImg = arrPersonal(30,0)  						
			
			ElseIf arrPersonal(29,0) = True Then 'or arrPersonal(31,0) = True
				
				
				'intErsId = 16
'                UserId = arrPersonal(28,0)  
'                secPhoto = 15030 '   10025
'                strSqlPhoto = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secPhoto
'                'Response.Write(strSqlPhoto)
'                'Response.End()                
'                arrDataPhoto = objResumeServer.RetrieveData(strSqlPhoto,strErr)
'                
'                if arrDataPhoto(0, 0) <> "Nothing" Then
'                  
'                  if ubound(arrDataPhoto, 2) > 0 then
'                
'                    if isnull(arrDataPhoto(0,1)) or isempty(arrDataPhoto(0,1)) or arrDataPhoto(0,1) = "" then
'                    	imgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"                    
'                    else                    
'                    	imgSrc =  "http://my.bdjobs.com/photos/"&arrDataPhoto(0,1) &".jpg"    
'                    end if
'                
'                  else
'                   		imgSrc = "http://ers.bdjobs.com/applications/images/default.gif"
'                  end if
'            	else
'                   imgSrc = "http://ers.bdjobs.com/applications/images/default.gif"
'            	end if                     

     					
				imgNameSql = "Select PhotoName=SUBSTRING(LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4), CHARINDEX('/', LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4))+1, LEN(LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4))) From Personal p Where p.bdjobsphoto = 1 and id ="&intPersonalId
				'response.Write(imgNameSql)
				
				arrImg = objERS.RetrieveData(imgNameSql, strErr)
				ErrorMessage "130", errMsg, 0			
			
				srcImg = "photos/"&arrImg(0,0)&".jpg" 'imgSrc 
							
			Else				
				srcImg = "photos/default.gif"			
			End If
			
			RESPONSE.Write("image source:"&srcImg)


%>