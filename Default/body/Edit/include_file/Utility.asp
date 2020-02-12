<%
'To avoid <head></head> tags
if strMailRequired <> "No" then
%>
<!--#include file = "mail.asp" -->
<%
End if
%>
<%
'---------------------------------------------------------------------------------------------------------
'Purpose 	  	: Set constant values
'Author  	  	: Probal
'Created On 	: 29 November 2006 
'Last Modified 	: 
'---------------------------------------------------------------------------------------------------------
BDJOBS_USER_CM_BOTH = 101
BDJOBS_USER_CM_CVSEARCH = 102
BDJOBS_USER_CM_JOBPOSTING = 103
%>
<%
'---------------------------------------------------------------------------------------------------------
'Function No   	: 01
'---------------------------------------------------------------------------------------------------------
'Purpose 	  	: Update personal table to keep track when user last update his/her resume.

'Parameter : It takes one parameter UserID.
'---------------------------------------------------------------------------------------------------------
'Author  	  	: Naznin
'---------------------------------------------------------------------------------------------------------
'Created On 	: 09 Oct 2005 
'---------------------------------------------------------------------------------------------------------
'Last Modified 	: 09 Oct 2005  
'---------------------------------------------------------------------------------------------------------	
Sub UpdatePersonal(uID)
	dim arrDate(0)
	dim strSQL
	dim errLog
	'strSQL="Select UPDATED_DATE from personal where ID="&uID
	strSQL="Update personal set UPDATED_DATE=getdate() where ID="&uID
	'arrDate(0)=date()
	set user = new c_Data_Multi_Server
		'new_user.UpdateData "Resume",strSQL,arrDate,errLog
		user.ExecuteQuery "Resume", strSQL, errLog
		set user=nothing
		if errLog <> "" then
			ShowMessage_ADOErrors errLog,"Utility","27","MyBdjobs"
		end if
	
End Sub
Sub UpdatePersonalFlag(uID)
	dim arrDate(0)
	dim strSQL
	dim errLog
	'strSQL="Select UPDATED_DATE from personal where ID="&uID
	strSQL="Update personal set UPDATED=1 where ID="&uID
	'arrDate(0)=date()
	set user = new c_Data_Multi_Server
		'new_user.UpdateData "Resume",strSQL,arrDate,errLog
		user.ExecuteQuery "Resume", strSQL, errLog
		set user=nothing
		if errLog <> "" then
			ShowMessage_ADOErrors errLog,"Utility","41","MyBdjobs"
		end if
	
End Sub
'---------------------------------------------------------------------------------------------------------
'Function No   	: 02
'---------------------------------------------------------------------------------------------------------
'Purpose 	  	: Collect each item of passed array and write as string where this procedure called.   
'				Parameter : this procedure takes one array.
'---------------------------------------------------------------------------------------------------------
'Parameter		:Takes an two diemension array as parameter.
'---------------------------------------------------------------------------------------------------------
'Author  	  	: Naznin
'---------------------------------------------------------------------------------------------------------
'Created On 	: 09 Oct 2005 
'---------------------------------------------------------------------------------------------------------
'Last Modified 	: 09 Oct 2005 
'---------------------------------------------------------------------------------------------------------	
Sub JobAreaCollection(district_Array)
   For i = 0 To UBound(district_Array)
	   Response.Write(district_Array(i,1))
		if i<>UBound(district_Array) then
		response.Write(", ")
		end if	
  Next
End Sub
'parameter used:Sql-(Select query)
				'destArray- return array

'sub ListCollection(Sql,destArray)
	'set new_user = new c_Data
		'destArray=new_user.RetrieveData(Sql)
	'set new_user=nothing
'end sub
'---------------------------------------------------------------------------------------------------------
'Function No   	: 03
'---------------------------------------------------------------------------------------------------------
'Purpose 	  	: Collect each items from passed array. Used to load data for most of the combo/Listbox control.  
'Parameter 		:Takes six parameters.
'				arr		   :A two diemension array to collect data.
'				STR        : a string name this procerure creates. 
'				IsTextOnly : flag. To indicate string creates only with text or (text and ID both) 	
'				IsSelect : flag. To indicate string contain 'Select' as first item of the control or not.
'				IsOthers : flag. To indicate string contain 'Others' as last item of the control or not. 	
'				SelectedIdString : pass an ID to be selected on the control.Default value set to '0'.
'---------------------------------------------------------------------------------------------------------
'Author  	  	: Naznin
'---------------------------------------------------------------------------------------------------------
'Created On 	: 09 Oct 2005 
'---------------------------------------------------------------------------------------------------------
'Last Modified 	: 09 Oct 2005 
'---------------------------------------------------------------------------------------------------------	
sub Load_ListFinal(arr,STR,IsTextOnly,IsSelect,IsOthers,SelectedIdString)
	
arr_index=0
	arr_index=Ubound(arr) 
	selectedFlag=0                                     
	if arr(0,0) <> "Nothing" then
			Indx_i=0
			STR=""
			selectText="Select"	
			otherText="Others"
			if IsTextOnly then
				selectValue="Select"
				otherValue="Others"
				indexValue=1
			else
				selectValue="-1"
				otherValue="-10"
				indexValue=0
			end if
					
					if IsSelect then
						if CStr(SelectedIdString)=CSTR(selectValue) then
							STR="<option value='"&selectValue&"' Selected>" & selectText & "</option>" 
							selectedFlag=1
						else
							STR="<option value='"&selectValue&"'>" & selectText & "</option>" 		
						end if		
					end if
					
					do while Indx_i<=arr_index 
						if CStr(SelectedIdString)=CSTR(arr(Indx_i,indexValue)) then
							STR = STR &  "<option value='"&trim(arr(Indx_i,indexValue))&"' Selected>" & trim(arr(Indx_i,1)) & "</option>"
							selectedFlag=1
						else
							STR = STR &  "<option value='"&trim(arr(Indx_i,indexValue)) &"'>" & trim(arr(Indx_i,1)) & "</option>"
						end if
						Indx_i=Indx_i+1
					loop
					if IsOthers then
						if Cint(selectedFlag)=1 then
							STR=STR & "<option value='"&otherValue&"'>" & otherText & "</option>" 
						else
							STR=STR & "<option value='"&otherValue&"' Selected>" & otherText & "</option>" 					
						end if		
					end if
	end if
	
 	response.write(STR)
