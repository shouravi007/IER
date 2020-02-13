<div class="col-md-12">
<style>
#mainDiv
{
	width:1024px;
	height:auto;
	font-family:Arial, Helvetica, sans-serif;
	font-size:16px;
	font-weight:normal;
}
</style>


<script language="javascript" type="text/javascript">
function formSubmit() 
	{
	 document.getElementById('frmNextRound').submit();
	}
</script>

<link href="css/style2.css" rel="stylesheet" type="text/css" />
</head>
<div align="center " style="position:absolute; left: 207px; top: 118px;">
<img src="http://ers.bdjobs.com/applications/images/wait.gif" /></span>
</div>

<%

Function GetReferer(strPage)
	Dim strReferer
	strReferer = ""
	
	strReferer = Request.ServerVariables("HTTP_REFERER")
	If strReferer <> "" Then
		intPos = InStr(strReferer, strPage)
	Else
		intPos = -1
	End If
	
	GetReferer = intPos
	'Response.Write(strReferer)
End Function

Function ProperCase(sText) 
    Dim a, iLen, bSpace, tmpX, tmpFull
 
    iLen = Len(sText)
    For a = 1 To iLen
    If a <> 1 Then 'just to make sure 1st character is upper and the rest lower'
        If bSpace = True Then
            tmpX = UCase(mid(sText,a,1))
            bSpace = False
        Else
        tmpX=LCase(mid(sText,a,1))
            If tmpX = " " Or tmpX = "'" Then bSpace = True
        End if
    Else
        tmpX = UCase(mid(sText,a,1))
    End if
    tmpFull = tmpFull & tmpX
    Next
    ProperCase = tmpFull
End Function


strPosition =  Request.Form("txtPosition")

sql = ""
sql = " select jobtitle from jobposting where jobid = "&strPosition
arrPosition = objERS.RetrieveData(sql, errMsg)

if arrPosition(0,0) <> "Nothing" then
  strPositionName = arrPosition(0,0)
end if 


strCenter = Request.Form("txtCenter")
'response.Write(strCenter)
hiddenHeader = "visible"
intRollFrom = Request.Form("TxtRollFrom")
intRollTo = Request.Form("TxtRollTo")

strDate = "2019-04-12"
'varTarikh =  MonthName(month(date)) &" "&day(Date)&", "&year(date)
varTarikh =  MonthName(month(strDate)) &" "&day(strDate)&", "&year(strDate)

id = Request.Form("txtRoom") 

strBody = "" 
strBody = strBody & "" 

title = ""
title = title & "Private Commercial Bank Limited"
title = title & "<br>Recruitement of "&strPositionName  'Management Trainee "&year(now)
title = title & "<br>Attendance Sheet"'<br>Venue:&nbsp;"&strCenterName



