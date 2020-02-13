
<!--#include File = 'CheckSession.asp' -->

<%
	strModuleName = "ResumeDownload" 
	strDescription = "Download Resume with  : "&strUserName&"##"&strPassword
	strAction = "doc file download one by one.. "
%>
<!--#include File = 'UserLog.asp' -->
<!--#include File = 'GroupAdmin_bd\Content1.asp' -->



  <div class="col-sm-12">
          <div class="appli-form-wrap bg-style">
            <h1 class="post-name">CV Download Panel</h1>
            <h5 class="notice">
                   <li>
                         <ol>*select a jobpost</ol>
                         <ol>*select applicants type eg: others means pid list </ol>
                         <ol>*select date as needed </ol>
                         <ol>*downlad > makes first downlaod photo in php then asp as resume</ol>
                   
                   </li>
                   
                     
            </h5>
            <div class="wrapper">

              <div class="row">
                <div class="col-sm-12">
                  <div class="appli-form">
                   <form action=""  method="post" name="form1" id="form1">
  <input type="hidden" name="hidUserID" id="hidUserID" value="<%=intUserID%>" />
  <input type="hidden" name="strDeadLine" value="<%=strDeadLine%>" />

                      <fieldset>
                        <legend>  <!--#include File = 'GroupAdmin_bd\Welcome.asp' --></legend>
                        <div class="uf">

                          <div class="row">

                            <div class="col-sm-6">
                              <div class="form-group">
                                <div class="row">
                                  <div class="col-sm-4">
                                    <label for="firstName">Position Advertised
                                      <span>*</span>
                                    </label>
                                  </div>
                                  <div class="col-sm-8">
                                    <div class="required">
                                <select name="ddlJobPosting" id="ddlJobPosting" class="form-control">
                                <option value="S"  >Select a position</option>
                                <%if arrJobPosting( 0, 0) <> "Nothing" then %>
                                <%For i = 0 to ubound(arrJobPosting, 2)%>
                                <option value="<%=arrJobPosting(0, i)%>" selected="selected" ><strong><%=arrJobPosting(1, i)%></strong>--<i>(Deadline : <%=arrJobPosting(2, i)%>)</i></option>
                                <%next
                                end if
                                %>
                                </select>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>

                            <div class="col-sm-6">
                              <div class="form-group">
                                <div class="row">
                                  <div class="col-sm-4">
                                    <label for="lastName">Applicants Type
                                      <span>*</span>
                                    </label>
                                  </div>
                                  <div class="col-sm-8">
                                    <div class="required">
                                      <select name="ddlCvType" id="ddlCvType" class="form-control" onchange="Others(this);"  >
<option value="1" selected="selected">Shortlisted Applicants</option>
<option value="0"<%if request.Form("ddlCvType") = "0" then%> selected="selected"<%end if%>>Not Shortlist Applicants</option>
<option value="2"<%if request.Form("ddlCvType") = "2" then%> selected="selected"<%end if%>>All Applicants</option>
<option value="3"<%if request.Form("ddlCvType") = "3" then%> selected="selected"<%end if%>>Eligible Applicants</option>
		<option value="4"<%if request.Form("ddlCvType") = "4" then%> selected="selected"<%end if%>>Test Applicants</option>
		<option value="5"<%if request.Form("ddlCvType") = "5" then%> selected="selected"<%end if%>>Others</option>
		 </select>  
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>

                        
                        
                          <div class="row" style="display:none;" id="cvOthers">
                            <div class="col-sm-12">
                              <div class="form-group">
                                <div class="row">
                                  <div class="col-sm-12">
                                    <label for="fathersProfession">personalid id list ( ,, )
                                      <span>*</span>
                                    </label>
                                  </div>
                                  <div class="col-sm-12">
                                    <div class="required">
                                         
                                 
                                     <textarea rows="5" cols="20" id="txtCVType" name="txtCVType" class="form-control" placeholder=" type here pid as with 1 ,3 , 6 , 7, 8 ">
                                     
                                     </textarea>
                                   
                                  
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                           </div>
                        
                        
                        
                          <div class="row">
                            <div class="col-sm-6">
                              <div class="form-group">
                                <div class="row">
                                  <div class="col-sm-4">
                                    <label for="fathersName">From Date
                                      <span>*</span>
                                    </label>
                                  </div>
                                  <div class="col-sm-8">
                                    <div class="required">
                                      <input name="txtStartDate" type="text"  id="datepicker1" class="text form-control"  size="10" readonly="readonly" value="<%=strStartDate%>" placeholder = "From Date" />
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>

                            <div class="col-sm-6">
                              <div class="form-group">
                                <div class="row">
                                  <div class="col-sm-4">
                                    <label for="mothersName">To Date
                                      <span>*</span>
                                    </label>
                                  </div>
                                  <div class="col-sm-8">
                                    <div class="required">
                                     <input name="txtEndDate" type="text"  id="datepicker2"  size="10" readonly="readonly" value="<%=strEndDate%>" class="text form-control"  placeholder = "To Date" />
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>

	<div id="JobAdvertise"></div>
  
        <span id="applicationDate">
            <div class="smallHeaderName"></div>
            <link rel="stylesheet" href="http://ers.bdjobs.com/applications/common/jq/development-bundle/themes/base/jquery.ui.all.css">
			<script src="http://ers.bdjobs.com/applications/common/jq/development-bundle/jquery-1.7.1.js"></script>
            <script  src="http://ers.bdjobs.com/applications/common/jq/development-bundle/ui/jquery.ui.core.js"></script>
            <script  src="http://ers.bdjobs.com/applications/common/jq/development-bundle/ui/jquery.ui.widget.js"></script>
            <script src="http://ers.bdjobs.com/applications/common/jq/development-bundle/ui/jquery.ui.datepicker.js"></script>
