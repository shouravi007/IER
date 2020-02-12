<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DhakaBank Limited : Search Panel </title>
<link rel="stylesheet" type="text/css" href="../Application/style.css">
<link rel="stylesheet" type="text/css" media="all" href="css/reset.css">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%analiticsERS%>
</head>


<script>
function PageSubmit(pNo)
{
	//alert(pNo);
	document.getElementById('hPage').value=pNo;
	document.getElementById('frmResume').submit();
}

function Email()
{	
	document.getElementById('frmShortList').action='email2applicants.asp';
	document.getElementById('frmShortList').target='_blank'
	document.getElementById('frmShortList').submit();
}
</script>
<style>
        #marker-end {
            height: 32px;
            /*background: url(css/loading.gif) no-repeat 50% 50%;*/
        }
    </style>
    <script>
        $(document).ready(function () {
            $('#marker-end')
                .on('lazyshow', function () {
                    $.ajax({
                            url: 'SearchResultGroup.asp',
                            dataType: "asp"
                        })
                        .done(function (responseText) {
                            // add new elements
                            $('#infinite').append(
                                $('<div>')
                                    .append($.parseHTML(responseText))
                                    .find('#infinite')
                                    .children()
                            );
                            // process added elements
                            $(window).lazyLoadXT();
                            $('#marker-end').lazyLoadXT({visibleOnly: false, checkDuplicates: false});
                        });
               })
               //.lazyLoadXT({visibleOnly: false});
        });
    </script>
    
<!--#include File = "CheckSession.asp" -->
<!-- #include virtual = "\Class\c_Data_batch.asp" -->
<!-- #include File = "include_file\showPageList.asp" -->
<!-- #include File = "include_file\Utility.asp" -->
<!-- #include File = "include_file\Utility_dhakabank.asp" -->
<%
' This Procedure is Used by All Class, Function & Procedure. This is an Error Message Displaying Procedure.

Session.Timeout = 120

Public Sub ErrorMessage(LineNumber, errLog, flag)
	If errLog <> "" Then
		If flag = 1 Then
			objDhakaBank.RollBackTransaction errLog
		End If
		
		If Request.ServerVariables("REMOTE_ADDR") = "123.49.32.141" Or InStr(Request.ServerVariables("HTTP_REFERER"), "serverbdj") > 0 Then  
				Response.Write("<br/>"&errLog)
				formSubmit = False 
				EndOfAllProcess
		
		ElseIf Request.ServerVariables("SERVER_NAME") = "serverbdj" Then 
				Response.Write("<br/><br/>"&errLog)
				formSubmit = False 
				EndOfAllProcess
		Else
				formSubmit = False 				
		        ConnectionClose
				ShowMessage_ADOErrors errLog, "Default.asp", LineNumber, "DhakaBank"

		End If
	End If

		
End Sub

intTN = Request.Form("txtTrakingNumber")


IsWhereEdu = True 
'Session("UserName") ="dhakabank"
'Response.Write("ss:"&Session("UserName"))


If Session("UserName") = "" Then
	Session.Abandon()
	Response.Redirect("Default.asp")
End If
%>
 <%
	Set objDhakaBank = New c_data
	objDhakaBank.OpenConnection "DhakaBankSQL", strErr
	ErrorMessage "34", errMsg, 0	
	' Variable Declaration.
	Dim intTrakingNumber
	Dim strJobPosting
	Dim strStartDate,strEndDate
	Dim strName, strNameType, strSex, strEmail, strPhone, strPhoneType, strPresentAddress, strPermanentAddress, strRejected, strPhoto
	'Dim strDegreeName, strInstituteName, strCampus, strPercentFrom, strPercentTo, strGrade, strMajorSubject
	Dim strExperience, strExperienceType, strCompanyName, strEmplymentType, strExperienceErea
	Dim strProfessionalDegree, strTrainingName, strAwardingBody
	Dim strComputerGeneralSkill, strComputerAdvancedSkill, strKeySkill, strExpectedTrustGrade, strLocation, strWorkAreaPreference
	Dim strPreviouslyInterviewedPosition, strRefereeName
	'Dim intAgeFrom, intAgeTo, intEducationLevel, intPassingYear, intResult, intProfessionalPassingYear, intTrainingDuration, intTrainingPassingYear
	Dim intPresentSalaryFrom, intPresentSalaryTo, intExpectedSalaryFrom, intExpectedSalaryTo, intNoticePeriodFrom, intNoticePeriodTo
	Dim intPreviouslyInterviewedMonth, intPreviouslyInterviewedYear
	Dim strCVType
	Dim IsDisplay, IsWhere, SQLCV, SQLWhere, UB
	Dim intTN
	
	strCVType = ""
	'Response.Write("strCVType: " & strCVType)
	'strGrade = ""

	'strPercentFrom = ""
	'strPercentTo = ""
	
	IsDisplay = False
	IsWhere = True
	SQLWhere = ""
	strBrach = ""
	strJoin = ""
	
	
%>

<!--#include File = 'SearchResultGroup_bd\BL.asp' -->
<body class="bodytext">
<script type='text/javascript' src='Refresher.js'></script>
<table align="center" width="95%" border="0" cellpadding="0">
	<!--banner-->
    <tbody><tr>
    	<td>
        	<table align="center" width="100%" border="0" cellpadding="0">
                <!----------------->
                <tbody>
                  <tr>
                    <td width="303"><h2 style="color:#F00;"> <%=strJobName%></h2></td>
                    <td width="657" align="center">&nbsp;</td>
                    <td align="right">&nbsp;</td>
                  </tr>
                  <tr>
					<td colspan="2">
  <!--                    <div class="sectionheader" style="font-size:12px;">
                            <input name="txtJobName" type="hidden" value="<%'=strJobName%>" />
                    </div>
-->                    
 


<%	
	Sub  SqlGenerateForEduSql()
	End Sub 
				
