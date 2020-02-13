     <%
		
		Response.Write(strResume)
		'response.End()
			
		'=========CV CREATION in WORD FORMAT ==========
				'Response.Write(Request.ServerVariables())
				
				'strPath = Server.MapPath("../../ImageResize/photos/PrimeBank/resumes/SHORTLISTED/"&intTrackingNumber & ".doc" )
				strPath = Server.MapPath("../../ImageResize/photos/pcb/resumes/eligible/"&intTrackingNumber & ".doc" )
				'response.write(strPath & "<br>")
				Response.Write ("<BR><font face='Arial' size='2' color='#FF0707'><b>Document created in "&strPath&"<BR></b></font><BR>")
				set objFSO=server.CreateObject("Scripting.FileSystemObject")
				set f=objFSO.OpenTextFile(strPath,2,true)				
				f.writeline(strResume)	
				on Error resume next
				response.Write(err.number)
'									
'					If err.number <> 0 then
'						sendmail=false
'						response.write(qID(i)&" are not generated successfully")
'						response.End()
'					Else
'						sendmail=true
'						
'					End If

				f.close
				
				'=========================================================
				' making readonly 
				 'Set fA = objFSO.GetFile(strPath)
		
				' fA.attributes = fA.attributes + 128 
			   ' set fA = nothing 
				'================================================
		
				set objFSO=nothing		
		'=========END of CV CREATION ==========
%>