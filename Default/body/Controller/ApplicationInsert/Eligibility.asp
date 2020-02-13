<%
'strJobids = 1

strJobids = Request.Form("JOB_ID")
'response.Write("job id: "&strJobids)
'response.End()

'ValuePrint strJobids , "strJobids-3" 

If strJobids = "2" or strJobids = 2 Then
	 
	  bytEduLevel1 = Trim(Request.Form("ddlEducationLevel1"))
	  bytEduLevel2 = Trim(Request.Form("ddlEducationLevel2"))
	  bytEduLevel3 = Trim(Request.Form("ddlEducationLevel3"))
	  bytEduLevel4 = Trim(Request.Form("ddlEducationLevel4"))
	  
	 ' response.Write("<BR>post grad: "&bytEduLevel4)
	  
	  if bytEduLevel4 = 4 Then
	  
	  else
	  
		  strResult1 = Request.Form("ddlResult1") 
		  strResult2 = Request.Form("ddlResult2") 
		  strResult3 = Request.Form("ddlResult3") 
		  strResult4 = Request.Form("ddlResult4") 
	
		  strCgpaOrMarks1 =  Request.Form("txtResultPoint1") 
		  strCgpaOrMarks2 =  Request.Form("txtResultPoint2") 
		  strCgpaOrMarks3 =  Request.Form("txtResultPoint3") 
		  strCgpaOrMarks4 =  Request.Form("txtResultPoint4") 
		  
		  strCgpaScale1 = Request.Form("ddlCGPAScale1")
		  strCgpaScale2 = Request.Form("ddlCGPAScale2")
		  strCgpaScale3 = Request.Form("ddlCGPAScale3")
		  strCgpaScale4 = Request.Form("ddlCGPAScale4")
		  
		  CgpaScale = array(strCgpaScale1,strCgpaScale2,strCgpaScale3,strCgpaScale4)
		 
		  Result = array(strResult1,strResult2,strResult3,strResult4)
		 
		  Marks = array(strCgpaOrMarks1,strCgpaOrMarks2,strCgpaOrMarks3,strCgpaOrMarks4)
	  
	  '******** first division/equivalent marks checking*********
	  
			FirstClass = 0 

			For resultIndex  = 0 To 3
				  If  Result(resultIndex) = "15" Then 
					   FirstClass  = FirstClass + 1 
				  End If 
				  
					If  resultIndex > 1 Then 
						  If  Result(resultIndex) = "0"  And CgpaScale(resultIndex) ="4"	Then 
							 If Cdbl(Marks(resultIndex)) >= 3 Then
							   FirstClass  = FirstClass + 1 
							 End If   
						  End If  
						  
						  If  Result(resultIndex) = "0"  And CgpaScale(resultIndex) ="5"	Then 
							 If Cdbl(Marks(resultIndex)) >= 3.00 Then
							   FirstClass  = FirstClass + 1 
							 End If   
						  End If 							  
					 Else 
						  If  Result(resultIndex) = "0"  Then 
							 If Cdbl(Marks(resultIndex)) >= 3 Then
							   FirstClass  = FirstClass + 1 
							 End If   
						  End If 		
					End IF 
							  					  
			Next 
			
			'response.Write("<BR>FirstClass::: "&FirstClass)
		   
			If  cdbl(FirstClass) >= 1 Then 
				strEligibleOk = 1
			Else 
				strEligibleOk = 0
			End  If 
		   
	
		   If strEligibleOk = 0 Then 
			 ShowValidateMsg("Sorry, you are not eligible for this position.<br />Click <a   style='color:#F00;' href='#' onclick='javascript:PageSubmit();return false;'>here</a> to retry.</strong></font></center>")
		   End IF 

	  '******** first division/equivalent marks checking*********
	  
	  End If

 End if
%>