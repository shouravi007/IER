		<!--############## FORM ###############-->
		<form action="ShortList.asp" method="post" name="frmShortList" id="frmShortList">
		 <!-- <input type="hidden" name="hidUserID" id="hidUserID" value="<%'=intUserID%>" />
		  <div class="sectionheader">Registration (cont...)</div>-->
		  <table width="100%" style="border:0px; background:none;">
			  
			  <tr>
			  	<td colspan="2">
					<div class="sectionheader" style="font-size:12px;">
                    <input name="txtJobName" type="hidden" value="<%=strJobName%>" />
                   <h2 style="color:#F00;"> <%=strJobName%></h2>
					</div>
					<br />
					<strong>
					Total CV(s) Found: </strong>
			      <strong><%=UB%></strong>
                  <br />
                  <%
				  If strJobPosting <> "S" Then
				  		If strJobPosting = 4 Then
							Response.Write("<strong>Searched For: Management Trainee Officer</strong>")
						ElseIf strJobPosting = 5 Then
							Response.Write("<strong>Searched For: Trainee  Officer</strong>")
						End If
				  End If
				  %>
                  </td>
			  </tr>
            <% If intProcced = 0 Then
				'Response.Write("P.No. :"&pg)
			%>  
			  <tr>
			    <td colspan="2" align="center">
                	<br />
                    <br />

                	<input name="btnProcced" type="button" value="Procced" onClick="PageSubmit(1);"/>
                </td>
			  </tr>
            <% End If %>
		  </table>
		<% If intProcced = 1 Then
			'Response.Write(Request.Form())
		%>
		  <table width="100%" style="border:0px; background:none;">
			  <tr>
			    <td colspan="2"><strong>Total Page(s): <%= totalPage %></strong></td>
                <%
					If strJobPosting <> "S" Then
				%>
			    <td colspan="2" align="right">	 <a class="fancybox"  id="fancybox" href="#Wrapperbox" style="text-decoration:none;">	<input type="button" name="btnSubmit1" id="btnSubmit1" value="<%If strCVType = "Shortlisted" Then%>Un <%End If%>Shortlist ALL" onclick="ShortList_all('totalall','<%=strCVType%>', '<%=strJobPosting%>');" style="width:70px; font-family:Verdana; font-size:10px;" /></a></td>
                <%
					End If
				%>
              </tr>
			  <tr>
			  	<td colspan="2">
					<!--	*******************************************	Start For Paging  ***********************-->
					  <%
					  ShowPageLink pg, totalPage, 20
					  %>
					<!--	*******************************************	   End For Paging  ***********************-->	  
				</td>
				<td colspan="2" align="right" valign="middle">
					<!--<font color="#00A650"><div id="myMessage"></div></font>-->
                  <%
					If strJobPosting <> "S" Then
				  %>  
                    
                    <table width="30%" border="0" style="border-top:0px;">
                      <tr>
                        <td><img src="images/shortlist_Black.jpg" width="18" height="18"/></td>
                        <td>=&nbsp; Short-listed</td>
                      </tr>
                    </table>
 				  <%
					End If
				  %>
				</td>
			  </tr>
			  <tr bgcolor="#999999">
				<td width="23%" align="center" height="13"><font color="#FFFFFF" face="Verdana" size="1"><b>Name/Track 
				  No./Contacts/Address</b></font></td>
				<td width="35%" align="center" height="13"><font color="#FFFFFF" face="Verdana" size="1"><b> Education</b></font></td>
				<td width="15%" align="center" height="13"><font color="#FFFFFF" face="Verdana" size="1"><b>Job Position</b></font></td>
				<td width="17%" align="center" height="13"><font color="#FFFFFF" face="Verdana" size="1"><!--<b>E-mail/Delete<br />/</b>-->
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
						<b>Unshortlist/Delete</b><br />
						(All<input type="checkbox" name="chkAllShortListed" id="chkAllShortListed" onclick="AllChecker();" />)
<%
					Else