'End If
			
	Sub SqlGenerteForCountPersonalCVTotal()
  ' after this all conditon is optimaized and real sql query wil be generte .. 
    End Sub 
	
	
	dim arrIDs, intProcced
	'arrIDs = Session("arrID")
	intProcced = 0	
	
	'strReferer = GetReferer("SearchPanel.asp")
	'strReferer1 = GetReferer("GroupAdmin.asp")
	'ValuePrint Request.ServerVariables("HTTP_REFERER"), "Reff" 
	'response.Write(InStr(Request.ServerVariables("HTTP_REFERER"),"groupadmin.asp"))
	If InStr(Request.ServerVariables("HTTP_REFERER"),"GroupAdmin.asp") > 0 OR InStr(Request.ServerVariables("HTTP_REFERER"),"groupadmin.asp") > 0 Then
		SQLCountPersonalTemp = "SELECT DISTINCT p.Personalid FROM " & strBrach & "PERSONAL p " & strJoin
		SQLCountPersonalTemp = SQLCountPersonalTemp & SQLWhere & " Where P.postedon > '"&year(now)&"' "
	    ValuePrint SQLCountPersonalTemp,"SQLCountPersonalTemp"
		
		'SQLCountPersonal = "SELECT COUNT(ID) FROM PERSONAL WHERE Id IN(" & SQLCountPersonalTemp & ")"
		
	    'Response.Write(SQLCountPersonalTemp&"<br/>")
