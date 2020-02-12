             <div class="appli-form">
                    <form id="form1" name="form1" method="post" action="?<%=Encode("Location=Admin&FormAction=ajaxGenerateRoll")%>">

                      <fieldset>
                        <legend>Roll Number Generation</legend>
                       
                                 <div class="col-sm-12">
                                    <label for="firstName">Job Position&nbsp; <h5 class="notice">* (select a job for shortlisted applicants)</h5>
                                    
                                    </label>
                                  </div>
                                  
                                  
            
							<%if arrJobPosting( 0, 0) <> "Nothing" then %>
                                <%For i = 0 to ubound(arrJobPosting, 2)%>
                                    <div class="col-sm-12">
                                    <input type="radio" name="jobid" id="jobid<%=i%>" value="<%=arrJobPosting(0, i)%>" onclick="ShowApplicants_New(this.value);"/><label><strong><%=arrJobPosting(1, i)%></strong>--<i style="font-size:10px">(Deadline : <%=arrJobPosting(2, i)%>)</i></label>
                                    </div>
                                
                                <%next
                            end if
                            %>  
                                                  
                                                
                                 <div class="col-sm-12">
                                    <label for="fathersName">  <input type="radio" name="jobid" id="reid2" value="reset" checked="checked" onclick="javascript:location.reload(true);"/>Reset  &nbsp;
                                    </label>
                                  </div>
                                
                               
                                  <div class="col-sm-12">
                                    <div id="ShowApplicantList" class="form-group">
    
                                    </div>
                                  </div>
                                 
                            </fieldset>
                         </form>
                     </div>
                 
    
  

<script>

function ShowApplicants_New(orderByType)
{
	 $("#ShowApplicantList").html("<img src='http://ers.bdjobs.com/applications/images/wait.gif' />");
	
	$.post("?<%=Encode("Location=Ajax&FormAction=LoadApplicantList_New")%>",
	 {
		 type : orderByType,
		 system : system
	 },
	 function(data,status)
	 {
		if (data != "")
		{
		  $("#ShowApplicantList").html(data);
		}
		else
		{
		  $("#ShowApplicantList").html("<img src='http://ers.bdjobs.com/applications/images/wait.gif' />");
		}

	 });
}




                
	 function RollGen(TrackingNumber,jobid)
					{
						   $(obj).html(''); 
						   var obj = "#span_shortlist_"+TrackingNumber;
						   var objRow = "#row_"+TrackingNumber;
						   var chk = "chkShortListed"+TrackingNumber;
						   var objRll_ = "roll_"+TrackingNumber
						   var objRoll = document.getElementById(objRll_);
						
		   if ( CheckValidation("True",objRoll,"text","Text","10", "Roll Number  " ,1600 ) == false)
				{
					   return false;
					   //break;	   
				}						
						
						
						   $(obj).html("<img src='http://ers.bdjobs.com/applications/images/wait.gif' width='100' height='80' />"); 
							//alert("Tracking Number : "+TrackingNumber+"\n is going to be Rejected..please go on below...it will be rejected soon "); 
							$.post("?<%=Encode("Location=Ajax&FormAction=RollGenAjax")%>", {TrackingNumber: TrackingNumber,jobid:jobid,system:system,rollno:objRoll.value}, function(data, status){
								$(obj).html(data);
								//$(objRow).css('background-color','#FFFDD0');
					            
							    if(document.getElementById("chkShortListed"+TrackingNumber).checked == true )
								{
								 // $(objRow).css('background-color','#FFFDD0');
								}
								else
								{
								 // $(objRow).css('background-color','#FFF');
								}
							});	
					}
        

                
	 function RollDelete(TrackingNumber,jobid,rollno)
					{
						  
						   var obj = "#span_deletelist_"+TrackingNumber;
						    $(obj).html(''); 
						   var objRow = "#row_"+TrackingNumber;
						   var chk = "chkShortListed"+TrackingNumber;
						 
						
						   $(obj).html("<img src='http://ers.bdjobs.com/applications/images/wait.gif' width='100' height='80' />"); 
							//alert("Tracking Number : "+TrackingNumber+"\n is going to be Rejected..please go on below...it will be rejected soon "); 
							$.post("?<%=Encode("Location=Ajax&FormAction=RollDeleteAjax")%>", {TrackingNumber: TrackingNumber,jobid:jobid,system:system,rollno:rollno}, function(data, status){
								$(obj).html(data);
								//$(objRow).css('background-color','#FFFDD0');
					            
							    if(document.getElementById("chkShortListed"+TrackingNumber).checked == true )
								{
								 // $(objRow).css('background-color','#FFFDD0');
								}
								else
								{
								 // $(objRow).css('background-color','#FFF');
								}
							});	
					}
        


 function RollViewExist(jobid)
					{
						
						   var obj = "#span_viewlist";
						if(document.getElementById('existing').checked == true ) 
						{
						   
						   $(obj).html(''); 
						   $(obj).html("<img src='http://ers.bdjobs.com/applications/images/wait.gif'/>"); 
						   var chk = "chkShortListed";
						   
							//alert("Tracking Number : "+TrackingNumber+"\n is going to be Rejected..please go on below...it will be rejected soon "); 
						
						
												
							$.post("?<%=Encode("Location=Ajax&FormAction=LoadApplicantList_Existing")%>",
							 {
								jobid:jobid,
								system : system
							 },
							 function(data,status)
							 {
								if (data != "")
								{
								  $(obj).html(data);
								  
									if(document.getElementById("chkShortListed"+TrackingNumber).checked == true )
									{
									//  $(objRow).css('background-color','#FFFDD0');
									}
									else
									{
									// $(objRow).css('background-color','#FFF');
									}								  
								  
								}
								else
								{
								   $(obj).html('');
								}
						
							 });
					
						}
					  else
					  {
						  $(obj).html('');
					  }
					}
        



</script>