end sub
%>

<%
'---------------------------------------------------------------------------------------------------------
'Function No   	: 03
'Purpose 	  	: Collect each items from passed array. Used to load data for most of the combo/Listbox control.  
'Parameter 		:Takes six parameters.
'				arr		   :A two diemension array to collect data.
'				STR        : a string name this procerure creates. 
'				IsTextOnly : flag. To indicate string creates only with text or (text and ID both) 	
'				IsSelect : flag. To indicate string contain 'Select' as first item of the control or not.
'				IsOthers : flag. To indicate string contain 'Others' as last item of the control or not. 	
'				SelectedIdString : pass an ID to be selected on the control.Default value set to '0'.
'Author  	  	: Naznin
'Created On 	: 09 Oct 2005 
'Last Modified 	: 10 Nov 2006 'Probal 
'---------------------------------------------------------------------------------------------------------	
sub Load_ListFinal_batch(arr,STR,IsTextOnly,IsSelect,IsOthers,SelectedIdString)	
	arr_index=0
	arr_index=Ubound(arr,2) 
	selectedFlag=0                                     
	if arr(0,0) <> "Nothing" then
		Indx_i=0
		STR=""
		selectText="Select"	
		otherText="Others"
		if IsTextOnly then
			selectValue="Select"
			otherValue="Others"
			indexValue=1
		else
			selectValue="-1"
			otherValue="-10"
			indexValue=0
		end if
					
		if IsSelect then
			if CStr(SelectedIdString)=CSTR(selectValue) then
				STR="<option value='"&selectValue&"' Selected>" & selectText & "</option>" 
				selectedFlag=1
			else
				STR="<option value='"&selectValue&"'>" & selectText & "</option>" 		
			end if		
		end if
				
		do while Indx_i<=arr_index 
			if CStr(SelectedIdString)=CSTR(arr(indexValue, Indx_i)) then
				STR = STR &  "<option value='"&trim(arr(indexValue, Indx_i))&"' Selected>" & trim(arr(1, Indx_i)) & "</option>"
				selectedFlag=1
			else
				STR = STR &  "<option value='"&trim(arr(indexValue, Indx_i)) &"'>" & trim(arr(1, Indx_i)) & "</option>"
			end if
			Indx_i=Indx_i+1
		loop
		if IsOthers then
			if Cint(selectedFlag)=1 then
				STR=STR & "<option value='"&otherValue&"'>" & otherText & "</option>" 
			else
				STR=STR & "<option value='"&otherValue&"' Selected>" & otherText & "</option>" 					
			end if		
		end if
	end if
	
 	response.write(STR)
end sub
%>

<%

Sub ShowMessage(strMessageText)
   	Dim strHtml
	strHtml = "<table width='50%' border='0' align='center' cellpadding='3' cellspacing='0'  bgcolor='#ffffff' background='images/bg_para.gif' style='border:1px solid #009;'>"
	strHtml = strHtml & "  <tr>"
    	strHtml = strHtml & "<td colspan='3' align='center' height='35' style='font-family:Arial, Helvetica, sans-serif; font-size:16px; font-weight:bold; color:#06C; border-bottom:1px solid #009;' valign='middle'>" & varSysName & "</td>"
  	strHtml = strHtml & "</tr>"
  	strHtml = strHtml & "<tr>"
	strHtml = strHtml & "<td colspan='3' align='center' style='font-family:Arial, Helvetica, sans-serif; font-size:13px; color:#333;' valign='middle'><br/>"& strMessageText & "<br/><br/>&nbsp;<a style='cursor:pointer' onclick='JavaScript:location.reload(true);' >Click here </a> to Retry</td>"
 	strHtml = strHtml & " </tr>"
	strHtml = strHtml & "</table>"
	Response.Write(strHtml)
End Sub



'
'Sub ShowMessage(strMessageText)
'	Dim strHtml
'	
'	strHtml = "<table width='50%' bgcolor='#ffffff'  border='0' align='center'>"
'	strHtml = strHtml & "<tr><td align='center'>"
'	'strHtml = strHtml & "<img border='0' src='image/logo.gif' width='180' height='48'>"
'	strHtml = strHtml & "</td></tr></table><BR><BR>"
'  
'	strHtml = strHtml & "<table width='50%' bgcolor='#007F4D'  border='0' align='center' background='images/top_bar_bg.gif'>"
'	strHtml = strHtml & "<tr><td class='BDJInstruction' align='center'><b>Bdjobs Help Desk</b></td></tr>"
'	strHtml = strHtml & "<tr><td class='BDJLebels' height='50' bgcolor='#F6F6F6' align='center'><b>"
'	strHtml = strHtml & strMessageText
'	strHtml = strHtml & "</b></td></tr></table>"
'	
'	Response.Write(strHtml)
'End Sub
%>

