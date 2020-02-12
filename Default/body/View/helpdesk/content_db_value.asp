<%

    'response.Write(imgSrc)
	TrackNo = arrUserInfo(6,0) 
    TrackNoNew = arrUserInfo(9,0)
	strPassword = arrUserInfo(4,0)
	
	strName = arrUserInfo(0,0)
	updatedOn = arrUserInfo(13,0)
	postedOn = arrUserInfo(14,0)
                  
    if cstr(strFormAction) = cstr("HelpDesk") then  
		Session("txtTrackingNo") = arrUserInfo(6,0)
		Response.Cookies("txtTrackingNo")=  arrUserInfo(6,0)
		
		Session("txtPassword") = arrUserInfo(4,0)
		Response.Cookies("txtPassword")= arrUserInfo(4,0)
		
		Session("jobid") = jobid
		Response.Cookies("jobid")= jobid
		Session("TrackNoNew") = TrackNoNew
		Response.Cookies("TrackNoNew")= TrackNoNew
    end if                 
                    
    intTrakingNo = TrackNo
%>
  <!-- job referenceid view in page ---  
	   parameter list  >  intTrakingNo                 
					 output> position , jobid , TrackNoNEW
  -->
  <!--#include virtual = '/applications/common/view/job_reference_id.asp' -->  


