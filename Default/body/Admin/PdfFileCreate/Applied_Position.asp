<% 
strBodyAppliedPosition = ""
strBodyAppliedPosition = strBodyAppliedPosition & "<br><table border='0' width='100%' align='center' bgcolor='#F47820' cellpadding='2' cellspacing='1'>"
strBodyAppliedPosition = strBodyAppliedPosition & "<tr bgcolor='#9F5000'> "
strBodyAppliedPosition = strBodyAppliedPosition & "<td colspan='4' bgcolor='#F47820' class='BDJSectionHeadLine' style=''>"			 
strBodyAppliedPosition = strBodyAppliedPosition & "Applied Position---(Applied Date--Job Expire Date)"	
strBodyAppliedPosition = strBodyAppliedPosition & "</td>"
strBodyAppliedPosition = strBodyAppliedPosition & "</tr>"

		If arr_AP(0, 0) <> "Nothing" Then
		  For jj=0 To intUBAP
			 DeadLine = ""
			 DeadLine = day(arr_AP(2, jj))&"/"&month(arr_AP(2, jj))&"/"&year(arr_AP(2,jj))
			 Apply = "" 
			 Apply = day(arr_AP(1, jj))&"/"&month(arr_AP(1, jj))&"/"&year(arr_AP(1,jj))
			 
			strJobTitle=arr_AP(0, jj)
			
 strBodyAppliedPosition = strBodyAppliedPosition &"<tr> "
strBodyAppliedPosition = strBodyAppliedPosition & ""
strBodyAppliedPosition = strBodyAppliedPosition & "<td colspan='4'  align='left' width='533' bgcolor='#F5E1D3' class='BDJBlackColorText'>"&ReplacedAllTypeOfSpecialChar(strJobTitle)&"---("&Apply&"--"&DeadLine&")</td>"
strBodyAppliedPosition = strBodyAppliedPosition & "</tr>"  
          
		  Next
		  
          
          Else
          
     strBodyAppliedPosition = strBodyAppliedPosition & "<tr> "
strBodyAppliedPosition = strBodyAppliedPosition & ""
strBodyAppliedPosition = strBodyAppliedPosition & "<td colspan='4'  align='left' width='533' bgcolor='#F5E1D3' class='BDJBlackColorText'>Not Applied Any Position</td>"
strBodyAppliedPosition = strBodyAppliedPosition & "</tr>"  
	 
	 
	     End If 

strBodyAppliedPosition = strBodyAppliedPosition & "</table>"


%>