If strCenter <> "" Then
	
	sqlForCenterName = "SELECT  CenterName  FROM Center where id = "&strCenter
	'response.Write(sqlForCenterName)
	arrSqlForCenterName = objERS.RetrieveData(sqlForCenterName, errLog)
  	ErrorMessage "56", errLog, 0
	
	if arrSqlForCenterName(0,0)<>"Nothing" Then
		strCenterName = arrSqlForCenterName(0,0)		
		sqlForRoomNo = "" 
		sqlForRoomNo = "SELECT RoomNumber, RoomLocation, [from],[to],[total]  FROM Attendance where Centerid = '"&strCenter&"'  and jobid = "&strPosition&"  and id ="&id&"  order by [id] "
		'response.Write(sqlForRoomNo)
		arrForRoomNo = objERS.RetrieveData(sqlForRoomNo, errLog)
		if arrForRoomNo(0,0) <> "Nothing" Then
				strRoom = arrForRoomNo(0,0)
				strFloor = arrForRoomNo(1,0)
				
				intStartRoll = arrForRoomNo(2,0)
				intEndRoll = arrForRoomNo(3,0)
				total = arrForRoomNo(4,0)
				
				If intRollFrom <> "" And IsNumeric(intRollFrom) Then
					intStartRoll = CLng(intRollFrom)
				End If
				If intRollTo <> "" And IsNumeric(intRollTo) Then
					intEndRoll = CLng(intRollTo)
				End If
				SQLWhere = "where a.jobid = "&strPosition&" and j.jobid = "&strPosition&" and  a.RollNo between "&intStartRoll&" And "&intEndRoll
				SQLWhere1 = " order by a.rollno ASC "
				
				strSQL = "SELECT a.id, (p.FirstName+ ' '+p.LastName) as Name, p.FatherName, a.RollNo, p.photo,p.photourl,p.bdjobsphoto,p.bdjobsid,j.id,SUBSTRING(LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4), CHARINDEX('/', LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4))+1, LEN(LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4))) FROM Roll a inner join Personal p on a.personalid = p.id inner join jobpos j on j.personalid = p.id   " &SQLWhere & SQLWhere1
				'Response.Write(strSQL) 
				'Response.End()
				arrUserInfo1 = objERS.RetrieveData(strSQL, errLog)
				ErrorMessage "131", errLog, 0
				 
				If arrUserInfo1(0,0)<> "Nothing" Then
				

						strPageBreak1 = "page-break-before:always;"
						'IntPageNo_new = replace(IntPageNo,"Page ","")
						'IntPageNo_new = IntPageNo_new+1
                        strBody = strBody & " <table width='800'  align='center' cellpadding='0' cellspacing='0' ><tbody><tr><td width='150'  style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold;' align='left' >Room No:&nbsp;"&arrForRoomNo(0,0) &"</td><td align='center' width='500' ><font style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; visibility: "&hiddenHeader&"'> " & title & "  </font></td><td width='150'  align ='right' style='font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:bold;text-align:right' >"&varTarikh&"</td></tr><tr><td colspan='3'><table width='800' cellpadding='0'  cellspacing='0' align='center'><tr> <td align='center' width ='800' > <font style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; visibility:"&hiddenHeader&"'>Venue:&nbsp;"&strCenterName&" </font></td><td width='0'>&nbsp;</td><td align='right'  width='0'  valign='bottom'>&nbsp;</td></tr><tr><td colspan='2' align='right' width='0'>&nbsp;</td><td align='right'  width='0'  valign='top' style=''>&nbsp;</td></tr> </table></td></tr></table> " 
						