'		Response.End()

			IF Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0  Then		
	   		Response.Write(SQLCountPersonalTemp&"<br/>")
			End If

		arrCountPersonal = objDhakaBank.RetrieveData(SQLCountPersonalTemp, errMsg)
		ErrorMessage "1773", errMsg, 0

		strModuleName = "Search Result"
		strAction = "Page-"&pg
		If CStr(strJobPosting) = "S" Then 
			strJobName = "General"
		End If
		

		
		SQLUserLog = "INSERT INTO UserLog (UserId, UserName, ModuleName, [Description], ActionDate, [Action]) values (" 
		SQLUserLog = SQLUserLog & intUserId & ", '" & strUserName  & "', '" & strModuleName & "', '"&ReplacedAllTypeOfSpecialChar(SQLCountPersonalTemp)&"', '" & Now & "' ,'" & strAction & "')"
		
	        IF Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0 Then		
	   		'Response.Write(SQLUserLog&"<br/>")
			 Response.Write(Session("str"))
			End If
			
		objDhakaBank.ExecuteQuery SQLUserLog, strErr

		
		'UB=UBound(arrCountPersonal,2)
		If arrCountPersonal(0, 0) <> "Nothing" Then
			'UB = arrCountPersonal(0, 0)
			UB=UBound(arrCountPersonal,2) + 1
			Session("arrID") = arrCountPersonal
			'arrIDs = arrCountPersonal
			IsDisplay = True
			
		End If
		
		'ValuePrint UB,"UB"
	Else	
		UB = Request.Form("txtUB")
		If UB > 0 Then
			IsDisplay = True
			intProcced = 1

		End If
		
		'ValuePrint UB,"Elseub"
	End If
	
	'ValuePrint SQLCountPersonal,"SQLCountPersonal"

	
	
	'Response.Write(strCVType & "<br />" & SQLCountPersonal)
	'Response.End()
		
	If IsDisplay = True Then
		'intTotalCount = UB+1

		If intProcced = 1 Then
			intTotalCount = UB
			
			'*****************************  Building Session  ***************
			'toskip = Request.queryString("toskip")
			Session("POSITION") = Request.Form("POSITION")
			'Session("JOBPOS") = jobPos
			'Session("SQLPersonal") = SQLPersonal
			'Session("intTotalCount") = intTotalCount
	
			'Response.Write("<br />" & intTotalCount)
			'	*******************************************	   Start Rony For Paging  ***********************
			Dim pg			'// page no.
			Dim pgSize		'// No of Record per page
			Dim totalPage	'// total number of page
			
			If intProcced = 1 Then
				pgSize = 0
				intTop = 100
				totalPage = 0
				rpp = 100
				pg = Trim(Request.Form("hPage"))
				pgSize = 100
				If pg = "" Then 
				  pg = 1
				End If
				startSeed = 0
				If pg > 1 Then
				  intTop = rpp * pg
				  startSeed = rpp * pg - rpp
				  rpp = startSeed + rpp
				End If
				
				'Response.Write(intTotalCount & "<br />" & pgSize & "<br />" & pg & "RPP="&rpp)
				'Response.End()
				arrPageInfo = ReturnPageInfo(intTotalCount, pgSize, pg)	
					  
				totalPage = arrPageInfo(0, 0)
			 End If
		 End If  'If intProcced = 1 Then
		 
		 'Response.Write("<br />Total PG: "&totalPage & "<br />start :"& startSeed&"END :"&intTop)
		 
		 
		 '''*********************End Optimize by partho*********
		'	*******************************************	   End Rony For Paging  ***********************
		
		' **************************************** User Log start *****************************************************
		strModuleName = "Resumes"
		strAction = "Search"
		If CStr(strJobPosting) = "S" Then 
			strJobName = "General"
		End If

		SQLUserLog = "INSERT INTO UserLog (UserId, UserName, ModuleName, [Description], ActionDate, [Action]) values (" 
		SQLUserLog = SQLUserLog & intUserId & ", '" & strUserName  & "', '" & strModuleName & "', 'Search For: " & strJobName & " - (" & UB & " records - Page " & pg & ")', '" & Now & "' ,'" & strAction & "')"
		
		'objEBL.ExecuteQuery SQLUserLog, strErr
		'ErrorMessage "919", errMsg, 0
		
		'Response.Write(SQLUserLog)
		'Response.Write("<br />")
		'Response.Write(strJobName)
		' ***************************************************** User Log end *****************************************************
%>
					  <strong> Total CV(s) Found: <i><%=UB%></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					  <%
				  If strJobPosting <> "S" Then
				  		If strJobPosting = 4 Then
							Response.Write("Searching for: <i>Management Trainee Officer</i>")
						ElseIf strJobPosting = 5 Then
							Response.Write("<strong>Searched For: Trainee  Officer</strong>")
						End If
				  End If
				  %>  
                  	</strong>
                    </td>
					<td align="right" width="69">&nbsp;<a href="#" onclick="javascript:window.close();" class="menu_white">Close it</a></td>
				</tr>
                <!----------------->
                
                <tr><td height="1"></td></tr>
            </tbody></table>
        </td>
    </tr>
	<!--end banner-->
    <!----body---->
	<tr>
		<td valign="top" bgcolor="#ffffff">
			<table align="center" width="100%" border="0" cellpadding="0">
				<tbody>
				<tr>
					<!----main body---->
					<td valign="top" width="700">


                        <table align="left" width="100%" border="0" cellpadding="0">
							<tbody>
							<tr>
							  <td><!--############## FORM ###############-->
		<form action="ShortList.asp" method="post" name="frmShortList" id="frmShortList">
		 <!-- <input type="hidden" name="hidUserID" id="hidUserID" value="<%'=intUserID%>" />
		  <div class="sectionheader">Registration (cont...)</div>-->
		  <table width="100%" style="border:0px; background:none;">
			  
			  <% If intProcced = 0 Then
				'Response.Write("P.No. :"&pg)
			%>  
			  <tr>
			    <td colspan="2" align="center"><input name="btnProcced" type="button" value="Procced" onClick="PageSubmit(1);"/>
                </td>
			  </tr>
            <% End If %>
		  </table>
		<% If intProcced = 1 Then
			'Response.Write(Request.Form())
		%>
		  <table width="100%" style="border:0px; background:none;">
			  <tr>
			    <td colspan="4"><strong>Total Page(s): <%= totalPage %></strong></td>
                <%
					'If strJobPosting <> "S" Then
				%>
			  <!--  <td colspan="2" align="right">	 <a class="fancybox"  id="fancybox" href="#Wrapperbox" style="text-decoration:none;">	<input type="button" name="btnSubmit1" id="btnSubmit1" value="<%'If strCVType = "Shortlisted" Then%>Un <%'End If%>Shortlist ALL" onclick="ShortList_all('totalall','<%'=strCVType%>', '<%'=strJobPosting%>');" style="width:70px; font-family:Verdana; font-size:10px;" /></a></td>-->
                <%
					'End If
				%>
              </tr>
			  <tr>
			  	<td colspan="4">
					<!--	*******************************************	Start For Paging  ***********************-->
					  <%
					  ShowPageLink pg, totalPage, 100
					  %>
					<!--	*******************************************	   End For Paging  ***********************-->	  
				</td>
				<td colspan="2" align="right" valign="middle">
					<!--<font color="#00A650"><div id="myMessage"></div></font>-->
                  <%
					'If strJobPosting <> "S" Then
				  %>  
                    
                    <table width="100%" border="0" style="border-top:0px;" align="right">
                      <tr>
                        <td align="right"><img src="images/shortlist_Black.jpg" width="18" height="18"/>=Short-listed</td>
                       
                      </tr>
                    </table>
 				  <%
					'End If
				  %>
				</td>
			  </tr>
			  <tr bgcolor="#999999">
               <td width="2%"  align="center" height="13"><font color="#FFFFFF" face="Verdana" size="1"><b>SL.</b></font> </td>
				<td align="center" height="13" colspan="2"><font color="#FFFFFF" face="Verdana" size="1"><b>Photo/Name/Tracking/Contacts</b></font></td>
				 
				<td width="36%" align="center" height="13"><font color="#FFFFFF" face="Verdana" size="1"><b> Education</b></font></td>
				<td width="21%" align="center" height="13"><font color="#FFFFFF" face="Verdana" size="1"><b>Others</b></font></td>
				<td width="8%" align="center" height="13"><font color="#FFFFFF" face="Verdana" size="1"><!--<b>E-mail/Delete<br />/</b>-->
<%
				'If strCVType = "Shortlisted" Then
'					SQLWhere = SQLWhere & "WHERE P.ShortListed=True"
'					SQLWhere = SQLWhere & " WHERE S.PersonalId="& intTN
'					IsWhere = False
'				Else
'					SQLWhere = SQLWhere & "WHERE P.ShortListed=False"
'					SQLWhere = SQLWhere & " WHERE S.PersonalId="& intTN
'					IsWhere = False
'				End If	
				
				If strJobPosting <> "S" Then
					If strCVType = "Shortlisted" Then
%>				
						<b>Unshortlist</b><br />
						(All<input type="checkbox" name="chkAllShortListed" id="chkAllShortListed" onclick="AllChecker();" />)
<%
					Else
%>					
						<b>Shortlist</b><br />
						(All<input type="checkbox" name="chkAllShortListed" id="chkAllShortListed" onclick="AllChecker();" />)
<%
					End If
				End If	
%>				
				</font></td>
			  </tr>
<%
			
			If Request.ServerVariables("REMOTE_ADDR") = "123.49.57.236" Then
				'Response.Write(LineNumber & "<br />" & errLog& "<br />")
				'Response.End()
			End If		   
						
		 	'Response.Write(" Total PG :"&totalPage & "<br />start :"& startSeed&"END :"&intTop&"Current :"&pg& "<br />")
			arrIDs = Session("arrID")
			strIds = ""
			Dim intFirstId
			intFirstId = 0
			If IsEmpty(arrIDs) <> true then
				If Cstr(totalPage) <> Cstr(pg) Then
					For r = startSeed To intTop-1
						If intFirstId = 0 Then
							strIds = arrIDs(0, r)
							intFirstId = 1
						End If
						strIds = strIds & "," & arrIDs(0, r) 
					Next
				Else
					For r = startSeed To UB-1
						If intFirstId = 0 Then
							strIds = arrIDs(0, r)
							intFirstId = 1
						End If
						'response.Write( arrIDs(0, r)&"<br>")
						strIds = strIds & "," & arrIDs(0, r) 
					Next
				End If
				If InStr(strIds, "Nothing")>0 Then
					strIds = ""
				End If
		 	End If
			
			    strIds2 = "" 
				
				For r = 0 To UB -1
					'response.Write("UBOUND:::"&UB&"<BR>")'&arrIDs(0, r) )	
					strIds2 = strIds2 & "," & arrIDs(0, r) 
					
				Next
			  		Session("totalids") = strIds2 						 			
			
		'	SQLPersonal = "SELECT DISTINCT P.Personalid, P.Firstname + ' ' + p.lastname as name, (DATEDIFF(d, P.DateofBIRTH, CONVERT(datetime, '16.08.2017', 104))/365) AS Age, P.FatherName,P.ContactPhone, P.CellPhone , P.ContactAddress, P.EMAIL, p.HomeDistrict, p.Shortlisted, p.Rejected, p.photo,p.PhotoUrl,P.DateofBIRTH FROM " & strBrach & "PERSONAL P " & strJoin	
			
			str = Request.Form("str")
			SQLPersonal = "SELECT DISTINCT P.Personalid, P.Firstname + ' ' + p.lastname as name, (DATEDIFF(d, P.DateofBIRTH, CONVERT(datetime, '16.08.2017', 104))/365) AS Age, P.FatherName,P.ContactPhone, P.CellPhone , P.ContactAddress, P.EMAIL, p.HomeDistrict, p.Shortlisted, p.Rejected, p.photo,p.PhotoUrl,P.DateofBIRTH FROM  PERSONAL P Where P.Personalid in ( " & str & ")  AND  P.Personalid IN(" & strIds & ")" 	
			
						
			If intTN = "" Or IsNull(intTN) = True Then
				If IsWhere Then
					SQLWhere = SQLWhere & " WHERE P.Personalid IN(" & strIds & ")"
					IsWhere = False
				Else
					SQLWhere = SQLWhere & " AND  P.Personalid IN(" & strIds & ")"
				End If
				
			End If	
			
			
			'SQLEdu = "SELECT E.EDUCATION, E.SUBJECT, E.PASS_YR, E.INSTITUTE FROM ACADEMIC E "
			SQLEdu = "SELECT E.DegreeName, E.SUBJECT, E.PassingYear, E.University, E.[UniversityType], E.RESULT, E.[ResultPoint], E.CGPAScale FROM Academic E "
		
		'	SQLExpInfo = "SELECT EXI.TTL_EXP/12, EXI.BANK_EXP/12, EXI.OTH_EXP/12 FROM EXP_INFO EXI "
			
			' SELECT SUM( DATEDIFF(m, EX.EFROM, EX.ETO)/12) AS SystemExp FROM EXP EX WHERE ID=1
			'SQLExp = "SELECT EX.COMPANY, EX.EXP_POST, EX.EFROM, EX.ETO, DATEDIFF(m, EX.EFROM, EX.ETO)/12 AS SystemExp, DEPT FROM EXP EX "
			
			'SQLPersonal = SQLPersonal
			
			IF Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118" OR Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" or Request.ServerVariables("SERVER_NAME") = "server-ers" Then		
		    'ValuePrint SQLPersonal, "SQLPersonal"
			'Response.End()
				'Response.Write("<br>SQL: " & SQLPersonal&"<BR>")
			End If
			arr_Personal = objDhakaBank.RetrieveData(SQLPersonal, errMsg)
			ErrorMessage "2015", errMsg, 0						
			
			 show_cv = 0
			 
			 UBPersonal = UBound(arr_Personal, 2)
			  
				first = 0 
				last = 99
				
				If UBPersonal < last Then
					last = UBPersonal
				End If
				
				'Response.Write("<br />first: " & first & "<br />last: " & last& "<br />UBlast: " & UBPersonal)
		If arr_Personal(0,0) = "Nothing" Then
				response.Write("<center>No record found.</center>")
		Else		
				For i = first To last
					intTrakingNumber = arr_Personal(0, i)
		
					'response.Write(intTrakingNumber)
				' Check Shorlisted	
					If SysName="dhakabank2015" Then
						SQLShort = "SELECT P.Personalid FROM Personal P "
						If strJobPosting <> "S" And strJobPosting <> "" Then
							arrJobPosting = Split(strJobPosting, "_")
							SQLShort = SQLShort & "WHERE P.PersonalId = "&intTrakingNumber
						Else
							SQLShort = SQLShort & "and P.PersonalId = "&intTrakingNumber
						End If
					 'Response.Write(SQLShort)
						arr_Short = objDhakaBank.RetrieveData(SQLShort, errMsg)
						ErrorMessage "1305", errMsg, 0
						SQLShort = ""
						If arr_Short(0,0) <> "Nothing" Then
							'shortColor= "#99CCFF"
							strImage = "<br /><img src='images/shortlist_Black.jpg' width='18' height='18'/>"
						Else 
							strImage = ""
							
						End If						
				  End If
					strTDStyle = "style='padding-top:8px; padding-right:3px; border-bottom:1px solid #999;font-family: Verdana;font-size:11px;'"
%>
<div id="infinite"><p>

				  <tr id="row_<%=intTrakingNumber%>" bgcolor="#<%If i mod 2 = 0 Then%>FFFFFF<%Else%>DDEEFF<%End If%>" class="lazy-loaded">
                   <td width="2%" align="center" height="13" valign="top" <%=strTDStyle%>><%=startSeed + i + 1%></td>
                  <td align="center" width="9%" valign="top" <%=strTDStyle%>>
				<%
                    IsPhoto = arr_Personal(11,i)
					bdjPhotoUrl = arr_Personal(12,i)
					'If IsPhoto = True Then
'                        strPhotoPath = "http://ers.bdjobs.com/applications/ImageResize/photos/dhakabank/"&year(now)&"/DB_MTO_" & arr_Personal(0,i) & ".jpg"
'                    
'					Else
'					 If bdjPhotoUrl <> "" Then 
'					   strPhotoPath = "http://my.bdjobs.com/photos/"&bdjPhotoUrl 
'					  
'					  
'					 End IF		 
'					
'					End If
                   
				 
				   
				   strPhotoPath = bdjPhotoUrl
				   
				    %>
				            <img src="<%=strPhotoPath%>" width="70" height="70" style="border:1px solid #03C;"/><br/><i>Tracking No.</i><br/><font color='#0000FF'><b><%=intTrakingNumber%></b></font>
							<%If intRoll<> "" Then%>
                                <br /><i>Roll No:</i> <b><%=intRoll%></b>
                                <%End If%>                            
                            </td>
                  
                 <%If intTrakingNumber <> "Nothing" Then%>
					<td width="24%" align="left" height="13" valign="top" <%=strTDStyle%>>
						<a href="../ViewResume.asp?TrakingNo=<%=Encode(intTrakingNumber)%>" target="_blank">
						<b><%=arr_Personal(1, i)%></b></a>
						(<%=arr_Personal(2, i)%> yrs)<br />
     <%
	  If IsNUll( arr_Personal(13, i) ) = False Then 
	  
	    If arr_Personal(13, i) <> "" Then 
		   If IsDate(arr_Personal(13, i))  Then 
		     dd = day(arr_Personal(13, i))
			 mm = month(arr_Personal(13, i))
			 yy = year(arr_Personal(13, i)) 
			 dob = dd&"/"&mm&"/"&yy
		   
		   End If 		 
		End If
	  End IF 
	 
	 %>                   
    Date of Birth : <%=dob%> <br />                   
<%
						If arr_Personal(3, i) <> "" Then
%> 
							Father's Name : <%=arr_Personal(3, i)%>
							<br />
<%
						End If
						Response.Write(arr_Personal(6, i))
						If arr_Personal(4, i) <> "" Then
%> 
							<br />
							Home phone: <%=arr_Personal(4, i)%>
<%
						End If

						If arr_Personal(5, i) <> "" Then
%> 
							<br />
							Mobile: <%=arr_Personal(5, i)%>
<%
						End If
%>
						<br />
						Email: <%=arr_Personal(7, i)%>
						<br />
						<%End If%>
                    </td>
					<td width="36%" align="left" height="13" valign="top" <%=strTDStyle%>>
<%
					SQLEduTmp = SQLEdu
					SQLEduTmp = SQLEduTmp & "WHERE E.Personalid=" & intTrakingNumber &" order by educationid desc"
					'ValuePrint SQLEduTmp,"sqlEduTmp" 
					arr_Education = objDhakaBank.RetrieveData(SQLEduTmp, errMsg)
					ErrorMessage "235", errMsg, 0
					
					If arr_Education(0, 0) <> "Nothing" Then
						For j = 0 To UBound(arr_Education, 2)
							strGrade = arr_Education(7, j)
							strInstitute = arr_Education(3, j)
							'response.Write(strInstitute)
							
							If IsNull(strInstitute) = False Then 
							strInstitute = REPLACE(strInstitute,"@***@",", ")
							End If
							
							If arr_Education(5, j) = "15" Then
						   		strResult = "<br>First division (" & arr_Education(6, j) & "%)"
						    End If
						   
						    If arr_Education(5, j) = "14" Then
						    	strResult = "<br />Second division (" & arr_Education(6, j) & "%)"
						    End If
						   
							If arr_Education(5, j) < "12" Then
								strResult = "<br />CGPA: " & arr_Education(6, j) & " (" & strGrade & ")"
						   	End If
							
							strSubject = arr_Education(1, j)
                            If IsNull(strSubject) or strSubject = "" Then 
							
							Else 
							strSubjectName = Replace(strSubject,"_"," & ")
							End IF
							
							If strSubject = "CE" Then
								strSubjectName = "Civil Engg"
							elseIf strSubject = "ME" Then
								strSubjectName = "Mechanical Engg"
							elseIf strSubject = "MIS" Then
								strSubjectName = "Management Information System"
							End IF 		
							
						   
							Response.Write("<i><font color='#0000FF'>"&arr_Education(0, j) & " - </font></i>" & strSubjectName & " - " & arr_Education(2, j) & strResult & " - " & strInstitute & "<br />")
							'Response.Write(arr_Education(0, j) & " - " & arr_Education(1, j) & " - " & arr_Education(2, j) & "<br />")
						Next
					End If
%>							
					</td>
					<td width="21%" align="left" height="13" valign="top" <%=strTDStyle%>>
                    <%
					sqlJobPos = "SELECT PERSONALID, JOBID, SHORTLISTED FROM PERSONAL WHERE PERSONALID ="&intTrakingNumber 
					
					arr_JOBPOS = objDhakaBank.RetrieveData(sqlJobPos, errMsg)
					ErrorMessage "2177", errMsg, 0
					
					If arr_JOBPOS(0,0) <> "Nothing" Then
					IsShortlisted = ""
					jobPosition = ""
					For ji = 0 to ubound(arr_JOBPOS,2)
						
						intJobId = arr_JOBPOS(1,ji)
						jobPosition = intJobId 
						
						'If intJobId = 1 Then
							'jobPosition = "Junior Officer"
							If jobPosition = 1 Then
								jobPosition = "Management Trainee Officer"
							ElseIf jobPosition = 2 Then 
								jobPosition = "Trainee Officer"
							ElseIf jobPosition = 3 Then 
							    jobPosition = "Trainee Cash Officer"
							End If
							
							If arr_JOBPOS(2,ji) = True Then
								'IsShortlisted = "Junior Officer"
								
								If IsShortlisted = "" or IsShortlisted = False Then
									IsShortlisted = "<img src='images/shortlist_Black.jpg' width='18' height='18'/> Management Trainee Officer"
								Else
									IsShortlisted = "<br/><img src='images/shortlist_Black.jpg' width='18' height='18'/>Management Trainee Officer"
								End If
							End If
						'End If
					'response.Write(arr_JOBPOS(2,ji))
					Next
							'Response.Write(jobPosition)
							
					End If
					%>				
					</td>
					<td width="8%" align="center" height="13" <%=strTDStyle%>>
<%
					'If strJobPosting <> "S" Then
						  'IsShortlisted = arr_Personal(10,i)
						 ' IsRejected = arr_Personal(11,i)

'						  If IsShortlisted_1 = True then
'							  ShortlistedImg = "<img src='images/shortlist_Black.jpg' width='18' height='18'/> (JO)"
'							  'intJobId_new = 1
'							  RejectedImg = ""
'							  checked = "checked"
'						  ElseIf IsShortlisted_2 = True then
'							  ShortlistedImg = "<img src='images/shortlist_Black.jpg' width='18' height='18'/> (TAO/TACO)"
'							  'intJobId_new = 2
'							  RejectedImg = ""
'							  checked = "checked"						  
'						  ElseIf IsShortlisted_3 = True then
'							  ShortlistedImg1 = "<img src='images/shortlist_Black.jpg' width='18' height='18'/> (JO)"
'							  ShortlistedImg2 = ""
'							  'intJobId_new = 1
'							 ' intJobId_2 = 2
'							  RejectedImg = ""
'							  checked = "checked"						  
'						  ElseIf IsShortlisted_4 = True Then
'						      ShortlistedImg1 = ""
'							  ShortlistedImg2 = "<img src='images/shortlist_Black.jpg' width='18' height='18'/> (TAO/TACO)"
'							  'intJobId_1 = 1
'							  'intJobId_new = 2
'							  RejectedImg = ""
'							  checked = "checked"
'						  ElseIf IsShortlisted_4 = True AND IsShortlisted_3 = True then
'							  ShortlistedImg1 = "<img src='images/shortlist_Black.jpg' width='18' height='18'/> (JO)"
'							  ShortlistedImg2 = "<img src='images/shortlist_Black.jpg' width='18' height='18'/> (TAO/TACO)"
'							  'intJobId_1 = 1
'							  'intJobId_new = 2
'							  RejectedImg = ""
'							  checked = "checked"
'						  ElseIf IsRejected = True then
'							  RejectedImg = "<img src='images/Rejected.jpg' width='18' height='18'/>"
'							  ShortlistedImg = ""
'							  checked = "checked"
'						  'ElseIf IsShortlisted = True and IsRejected = True then
'						  	 ' ShortlistedImg = "<img src='images/shortlist_Black.jpg' width='18' height='18'/>"
'							  'RejectedImg = "<img src='images/Rejected.jpg' width='18' height='18'/>"
'							 ' checked = "checked"
'						  Else
'						 	 ShortlistedImg = ""
'							 RejectedImg = ""
'							 checked = ""
'						  End If

		'response.Write("<br> jo: "&IsShortlisted&"<br>")

%>					   
			<%If IsShortlisted <> "" then%>
					<%'=IsShortlisted
					
					%>
                    <input onclick="ShortList(<%=intTrakingNumber%>,<%=strJobPosting%>);" type="checkbox" name="chkShortListed" id="chkShortListed<%=i+1%>" value="<%=intTrakingNumber%>" <%If strCVType <> "Shortlisted" Then  %>checked="checked"  <%End IF%> />  
                     
                    
             <%Else%>
					<input onclick="ShortList(<%=intTrakingNumber%>,<%=strJobPosting%>);"  type="checkbox" name="chkShortListed" id="chkShortListed<%=i+1%>" value="<%=intTrakingNumber%>" <%=checked%> />
              <%End If%>
<%
					'End If
%>					
<%=strImage %>	
				 <div id="span_shortlist_<%=intTrakingNumber%>">
                    
               
                </div>	</td> 
                   
				  </tr> </p></div>
                 
                 
                   
<%
				'End If
	
			  Next	
	    End If
%>			  
 <div id="marker-end"></div>		  		
<%'If first <> 0 then%> 
 <tr>
					<td colspan="5">
						<!--	*******************************************	Start Rony For Paging  ***********************-->
						  <%
						  ShowPageLink pg, totalPage, 100
						  %>
						<!--	*******************************************	   End Rony For Paging  ***********************-->	  
					</td>
					<td align="center">
						
					</td>
			   </tr>
<%'end if%>               
		  </table>
          
       <% End If ' end If intProcced = 1 Then %>
        
		</form>
		<!--############## END FORM ###############-->   
<%
		'SESSION("TrakNo") = strUserName
		SESSION("UserName") = strUserName
		
		
	Else 'If IsDisplay = False Then
		Response.Write("<div align='center' style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; color:#C30;'>No Record Found</div> <br />")
	 ' Response.Write("SQL:" & IsDisplay)
	End If
	
' Close Connection
	
%>	

                              
                              </td></tr>
                            
						</tbody></table>
                        <script type="text/javascript">
                   
                     
               
                        function estericColor(fieldId, strSpan)
                        {
                            //alert(strSpan);
                            if(document.getElementById(fieldId).value != "")
                            {
                                document.getElementById(strSpan).style.color = "#009900";
                            }
                            else
                            {
                                document.getElementById(strSpan).style.color = "#FF0000";
                            }
                        }
                        
 
 
					   
					 function ShortList(TrackingNumber,jobid)
					{
						   $(obj).html(''); 
						   var obj = "#span_shortlist_"+TrackingNumber;
						   var objRow = "#row_"+TrackingNumber;
						   
						   
							//alert("Tracking Number : "+TrackingNumber+"\n is going to be Rejected..please go on below...it will be rejected soon "); 
							$.post("ShortList.asp", {TrackingNumber: TrackingNumber,jobid:jobid}, function(data, status){
								$(obj).html(data);
								$(objRow).css('background-color','#FFFDD0');
					
					
							});	
					}
					
					
					function UnShortList(TrackingNumber)
					{
						   var obj = "#span_unshortlist_"+TrackingNumber;
							//alert("Tracking Number : "+TrackingNumber+"\n is going to be Rejected..please go on below...it will be rejected soon "); 
							$.post("SearchResultGroup_bd/UnShortList.asp", {TrackingNumber: TrackingNumber}, function(data, status){
								$(obj).html(data);
							});	
					}
					 
					 
					 
                        </script>
					<!----end main body---->
					<!---right side--->					
				</tr>
				<tr><td height="10"><!--Welcome to the administrative control panel of Trust e-Recuritment System.--></td></tr>
			</tbody></table>
		</td>
	</tr>
	<!----end body---->
	

	<tr><td height="10" background="images/footer.gif"></td></tr>
	<tr><td height="10"></td></tr>
	<tr>
		<td>
			<table align="center" width="100%" border="0" cellpadding="0">
				<tbody><tr>
					<td width="678">
						<table align="left" width="678" border="0" cellpadding="0">
							<tbody><tr><td class="bodytext" align="left">&nbsp;</td></tr>	
							<tr><td class="bodytext" height="5"></td></tr>	
							
							<tr><td class="footer" align="left">&nbsp;</td></tr>	
						</tbody></table>
					</td>
					<td width="300">
						<table align="right" width="300" border="0" cellpadding="0">
						<tbody><tr><td width="213" align="right" class="footer"> Powered by   </td>
						  <td width="81" align="right" class="footer"><img src="images/bdjobs_Logo.gif" width="74" height="12" /></td>
						</tr>
                        <tr>
                          <td colspan="2" align="right" class="footer">&nbsp;</td></tr>
					</tbody></table>
				</td>
				</tr>
			</tbody></table>
		</td>
	</tr>
	<tr><td height="10"></td></tr>
</tbody></table>
<form method="post" action="SearchResultGroup.asp" name="frmResume" id="frmResume">
	<input name="txtUB" type="hidden" id="txtUB" value="<%=UB%>">
	<input name="hPage" type="hidden" id="hPage" value="<%=pg%>">
	<input name="str" type="hidden" id="str" value="<%=str%>">
    
    <input name="txtLastID" type="hidden" id="txtLastID" value="<%'=intTrakingNumber%>">
	<input name="rdoCVType" type="hidden" id="rdoCVType" value="<%=strCVType%>">
	<input name="ddlJobPosting" type="hidden" id="ddlJobPosting" value="<%=strJobPosting%>">
	<input name="txtName" type="hidden" id="txtName" value="<%=strName%>">
	<input name="ddlAgeFrom" type="hidden" id="ddlAgeFrom" value="<%=intAgeFrom%>">
	<input name="ddlAgeTo" type="hidden" id="ddlAgeTo" value="<%=intAgeTo%>">
	<input name="txtSex" type="hidden" id="txtSex" value="<%=strSex%>">
	<input name="txtEmail" type="hidden" id="txtEmail" value="<%=strEmail%>">
	<input name="txtPhone" type="hidden" id="txtPhone" value="<%=strPhone%>">
	<input name="rdoPhone" type="hidden" id="rdoPhone" value="<%=strPhoneType%>">
	<input name="txtCDistrict" type="hidden" id="txtCDistrict" value="<%'=strCDist%>">
	<input name="txtDistrict" type="hidden" id="txtDistrict" value="<%=strHomeDist%>">
    <input name="ddlRejected" type="hidden" id="ddlRejected" value="<%=strRejected%>">
	<input name="ddlPhoto" type="hidden" id="ddlPhoto" value="<%=strPhoto%>">
	<%For o = 1 To 4 %>
    <input name="ddlEducationLevel<%=o%>" type="hidden" id="ddlEducationLevel<%=o%>" value="<%=intEducationLevel(o)%>">
	<input name="txtDegreeName<%=o%>" type="hidden" id="txtDegreeName<%=o%>" value="<%=strDegreeName(o)%>">
	<input name="INSTITUTE<%=o%>" type="hidden" id="INSTITUTE<%=o%>" value="<%=strInstituteName(o)%>">
    <input name="CAMPUS<%=o%>" type="hidden" id="CAMPUS<%=o%>" value="<%=strCampus(o)%>">
    <input name="INS_NAME<%=o%>" type="hidden" id="INS_NAME<%=o%>" value="<%=strInstituteName(o)%>">
	<input name="ddlPassingYear<%=o%>" type="hidden" id="ddlPassingYear<%=o%>" value="<%=intPassingYear(o)%>">
	<input name="RESULT<%=o%>" type="hidden" id="RESULT<%=o%>" value="<%=intResult(o)%>">
	<input name="txtPercentFrom<%=o%>" type="hidden" id="txtPercentFrom<%=o%>" value="<%=strPercentFrom(o)%>">
	<input name="txtPercentTo<%=o%>" type="hidden" id="txtPercentTo<%=o%>" value="<%=strPercentTo(o)%>">		 
 	<input name="RESULT<%=o%>_" type="hidden" id="RESULT<%=o%>_" value="<%=intResult_(o)%>">
	<input name="txtPercentFrom<%=o%>_" type="hidden" id="txtPercentFrom<%=o%>_" value="<%=strPercentFrom_(o)%>">
	<input name="txtPercentTo<%=o%>_" type="hidden" id="txtPercentTo<%=o%>_" value="<%=strPercentTo_(o)%>">	       
	<input name="SUBJECT<%=o%>" type="hidden" id="SUBJECT<%=o%>" value="<%=strMajorSubject(o)%>">
    <% Next %> 

	<input name="txtProfessionalDegree" type="hidden" id="txtProfessionalDegree" value="<%=strProfessionalDegree%>">
	<input name="ddlProfessionalPassingYear" type="hidden" id="ddlProfessionalPassingYear" value="<%=intProfessionalPassingYear%>">
	<!--<input name="txtTrainingName" type="hidden" id="txtTrainingName" value="<%=strTrainingName%>">
	<input name="txtAwardingBody" type="hidden" id="txtAwardingBody" value="<%=strAwardingBody%>">
	<input name="txtTrainingDuration" type="hidden" id="txtTrainingDuration" value="<%=intTrainingDuration%>">
	<input name="ddlTrainingPassingYear" type="hidden" id="ddlTrainingPassingYear" value="<%=intTrainingPassingYear%>">
	<input name="CSG" type="hidden" id="CSG" value="<%=strComputerGeneralSkill%>">
	<input name="CSA" type="hidden" id="CSA" value="<%=strComputerAdvancedSkill%>">
	<input name="KS" type="hidden" id="KS" value="<%=strKeySkill%>">
	<input name="ddlExpectedTrustGrade" type="hidden" id="ddlExpectedTrustGrade" value="<%=strExpectedTrustGrade%>">-->
	<input name="POS_LOC" type="hidden" id="POS_LOC" value="<%=strLocation%>">
	<!--<input name="txtPresentSalaryFrom" type="hidden" id="txtPresentSalaryFrom" value="<%=intPresentSalaryFrom%>">
	<input name="txtPresentSalaryTo" type="hidden" id="txtPresentSalaryTo" value="<%=intPresentSalaryTo%>">
	<input name="txtExpectedSalaryFrom" type="hidden" id="txtExpectedSalaryFrom" value="<%=txtExpectedSalaryFrom%>">
	<input name="txtExpectedSalaryTo" type="hidden" id="txtExpectedSalaryTo" value="<%=txtExpectedSalaryTo%>">
	<input name="ddlWorkAreaPreference" type="hidden" id="ddlWorkAreaPreference" value="<%=strWorkAreaPreference%>">
	<input name="txtNoticePeriodFrom" type="hidden" id="txtNoticePeriodFrom" value="<%=txtNoticePeriodFrom%>">
	<input name="txtNoticePeriodTo" type="hidden" id="txtNoticePeriodTo" value="<%=txtNoticePeriodTo%>">
	<input name="txtPreviouslyInterviewedPosition" type="hidden" id="txtPreviouslyInterviewedPosition" value="<%=strPreviouslyInterviewedPosition%>">
	<input name="ddlPreviouslyInterviewedMonth" type="hidden" id="ddlPreviouslyInterviewedMonth" value="<%=intPreviouslyInterviewedMonth%>">
	<input name="ddlPreviouslyInterviewedYear" type="hidden" id="ddlPreviouslyInterviewedYear" value="<%=intPreviouslyInterviewedYear%>">-->
    <input name="txtTrakingNumber" type="hidden" id="txtTrakingNumber" value="<%=intTN%>">	
    
</form>
<%
Function ShowPageLink(curPage, total_no_page, tNo_Page_show)
	loopIndex = 0
	addedPage = CInt(tNo_Page_show \ 2)
	If cInt(curPage) <= CInt(addedPage) Then
		sLoop = 1
		eLoop = CInt(tNo_Page_show)
		If cInt(eLoop) > CInt(total_no_page) Then
			eLoop = total_no_page
		End If
	Else
		sLoop = CInt(curPage-addedPage)
		eLoop = CInt(curPage+addedPage)
	End If

	If CInt(eLoop) > CInt(total_no_page) Then
		eLoop = total_no_page
		If CInt(total_no_page - tNo_Page_show) > 0 Then
			sLoop = CInt(total_no_page-tNo_Page_show)
		Else
			sLoop = 1
		End If
	End If

	If CInt(curPage) > 1 Then
%>

		<font size="1" face="Arial" color="#FF9900">
		<a href="#" onClick="PageSubmit(<%=(curPage-1)%>);"><b>Prev</b></a>&nbsp;</font>	
		<img src="images/gl.gif" width="15" height="15" onClick="PageSubmit(<%=(curPage-1)%>);" style="cursor:pointer;">
<%	
	End If
	
	For loopIndex = sLoop To eLoop
		If CInt(loopIndex) <= CInt(total_no_page) Then 
%>
			<font size="1" face="Arial" color="#FF9900">
<%
			If CInt(loopIndex) = CInt(curPage) Then
%>
				<%= loopIndex %>
<%			Else
%>
				<a href="#" onClick="PageSubmit(<%=loopIndex%>);"><%=loopIndex%></a>&nbsp;	
<%
			End if
%>			</font>
<%
		Else
			Exit For
		End If
	Next

	If CInt(curPage) < CInt(total_no_page) Then
%>
		<font size="1" face="Arial" color="#FF9900"><b>
		<img src="images/gr.gif" width="15" height="15" onClick="PageSubmit(<%=(curPage+1)%>);" style="cursor:pointer;">
		<a href="#" onClick="PageSubmit(<%=(curPage+1)%>);">Next</a>		
		&nbsp;</b></font>
<%
	End If
End Function
%>

<div id="Wrapperbox" style="display:none; width:920px; height:774px;" >
       <iframe id="Iframe" name="Iframe"   frameborder="1" width="920px" height="774px"  ></iframe>
  </div>
 
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<link  href="css/jquery.fancybox.css?v=2.1.0" rel="stylesheet" type="text/css" media="screen">
 <script type="text/javascript">
		$(document).ready(function () {
  	$(".fancybox").fancybox({
		openEffect : 'elastic',
		openSpeed  : 600,
		closeEffect : 'elastic',
		closeSpeed  : 600 ,
		closeClick : true,
		'scrolling'  : 'yes',
		 'type' : 'inline'
	 });
});			
                     
 
     
	$(document).ready(function () {
	$(".BDJButton3").fancybox({
		openEffect : 'elastic',
		openSpeed  : 600,
		closeEffect : 'elastic',
		closeSpeed  : 600 ,
		closeClick : true,
		href : '#Wrapperbox',
		'scrolling'  : 'yes',
		'type' : 'inline'
	});
}); 
</script>
</body></html>