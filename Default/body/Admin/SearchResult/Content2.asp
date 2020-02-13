<div class="row" id="btn_un_short_list_all" style="display:<%If strCVType = "Shortlisted" Then %>block;<%Else%>none;<%End If%>">
    <div class="col-sm-12">
         <div class="select-page">
                <button type="button" id="btnShortListAll" name="btnShortListAll" onclick="UnShortListAll('<%=strAllNew%>',<%=strJobPosting%>);" class="btn btn-primary">Un-ShortList All</button>
         </div>
    </div>
</div>


<div class="row" id="btn_short_list_all" style="display:<%If strCVType <> "Shortlisted" Then %>block;<%Else%>none;<%End If%>">
    <div class="col-sm-12">
         <div class="select-page">
                <button type="button" id="btnShortListAll" name="btnShortListAll" onclick="ShortListAll('<%=strAllNew%>',<%=strJobPosting%>);" class="btn btn-primary">ShortList All</button>
         </div>
    </div>
</div>




<span id="wait" style="display:none;">
  <br />
    <img src="http://ers.bdjobs.com/applications/images/wait.gif" />
  <br />
</span>



<div id="span_shortlistall">


</div>


<div class="row">
    <div class="col-sm-12">
         <div class="select-page">
                <p>Select a page for view </p>
                              <%
                              ShowPageLinkSelect pg, totalPage, 20
                              %>
      
         
                     <div class="pagination-wrap">
                           
                            <nav aria-label="Page navigation">
                                <ul class="pagination">
                                          <%
                                          ShowPageLink pg, totalPage, 20
                                          %>
                                </ul>
                            </nav>
                    </div>
          </div>
     </div>
</div>

<div class="row job-list-row hidden-xs">
    <div class="col-sm-2">
        <h3 class="title">SL/Photo/Tracking.</h3>
    </div>
    <div class="col-sm-3">
        <h3 class="title">Name/Contacts</h3>
    </div>
    <div class="col-sm-5">
        <h3 class="title">Education</h3>
    </div>
    <div class="col-sm-2">
        <h3 class="title">ShortList</h3>
    </div>
