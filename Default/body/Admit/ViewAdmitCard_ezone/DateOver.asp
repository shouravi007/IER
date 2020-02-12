<%

If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or  Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or  InStr(Request.ServerVariables("HTTP_REFERER"), "serverbdj") > 0  Or InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0   Then 
 ' Or InStr(Request.ServerVariables("HTTP_REFERER"), "serverbdj") > 0   Or InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0  
 
Else

	  ValuePrint "2018-09-22", "deadline"
	  validity = datediff("n", cdate("2018-09-22"), cdate(now()) )
	  ValuePrint validity , "n"
	  validity1 = datediff("h", cdate("2018-09-22"), cdate(now()) )
	  ValuePrint validity1 , "h"
	  validity2 = datediff("d", cdate("2018-09-22"), cdate(now()) )
	  ValuePrint validity2 , "d"
	
	  If validity > 0 then 


		ShowValidateMsgOnly("Sorry admit download is no longer available !   ")	
		
		DivCreateForAds
		Response.End() 
	
	  End If
End If  
%>