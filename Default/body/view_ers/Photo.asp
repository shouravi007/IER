


<%
'response.Write("system:"&system)
TrackNoNEW = Request.Form("TrackNoNEW")
TrackNo = Request.Form("track_no")
strPassword = Request.Form("txtPassword")
IsPhoto =  Request.Form("IsPhoto")
'response.End()


		    sql = ""
			sql = "select jj.JobTitle,j.id,jj.jobid from JobPosting jj inner join jobpos j on jj.jobid = j.jobid  where j.personalid ="&TrackNo
			arrJobTitle = objERS.RetrieveData(sql, errMsg) 
			ErrorMessage "153", errMsg, 0

            if arrJobTitle(0, 0) <> "Nothing" Then 
			  position = "" 
			  
			  For i = 0 to ubound(arrJobTitle, 2)
			  
			    jobid = arrJobTitle(2 , i )
				 TrackNoNEW = arrJobTitle(1 , i )
				IF system = "ksb" then
					position = position & arrJobTitle(0 , i ) & "  (Applicant ID : "& TrackNoNEW & " ) <br>"
				else
					if jobid = 1 then 
					  TrackNoNEW = TrackNoNEW + 100000
					elseif jobid = 2 then 
					  TrackNoNEW = TrackNoNEW + 200000
					elseif jobid = 3 then 
					  TrackNoNEW = TrackNoNEW + 300000
					end if 
					 
					position = position & arrJobTitle(0 , i ) & "  ( Job Reference ID : "& TrackNoNEW & " ) <br>"
					'TrackNoNEW = arrJobTitle(3 , i )
				end if 
			 
			  Next			 
			end if  





	sqlSelectPhoto = "select id,photo,photourl,jobid,firstname,lastname,postedon,updatedon,photo,bdjobsphoto from Personal WHERE id =" & TrackNo
	ValuePrint sqlSelectPhoto, "118-sqlselectphoto"
	'Response.Write sqlSelectPhoto &"else"
	arrPhoto = objERS.RetrieveData( sqlSelectPhoto, errMsg)
	'Response.Write errMsg
	
	'response.Write(arrPhoto(0,0))
	If arrPhoto(0,0) <> "Nothing" Then 
		IsPhoto = arrPhoto(1,0)	'True
		ValuePrint IsPhoto, "IsPhoto"
		'response.Write("is photo:"&IsPhoto)
		strPhotoName = arrPhoto(2,0)
		ValuePrint strPhotoName, "226-strPhotoName"
		jobid = arrPhoto(3, 0) 
		strName = arrPhoto(4,0) & " " & arrPhoto(5, 0) 
		postedOn = arrPhoto(6,0)
		updatedOn = arrPhoto(7,0)
		photo = arrPhoto(8,0)
		bdjobsphoto = arrPhoto(9,0)
		
		if strPhotoName = "" or isnull(strPhotoName) or isempty(strPhotoName) then 
		  if bdjobsphoto = false or bdjobsphoto = 0 or isnull(bdjobsphoto) then 
		   strPhotoName = trim(request.Form("srcImage"))  ' temp src > pre uplaod 

		  end if
		end if 
		
		if strPhotoName = "" or isnull(strPhotoName) or isempty(strPhotoName) then 
		  strPhotoName = "http://ers.bdjobs.com/applications/images/noimage.gif"
        end if 
		
	End If 

 
%>


				<div class="col-sm-12">
					<div class="summery-view bg-style">
						<h1 class="post-name">Notification</h1>
						<div class="wrapper">
							
								<fieldset>
									<legend>General Information</legend>
									<div class="row vertical-align-items">
										<div class="col-sm-8 item-1">
											<div class="form-group">
												<h3><%=strName%></h3>
											</div>
											<div class="form-group">
												<h4>Login ID : <%=TrackNo%></h4>
											</div>
											

                                            
											<div class="form-group">
                                                Applied Position <hr />
                                                <br />												
                                                
                                                <h4><%=position%></h4>
											</div>                                            
                                            
                                            
                                            
                                            
                                            <div class="form-group">
												<h5>Resume Posted on : <%If postedOn <> "" Then%>
                             <%=Mid(FormatDateTime(postedOn,1), inStr(FormatDateTime(postedOn,1), ", ")+1)%>
                        <%End If%>	</h5>
											</div>
											<div class="form-group">
												<h5>Resume Updated on :  <%If IsDate(updatedOn) = True Then%>
                  <%=Mid(FormatDateTime(updatedOn,1), inStr(FormatDateTime(updatedOn,1), ", ")+1)%>
                <%End If%></h5>
											</div>
										</div>
										<div class="col-sm-4 item-2">
											<img src="<%=strPhotoName%>" class="img-responsive">
                                            
                                            <!--#include Virtual = '/applications/common/signature/showsignature.asp' -->
                                            
										</div>
									</div>
								</fieldset>
                                
							

        <fieldset>
		<%if system <> "ksb" then%>
           
           <legend> View Resume </legend>
          <div class="btn-wrap text-left">
         
             <form action="?<%=Encode("Location=View&FormAction=ViewResume")%>" method="post">
                     
                <button class="btn-style" type="submit">
                <i class="fa fa-pencil-square-o" aria-hidden="true"></i>Continue
                </button>            
                <input type="hidden" id="TrackNo" name="TrackNo" value="<%=TrackNo%>"/>
            
        	</form>
                    
          </div>
          
		  <%Else%>
             
           <legend> Download Applicant Copy</legend>
           
           <div class="btn-wrap text-left">  
                      
         <form action="?<%=Encode("Location=View&FormAction=ApplicantsCopy")%>" method="post" target="_blank">
                     
                <button class="btn-style" type="submit">
                <i class="fa fa-pencil-square-o" aria-hidden="true"></i>Continue
                </button>            
                <input type="hidden" id="TrackNo" name="TrackNo" value="<%=TrackNo%>"/>
            
        </form>
                    
          </div>
          
          <%end if%>
          
        </fieldset>
     </div>
   </div>
   </div>
 


  <!-- include file = 'PhotoProblem.asp'-->

  <!--#include virtual = '/applications/common/view/PhotoProblem.asp'-->



            
            