<%
Sub ShowMessage_ADOErrors(strErrorText, strPageName, strLineNo, strSystemName)
	Dim strADOErrorNumber
	Dim strADOErrorMessage
	Dim strMailBody
	Dim FromWho,ToWho,Subject
	
	strADOErrorNumber = Left(strErrorText, InStr(1, strErrorText,"_")-1)
	strADOErrorMessage = Mid(strErrorText, InStr(1, strErrorText,"_")+1)

	Select Case cstr(strADOErrorNumber)
		   Case "2147467259" 'or "3021" or "800400000000" or "2147217904" or "2147217900" or "2147467259" or "1280" or "3265"
		   		 Call ShowMessage("Sorry! Due to some technical problems, operation is not successful at this moment. System already reported regarding this inconvenience to BDJOBS.COM Ltd. Please try after sometime.")				 
		   Case "3021"
		   '	 Call ShowMessage("Sorry! Due to some technical problem, operation is not successful at this moment. Please try after sometime.")
		   Case "2147217913"
		   		 Call ShowMessage("Sorry! Some data you have entered wrong data in some fields. This may be caused by any or all of the following reason(s)-<br>1) Date field remains blank or unfilled up.<br>2) Years and months are not mentioned in the concerned areas.<br>3) Non-numeric values in the numeric fields.<br>Please go back and be sure that you have entered appropriate data in the fields.")
		   Case "800400000000"
		   	 Call ShowMessage("Sorry! Due to some technical problems, operation is not successful at this moment. System already reported regarding this inconvenience to BDJOBS.COM Ltd. Please try after sometime.")
		   Case "2147217904"
		   		 Call ShowMessage("Sorry! Due to some technical problems, operation is not successful at this moment. System already reported regarding this inconvenience to BDJOBS.COM Ltd. Please try after sometime.")
		   Case "2147217900"
		   		 Call ShowMessage("Sorry! Due to some technical problems, operation is not successful at this moment. System already reported regarding this inconvenience to BDJOBS.COM Ltd. Please try after sometime.")
		   Case "2147467259"
		   		 Call ShowMessage("Sorry! Due to some technical problems, operation is not successful at this moment. System already reported regarding this inconvenience to BDJOBS.COM Ltd. Please try after sometime.")
		   Case "1280"
		   		 Call ShowMessage("Sorry! Due to some technical problems, operation is not successful at this moment. System already reported regarding this inconvenience to BDJOBS.COM Ltd. Please try after sometime.")		   
		   Case "3265"
		   		 Call ShowMessage("Sorry! Due to some technical problems, operation is not successful at this moment. System already reported regarding this inconvenience to BDJOBS.COM Ltd. Please try after sometime.")
		   Case Else
		   		Call ShowMessage("Sorry! Unable to perform the operation. Please try after sometime.")
	End Select
	
	FromWho = "Auto Error generated script <error@bdjobs.com>"
	'if strSystemName = "Corporate" then
	'	ToWho = "PROBAL<probal@bdjobs.com>"
	'elseif (strSystemName = "Mybdjobs" or strSystemName = "Resumes") then
	'	ToWho = "PROBAL<probal@bdjobs.com>,PULAK<pulak@bdjobs.com>,NAZNIN<naznin@bdjobs.com>"
	'else
	'	ToWho = "PROBAL<probal@bdjobs.com>,PULAK<pulak@bdjobs.com>"		
	'end if
	'select case lcase(strSystemName)
	'	case "corporate"
	'		ToWho = "PROBAL<probal@bdjobs.com>"
	'	case "mybdjobs", "Resume"	
	'		ToWho = "PROBAL<probal@bdjobs.com>,Azam<azam@bdjobs.com>,NAZNIN<naznin@bdjobs.com>"
	'	case else
	'		ToWho = "PROBAL<probal@bdjobs.com>,Azam<azam@bdjobs.com>"		
	'end select

	'System Name: stc=Scholastica, ems=Email marketing system, 

'	if lcase(strSystemName)="mybdjobs" or lcase(strSystemName)="resume" then
'		ToWho = "PROBAL<probal@bdjobs.com>,PULAK<pulak@bdjobs.com>,NAZNIN<naznin@bdjobs.com>"
'	elseif lcase(strSystemName)="corporate" then
'		ToWho = "PROBAL<probal@bdjobs.com>,PULAK<pulak@bdjobs.com>"
'	elseif (lcase(strSystemName)="stc" or lcase(strSystemName)="workshop" or lcase(strSystemName)="ems" or lcase(strSystemName)="batb" or lcase(strSystemName)="training") then
'		ToWho = "NAZNIN<naznin@bdjobs.com>,PROBAL<probal@bdjobs.com>"
'	else
'		ToWho = "PROBAL<probal@bdjobs.com>"
'	end if
	If strSystemName = "Banglalink" Then
	   FromWho = "Auto Error generated script <error@bdjobs.com>"
	   ToWho = "PROBAL<probal@bdjobs.com>,PULAK<pulak@bdjobs.com>,Aunny<auny@bdjobs.com>"
	   Subject = "Banglalink Error At " & strPageName
	'elseif (lcase(strSystemName)="stc" or lcase(strSystemName)="workshop" or lcase(strSystemName)="ems" or lcase(strSystemName)="batb") then
	 elseif (lcase(strSystemName)="dhakabank") then
		ToWho = "Auny<auny@bdjobs.com>,Mahbub<mahbub@bdjobs.com>,Mahbub-Gmail<mahbubulhaque001@gmail.com>,Auny-Gmail<onlyauny@gmail.com>"
	 elseif (lcase(strSystemName)="batb") then
		ToWho = "NAZNIN<naznin@bdjobs.com>,PROBAL<probal@bdjobs.com>,Auny<auny@bdjobs.com>"
	 elseif (lcase(strSystemName)="ems" or lcase(strSystemName)="training" or lcase(strSystemName)="jms") then
		ToWho = "NAZNIN<naznin@bdjobs.com>,PROBAL<probal@bdjobs.com>"
	 elseif (lcase(strSystemName)="onebank") then
		ToWho = "Auny<auny@bdjobs.com>; Rony<rony@bdjobs.com>"
	 elseif (lcase(strSystemName)="ucb") then
		ToWho = "Auny<auny@bdjobs.com>; Rony<rony@bdjobs.com>"
	 elseif (lcase(strSystemName)="citybank") then
		ToWho = "Auny<auny@bdjobs.com>; Rony<rony@bdjobs.com>"
	Else 
'	   FromWho = "Auto Error generated script <error@bdjobs.com>"
	   ToWho = "PROBAL<probal@bdjobs.com>"
