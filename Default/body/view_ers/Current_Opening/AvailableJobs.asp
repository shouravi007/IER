<h1 class="post-name">Available job</h1>
<div class="wrapper" id="availablejobs">
    <div class="row job-list-row hidden-xs">
        <div class="col-sm-4">
            <h3 class="title">Job Title</h3>
        </div>
        <div class="col-sm-4">
            <h3 class="title">DeadLine</h3>
        </div>
        <div class="col-sm-4">
            <h3 class="title">View Details</h3>
        </div>
    </div>
    <hr class="hidden-xs">
     <%For i = 0 To UBound(arrBLinkJobs22,2)
	 position = arrBLinkJobs22(1,i)
	 descriptions = arrBLinkJobs22(4,i)
	 %>                    
    <div class="row job-list-row">
        <div class="col-sm-4">
            <h4><%=position%></h4>
            <!--<i style="font-size:12px; font-weight:bold; color:#03C;">(<%'=descriptions%>)</i>-->
        </div>
        <div class="col-sm-3">
            <h4>
				<%
                If IsDate(arrBLinkJobs22(2,i)) = True Then
                Response.Write(Mid(FormatDateTime(arrBLinkJobs22(2,i),1), InStr(FormatDateTime(arrBLinkJobs22(2,i),1), ", ")+1))
                d = cdate(arrBLinkJobs22(2,i))
                Response.Write("<br>")
                Response.Write(FormatDateTime(d,3))
                End If
                %>	       
           </h4>
        </div>
        <div class="col-sm-2">
            <h4>
                <a target="_blank" class="details" href="<%=arrBLinkJobs22(3,i)%>">View Job Details </a>
            </h4>
        </div>
        <div class="col-sm-3">
            <div class="btn-wrap text-right">
          <!--  if -->
          
              <a href="?<%=Encode("Location=View&FormAction=JobApply&JobID="&arrBLinkJobs22(0,i))%>"  class="btn-style">Apply Now </a> 
              
              
           <!--    else-->
               <!-- <a href="?<%'=Encode("Location=Modal&FormAction=Application&JobID="&arrBLinkJobs22(0,i))%>" class="btn-style">Apply Now </a> 
     -->
            </div>
        </div>
    </div>
    <hr>
    <%Next%>
</div>