strBody = strBody & "<table width='100%' cellpadding='0' cellspacing='0'> <tr> <td width='10%'  style=' text-align:left; padding-left:10px;border:0.1px solid #333;' align='center'>Roll No.</td> <td width='10%' style='text-align:left; padding-left:10px;border:0.1px solid #333;' align='center'>Tracking #</td>  <td width='40%' style='text-align:center; padding-left:10px;border:0.1px solid #333;'>Name,&nbsp;Father's Name</td>  <td width='10%' style='border:0.1px solid #333; '  align='center'>Photo</td>   <td width='30%' style='text-align:center;border:0.1px solid #333;' align='center'> Candidate's Signature</td></tr>"
                                    
              
											IntPageNo = "Page 1"
											For i = 0 to ubound(arrUserInfo1,2)
                                                intRoll = arrUserInfo1(3, i)
												intTrakingNumber = arrUserInfo1(0, i)
												
												intTrakingNumber_New = arrUserInfo1(8, i)	 
												
												strQuota = "" 
												strComma = "" 
												n = i + 16 								
										'		 Response.Write("strQuota"&strQuota)  
                                                 nextPagebreak = (n) mod 16
                                                ' Response.Write(nextPagebreak&"<br/>")
												' Response.Write(i&"<br/>")
												 
                                                if nextPagebreak = 0   Then
                                                     IF i = 0 Then 
													 Else
                                                    IntPageNo = "Page " & Int(((i-15) / 16) + 1)
                                                    'strPageBreak = "page-break-before:always;"	
												    strHeader = "</table><table width='100%' cellpadding='0' cellspacing='0'><tr> <td width='30%' align ='left'  style='text-align:left;border:0.1px solid #333; padding-left:10px; ' >Room No: &nbsp;"&arrForRoomNo(0,0) &"</td><td width='50%'  align = 'center'  style='text-align:center; border:0.1px solid #333;' ></td><td  width='20%'  align ='right'  style='text-align:right;border:0.1px solid #333; padding-right:10px;' >"&IntPageNo&"</td></tr></table><table width='800'  align='center' cellpadding='0' cellspacing='0' ><tbody><tr><td width='150'  style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold;' align='left' >Room No:&nbsp;"&arrForRoomNo(0,0) &"</td><td align='center' width='500' ><font style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; visibility: "&hiddenHeader&"'> " & title & "  </font></td><td width='150'  align ='right' style='font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:bold;text-align:right' >"&varTarikh&"</td></tr><tr><td colspan='3'><table width='800' cellpadding='0'  cellspacing='0' align='center'><tr> <td align='center' width ='800' > <font style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; visibility:"&hiddenHeader&"'>Venue:&nbsp;"&strCenterName&" </font></td><td width='0'>&nbsp;</td><td align='right'  width='0'  valign='bottom'>&nbsp;</td></tr><tr><td colspan='2' align='right' width='0'>&nbsp;</td><td align='right'  width='0'  valign='top' style=''>&nbsp;</td></tr> </table></td></tr></table><table  width='100%'  cellpadding='0' cellspacing='0' style='"&strPageBreak&"'> <tr> <td width='10%'  style=' text-align:left; padding-left:10px;border:0.1px solid #333;' align='center'>Roll No.</td> <td width='10%' style='text-align:left; padding-left:10px;border:0.1px solid #333;' align='center'>Tracking #</td>  <td width='40%' style='text-align:center; padding-left:10px;border:0.1px solid #333;'>Name,&nbsp;Father's Name</td>  <td width='10%' style='border:0.1px solid #333; '  align='center'>Photo</td>   <td width='30%' style='text-align:center;border:0.1px solid #333;' align='center'> Candidate's Signature</td></tr>"
                                                  End IF 
												else
                                                    strPageBreak = ""
                                                    strHeader = ""
                                                end if
                                                
                                                'response.Write(strHeader)
										  	 strBody = strBody & strHeader 	
                                          strBody = strBody & "<tr>" 
										  IsPhoto = arrUserInfo1(4,i) 
										  imgSrc = arrUserInfo1(5,i) 
										  bdjPhoto = arrUserInfo1(6,i) 
										  BdjobsId = arrUserInfo1(7,i)
										  

 
					
		If IsPhoto = True Then
			
		 
		else 	   
			
			 if bdjPhoto = true then 
			    onlyPhotoSrc = arrUserInfo1(9,i)
				imgSrc =  "http://ers.bdjobs.com/applications/ImageResize/Photos/"&strPhotoFolder&"/bdjobs/"&onlyPhotoSrc &".jpg"	
				'intErsId = 14 
				'UserId = BdjobsId  'arrPersonal(3,i)
				'secPhoto = 13030 '   10025
				'strSqlPhoto = "USP_ExportCVforERS " & UserId& ", " &intErsId& ", " & secPhoto 
				'Response.Write(strSqlPhoto)
				'Response.End()
				
				
				'arrDataPhoto = objResumeServer.RetrieveData(strSqlPhoto,strErr)
				
				'if arrDataPhoto(0, 0) <> "Nothing" Then
				  
				'  if ubound(arrDataPhoto, 2) > 0 then 
				
				'	if isnull(arrDataPhoto(0,1)) or isempty(arrDataPhoto(0,1)) or arrDataPhoto(0,1) = "" then  
					 %>
                     <script>
					 //alert("If you really fail to download admit card ? then please follow the steps ... please upload your pictures on My Bdjobs/Bdjobs Account Resume and login again.\nআপনি কি এডমিট কার্ড ডাউনলোড করতে পারছেন না ? আপনি যদি আপনার প্রিলিমারি এডমিট কার্ড ডাউনলোড করতে চান, দয়া করে মাই বিডিজবস-এ আপনার ছবি আপলোড করে; পুনরায় লগইন করুন")
					 </script>
					 <%
					'else
					
					'imgSrc =  "http://my.bdjobs.com/photos/"&arrDataPhoto(0,1) &".jpg"	
					'imgSrc =  "http://my.bdjobs.com/photos/"&arrDataPhoto(0,1) &".jpg"	
					
					'end if
				
				'  else
				  
				'  end if 
				'end if 					

			 else
			  imgSrc = "http://ers.bdjobs.com/applications/images/noimage.gif"
			 end if
		end if
										  
										  
										  
if total = 30 or total = 46 or total = 62  then 
 attendenceBreak = ""
else 
 attendenceBreak = "<br/><br/><br/><br/>"
