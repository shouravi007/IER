<%
		'END OF ACADEMIC PORTION

		'strLocation = Request.Form("POS_LOC")
		'Response.Write(Request.Form())
		' 4 Job Posting
		Sub SqlGenerateForJobPosting()
		End Sub 
		
		If strJobPosting <> "S" And strJobPosting <> "" Then

					
		
			strCVType = Request.Form("rdoCVType")
			'response.Write("cv type:::"&strCVType&"<br>")

			If strCVType = "Shortlisted" Then				
				SQLWhere = SQLWhere & " WHERE  P.Shortlisted = 1" 
				IsWhere = False				
			ElseIf strCVType = "NotShortListed" Then
				SQLWhere =  SQLWhere & " WHERE P.Shortlisted = 0 " 'or  p.Shortlisted is null
				IsWhere = False					
			Else
				IsWhere = True
			End If										
		End If

           If intJobId <> "" Then
				 If IsWhere Then 
				   SQLWhere = SQLWhere & " Where P.JOBID = "&intJobId
				   IsWhere = False
				 Else
				   SQLWhere = SQLWhere & " And P.JOBID = "&intJobId 
				 End If		
			Else
				IsWhere = True
			End If				

%>