%>					
						<b>Shortlist/Delete</b><br />
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
			
			SQLPersonal = "SELECT DISTINCT P.Personalid, P.Firstname, ROUND(DATEDIFF(m, P.DateofBIRTH, CONVERT(datetime, '"&strDeadLine&"', 104))/12, 2) AS Age, P.FatherName,P.ContactPhone, P.CellPhone , P.ContactAddress, P.EMAIL, p.HomeDistrict, p.Shortlisted, p.Rejected FROM " & strBrach & "PERSONAL P " & strJoin	
						
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
			
			SQLPersonal = SQLPersonal & SQLWhere
			
			IF Request.ServerVariables("REMOTE_ADDR") = "192.168.100.185" OR Request.ServerVariables("REMOTE_ADDR") = "180.148.210.36" or Request.ServerVariables("REMOTE_ADDR") = "180.234.216.207" or Request.ServerVariables("SERVER_NAME") = "server-ers" Then		
		    'ValuePrint SQLPersonal, "SQLPersonal"
			'Response.End()
				Response.Write("<br>SQL: " & SQLPersonal&"<BR>")
			End If
			arr_Personal = objDhakaBank.RetrieveData(SQLPersonal, errMsg)
			ErrorMessage "2015", errMsg, 0		
			
			
			
			
			 show_cv = 0
			 
			 UBPersonal = UBound(arr_Personal, 2)
			  
				first = 0 
				last = 19
				
				If UBPersonal < last Then
					last = UBPersonal
				End If
				
				'Response.Write("<br />first: " & first & "<br />last: " & last& "<br />UBlast: " & UBPersonal)
				
				For i = first To last
					intTrakingNumber = arr_Personal(0, i)
				' Check Shorlisted	
					If SysName="eblnewlook" Then
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
					strTDStyle = "style='padding-top:8px; padding-right:3px; border-bottom:1px solid #999;'"
%>
<div id="infinite"><p>

				  <tr bgcolor="#<%If i mod 2 = 0 Then%>FFFFFF<%Else%>DDEEFF<%End If%>" class="lazy-loaded">
                  
                 <%If intTrakingNumber <> "Nothing" Then%>
					<td width="23%" align="left" height="13" valign="top" <%=strTDStyle%>>
                    
						<a href="../ViewResume.asp?TrakingNo=<%=Encode(intTrakingNumber)%>" target="_blank">
						<%=arr_Personal(1, i)%></a> (Track No: <%=intTrakingNumber%>)
						<br />
						<%=arr_Personal(6, i)%>
<%
						If arr_Personal(3, i) <> "" Then
%> 
							<br />
							Fathers Name : <%=arr_Personal(3, i)%>
<%
						End If

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
						Age: <%=arr_Personal(2, i)%>
					<%End If%>
                    </td>
					<td width="35%" align="left" height="13" valign="top" <%=strTDStyle%>>
<%
					SQLEduTmp = SQLEdu
					SQLEduTmp = SQLEduTmp & "WHERE E.Personalid=" & intTrakingNumber
					'ValuePrint SQLEduTmp,"sqlEduTmp" 
					arr_Education = objDhakaBank.RetrieveData(SQLEduTmp, errMsg)
					ErrorMessage "235", errMsg, 0
					
					If arr_Education(0, 0) <> "Nothing" Then
						For j = 0 To UBound(arr_Education, 2)
							strGrade = arr_Education(7, j)
							strInstitute = arr_Education(3, j)
							'response.Write(strInstitute)
							strInstitute = REPLACE(strInstitute,"@***@",", ")
							
							If arr_Education(5, j) = "15" Then
						   		strResult = "First division(" & arr_Education(6, j) & "%)"
						    End If
						   
						    If arr_Education(5, j) = "14" Then
						    	strResult = "<br />Second division(" & arr_Education(6, j) & "%)"
						    End If
						   
							If arr_Education(5, j) < "12" Then
								strResult = "<br />CGPA: " & arr_Education(6, j) & "(" & strGrade & ")"
						   	End If
						   
							Response.Write("<i><font color='#0000FF'>"&arr_Education(0, j) & " - </font></i>" & arr_Education(1, j) & " - " & arr_Education(2, j) & " - " & strResult & " - " & strInstitute & "<br />")
							'Response.Write(arr_Education(0, j) & " - " & arr_Education(1, j) & " - " & arr_Education(2, j) & "<br />")
						Next
					End If