'	   Subject = "Error At " & strPageName
	End If
	If (lcase(strSystemName)="onebank") Then
		Subject="Error at Onebank (" & strPageName & ")"
	ElseIf (lcase(strSystemName)="ucb") Then
		Subject = "Error At " & strPageName & " - " & strSystemName & " Error" 
	ElseIf (lcase(strSystemName)="citybank") Then
		Subject = "Error At " & strPageName & " - " & strSystemName & " Error" 
	Else
		Subject = "Error At " & strPageName & " (Bdjobs) " 
	End If
	
	strMailBody = "ADO Error No :" & strADOErrorNumber & "<br>"
	strMailBody = strMailBody & "ADO Error Text :" & strADOErrorMessage & "<br>"
	strMailBody = strMailBody & "Page Name :" & strPageName & "<br>"
    strMailBody = strMailBody & "Line No :" & strLineNo & "<br>"
    strMailBody = strMailBody & "System Name :" & strSystemName

	'on error resume next
	'response.Write(strMailBody)
	
	sendmail FromWho, ToWho, Subject,strMailBody,"","", "dhakabank<dhakabank@bdjobs.com>"
	DivCreateForAds
	Response.End()
End Sub

%>
<%
Sub ShowMessage_ADOErrorsOffLine(strErrorText, strPageName, strLineNo, strSystemName)
	Dim strADOErrorNumber
	Dim strADOErrorMessage
	Dim strMailBody
	
	strADOErrorNumber = Left(strErrorText, InStr(1, strErrorText,"_")-1)
	strADOErrorMessage = Mid(strErrorText, InStr(1, strErrorText,"_")+1)

	strMailBody = "ADO Error No :" & strADOErrorNumber & "<br>"
	strMailBody = strMailBody & "ADO Error Text :" & strADOErrorMessage & "<br>"
	strMailBody = strMailBody & "Page Name :" & strPageName & "<br>"

    strMailBody = strMailBody & "Line No :" & strLineNo & "<br>"
    strMailBody = strMailBody & "System Name :" & strSystemName

	response.Write(strMailBody)
	Response.End()
End Sub
%>

<%
Sub SetResumeSessions()
	dim strCSecretCode
	
	'Read from Cookie
	ID=request.Cookies("User")("User_Id")
	'If Cookies not found
	if ID = "" then
		response.Redirect("http://www.bdjobs.com/mybdjobs/default.asp?q=1")
	end if

	set tmp_objData = new c_Data_Multi_Server
	SQL= "SELECT ID, CAT_IDs, NAME, USER_NAME, PASSWORD, UPDATED, POSTING_DATE FROM PERSONAL WHERE ID="&ID 'USER_NAME='"+UserName+"' AND PASSWORD='"+Request.Form("PASS")+"'"
		
	strDataArr=tmp_objData.RetrieveData("Resume", SQL, errMsg)
	set tmp_objData=nothing
	
	'if RS.EOF then
	if strDataArr(0,0) = "Nothing" then
		Response.Clear
		response.Redirect("http://www.bdjobs.com/mybdjobs_tst/login.asp?q=1")
		'Response.Redirect ("../not_correct.htm")	
	else
		'get Secret Code for cookie
		strCSecretCode=getSecretCode(strDataArr(0,0), strDataArr(0,3), strDataArr(0,6), Date())
		if request.Cookies("User")("sCode-Seeker") <> strCSecretCode then
			Response.Clear
			response.Redirect("http://www.bdjobs.com/mybdjobs_tst/login.asp?q=1")
		else
			Session("password")=strDataArr(0,4)  'RS("PASSWORD")
			Session("pname")=strDataArr(0,3)  'RS("USER_NAME")
			Session("fullname")=strDataArr(0,2)  'RS("NAME")
			Session("UserID")=strDataArr(0,0)  'RS("ID")
			Session("cname")=strDataArr(0,1)	'RS("CAT_IDs")
			Session("cart_id")=strDataArr(0,0)	'RS("ID")
			Session("Updated")=strDataArr(0,5)	'RS("UPDATED")
			Session("Posting_Date")=strDataArr(0,6)	'RS("POSTING_DATE")
			
			'*Session("uAccessMsg")=CheckStep(strDataArr(0,0))
			'Session("block_emp")=RS("BLOCK_EMP")
						
			'Response.Clear
		end if
	end if
End Sub
%>

<%
	'Build Secret Code for Cookie
	'Probal 17th August, 2007
	function getSecretCode(lnID, strtmpUserName, dtDate1, dtDate2)
		dim tmpCode
		dim tmpSum
		dim tmpModNumber
		
		'get first 3 character of user name
		if len(strtmpUserName)>=3 then
			tmpCode=mid(strtmpUserName,1,3)
		else
			tmpCode="qsxRE"
		end if
		
		if isnumeric(lnID) then
			tmpModNumber = lnID mod 73
			tmpModNumber = lnID + tmpModNumber
		else
			tmpModNumber = 173569			
		end if

		'Sum first date (Posting date for Resume, ACCT_CR for Corporate)
		if isdate(dtDate1) then
			tmpSum = day(dtDate1) + month(dtDate1) + year(dtDate1)
		else
			tmpSum = 1992 'Total of 07/12/1973
		end if
		if isdate(dtDate2) then
			tmpSum = tmpSum + day(dtDate2) + month(dtDate2) + year(dtDate2)
		else
			tmpSum = tmpSum + 2036 'Total of  29/07/2000
		end if
		'Sum ID number With tmpSum
		tmpSum = tmpSum + tmpModNumber
		
		'Set the Secret Code
		tmpCode = tmpCode & tmpSum
		
		getSecretCode = tmpCode
	end function
%>
<%
Sub SetCompanySessions()
	dim strCSecretCode
	
	'Read from Cookie
	ID=request.Cookies("Company")("ComNo")
	if ID="" then		
%>
<p><strong><font color="#990000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Session 
  expired. </font></strong></p>
