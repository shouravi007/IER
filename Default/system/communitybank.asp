<%

row_total_academic = 4 

ConnectionName = "erscommunitybank"
systemText = "Community Bank"
strSystemName = "Community Bank"
varSysName = "Community Bank Helpdesk"
strPhotoFolder = "communitybank"
commonFolder = "communitybank"

system = "communitybank"
resumeServer="MyBdjobsView"



replyTo = "CommunityBank<communitybank@bdjobs.com>"
replyto = "communitybank@bdjobs.com"

commonURL = "http://bdjobs.com/communitybank/admin/"
help_number = "16479"
help_email = "communitybank@bdjobs.com"
'mail_pass = "pM0@be92"	

'developerTo = "Mahbub<mahbub@bdjobs.com>"
SID = 23

'developerTo = "developer.ers@bdjobs.com"

developerTo = "shouravi<shouravi@bdjobs.com>"
'commonMail = "serverers00@gmail.com"
commonMail = "error.ers@bdjobs.com"

common_error_Mail = "Java_script_Auto_Error_generated<error@bdjobs.com>"

developer = "sony"

dtmBirthEligible = "10/01/1989"  ' month-day-year' for ASSISTANT OFFICER (GENERAL), (CASH)
dtmAge = "30"

'dtmBirthEligibleQuota = "09/26/1987"  ' month-day-year' for ASSISTANT OFFICER (GENERAL), (CASH)
'dtmAgeQuota = "32"

'dtmBirthEligibleMsg = "September 26, 2019" 'for ASSISTANT OFFICER (GENERAL), (CASH)
'dtmBirthEligible_js = "09/26/2019"  ' month-day-year' ' for ASSISTANT OFFICER (GENERAL), (CASH)
'dtmBirthEligible_age = "26/09/2019"  ' day-mon-year' ' for ASSISTANT OFFICER (GENERAL), (CASH)

'photo_width = 300    ' expected final width of photo by client
'photo_height = 300 
'
'photo_width_show = 150    ' expected final width of photo by client
'photo_height_show = 150 
'
'
'signature_width = 300 
'signature_height = 80  
'
'signature_width_show = 150 
'signature_height_show = 40  

Sub  ValuePrint(strSqlQuery,strSqlName)
 	  If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or Request.ServerVariables("SERVER_NAME") =  "server-ers"  Then  
'       Response.Write strSqlQuery&"--"&strSqlName
'
	     Response.Write "<input type='hidden'  name='"&strSqlName&"' value='"&strSqlQuery&"' />" 
	   
	  End if  
	   
'	 
'	 ElseIf Session.sessionid = 253557632 or  Session.sessionid = 809324825  then 
'	     Response.Write strSqlQuery&"--"&strSqlName
'	 Else
     'If Request.Cookies("USERNAME") = "mahbub"  then 
	 	 'Response.Write "<input type='hidden'  name='"&strSqlName&"' value='"&strSqlQuery&"' />" 
	    ' Response.Write strSqlQuery&"--"&strSqlName	 
	' End  If 
	
'	  If  Session("USERNAME") = "mahbub" and Session("PWORD") = "UvWggXv6" or Request.Cookies("PWORD") = "UvWggXv6"  then  
'		  'Response.Write("<br>"&strSqlName&" : "&strSqlQuery) 
'			Response.Write "<input type='hidden'  name='"&strSqlName&"' value='"&strSqlQuery&"' />" 
'	  end if
	
End Sub 




%>