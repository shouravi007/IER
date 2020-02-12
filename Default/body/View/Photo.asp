


<%
TrackNoNEW = Request.Form("TrackNoNEW")
TrackNo = Request.Form("track_no")
strPassword = Request.Form("txtPassword")
IsPhoto =  Request.Form("IsPhoto")



		    sql = ""
			sql = "select jj.JobTitle,j.id from JobPosting jj inner join jobpos j on jj.jobid = j.jobid  where j.personalid ="&TrackNo
			arrJobTitle = objERS.RetrieveData(sql, errMsg) 
			ErrorMessage "153", errMsg, 0

            if arrJobTitle(0, 0) <> "Nothing" Then 
			  position = "" 
			  For j = 0 to ubound(arrJobTitle, 2)
			    position = position & arrJobTitle(0 , i ) & "  ( Job Reference ID : "& arrJobTitle(1 , i ) & " ) <br>"
				'TrackNoNEW = arrJobTitle(3 , i ) 
			  Next			 
			end if  





	sqlSelectPhoto = "select id,photo,photourl,jobid,firstname,lastname,postedon,updatedon,photo,bdjobsphoto,bdjobsphotourl,ersphotourl from Personal WHERE id =" & TrackNo
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
		bdjobsphotourl = arrPhoto(10,0)
		ersphotourl = arrPhoto(11,0)
		
		
		if bdjobsphotourl <> "" then
		  if instr(bdjobsphotourl,"my.bdjobs.com") > 0 then 
		  
		  else
		     bdjobsphotourl = "http://my.bdjobs.com/photos/"& bdjobsphotourl
		  end if 
		end if 
		
		if strPhotoName = "" or isnull(strPhotoName) or isempty(strPhotoName) then 
		  if bdjobsphoto = false or bdjobsphoto = 0 or isnull(bdjobsphoto) then 
		  
		   strPhotoName = trim(request.Form("srcImage"))  ' temp src > pre uplaod 

		  end if
		end if 
		
		if strPhotoName = "" or isnull(strPhotoName) or isempty(strPhotoName) then 
		   if bdjobsphotourl <> "" then
		     strPhotoName = bdjobsphotourl
		   end if 
		   
		   if ersphotourl <> "" then
		     strPhotoName = ersphotourl
		   end if		   
		'else
		  'strPhotoName = "http://ers.bdjobs.com/applications/images/noimage.gif"
        elseif strPhotoName = "http://ers.bdjobs.com/applications/ImageResize/Photos/ucb/bdjobs/" then 
		   if bdjobsphotourl <> "" then
		     strPhotoName = bdjobsphotourl
		   else
		     strPhotoName = "http://ers.bdjobs.com/applications/images/noimage.gif"
		   end if 		  
		   
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
                                            <br />
                                            <!--#include Virtual = '/applications/common/signature/showsignature.asp' -->  
                                            
										</div>
									</div>
								</fieldset>
                                
							

        <fieldset>
            <legend> View Resume </legend>
          <div class="btn-wrap text-left">
        <form action="?<%=Encode("Location=View&FormAction=ViewResume")%>" method="post">
        
<button class="btn-style" type="submit">
<i class="fa fa-pencil-square-o" aria-hidden="true"></i>Continue
</button>
        
    
        <input type="hidden" id="TrackNo" name="TrackNo" value="<%=TrackNo%>"/>
       
        
        </form>
                    
          </div>
        </fieldset>
     </div>
   </div>
   </div>
 


  <!--#include file = 'PhotoProblem.asp'-->
  <!--#include file = 'SignatureProblem.asp'-->
          



            
            