<p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><a href="http://www.bdjobs.com/corporate/employer.asp" target="_parent"><strong>Click 
  here</strong></a><strong> to Login again.</strong></font> </p>
  <%
		response.End()
	end if
	SQL= "SELECT CP_ID, NAME, USER_NAME, PASSWORD, CONTACT_PERSON, E_MAIL, LOGIN, RESUME_DATE, BILL_CONTACT, CTYPE, ACCT_CR FROM dbo_COMPANY_PROFILES WHERE CP_ID="+ID
	
	set tmp_objData = new c_Data_Multi_Server
	strDataArr=tmp_objData.RetrieveData("Corporate", SQL, errMsg)
	if errMsg<>"" then
		set tmp_objData=nothing
		ShowMessage_ADOErrors errLog,"Utility.asp","280","Corporate"
	end if
	
	set tmp_objData=nothing
	
	'Set RS = server.CreateObject ("ADODB.recordset")
	'RS.open SQL, g_BDJOBS_SQL_DSN
	
	if strDataArr(0,0)="Nothing" then	
		Response.Clear
		Response.Redirect ("../not_correct_com.asp?c1="&c1&"&c="&c)	
	else
		strCSecretCode=getSecretCode(strDataArr(0,0), strDataArr(0,2), strDataArr(0,10), Date())
		if request.Cookies("Company")("sCode-Empl") <> strCSecretCode then
			Response.Clear
			response.Redirect("default.asp")
		else
			Session("CPERSON")=strDataArr(0,4) 'RS("CONTACT_PERSON")
			Session("NAME")=strDataArr(0,1) 'RS("NAME")
			Session("ID")=strDataArr(0,0) 'RS("CP_ID")
			SESSION("company_id")=strDataArr(0,0) 'RS("CP_ID")
			Session("e_mail")=strDataArr(0,5) 'RS("E_MAIL")
			Session("RESUME_DATE")=strDataArr(0,7) 'RS("RESUME_DATE")
			Session("BCONTACT")=strDataArr(0,8) 'RS("BILL_CONTACT")
			Session("C_TYPE")=strDataArr(0,9) 'RS("CTYPE")				
			'Response.Clear
		end if
	end if
	'RS.Close
	'Set RS = Nothing
End Sub
%>

<%
Sub SetCompanySessionsNew()
	dim strCSecretCode
	
	'Read from Cookie
	ID=request.Cookies("Company")("ComNo")
	if ID="" then		
%>
		<p><strong><font color="#990000" size="2" face="Verdana, Arial, Helvetica, sans-serif">Session 
		  expired. </font></strong></p>
		<p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><a href="http://www.bdjobs.com/corporate/"><strong>Click 
		  here</strong></a><strong> to Login again.</strong></font> </p>
  <%
		response.End()
	end if
	SQL= "SELECT CP_ID, NAME, USER_NAME, PASSWORD, CONTACT_PERSON, E_MAIL, LOGIN, BILL_CONTACT, ACCT_CR FROM dbo_COMPANY_PROFILES WHERE CP_ID="+ID
	
	set tmp_objData = new c_Data
	tmp_objData.OpenConnection "Corporate", errMsg
	strDataArr=tmp_objData.RetrieveData(SQL, errMsg)
	if errMsg<>"" then
		set tmp_objData=nothing
		ShowMessage_ADOErrors errLog,"Utility.asp","420","Corporate"
	end if		
	
	if strDataArr(0,0)="Nothing" then	
		Response.Clear
		Response.Redirect ("default.asp")	
	else
		strCSecretCode=getSecretCode(strDataArr(0,0), strDataArr(2,0), strDataArr(8,0), Date())
		if request.Cookies("Company")("sCode-Empl") <> strCSecretCode then
			Response.Clear
			response.Redirect("default.asp")
		else
			Session("CPERSON")=strDataArr(4,0) 'RS("CONTACT_PERSON")
			Session("NAME")=strDataArr(1,0) 'RS("NAME")
			Session("ID")=strDataArr(0,0) 'RS("CP_ID")
			SESSION("company_id")=strDataArr(0,0) 'RS("CP_ID")
			Session("e_mail")=strDataArr(5,0) 'RS("E_MAIL")
			'Session("RESUME_DATE")=strDataArr(7,0) 'RS("RESUME_DATE")
			Session("BCONTACT")=strDataArr(7,0) 'RS("BILL_CONTACT")
			'Session("C_TYPE")=strDataArr(9,0) 'RS("CTYPE")
			
			SQL= "SELECT top 1 ServiceID, StartingDate, Duration, Complete, Blocked from CompanyServices WHERE CP_ID="&strDataArr(0,0)&" and Complete<>1 and Blocked<>1 order by StartingDate desc"
					
			ComServicesArr=tmp_objData.RetrieveData(SQL,errMsg)
			if errMsg<>"" then
				set tmp_objData=nothing
				ShowMessage_ADOErrors errLog,"Utility.asp","441","Corporate"
			end if
			set tmp_objData=nothing
			
			dim intCType
			dim blnValid
			if ComServicesArr(0,0) = "Nothing" then
				intCType = 0
				blnValid=false
			else
				intCType = 0
				blnValid=false
				for i = 0 to ubound(ComServicesArr,2)				
					if isdate(ComServicesArr(1,i)) and isnumeric(ComServicesArr(2,i)) then
						if dateadd("d", ComServicesArr(2,i), ComServicesArr(1,i))>=date() then
							intCType = ComServicesArr(i,0)
							blnValid=true
							exit for
						end if
					end if	
				next
			end if
			
			Session("CV_SEARCH_ACCESS")=False
			Session("JOB_POSTING_ACCESS")=False
			'if blnValid then
			'	if intCType=2 or intCType=3 or intCType=4 or intCType=5 or intCType = BDJOBS_USER_CM_BOTH or intCType = BDJOBS_USER_CM_CVSEARCH then
			'		Session("CV_SEARCH_ACCESS")=true
			'	end if
			'	if intCType=2 or intCType=6 or intCType = BDJOBS_USER_CM_BOTH or intCType = BDJOBS_USER_CM_JOBPOSTING then
			'		Session("JOB_POSTING_ACCESS")=true
			'	end if
			'end if
			if blnValid then
				if intCType=2 or intCType = BDJOBS_USER_CM_BOTH then
					Session("CV_SEARCH_ACCESS")=true
					Session("JOB_POSTING_ACCESS")=true
				elseif intCType=3 or intCType=4 or intCType=5 or intCType = BDJOBS_USER_CM_CVSEARCH then
					Session("CV_SEARCH_ACCESS")=true				
				elseif intCType=6 or intCType = BDJOBS_USER_CM_JOBPOSTING then
					Session("JOB_POSTING_ACCESS")=true
				end if
			end if
			erase ComServicesArr
			erase strDataArr
							
			'Response.Clear
		end if
	end if
