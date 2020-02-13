 
<!--#include File = "CheckSession.asp" -->

<%
	strModuleName = "View SMS" 
	strDescription = "view mobileno candidates list for  : "&strUserName&"##"&strPassword
	strAction = "All Candidates View for  "
%>
 <!--#include File = "UserLog.asp" -->
 <!--#include File = "JobList.asp" -->
 
 
  <%
   sql = ""
   rest = trim(request.Form("rest"))
   from = trim(request.Form("txtRollFrom"))
   tos = trim(request.Form("txtRollTo"))
   jobid = trim(request.Form("txtPosition"))
   
   
   if rest = "" then
   sql = "select r.rollno,j.trackingno,p.pass,p.id,CASE WHEN LEN(p.cellphone) <= 11 THEN '+88'+p.cellphone  ELSE p.cellphone  END , CASE WHEN LEN(p.contactphone) <= 11   THEN '+88'+p.contactphone ELSE p.contactphone END from roll r inner join jobpos j on r.personalid = j.personalid inner join personal p on p.id = r.personalid where r.jobid = "&jobid&" and j.jobid  = "&jobid&" and p.jobid = "&jobid&" and r.rollno between "&from&"  and "&tos&"   order by r.rollno   "
   else
   sql = "select r.rollno,j.trackingno,p.pass,p.id,CASE WHEN LEN(p.cellphone) <= 11 THEN '+88'+p.cellphone  ELSE p.cellphone  END , CASE WHEN LEN(p.contactphone) <= 11   THEN '+88'+p.contactphone ELSE p.contactphone END from roll r inner join jobpos j on r.personalid = j.personalid inner join personal p on p.id = r.personalid where r.jobid = "&jobid&" and j.jobid  = "&jobid&" and p.jobid = "&jobid&" and r.rollno between "&from&"  and "&tos&"   order by r.rollno  "
   end if 
   response.Write("<br>"&sql)
   arrUserLog = objERS.RetrieveData(sql, errMsg)
   
  
  %>
 
   

  <div class="col-sm-12">
<form action="?<%=Encode("Location=Admin&FormAction=SMSINFO")%>" method="post" name="frmSubmit" id="frmSubmit" target="_blank" >
    
   <div class="form-group">
     <label for="position">Position</label>

        <select id="txtPosition" name="txtPosition" onchange="ShowRoomNo(this);" class="form-control">		
            <option value="S" selected="selected">Select</option>
            <%if arrJobPosting( 0, 0) <> "Nothing" then %>
		  <%For i = 0 to ubound(arrJobPosting, 2)%>
          <option value="<%=arrJobPosting(0, i)%>" <%if cstr(ddlJobs) = cstr(arrJobPosting(0, i)) then %>selected="selected"<%end if%>><strong><%=arrJobPosting(1, i)%></strong>--<i>(Deadline : <%=arrJobPosting(2, i)%>)</i></option>
           <%next
		    end if
		  %>
          </select>
          
       </div>
         
    
    
    <div class="form-group">
      <label for="">Roll From  </label>
     <input type="text" id="txtRollFrom" name="txtRollFrom" />
     
    </div>
   
    <div class="form-group">
      <label for="">Roll To  </label>
     <input type="text" id="txtRollTo" name="txtRollTo" />
     
    </div>   
    <button type="submit" class="btn btn-primary">
     Continue 
    </button>
    </form>
  </div>
  





    <div class="col-sm-12">
          
                
                <div class="table-responsive">          
  <table class="table" border="1">
    <thead>
      <tr>
        <th>#</th>
        <th>Roll No</th>
        <th>Tracking No</th>
        <th>Pass</th>
        <th>ID</th>
        <th>CellPhone1</th>
        <th>CellPhone2</th>
        
      </tr>
    </thead>
    <tbody>
    
<%For i = 0 to ubound(arrUserLog, 2 ) %>				
<tr>
<td><label for="badge">
<%if rest = "" then %>
<%=i+1%>
<%else%>
<%=i+1501%>
<%end if%>

</label></td>
        <td><label for="userName"><%=ReplacedAllTypeOfSpecialChar(arrUserLog(0,i))%></label></td>
        <td><label for="userName"><%=ReplacedAllTypeOfSpecialChar(arrUserLog(1,i))%></label></td>
        <td><label for="userName"><%=ReplacedAllTypeOfSpecialChar(arrUserLog(2,i))%></label></td>
        <td><label for="userName"><%=ReplacedAllTypeOfSpecialChar(arrUserLog(3,i))%></label></td>
        <td><label for="userName"><%=ReplacedAllTypeOfSpecialChar(arrUserLog(4,i))%></label></td>
        <td><label for="userName"><%=ReplacedAllTypeOfSpecialChar(arrUserLog(5,i))%></label></td>
      </tr>
   <%next%>    
    
      
    </tbody>
  </table>
     
    </div>           
                
                
                
                       
						
					</div>
				</div>
			</div>
		      
      