</div>
<hr class="hidden-xs">
		  
		<% If intProcced = 1 Then
			'Response.Write(Request.Form())
			
		 	'Response.Write(" Total PG :"&totalPage & "<br />start :"& startSeed&"END :"&intTop&"Current :"&pg& "<br />")
			
			arrIDs = Session("arrID")
			strIds = ""
			Dim intFirstId
			intFirstId = 0
			on error resume next 
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
					If UB = 1 Then
						UB = UB-1
					End If
					'response.Write("<BR>"&UB)
					For r = startSeed To UB
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
				
				For r = 0 To UB '-1
					'response.Write("UBOUND:::"&UB&"<BR>")'&arrIDs(0, r) )	
					strIds2 = strIds2 & "," & arrIDs(0, r) 
					
				Next

			  Session("totalids") = strIds2			
			
			   if err.number <> 0 then 
			     ValuePrint err.description, "err.description"
				 err.clear
			   
			   end if 
			
			SQLPersonal = "SELECT DISTINCT P.id, P.Firstname + ' ' + p.lastname as name,  [dbo].[age](P.DateofBIRTH,CONVERT(datetime, '"&dtmBirthEligible_age&"', 104)) as Age ,P.FatherName,P.ContactPhone, P.CellPhone , P.ContactAddress, P.EMAIL, p.HomeDistrict, j.Shortlisted, j.eligible, p.photo,p.PhotoUrl,P.DateofBIRTH,r.rollno,p.bdjobsphoto,p.bdjobsid, p.HomeDistrict2,j.id,j.jobid,p.pass, SUBSTRING(LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4), CHARINDEX('/', LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4))+1, LEN(LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4))) ,p.[ThanaForPrmDist],p.[signature],p.[signatureurl]  FROM  PERSONAL P inner join jobpos j on j.personalid = p.id  left join roll r on r.personalid = p.id  Where  P.id IN(" & strIds & ") order by r.rollno,j.id " ' &row 
			
			'Response.Write("<br>"&SQLPersonal)
			
			' (DATEDIFF(day, P.DateofBIRTH, CONVERT(datetime, '"&dtmBirthEligible_age&"', 104))/365) AS Age, 
			 SQLPersonal = Replace(SQLPersonal, "'", "''")
			 SQLPersonal =  " exec USP_Search_Result '"&SQLPersonal&"' "
			
			ValuePrint SQLPersonal,"SQLPersonal"
		   
			SQLEdu = "SELECT E.DegreeName, E.SUBJECT, E.PassingYear, E.University, E.[UniversityType], E.RESULT, E.[ResultPoint], E.CGPAScale FROM Academic E "
		    
			ValuePrint SQLEdu,"SQLEdu"

			arr_Personal = objERS.RetrieveData(SQLPersonal, errMsg)
			ErrorMessage "2015", errMsg, 0						
			
			 show_cv = 0
			 
			 UBPersonal = UBound(arr_Personal, 2)
			  
				first = 0 
				last = 19
				
				If UBPersonal < last Then
					last = UBPersonal
				End If
				
				'Response.Write("<br />first: " & first & "<br />last: " & last& "<br />UBlast: " & UBPersonal)
		If arr_Personal(0,0) = "Nothing" Then
				response.Write("<center>No record found.</center>")
		Else		
				For i = first To last
					intTrakingNumber = arr_Personal(0, i)
		            jobid = arr_Personal(19, i)	 
					intTrakingNumber_New = arr_Personal(18, i)	
					intTrakingNo = intTrakingNumber
		    sql = ""
			sql = "select jj.JobTitle,j.id,jj.jobid from JobPosting jj inner join jobpos j on jj.jobid = j.jobid  where j.personalid ="&intTrakingNo
			arrJobTitle = objERS.RetrieveData(sql, errMsg) 
			ErrorMessage "153", errMsg, 0

            if arrJobTitle(0, 0) <> "Nothing" Then 
			  position = "" 
			  For jjj = 0 to ubound(arrJobTitle, 2)
			    jobid = arrJobTitle(2 , jjj )
				 TrackNoNEW = arrJobTitle(1 , jjj )
				 
				 if strPhotoFolder = "bankjobs" then
					if jobid = 1 then 
					  TrackNoNEW = TrackNoNEW + 100000
					elseif jobid = 2 then 
					  TrackNoNEW = TrackNoNEW + 200000
					elseif jobid = 3 then 
					  TrackNoNEW = TrackNoNEW + 300000
					end if 
				 end if 
				 
			    position = position & arrJobTitle(0 , jjj ) & "  ( Job Reference ID : "& TrackNoNEW & " ) <br>"
				'TrackNoNEW = arrJobTitle(3 , i ) 
			  Next			 
			end if 	


                    intTrakingNumber_New =  TrackNoNEW

                    IsPhoto = arr_Personal(11,i)
					bdjPhotoUrl = arr_Personal(12,i)
				    'imgSrc = bdjPhotoUrl
				    strHomeDistrict = arr_Personal(8, i)
					IsBdjPhoto = arr_Personal(15,i)
					BdjobsId = arr_Personal(16,i)
					strHomeDistrict2 = arr_Personal(17, i)
					strPassword33 = arr_Personal(20, i)
					onlyPhotoSrc = arr_Personal(21, i)
					
	                strThanaPrmDist = arr_Personal(22, i)
					strSignatureSrc = arr_Personal(24, i) &"?"&time&rnd 					
					
	  	            imgSrc = "" 
					
					intTrackingNo = intTrakingNumber
      %>
          <!-- photo view in page ---  
               parameter list  >  intTrackingNo  
          -->
          <!--#include virtual = '/applications/common/photo_upload/photo_view_ers_db.asp' -->  
       
      <%					
			

					
	

If strThanaPrmDist <> "" Then

	resumeServer="MyBdjobsView" ' for thana from mybdjobs
	
	sqlForThana = "SELECT L_ID, L_Name FROM Locations WHERE L_ID = "&strThanaPrmDist
	err.clear 
	arrSqlForThana = objResumeServer.RetrieveData(sqlForThana, errMsg)
	
	strThanaName = arrSqlForThana(1,0)

End If	



If strHomeDistrict <> "" Then

	resumeServer="MyBdjobsView" ' for thana from mybdjobs
	
	sqlForDistrict = "SELECT L_ID, L_Name FROM Locations WHERE L_ID = "&strHomeDistrict
	err.clear 
	arrSqlForDistrict = objResumeServer.RetrieveData(sqlForDistrict, errMsg)
	
	dist = arrSqlForDistrict(1,0)

End If


	
If strHomeDistrict2 <> "" Then

	resumeServer="MyBdjobsView" ' for thana from mybdjobs
	
	sqlForDistrict2 = "SELECT L_ID, L_Name FROM Locations WHERE L_ID = "&strHomeDistrict2
	err.clear 
	arrSqlForDistrict2 = objResumeServer.RetrieveData(sqlForDistrict2, errMsg)
	
	dist2 = arrSqlForDistrict2(1,0)

End If

%>