End Sub
%>

<%

'Updated by Probal on March 05, 2007
sub ShowPageLink(tmpTotalPage,curPage,varLink)
	dim FirstPage, LastPage
	dim tmpDif
	dim midPage, tmpAllPage
	
	midPage=5
	tmpAllPage=midPage*2+1
	if cint(tmpTotalPage)<=cint(tmpAllPage) then
		FirstPage=1
		LastPage=tmpTotalPage
	else
		FirstDif=0: LastDif=0
		if curPage<1 then 
			curPage=1 
		elseif cint(curPage)>cint(tmpTotalPage) then 
			curPage=tmpTotalPage
		end if
		
		FirstPage=curPage-midPage
		if FirstPage<1 then
			tmpDif=abs(FirstPage)+1
			FirstPage=1
		end if
		LastPage=curPage+midpage+tmpDif
		if cint(LastPage)>cint(tmpTotalPage) then
			tmpDif=LastPage-tmpTotalPage
			LastPage=tmpTotalPage
			FirstPage=FirstPage-tmpDif
		end if		
	end if
	
	j=curPage
	if FirstPage<>1 then response.Write("<a href ="&varLink&"1 style='text-decoration:none'>1...</a>")		
  	for i=FirstPage to LastPage
  		if cint(i)=cint(j) then%>
  <font size="4" face="Verdana, Arial, Helvetica, sans-serif"><%=i%></font> 
  <%j=CInt(tmpTotalPage)+1
		else
			tmpLink=varLink&i%>
  <a href ="<%=tmpLink%>" style="text-decoration:none"><%=i%></a>&nbsp; 
  <%
		end if
	next
	
	if LastPage<>tmpTotalPage then response.Write("<a href ="&varLink&tmpTotalPage&" style='text-decoration:none'>..."&tmpTotalPage&"</a>")	
end sub 
%>
  <%
function GetPhotoName(uID)
		UserName=Trim(Session("pname"))
		if (UserName="" and cLng(uID)>0) then
			'*****************Modified (Probal 06/07/2006****************
			set objData=new c_Data_Multi_Server
			SQL="Select user_name from Personal where id="&uID
			UN=objData.RetrieveData("Resume",SQL,errLog)
			If errLog <> "" Then
				set objData = nothing
				ShowMessage_ADOErrors errLog,"Utility","293","MyBdjobs"
			End If
			if UN(0,0)="nothing" then
				ShowMessage "Session expired."
			end if
			UserName = UN(0,0)
		'	SetResumeSessions
		'	UserName=Trim(Session("pname"))
		'************************************************************		
		end if
				
		GetPhotoName=LCASE(Trim(MID(UserName,1,3)))&"-"&Trim(uID)
end function
%>
<%
'---------------------------------------------------------------------------------------------------------
'Class No   	: 07
'Purpose 	  	: Retrieve categories from database and write into a dropdown listbox
'Parameters		: WriteMode - It can be 2 modes. One is Text another one is Number
'				  SelectedValue - A value which will be selected here
'Author  	  	: Probal
'Created On 	: 12 July 2006 
'Last Modified 	: 
'---------------------------------------------------------------------------------------------------------
sub PrintCategories(WriteMode,SelectedValue)
	set objCategories=new c_Data_Multi_Server
	sql="Select Cat_ID, cat_NAME from Category order by Cat_NAME"
	arrCategory=objCategories.RetrieveData("Resume",sql,errLog)
	'if errLog<>"" then response.Write(errLog)	
	set objCategories=Nothing
	
	if WriteMode="Text" then
		IndexNo=1
	else
		IndexNo=0
	end if
	strCatList=""
	if arrCategory(0,0) <> "Nothing" then
		for sub_catNo = 0 to ubound(arrCategory)
			strSelected=""
			if cstr(arrCategory(sub_catNo,IndexNo))=cstr(SelectedValue) then strSelected = "selected"
			strCatList=strCatList&"<option value='"&arrCategory(sub_catNo,IndexNo)&"' "&strSelected&">"&arrCategory(sub_catNo,1)&"</option>"&chr(10)
		next	
	end if
	response.Write(strCatList)
end sub
%>

<%
'---------------------------------------------------------------------------------------------------------
'Class No   	: 08
'Purpose 	  	: Set string date format like 'Jul 27, 2007'
'Parameters		: valDate - Date that convert to string date'				  
'Author  	  	: Probal
'Created On 	: 27 July 2006 
'Last Modified 	: 
'---------------------------------------------------------------------------------------------------------
function setStringDate(valValue)
	dim strtmpDate
	if isdate(valValue) then
		strtmpDate=mid(monthname(month(valValue)),1,3)&" "&day(valValue)&", "&year(valValue)
	else
		strtmpDate=""
	end if
	setStringDate=strtmpDate