%>							
					</td>
					<td width="15%" align="left" height="13" valign="top" <%=strTDStyle%>>
                    <%
					sqlJobPos = "SELECT PERSONALID, JOBID FROM JOBPOS WHERE PERSONALID ="&intTrakingNumber 
					
					arr_JOBPOS = objDhakaBank.RetrieveData(sqlJobPos, errMsg)
					ErrorMessage "2177", errMsg, 0
					
					If arr_JOBPOS(0,0) <> "Nothing" Then
               			intJobId = arr_JOBPOS(1,0)
						if intJobId = 4 AND ubound(arr_JOBPOS,2) = 0 Then
							jobPosition = "Management Trainee Officer"
						elseif intJobId = 5 AND ubound(arr_JOBPOS,2) = 0 Then
							jobPosition = "Trainee Officer"
						'elseif ubound(arr_JOBPOS,2) > 0 Then
							'jobPosition = "1. Junior Officer <br>2. Trainee Assistant Officer/ Trainee Assistant Cash Officer"
						end if
							Response.Write(jobPosition)
					End If
					%>				
					</td>
					<td width="17%" align="center" height="13" <%=strTDStyle%>>
<%
					If strJobPosting <> "S" Then
						  IsShortlisted = arr_Personal(10,i)
						  IsRejected = arr_Personal(11,i)

						  If IsShortlisted = True then
							  ShortlistedImg = "<img src='images/shortlist_Black.jpg' width='18' height='18'/>"
							  RejectedImg = ""
							  checked = "checked"
						  ElseIf IsRejected = True then
							  RejectedImg = "<img src='images/Rejected.jpg' width='18' height='18'/>"
							  ShortlistedImg = ""
							  checked = "checked"
						  ElseIf IsShortlisted = True and IsRejected = True then
						  	  ShortlistedImg = "<img src='images/shortlist_Black.jpg' width='18' height='18'/>"
							  RejectedImg = "<img src='images/Rejected.jpg' width='18' height='18'/>"
							  checked = "checked"
						  Else
						 	 ShortlistedImg = ""
							 RejectedImg = ""
							 checked = ""
						  End If
%>					
						<input onclick="ShortList(<%=intTrakingNumber%>,<%=strJobPosting%>);"  type="checkbox" name="chkShortListed" id="chkShortListed<%=i+1%>" value="<%=intTrakingNumber%>" <%=checked%> />
						<%=ShortlistedImg%>&nbsp;<%=RejectedImg%>
						
<%
					End If
%>					
<%=strImage %>	
				 <div id="span_shortlist_<%=intTrakingNumber%>">
                    
               
                </div	></td> 
                   
				  </tr> </p></div>                 
<%
			  Next
%>			  
 <div id="marker-end"></div>		  		 
 <tr>
					<td colspan="3">
						<!--	*******************************************	Start Rony For Paging  ***********************-->
						  <%
						  ShowPageLink pg, totalPage, 20
						  %>
						<!--	*******************************************	   End Rony For Paging  ***********************-->	  
					</td>
					<td align="center">
					
					</td>
			   </tr>
		  </table>
          
<% End If 
	   ' end If intProcced = 1 Then 
%>        
		</form>
		<!--############## END FORM ###############-->   
<%
		SESSION("UserName") = strUserName
				
	Else 'If IsDisplay = False Then
		Response.Write("<div align='center' style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; color:#C30;'>No Record Found</div> <br />")
	 ' Response.Write("SQL:" & IsDisplay)
	End If
	
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
        $.post("SearchResultGroup_bd\ShortList.asp", {TrackingNumber: TrackingNumber,jobid:jobid}, function(data, status){
            $(obj).html(data);
            $(objRow).css('background-color','#FFFDD0');


        });	
}


function UnShortList(TrackingNumber)
{
	   var obj = "#span_unshortlist_"+TrackingNumber;
     	//alert("Tracking Number : "+TrackingNumber+"\n is going to be Rejected..please go on below...it will be rejected soon "); 
        $.post("UnShortList.asp", {TrackingNumber: TrackingNumber}, function(data, status){
            $(obj).html(data);
        });	
}
 
 
 
 
 
 
 
 
 
 
                        </script>
					<!----end main body---->
					<!---right side--->					
				</tr>
				<tr><td height="10"><!--Welcome to the administrative control panel of DhakaBank e-Recuritment System.--></td></tr>
			</tbody></table>
		</td>
	</tr>
	<!----end body---->
	

	<tr><td height="10" background="images/footer.gif"></td></tr>
	<tr><td height="10"></td></tr>
	<tr>
		<td>
			<table align="center" width="978" border="0" cellpadding="0">
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
						<tbody><tr><td class="footer" align="right"> Powered by Bdjobs.com  </td></tr>
                        <tr>
                          <td class="footer" align="right"><img src="images/bdjobs_Logo.gif" width="74" height="12" /></td></tr>
					</tbody></table>
				</td>
				</tr>
			</tbody></table>
		</td>
	</tr>
	<tr><td height="10"></td></tr>
</tbody></table>
