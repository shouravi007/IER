

<div class="row job-list-row hidden-xs" id="row_<%=intTrakingNumber%>">
    <div class="col-sm-2">
      <div class="form-group">
       SL:<h3 class="badge"><%=startSeed + i + 1%></h3>
             <img src="<%=imgSrc%>"  class="img-responsive">
             <h5 class="track-no">(Tracking No:<span class="badge badge-success"> <%=intTrakingNumber_New%>)</span></h5>          							<%
			 
			 
			 
			 intRoll = arr_Personal(14, i)
			 
			 
			 If intRoll<> "" and isnull(intRoll) = false  Then%>
                                <p style='word-wrap:break-word;'><i>Roll No:</i> <span class="badge badge-error"><%=intRoll%></span>
                                </p>
                                
               

<p style='word-wrap:break-word;'>
    <form id ="goViewAdmit" name="goViewAdmit" action="?<%=Encode("Location=Admit&FormAction=viewAdmitCard")%>" method="post" target="_blank">
    <input type="hidden"  name="txtTrackingNo" id="txtTrackingNo"  value="<%=intTrakingNumber%>"/>
    <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword33%>"/>
    <input type="hidden" name="admin" id="admin"  value="true"/>
    <button type="submit" id="btnSubmit" name="btnSubmit" class="btn btn-primary">View Admit </button>
    </form>                        
</p>             
                            
                                
                                
              <%End If%>                            
                          
           <p style='word-wrap:break-word;'>Age(<%=dtmBirthEligible_age%>) : <span class="badge badge-warning" style="word-wrap:break-word; font-size:11px;">(<%=arr_Personal(2, i)%>)</span></p>       
                                
     
       </div>         
    </div>
    <div class="col-sm-4">
        <div class="form-group">
            
            
    
                    
                   
       <%If intTrakingNumber <> "Nothing" Then%>
			<h4>
					<a style="cursor:pointer;" class="name" target="_blank" onclick="document.getElementById('goResume<%=i%>').submit();">
						<%=arr_Personal(1, i)%>
                        
                        </a>
 
    <form id ="goResume<%=i%>" name="goResume<%=i%>" action="?<%=Encode("Location=View&FormAction=ViewResume")%>" method="post" target="_blank">
    <input type="hidden"  name="txtTrakingNumber" id="txtTrakingNumber"  value="<%=intTrakingNumber%>"/>
    <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"/>
    <input type="hidden" name="admin" id="admin"  value="true"/>
    
    </form>  
           
            </h4>
                        
						
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
       <p style='word-wrap:break-word;'> Date of Birth : <%=dob%> </p>             
                
<%
						If arr_Personal(3, i) <> "" Then
%> 
						<p style='word-wrap:break-word;'>	Father's Name : <%=arr_Personal(3, i)%></p>
							
<%
						End If 
%>

<p style='word-wrap:break-word;'>
<%
						Response.Write(arr_Personal(6, i))
%>
</p>
<%
						If arr_Personal(4, i) <> "" Then
%> 
							
							<p style='word-wrap:break-word;'>Contact Mobile: <%=arr_Personal(4, i)%></p>
<%
						End If

						If arr_Personal(5, i) <> "" Then
%> 
							
							<p style='word-wrap:break-word;'>Home Mobile: <%=arr_Personal(5, i)%></p>
<%
						End If
%>
						
						<p style='word-wrap:break-word;'>Email: <%=arr_Personal(7, i)%></p>
                        <p style='word-wrap:break-word;'>Present District: <span class="badge"><%=dist2%></span></p>

                        
						<p style='word-wrap:break-word;'>Home District: <span class="badge"><%=dist%></span></p>
						
                       
					
                         <p style='word-wrap:break-word;'>Thana : <span class="badge"><%=strThanaName%></span></p>	
						                        
						
						<%End If%>         
            
		</div>
    </div>
    <div class="col-sm-4">
        <div class="form-group"><%
	on error resume next 
	
					SQLEduTmp = SQLEdu
					SQLEduTmp = SQLEduTmp & "WHERE E.Personalid=" & intTrakingNumber &" order by educationid desc"
					
					
			 SQLEduTmp = Replace(SQLEduTmp, "'", "''")
			 SQLEduTmp =  " exec USP_Search_Result '"&SQLEduTmp&"' "
					
					ValuePrint SQLEduTmp,"sqlEduTmp" 
					arr_Education = objERS.RetrieveData(SQLEduTmp, errMsg)
					ErrorMessage "235", errMsg, 0
					
					If arr_Education(0, 0) <> "Nothing" Then
						For j = 0 To UBound(arr_Education, 2)
							strGrade = arr_Education(7, j)
							strInstitute = arr_Education(3, j)
							'response.Write(strInstitute)
							strResult = ""
							If IsNull(strInstitute) = False Then 
							strInstitute = REPLACE(strInstitute,"@***@",", ")
							End If
							
							If arr_Education(5, j) = "15" Then
						   		strResult = "First division (" & arr_Education(6, j) & "%)"
						    End If
						   
						    If arr_Education(5, j) = "14" Then
						    	strResult = "Second division (" & arr_Education(6, j) & "%)"
						    End If
						   
							If arr_Education(5, j) < "12" Then
								strResult = "CGPA: " & arr_Education(6, j) & " (" & strGrade & ")"
						   	End If
							
							
							If arr_Education(5, j) = "12" Then
								strResult = "Appeared"
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
							
						   
							Response.Write("<p style='word-wrap:break-word;'><i><font color='#0000FF'>"&arr_Education(0, j) & " - </font></i>" & strSubjectName & " - " & arr_Education(2, j) & " - " &  strResult & " - " & strInstitute & "")
							'Response.Write(arr_Education(0, j) & " - " & arr_Education(1, j) & " - " & arr_Education(2, j) & "</p>")
						Next
					End If

					sqlJobPos = "SELECT Personalid, JOBID, SHORTLISTED FROM Jobpos WHERE personalid ="&intTrakingNumber 
					'ValuePrint sqlJobPos, "sqlJobPos"
					arr_JOBPOS = objERS.RetrieveData(sqlJobPos, errMsg)
					ErrorMessage "2177", errMsg, 0
					
					If arr_JOBPOS(0,0) <> "Nothing" Then
					IsShortlisted = ""
					jobPosition = ""

						intJobId = arr_JOBPOS(1,0)
						jobPosition = intJobId 

						If arr_JOBPOS(2,0) = True or arr_JOBPOS(2,0) = 1 Then
						 checked = "checked"
						Else
						 checked = ""
						End If
					End If
					%>	
                
                                    <img src="<%=strSignatureSrc%>"  class="img-responsive"> 

                    
               </div>     
    </div>
    <div class="col-sm-2">
       <h3 class="title">					
		<input onClick="ShortList(<%=intTrakingNumber%>,<%=strJobPosting%>,this);"  type="checkbox" name="chkShortListed" id="chkShortListed<%=i+1%>" value="<%=intTrakingNumber%>" <%=checked%> />
	   </h3>
                 
                 <div id="span_shortlist_<%=intTrakingNumber%>">
                    
                </div>
    </div>