end function
%>
<%
'Sub LoadDataFromXMLtoArray(arr,strFile,idField,nameField)
'	Set objReq = Server.CreateObject("Microsoft.XMLDOM")
'
'	'Load the request into XML DOM
'	objReq.Load Server.MapPath("\Data\XML Data\"&strFile&".xml")
'	
'	if objReq.ParseError then
'		Response.Write("Parse Err:"&objReq.ParseError)
'		response.End()
'	else
'		Dim tCount
'		tCount=objReq.documentElement.selectNode("RowCount").text 
'		Response.Write("Count:"&tCount)
'		response.End()
'
'	end if
'	Redim arr(tCount-1,1)
'
'	Dim objNodeListUrl
'	DIm objNodeListTitle
'	
'	Set objNodeListUrl=objReq.documentElement.selectNodes(idField)
'	Set objNodeListTitle=objReq.documentElement.selectNodes(nameField)
'
'	for i=0 to tCount-1
'		arr(i,0)=objNodeListUrl(i).text
'		arr(i,1)=objNodeListTitle(i).text
'	Next
'End sub
%>
<%
Sub LoadDataFromXMLtoArray(arr,strFile,idField,nameField)
'Response.Write("ABC")
'Response.End()
	Set objReq = Server.CreateObject("Microsoft.XMLDOM")

	'Load the request into XML DOM
	objReq.Load Server.MapPath("\Data\XML Data\"&strFile&".xml")
	
	if objReq.ParseError then
		'Response.Write("Parse Err:"&objReq.ParseError)
		'response.End()
	else
		Dim tCount
	set	tCount=objReq.selectNodes("/"&strFile&"/RowCount")'objReq.documentElement.selectNodes("RowCount")'.text 
	indexCount=	(tCount(0).text)-1

	end if
	Redim arr(indexCount,1)

	Dim objNodeListID
	DIm objNodeListName
	
	Set objNodeListID=objReq.selectNodes("/"&strFile&"/ROW/"&idField&"/text()")')"CAT_ID")'idField)
	Set objNodeListName=objReq.documentElement.selectNodes("/"&strFile&"/ROW/"&nameField&"/text()")
	for i=0 to indexCount'uBound(objNodeListID)'
		arr(i,0)=objNodeListID(i).text
		arr(i,1)=objNodeListName(i).text
	Next
End sub
%>
<%
Function LoadListSTC(arrData,IsTextOnly,FirstItem,SecondItem,LastItem,SelectedItem)
	Dim loopCounter
	Dim returnStr
	Dim selectedFlag
		selectedFlag=false
	if arrData(0,0)<>"Nothing" then
		maxCounter=UBound(arrData,2)
		
'---------------------------------------------------------------------------------------------------------------------------------------------		
		if trim(FirstItem)<>"" then 'Check First String
			if cStr(trim(SelectedItem))=cStr("-1") then
				returnStr="<option value='-1' Selected>" & trim(FirstItem) & "</option>" 
				selectedFlag=true
			else
				returnStr="<option value='-1'>" & trim(FirstItem) & "</option>" 
			end if	
		end if	' End check First string
'---------------------------------------------------------------------------------------------------------------------------------------------		
		if trim(SecondItem)<>"" then 'Check Second String
			if cStr(trim(SelectedItem))=cStr("-11") then
				returnStr=returnStr&"<option value='-11' Selected>" & trim(SecondItem) & "</option>" 
				selectedFlag=true
			else
				returnStr=returnStr&"<option value='-11'>" & trim(SecondItem) & "</option>" 
			end if	
		end if	'End Check Second String

'---------------------------------------------------------------------------------------------------------------------------------------------	
		if IsTextOnly then
			indexVal=1
		else
			indexVal=0
		end if
		
		for loopCounter=0 to maxCounter
			if CStr(SelectedItem)=CSTR(arrData(indexVal,loopCounter)) then
				returnStr = returnStr &  "<option value='"&trim(arrData(indexVal,loopCounter))&"' Selected>" & trim(arrData(1,loopCounter)) & "</option>"
				selectedFlag=true
			else
				returnStr = returnStr &  "<option value='"&trim(arrData(indexVal,loopCounter)) &"'>" & trim(arrData(1,loopCounter)) & "</option>"
			end if
		next 
'---------------------------------------------------------------------------------------------------------------------------------------------
		if trim(LastItem)<>"" then 'Check Last String
			if (selectedFlag=false) then
				returnStr=returnStr&"<option value='-10' Selected>" & trim(LastItem) & "</option>" 
			else
				returnStr=returnStr&"<option value='-10'>" & trim(LastItem) & "</option>" 
			end if	
		end if	'End Check Last String
'---------------------------------------------------------------------------------------------------------------------------------------------		
	LoadListSTC=returnStr
	else
		LoadListSTC=""
	End if	
End Function

Function getPhotoURL(IsEdit,boolERSphoto,boolBdjPhoto,srcCommonERSPhoto,srcCommonBdjPhoto,srcRealERSPhoto,srcRealBdjPhoto)


	
' arrPhoto = array(txtButton,boolPhoto,srcPhoto)
   If IsEdit = True Then 
      txtButton = "Change Photo"
	  If boolERSphoto = True Then 
	    boolPhoto = True
		srcPhoto = srcCommonERSPhoto&srcRealERSPhoto&"?"&rnd&time
	  ElseIf boolBdjPhoto = True Then 
	    boolPhoto = True
		srcPhoto = srcCommonBdjPhoto&srcRealBdjPhoto&"?"&rnd&time
	  Else 
	    txtButton = "Upload Photo"
		boolPhoto = False
		srcPhoto = "images/noimage.gif"&"?"&rnd&time
	  End If 
   Else 
      txtButton = "Change Photo"
	  If boolERSphoto = True Then 
	    boolPhoto = True
		srcPhoto = srcCommonERSPhoto&srcRealERSPhoto&"?"&rnd&time
	  ElseIf boolBdjPhoto = True Then 
	    boolPhoto = True
		srcPhoto = srcCommonBdjPhoto&srcRealBdjPhoto&"?"&rnd&time
	  Else 
	    txtButton = "Upload Photo"
		boolPhoto = False
		srcPhoto = "images/noimage.gif"&"?"&rnd&time
	  End If  
   End If 
 ' txtButton = ""
