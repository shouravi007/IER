<%
row_total_academic = 4 

replyTo = "trust<trustbank@bdjobs.com>"
replyto = "trustbank@bdjobs.com"

'developerTo = "shouravi<shouravi@bdjobs.com>"

developerTo = "developer.ers@bdjobs.com"

SID = 19 
commonURL = "http://bdjobs.com/trustbank/mto/"
help_email = "trustbank@bdjobs.com"
mail_pass = "2Geq4$v1"	
commonFolder = "trustbank"

ConnectionName = "trustSQL"
resumeServer="MyBdjobsView"

strSystemName = "Trust Bank Limited"
varSysName = "Trust Bank Limited Helpdesk"
systemText = "Trust Bank Limited"
strPhotoFolder = "trustbank"
system = "trustbank"

developer = "mahbub"

'commonMail = "serverers00@gmail.com"
commonMail = "error.ers@bdjobs.com"

common_error_Mail = replyto '"Java_script_Auto_Error_generated<error@bdjobs.com>"

dtmBirthEligible = "12/31/1989"  ' month-day-year' for MTO, TO, TACO
dtmAge = "30"
dtmBirthEligibleMsg = "December 31, 2019" 'for MTO, TO, TACO
dtmBirthEligible_js = "12/31/2019"  ' month-day-year' for MTO, TO, TACO
dtmBirthEligible_age = "31/12/2019"  ' day-mon-year' for MTO, TO, TACO

photo_width = 150    ' expected final width of photo by client
photo_height = 150 

photo_width_show = 150    ' expected final width of photo by client
photo_height_show = 150 


signature_width = 600 
signature_height = 400  

signature_width_show = 600 
signature_height_show = 400  

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
	
	  If  Session("USERNAME") = "mahbub" and Session("PWORD") = "pUbHKd9_+nPGf+9g" or Request.Cookies("PWORD") = "pUbHKd9_+nPGf+9g"  then  
		  'Response.Write("<br>"&strSqlName&" : "&strSqlQuery) 
			Response.Write "<input type='hidden'  name='"&strSqlName&"' value='"&strSqlQuery&"' />" 
	  end if
	
End Sub 



%>