</div>
<hr class="hidden-xs">
                   
<%
	
			  Next	
	    End If
		
		
		
%>	

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

              
						<!--	*******************************************	   End Rony For Paging  ***********************-->	  
				
          
       <% End If ' end If intProcced = 1 Then %>
        
		</form>
		<!--############## END FORM ###############-->   
<%
		'SESSION("TrakNo") = strUserName
		SESSION("UserName") = strUserName
		
		
	Else 'If IsDisplay = False Then
		Response.Write("<div align='center' style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; color:#C30;'>No Record Found</div> ")
	 ' Response.Write("SQL:" & IsDisplay)
	End If
	
' Close Connection
%>	

                              
      </div>
	</div>
</div> 



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
                        
 
 
					   
					 function ShortList(TrackingNumber,jobid,objShortList)
					{
						   //alert(objShortList.checked);
						   $(obj).html(''); 
						   var obj = "#span_shortlist_"+TrackingNumber;
						   var objRow = "#row_"+TrackingNumber;
						   var chk = "chkShortListed"+TrackingNumber;
						   
							//alert("Tracking Number : "+TrackingNumber+"\n is going to be Rejected..please go on below...it will be rejected soon "); 
							$.post("?<%=Encode("Location=Ajax&FormAction=ShortList")%>", {TrackingNumber: TrackingNumber,jobid:jobid,system:system}, function(data, status){
								$(obj).html(data);
								$(objRow).css('background-color','#FFFDD0');
					            
							    if(objShortList.checked == true )
								{
								  $(objRow).css('background-color','#FFFDD0');
								}
								else
								{
								  $(objRow).css('background-color','#FFF');
								}
							});	
					}
					

					 
					 
					   
					 function ShortListAll(TrackingNumber,jobid)
					{
       
	       	         	 document.getElementById('wait').style.display = "block"; 

						   //alert(objShortList.checked);
						   $(obj).html(''); 
						   var obj = "#span_shortlistall";

							//alert("Tracking Number : "+TrackingNumber+"\n is going to be Rejected..please go on below...it will be rejected soon "); 
							$.post("?<%=Encode("Location=Ajax&FormAction=ShortListAll")%>", {TrackingNumber: TrackingNumber,jobid:jobid,system:system}, function(data, status){
								$(obj).html(data);
								document.getElementById('wait').style.display = "none"; 
								document.getElementById('btn_short_list_all').style.display = "none"; 
								document.getElementById('btn_un_short_list_all').style.display = "block"; 
									
							});	
					}
					

					            
					   
					 function UnShortListAll(TrackingNumber,jobid)
					{
						
	                 	document.getElementById('wait').style.display = "block"; 
						   //alert(objShortList.checked);
						   $(obj).html(''); 
						   var obj = "#span_shortlistall";

							//alert("Tracking Number : "+TrackingNumber+"\n is going to be Rejected..please go on below...it will be rejected soon "); 
							$.post("?<%=Encode("Location=Ajax&FormAction=UnShortListAll")%>", {TrackingNumber: TrackingNumber,jobid:jobid,system:system}, function(data, status){
								$(obj).html(data);
	         	             document.getElementById('wait').style.display = "none"; 
                            // document.getElementById('rdoCVType').value = 'All';
							 
							 document.getElementById('btn_short_list_all').style.display = "block"; 
							 document.getElementById('btn_un_short_list_all').style.display = "none"; 
							
							
							});	
					}		   
		   
		   
		   
		                </script>                    