<%
If IsPhoto = True Then 

Else 
  If IsBdjPhoto = True then  
				intErsId = 16 
				UserId = BdjobsId  'arrPersonal(3,i)
				secPhoto = 15030 '   10025
				strSqlPhoto = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secPhoto 
				'Response.Write(strSqlPhoto)
				'Response.End()
				
				
				arrDataPhoto = objResumeServer.RetrieveData(strSqlPhoto,strErr)
				
				if arrDataPhoto(0, 0) <> "Nothing" Then
				  
				  if ubound(arrDataPhoto, 2) > 0 then 
				
					if isnull(arrDataPhoto(0,1)) or isempty(arrDataPhoto(0,1)) or arrDataPhoto(0,1) = "" then  
		  	               imgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"

					 %>
                     <script>
					 alert("Sorry you have no photo in bdjobs account. so please upload a photo in bdjobs account. otherwise your application will be rejected.")
					 </script>
					 
					 <%
					else
					
					 imgSrc =  "http://my.bdjobs.com/photos/"&arrDataPhoto(0,1) &".jpg"	
					end if
				
				  else
	                imgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"
				  end if 
			else
	               imgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"
			end if 					

	 else
	  imgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"
	 end if

End If 
				
			
%>