end if 

										  
										  
										  Img = imgSrc 'strPhotoName
										   
  	                                      varImg = "<img src='"&Img&"' width='69' height='71' style='border:0.1pt solid #333;' /> "  
									
									
									
									
					if strPosition = 1 then 
					 intTrakingNumber_New = intTrakingNumber_New + 100000
					elseif strPosition = 2 then 
					 intTrakingNumber_New = intTrakingNumber_New + 200000
					elseif strPosition = 3 then 
					 intTrakingNumber_New = intTrakingNumber_New + 300000
					end if 									
									
									
									
										   strBody = strBody & " <td align='center'  style='border:0.1px solid #333;' >"&intRoll&"</td>  <td  style='border:0.1px solid #333;'align='center'>"&intTrakingNumber_New&"</td>     <td style=' padding-left:10px;border:0.1px solid #333;'>"&TRIM(arrUserInfo1(1,i))&"<br/><i>Father's name:</i><br/>&nbsp;&nbsp;&nbsp;"&TRIM(arrUserInfo1(2,i))&"</td> <td style='border:0.1px solid #333;' align='center' width='69' height='71'>"
                                            strBody = strBody & varImg & "</td><td align='center'  style='border:0.1px solid #333;'>&nbsp;   </td>"							
                                           ' end if
                                            strBody = strBody & " </tr>"        
                                           counter = counter+1	

                                           Next ' this next is for main table  loop 	
                                               strBody = strBody & " </table>"                                                  
									
									Else
									
										 strBody = strBody &  "<div align='center' style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; color:#C30;'>No Record Found</div> <br />"
									'Response.Write("SQL:" & IsDisplay)
										response.End() 
									End If

	
						IntPageNo_new = replace(IntPageNo,"Page ","")
						IntPageNo_new = IntPageNo_new+1

	
		 strBody = strBody & "<table width='100%' cellpadding='0' cellspacing='0'><tr> <td width='30%' align ='left'  style='text-align:left;border:0.1px solid #333;padding-left:10px;' >Room No: &nbsp;"&arrForRoomNo(0,0) &"</td><td width='50%'  align = 'center'  style='text-align:center; border:0.1px solid #333;' ></td><td  width='20%'  align ='right'  style='text-align:right;border:0.1px solid #333;padding-right:10px;' >Page&nbsp;"&IntPageNo_new&"</td></tr></table>"&attendenceBreak&"<table width='50%' cellpadding='0' cellspacing='0' style='border:1pt solid #999; font-style:italic; font-weight:bold; font-size:12px; font-family:'Times New Roman', Times, serif;'>  <tr>    <td height='25' colspan='3' align='center' valign='middle' style='border-bottom:1px solid #999;'>Attendance Status</td> </tr>  <tr>    <td width='25%' height='35' style='border-bottom:1px solid #999; border-right:1px solid #999; padding-left:10px;'>Total</td>    <td width='25%' style='border-bottom:1px solid #999; border-right:1px solid #999; padding-left:10px;'> " & total & " </td>    <td align='right' width='50%' rowspan='3' valign='bottom' style='padding-right:3px;'> <table cellpadding='0' cellspacing='0' style='font-style:italic; font-weight:bold; font-size:12px; font-family:'Times New Roman', Times, serif;'>  <tr> <td valign='top' align='right' style='padding-right:10px; border-top:1px solid #999'>Invigilator's Signature</td> </tr> </table> </td> </tr>  <tr>    <td width='25%' height='35' style='border-bottom:1px solid #999; border-right:1px solid #999; padding-left:10px;'>Present</td>    <td width='25%' style='border-bottom:1px solid #999; border-right:1px solid #999;'>&nbsp;</td> </tr>  <tr>    <td width='25%' height='35' style='border-right:1px solid #999; padding-left:5px;'>Absent</td>    <td width='25%' style='border-right:1px solid #999;'>&nbsp;</td> </tr> </table>"
			'next ' this next is for room  loop 	

		else
				strRoom = ""
		end if
		
	else
		strCenterName = ""
		 strBody = strBody & "<div align='center' style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; color:#C30;'>No Record Found</div> <br />"
		 Response.End()
	end if

end if


Server_FOR_PDF_DOC_IS_NOW = "ers.bdjobs.com/applications/pdfbuilder" 

%>


<form id="form2"  name="form2" method="post" action="http://<%= Server_FOR_PDF_DOC_IS_NOW %>/CV_PDF_ers_ab2.php">
<input type="hidden" name="rankForJS_" id="rankForJS_" value="">  
<input type="hidden" name="MainCV_" id="MainCV_" value="<%=strBody%>"> 
<input type="hidden" name="imgSrc_" id="imgSrc_" value=""> 

</form>


<script type="text/javascript">
 	 document.getElementById("form2" ).submit() ;
</script>
</div>