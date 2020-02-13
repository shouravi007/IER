<%
response.codepage = 65001
response.Charset = "utf8"
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>KSB alert mail for Job Seekers</title>
</head>

<body>

<%
Function Utf8ToUnicode(strText)
   'On Error Resume Next
   With CreateObject("ADODB.Stream")
 
      .Open
      .Charset = "Windows-1252"
 
      .WriteText strText
 
      .Position = 0
      .Type = 2 ' adTypeText
      .Charset = "utf-8"
 
      Utf8ToUnicode = .ReadText(-1) 'adReadAll
 
      .Close
   End With
End Function
%>
<!--#include virtual = "\Class\c_Data_Batch.asp" -->
<!--#include file = "include_file\mail.asp" -->
<%
	Set objERS = new c_Data
	objERS.OpenConnection "ksb", errMsg
	
	query = "SELECT j.id as 'Applicant Id', p.FirstName, p.LastName, p.Email, p.id as 'LogIn Id', p.pass, p.ContactPhone, j.AppDate, j.appdate_deadline, DATEDIFF(HOUR, j.AppDate, GETDATE()) as 'hour',jp.JobTitle, p.sendmail48, p.sendmail72 FROM ersKSB.dbo.Personal p inner join ersKSB.dbo.JobPos j on p.id = j.personalId  inner join ersKSB.dbo.JobPosting jp on jp.jobId=j.jobId where j.id not in (SELECT jrid FROM ersKSB.dbo.CheckPmntStatus) and DATEDIFF(HOUR, j.AppDate, GETDATE()) >= 48  and (email <> '' and email <> '0') and p.id > 10194 order by j.id" ' 
	'response.Write(query) 

	arrData = objERS.RetrieveData(query, errMsg)

	if arrData(0,0)<>"Nothing"then 
		
		for i = 0 to ubound(arrData, 2)
			firstName = arrData(1,i)
			lastName = arrData(2,i)
			email = arrData(3,i)
			TrackNo = arrData(4,i) 'personal id
			strPassword = arrData(5,i)
			TrackNoNEW = arrData(0,i) ' applicant id
			position  = arrData(10,i)
			
			strHour = arrData(9,i)
			nextHour = 72-CInt(strHour)
			
			Is48Hours = arrData(11,i)
			Is72Hours = arrData(12,i)
			'response.Write("Is48Hours: "& Is48Hours & "Is72Hours: "&  Is72Hours)
			strName = firstName & " " & lastName
			
			strERecruitmentSystemName = "KSB"

			fromWho = "ksb@bdjobs.com"
			toWho = strName & "<" & email &">"
			'toWho = "shouravi@bdjobs.com"			
			toCC = ""
			toBCC = ""
			replyTo = ""
			err.clear

			
			if arrData(9,i)>= 48 and arrData(9,i) <72 then
				
				Subject = "Notify for payment" 
				
				BodyText0 = "<DIV align=justify><font size=2 face=Arial><p><strong><strong>Dear "&strName&": </strong></strong><br><br>Thanks for your application for the position of "&position&". Your Applicant Id : <b>" & TrackNoNEW & ".</b><br><br>Your credentials are-<br><br>Login Id: <font color='#003399' style='font-weight:bold'>"&TrackNo&"</font><br>Password: <font color='#003399' style='font-weight:bold'>"&strPassword&"</font><br>Login Link: <font color='#003399' style='font-weight:bold'> <a href='http://ers.bdjobs.com/applications/ksb/Default.asp?Y1pn6v10=Z1qny&S14zNp6v10=Y1tv0'>Login</a></font></p>"
				
				BodyText0 = BodyText0 & "<legend> <b> Payment Methods:</b> </legend><div><p>A. মোবাইলের মাধ্যমে শিওর ক্যাশ USSD Menu থেকে ফি প্রদান করার নিয়ম :</p><p>USSD Menu'র জন্য *495# ডায়াল করুন>পেমেন্টের জন্য 3 টাইপ করুন> KBJOB টাইপ করুন>Application ID টাইপ করুন>আবেদনপত্রে উল্লিখিত আপনার Mobile number টাইপ করুন> আবেদনের তথ্য এবং আবেদনের ফি screen এ দেখুন> পিন নম্বর টাইপ করুন> Txn ID সহ successful message দেখুন।</p><p>B. শিওর ক্যাশ অ্যাপ থেকে ফি প্রদান করার নিয়ম :</p><p> Google play store/App store থেকে শিওর ক্যাশ অ্যাপ ডাউনলোড করুন। অ্যাপে লগইন করে-payment মেন্যু সিলেক্ট করুন>payee অপশনে KBJOB লিখে NEXT সিলেক্ট করুন> এপ্লিকেশন ID টাইপ করুন> আবেদনপত্রে উল্লিখিত আপনার Mobile number টাইপ করুন> আবেদনকারীর নাম, Application ID, আবেদন ফি নিশ্চিত হয়ে Next সিলেক্ট করুন>Confirm করুন>Txn ID সহ successful message দেখুন।</p><p>C. আবেদন ফি পরিশোধ করার পর আপনার ID তে Login করে Payment Status জেনে নিতে পারেন।</p> </div>"
				
				BodyText0 = BodyText0 & "<p>It has been almost "&strHour&" hours and you haven't paid your application fees yet. In order to complete your application, please pay your application fee within the next "&nextHour&" hours. Otherwise, your application will be rejected automatically.</p><p><br />Thanks and regards,<br /><br /><strong><strong>Human Resources Division</strong></strong><strong><br /><strong><strong>Karmasangsthan Bank Online Application System.</strong></strong></strong></p></div>"
				
				emailBody = Utf8ToUnicode(BodyText0)
				On Error Resume Next

				If toWho <> "" Then
				
					If Is48Hours = "True" Then
						'Response.Write("All mail sent successfully")
					Else
						sendmail fromWho, toWho, Subject, emailBody, toCC, toBCC, replyTo 
						'Response.Write(err.description)
						Set ObjCDO = Nothing 
						Set iConf = Nothing 
						Set Flds = Nothing
					
						if err.number = 0 then
							
							sql = "update personal set sendMail48 = 1 where id ="& TrackNo
							
							Response.Write sql&"<br>"
							objERS.ExecuteQuery sql, errMsg
							ErrorMessage "71", errMsg, 0	
						
						end if 
					
					End If 'If Is48Hours = "True" Then	
				
				End If 'If toWho <> "" Then
				
			
			
			elseif arrData(9,i) >= 72 then
				
				Subject = "Re-apply as the previous application has been locked automatically" 
				
				BodyText0 = "<DIV align=justify><font size=2 face=Arial><p><strong><strong>Dear "&strName&": </strong></strong><br><br>Thanks for your application for the position of "&position&". Your Applicant Id : <b>" & TrackNoNEW & ".</b><br><br>Your credentials are-<br><br>Login Id: <font color='#003399' style='font-weight:bold'>"&TrackNo&"</font><br>Password: <font color='#003399' style='font-weight:bold'>"&strPassword&"</font><br>Login Link: <font color='#003399' style='font-weight:bold'> <a href='http://ers.bdjobs.com/applications/ksb/Default.asp?Y1pn6v10=Z1qny&S14zNp6v10=Y1tv0'>Login</a></font></p>"
				
				BodyText0 = BodyText0 &"<legend><b> Payment Methods:</b> </legend><div><p>A. মোবাইলের মাধ্যমে শিওর ক্যাশ USSD Menu থেকে ফি প্রদান করার নিয়ম :</p><p>USSD Menu'র জন্য *495# ডায়াল করুন>পেমেন্টের জন্য 3 টাইপ করুন> KBJOB টাইপ করুন>Application ID টাইপ করুন>আবেদনপত্রে উল্লিখিত আপনার Mobile number টাইপ করুন> আবেদনের তথ্য এবং আবেদনের ফি screen এ দেখুন> পিন নম্বর টাইপ করুন> Txn ID সহ successful message দেখুন।</p><p>B. শিওর ক্যাশ অ্যাপ থেকে ফি প্রদান করার নিয়ম :</p><p> Google play store/App store থেকে শিওর ক্যাশ অ্যাপ ডাউনলোড করুন। অ্যাপে লগইন করে-payment মেন্যু সিলেক্ট করুন>payee অপশনে KBJOB লিখে NEXT সিলেক্ট করুন> এপ্লিকেশন ID টাইপ করুন> আবেদনপত্রে উল্লিখিত আপনার Mobile number টাইপ করুন> আবেদনকারীর নাম, Application ID, আবেদন ফি নিশ্চিত হয়ে Next সিলেক্ট করুন>Confirm করুন>Txn ID সহ successful message দেখুন।</p><p>C. আবেদন ফি পরিশোধ করার পর আপনার ID তে Login করে Payment Status জেনে নিতে পারেন।</p> </div>"
				
				BodyText0 = BodyText0 & "<p>It has been 72 hours and you haven't paid your application fees. Your application has been locked by the system. If you want to re-apply for the position please login and click on re apply button for the position .</p><p><br />Thanks and regards,<br /><br /><strong><strong>Human Resources Division</strong></strong><strong><br /><strong><strong>Karmasangsthan Bank Online Application System.</strong></strong></strong></p></div>"
				
				
				
				emailBody = Utf8ToUnicode(BodyText0)
				 
				On Error Resume Next

				If toWho <> "" Then
					
					If Is72Hours = "True" Then
						'Response.Write("All mail sent successfully")
					Else
					 
						sendmail fromWho, toWho, Subject, emailBody, toCC, toBCC, replyTo 
						Set ObjCDO = Nothing 
						Set iConf = Nothing 
						Set Flds = Nothing
					
						if err.number = 0 then
							sql = "update personal set sendMail72 = 1 where id ="& TrackNo
							
							Response.Write sql&"<br>"
							objERS.ExecuteQuery sql, errMsg
							
							ErrorMessage "151", errMsg, 0	
						end if 					
					
					End If 'If Is72Hours = "True" Then
				End If 'If toWho <> "" Then
				
			end if ' CONDITION FINISH
			 
		next
	end if 
%> 

  <script>
        var thisTimeout = setTimeout(function() {
            location.reload();
        }, 3600000);

        var datetime = new Date();
        if(datetime < Date('10/29/2019')){
            thisTimeout()
        }
    </script>
</body>
</html>