<%	
				
				
				feedBack = Request.Form("RadioGroup1")
				If feedBack = "like" Then 				
				 strLike = -1
				Else
				 strLike = 0 
				End If
				 

				If feedBack = "dislike" Then 				
				 strDislike = -1
				Else
				 strDislike = 0 
				End If


				If feedBack = "angry" Then 				
				 strAngry = -1
				Else
				 strAngry = 0 
				End If


				If feedBack = "none" or feedBack = "" Then 				
				 strNoAnswer = -1
				Else
				 strNoAnswer = 0 
				End If


				If feedBack = "notime" Then 				
				 strNoComment = -1
				Else
				 strNoComment = 0 
				End If


				If feedBack = "exceptional" Then 				
				 strExceptional = -1
				Else
				 strExceptional = 0 
				End If


				If feedBack = "better" Then 				
				 strBetter = -1
				Else
				 strBetter = 0 
				End If


				If feedBack = "average" Then 				
				 strAverage = -1
				Else
				 strAverage = 0 
				End If


				If feedBack = "good" Then 				
				 strGood = -1
				Else
				 strGood = 0 
				End If


				If feedBack = "poor" Then 				
				 strPoor = -1
				Else
				 strPoor = 0 
				End If


                If Request.Form("txtSuggestion") <> "" Then
				  strSuggestion = Request.Form("txtSuggestion")
				  if len(strSuggestion) > 99 Then 
				    strSuggestion = "" 
				  Else
				    strSuggestion = ReplacedAllTypeOfSpecialChar(strSuggestion)
				  End If 
				Else
				  strSuggestion = "" 
				End IF


			
				SQLfeedback = ""
				SQLfeedback = "INSERT INTO [dbo].[FeedBack]([personalid],[like],[dislike],[angry],[noanswer],[nocomment],[expectional],[better] ,[average],[good],[poor],[suggestion])VALUES (" & TrackNo & ","& strLike& ","& strDislike& ","& strAngry& ","& strNoAnswer & ","& strNoComment& ","& strExceptional& ","& strBetter& ","& strAverage& ","& strGood& ","& strPoor& ",'"& strSuggestion&"')" 
				'Response.Write SQLfeedback
                ValuePrint SQLfeedback , "SQLfeedback-170"
				objERS.ExecuteQuery SQLfeedback, errMsg
				'Response.Write errMsg
				ErrorMessage "1302", errMsg, 0	
				
%>