' boolPhoto = ""
 'srcPhoto = "" 
 	Dim arrPhoto(2)
	arrPhoto(0) = txtButton
	arrPhoto(1) = boolPhoto
	arrPhoto(2) = srcPhoto
   getPhotoURL = arrPhoto
End Function 

Sub analiticsERS()
%>	
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-44332588-1', 'bdjobs.com');
ga('send', 'pageview');

</script>
<%End Sub%>

<%
Sub setGoogleBanner(BannerType)
	dim adSlot, adWidth, adHeight
	
	select case BannerType
		case "HorizontalHalfBanner"
			adSlot = "9158813540": adWidth = "234": adHeight = "60"
			
		case "HorizontalBanner"
			adSlot = "9019212749": adWidth = "468": adHeight = "60"
		
		case "HorizontalBannerTrn"
			adSlot = "2002146740": adWidth = "468": adHeight = "60"
			
		case "HorizontalLeaderboard"
			adSlot = "5926145549": adWidth = "728": adHeight = "90"
		
		case "HorizontalLeaderboardGray"
			adSlot = "8386757543": adWidth = "728": adHeight = "90"
			
		case "MediumRectangle"
			adSlot = "8740011146": adWidth = "300": adHeight = "250"
		
		case "SquareBanner"
			adSlot = "2833078342": adWidth = "250": adHeight = "250"
		
		case "SquareBannerBng"
			adSlot = "6990749545": adWidth = "250": adHeight = "250"
		
		case "VerticalBanner"
			adSlot = "8526358340": adWidth = "120": adHeight = "240"
			
		case "VerticalWide"
			'adSlot = "4170210744": adWidth = "160": adHeight = "600"
			adSlot = "3078267141": adWidth = "160": adHeight = "600"
			BannerType = "VerticalWideBng"
		
		case "VerticalWideBng"			
			adSlot = "3078267141": adWidth = "160": adHeight = "600"
		
		case "VerticalWideBg"
			adSlot = "1077143545": adWidth = "160": adHeight = "600"
		
		case "VerticalLarge"
			adSlot = "5095213945": adWidth = "300": adHeight = "600"
			
		case "LinkHorizontalLarge"					
			adSlot = "7130350345": adWidth = "728": adHeight = "15"
			
		case "LinkVerticalMedium"
			adSlot = "4030609942": adWidth = "160": adHeight = "90"	
		
		case "LinkVerticalMediumBng"
			adSlot = "2901529942": adWidth = "160": adHeight = "90"	
		
		case "LinkVerticalLarge"
			adSlot = "2479824745": adWidth = "180": adHeight = "90"	
	end select	
	
	WriteGoogleBanner adSlot, adWidth, adHeight, BannerType
End Sub

Sub WriteGoogleBanner(adSlot, adWidth, adHeight, BannerType)
%>
	<script type="text/javascript"><!--
    google_ad_client = "ca-pub-5130888087776673";  
	/* <%=BannerType%> */  
    google_ad_slot = "<%=adSlot%>"; 
    google_ad_width = <%=adWidth%>;
    google_ad_height =  <%=adHeight%>; 
    //-->
    </script>
    <script type="text/javascript"
    src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
    </script>
<%
End Sub


Sub DivCreateForAds 
   Response.Write("<br/><br/><br/><br/><br/><br/><div align='center' style='padding-top:10px;'>")
  	     setGoogleBanner "HorizontalLeaderboard"
   Response.Write("</div>") 
		   Response.Write("<br/><div align='center' style='padding-top:10px;margin-left:7%;float:left;'>")
			setGoogleBanner "LinkVerticalLarge"
	   Response.Write("</div>") 	
	   Response.Write("<br/><div align='center' style='padding-top:10px;margin-left:8%;'>")
	
			setGoogleBanner "MediumRectangle"
	   Response.Write("</div>") 	
	   Response.Write("<br/><div align='center' style='padding-top:10px;margin-left:9%;float:left;'>")

			setGoogleBanner "SquareBannerBng"

      Response.Write("</div>") 	
	   
   Response.Write("<br/><div align='center' style='padding-top:10px;margin-left:5%;float:left;'>")
		  setGoogleBanner "LinkVerticalMedium"
	   Response.Write("</div>") 	
	   Response.Write("<br/><div align='right' style='padding-top:10px;margin-left:6%;float:left;'>")
	     setGoogleBanner "LinkVerticalMediumBng"
	
   Response.Write("</div>") 	
   Response.Write("<br/><div align='right' style='padding-top:10px;margin-left:4%;'>")
		  setGoogleBanner "VerticalWideBg"
	   Response.Write("</div>") 	
	   
	   Response.Write("</body></html>")

End Sub 

Sub DateOver(overDate, gotoPage)
'Response.Write("<br/>overdate"&overDate)
fromDate = overDate 
'Response.Write("<br/>overdate"&overDate)
toDate = now()
'Response.Write("<br/>toDate"&toDate&"<br/>")
' response.write(DateDiff("yyyy",fromDate,toDate) & "<br />")
'response.write(DateDiff("q",fromDate,toDate) & "<br />")
'response.write(DateDiff("m",fromDate,toDate) & "<br />")
'response.write(DateDiff("y",fromDate,toDate) & "<br />")
'response.write(DateDiff("d",fromDate,toDate) & "<br />")
'response.write(DateDiff("w",fromDate,toDate) & "<br />")
'response.write(DateDiff("ww",fromDate,toDate) & "<br />")
'response.write(DateDiff("h",fromDate,toDate) & "<br />")
'response.write(DateDiff("n",fromDate,toDate) & "<br />")
'response.write(DateDiff("s",fromDate,toDate) & "<br />")
seconds = DateDiff("s",fromDate,toDate) 

'ValuePrint overDate, "overdate"
If seconds > 0  Then
   Response.Redirect(gotoPage) 
Else
 ValuePrint Date() , "date"
 ValuePrint cDate(overDate) , "overDate"
End If 
End  Sub 
%> 