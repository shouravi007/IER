<%
    strSQL = "SELECT [JobID], [JobTitle], [DeadLine],[joblink]  FROM JobPosting WHERE  ActiveDate <='" & now() & "'  and   Deadline >='" & now() & "'" & "  ORDER BY Deadline DESC  "   ' probol vi 

'response.Write(strSQL)
	'strSQL = "SELECT [JobID], [JobTitle], [DeadLine] FROM JobPosting WHERE [DeadLine] >='" & now() & "'" & " ORDER BY [DeadLine] DESC"
	'ValuePrint strSQL, "strSQL-128"
	err.clear 
	arrBLinkJobs22 = objERS.RetrieveData(strSQL, errLog)
	'ValuePrint arrBLinkJobs22(0,0),"arrBLinkJobs22(0,0)"
	'ErrorMessage "9", errLog, 0
%>

<div class="col-sm-12">
    <div class="job-list-wrap bg-style">
       <%If arrBLinkJobs22(0,0) <> "Nothing" Then 
	        If ubound(arrBLinkJobs22,2) = 0 then 
			   ConnectionClose
			%>
            
        <form action="?<%=Encode("Location=Modal&FormAction=Application")%>" id="onejobs" name="onejobs" method="post" style="display:inline-block;">
              <input type="hidden" id="JOB_ID" name="JOB_ID" value="<%=arrBLinkJobs22(0,i)%>">
        </form>            
            
               <script>
			      document.getElementById('onejobs').submit();
			   </script>          
            
			<%
			Else	    
	   %>	
             
              
          <!--#include File = 'Current_Opening\AvailableJobs.asp' -->
          <!--#include File = 'Current_Opening\DeadLineNotification.asp' -->
           <%End If%>
       <%Else%>
          <!--#include File = 'Current_Opening\NotAvailableJobs.asp' -->
       <%End If%>
     </div>
</div>
				