<!--            <link rel="stylesheet" href="jq/development-bundle/demos/demos.css">
-->	<script>
	$(function() {
		$( "#datepicker1" ).datepicker();
	});
		$(function() {
		$( "#datepicker2" ).datepicker();
	});
	
    
     function Others(obj)
	{
		
		if(obj.value == '5' )
		{
		  $('#cvOthers').show();	
		}
		else
		{
		  $('#cvOthers').hide();	
		}
	}   
    
    </script> 
    
    </span>


                       </div>
                    
                 </fieldset>
            
                   <div class="btn-wrap text-center">
                     <input name="btnSubmit" class="btn btn-primary" type="submit" value="Next >>" />
                    </div>
            
             </form>
         </div>
       </div>
      </div>
    </div>
   </div>
  </div>
  

<!--#include File = 'DownloadResume\BL.asp' -->


     <div class="col-sm-12">
          <div class="appli-form-wrap bg-style">
           
            <div class="wrapper">
              <div class="row vertical-align-items">
               

 <div class="col-md-2 alert alert-info">Resume Total</div>       
       <div class="col-md-2  alert alert-info">Total Files</div>
       <div class="col-md-2  alert alert-info">Processing in Que</div>
       <div class="col-md-4  alert alert-info">Total Time Needed(Approx)</div>
       <div class="col-md-2  alert alert-info">Remaining Time</div>
    
    
 	
       <div class="col-md-2 alert alert-danger"><%=UBShortListed+1%></div>       
       <div class="col-md-2 alert alert-danger"><%=intTotalCount+3%></div>
       <div class="col-md-2 alert alert-danger" id="queInProcessing">1</div>
       <div class="col-md-4 alert alert-danger"><span id="sw_h">00</span>:
    <span id="sw_m">00</span>:
    <span id="sw_s">00</span>:
    <span id="sw_ms">00</span></div>
       <div class="col-md-2  alert alert-danger"> <span id="cd_h">00</span>:
    <span id="cd_m">00</span>:
    <span id="cd_s">00</span>:
    <span id="cd_ms">00</span>
    </div>
 
 <div class="row">
   &nbsp;
 </div>
                     
   
   <div class="col-md-2" id="ajax-zip-loader">
   
   <img src="http://ers.bdjobs.com/applications/images/ajax-loader-for-zip.gif" />
   
   </div>
   
   <div class="col-md-10">
         <strong>
          <%=zipFile%>
         </strong>
    </div>
    
    <div class="col-md-4">
        <input type="button" id="download" value="Download it" disabled="disabled" onclick="downloadit();" class="btn btn-success"  />
     </div>
  
     
  <div class="row">
    <div class="col-md-12"  id="zip-suc">Zip file processing
    </div>
  </div>
    
  
  
  <%Else%>
  
<div class="col-md-12 alert alert-danger">No Records Found! </div>


    
<%
  EndOfAllProcess
  End If


'Response.End()

If err.number <> 0 Then 
  ValuePrint err.number& err.Description , "err" 
  err.clear 
end if 

strSubmit = Request.Form("btnSubmit")
intUserId = Session("UserId")
strUserName = Session("UserName")

If strSubmit = "Next >>" Then %> 


<!--#include File = 'pdfFileCreate\JSProcess.asp' -->
    


<%
 'End If
End If
%>


                        </div>
                     </div>
                   </div>
                 </div>
