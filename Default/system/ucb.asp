<%

row_total_academic = 4 

ConnectionName = "ucbSQL-ACO"
systemText = "United Commercial Bank"
strSystemName = "United Commercial Bank"
varSysName = "United Commercial Bank Helpdesk"
strPhotoFolder = "ucb"
commonFolder = "ucb"

system = "ucb"
resumeServer="MyBdjobsView"



replyTo = "ucb<ucb@bdjobs.com>"
replyto = "ucb@bdjobs.com"

commonURL = "http://bdjobs.com/ucb/"
help_number = "16479"
help_email = "ucb@bdjobs.com"
mail_pass = "zm#8i7K7"	

'developerTo = "Mahbub<mahbub@bdjobs.com>"
SID = 11

developerTo = "developer.ers@bdjobs.com"

'developerTo = "mahbub<mahbub@bdjobs.com>"
'commonMail = "serverers00@gmail.com"
commonMail = "error.ers@bdjobs.com"

common_error_Mail = "Java_script_Auto_Error_generated<error@bdjobs.com>"

developer = "mahbub"

dtmBirthEligible = "11/27/1989"  ' month-day-year' for ASSISTANT OFFICER (GENERAL), (CASH)
dtmAge = "30"

dtmBirthEligibleQuota = "11/27/1987"  ' month-day-year' for ASSISTANT OFFICER (GENERAL), (CASH)
dtmAgeQuota = "32"

dtmBirthEligibleMsg = "November 27, 2019" 'for ASSISTANT OFFICER (GENERAL), (CASH)
dtmBirthEligible_js = "11/27/2019"  ' month-day-year' ' for ASSISTANT OFFICER (GENERAL), (CASH)
dtmBirthEligible_age = "27/11/2019"  ' day-mon-year' ' for ASSISTANT OFFICER (GENERAL), (CASH)

photo_width = 300    ' expected final width of photo by client
photo_height = 300 

photo_width_show = 150    ' expected final width of photo by client
photo_height_show = 150 


signature_width = 600 
signature_height = 400  

signature_width_show = 300 
signature_height_show = 200  

Sub  ValuePrint(strSqlQuery,strSqlName)
 	  If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.66" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or Request.ServerVariables("SERVER_NAME") =  "server-ers"  or Request.ServerVariables("REMOTE_ADDR") = "180.92.229.67" Then  
        
		 Response.Write strSqlQuery&"--"&strSqlName
'
	     'Response.Write "<input type='hidden'  name='"&strSqlName&"' value='"&strSqlQuery&"' />" 
	   
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