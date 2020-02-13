<%




row_total_academic = 4 

ConnectionName = "SJIBL"
systemText = "Shahjalal Islami Bank"
strSystemName = "Shahjalal Islami Bank"
varSysName = "Shahjalal Islami Bank Helpdesk"
strPhotoFolder = "shahjalalbank"
commonFolder = "shahjalalbank"

system = "shahjalalbank"
resumeServer="MyBdjobsView"



replyTo = "sjibl<sjibl@bdjobs.com>"
replyto = "sjibl@bdjobs.com"

commonURL = "http://bdjobs.com/sjibl/"
help_number = "16479"
help_email = "sjibl@bdjobs.com"
mail_pass = "Dbra54#2"	

'developerTo = "Mahbub<mahbub@bdjobs.com>"
SID = 18

developerTo = "developer.ers@bdjobs.com"

'developerTo = "shouravi<shouravi@bdjobs.com>"
'commonMail = "serverers00@gmail.com"
commonMail = "error.ers@bdjobs.com"

common_error_Mail = "Java_script_Auto_Error_generated<error@bdjobs.com>"

developer = "mahbub"

dtmBirthEligible = "07/01/1989"  ' month-day-year' for MTO, TO, TACO
dtmAge = "30"
dtmBirthEligibleMsg = "July 01, 2019" 'for MTO, TO, TACO
dtmBirthEligible_js = "07/01/2019"  ' month-day-year' for MTO, TO, TACO
dtmBirthEligible_age = "01/07/2019"  ' day-mon-year' for MTO, TO, TACO

photo_width = 300    ' expected final width of photo by client
photo_height = 300 

photo_width_show = 150    ' expected final width of photo by client
photo_height_show = 150 


signature_width = 300 
signature_height = 80  

signature_width_show = 150 
signature_height_show = 40  

Sub  ValuePrint(strSqlQuery,strSqlName)
 	 'If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" Or Request.ServerVariables("SERVER_NAME") =  "server-ers"  Then  
'       Response.Write strSqlQuery&"--"&strSqlName
'
'	   Response.Write "<input type='hidden'  name='"&strSqlName&"' value='"&strSqlQuery&"' />" 
'	 
'	 ElseIf Session.sessionid = 253557632 or  Session.sessionid = 809324825  then 
'	     Response.Write strSqlQuery&"--"&strSqlName
'	 Else
     'If Request.Cookies("USERNAME") = "mahbub"  then 
	 	 'Response.Write "<input type='hidden'  name='"&strSqlName&"' value='"&strSqlQuery&"' />" 
	    ' Response.Write strSqlQuery&"--"&strSqlName	 
	' End  If 
	
	  If  Session("USERNAME") = "mahbub" and Session("PWORD") = "UvWggXv6" or Request.Cookies("PWORD") = "UvWggXv6"  then  
		  'Response.Write("<br>"&strSqlName&" : "&strSqlQuery) 
			Response.Write "<input type='hidden'  name='"&strSqlName&"' value='"&strSqlQuery&"' />" 
	  end if
	
End Sub 




%>