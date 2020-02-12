  <div class="col-sm-12">
<script>

function ShowRoomNo(jobid)
{
	var objJobId = document.getElementById("txtPosition");
	var intJobId = objJobId.value;
	
	if ( intJobId != '') 
	 {
		 if ( intJobId != 'S') 
		  {
		    var obj = "#ShowCenter";
			$.post("?<%=Encode("Location=Ajax&FormAction=CenterList")%>", {jid:intJobId,system:system}, function(data, status){
				$(obj).html(data);
			});			

		  }
	 }
  }


function ShowRoll(obj)
{
	var objJobId = document.getElementById("txtPosition");
	var intJobId = objJobId.value;
	var center = "" 
	center = obj.value; 
	
	if ( intJobId != '') 
	 {
		 if ( intJobId != 'S') 
		  {
	//alert(intJobId);
	         if( center !='') 
			  {
				  
				  if( center !='S' ) 
				  
				   { 
	
		
		    var obj = "#ShowCenter2";
			$.post("?<%=Encode("Location=Ajax&FormAction=RoomNo")%>", {jid:intJobId,system:system,center:center}, function(data, status){
				$(obj).html(data);
			});			
		

				 }
			  }
			 }
			}
}
</script>

<!-- #include File = "CheckSession.asp" -->


<%

	strModuleName = "Attendence Sheet" 
	strDescription = "Attendence Sheet view with  : "&strUserName&"##"&strPassword
	strAction = "Attendence Sheet for.. "
%>
<!--#include File = "UserLog.asp" -->
<!--#include File = "JobList.asp" -->
 
<form action="?<%=Encode("Location=Admin&FormAction=Attendence_action_pdf")%>" method="post" name="frmSubmit" id="frmSubmit" target="_blank" >
   
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
     <label for="center"> Center</label>
 
<%

strCenterName = Request.Form("hiddenCenterName")  
'response.Write(strCenterName)

'strSQL ="SELECT [CenterCode] ,[NameofCenter] ,[Address] ,[Seats] ,[From] ,[To] FROM [ersRupaliBankOnline].[dbo].[CenterOfficer] where [Jobid]=1 order by [NameofCenter]"
'strSQL = "SELECT *  FROM Center    order by id   " 
  
'arrSQL = objERS.RetrieveData(strSQL, errLog)
  
'ErrorMessage "131", errLog, 0
%> 

<div id="ShowCenter" align="left" >
    &nbsp;&nbsp;<select id='txtCenter' name='txtCenter' onchange="ShowRoll(this.value,document.getElementById('txtPosition').value);" class="form-control">
        <option value='s' selected="selected">Select</option>
    
    </select>
</div>
   	</div>
     
     <div class="form-group">
       <label for="room"> Room </label>
 
<%
strSQL = "" 

'strSQL ="SELECT [CenterCode] ,[NameofCenter] ,[Address] ,[Seats] ,[From] ,[To] FROM [ersRupaliBankOnline].[dbo].[CenterOfficer] where [Jobid]=1 order by [NameofCenter]"
strSQL = "SELECT id,roomnumber,roomLocation  FROM attendance    order by id   " 
  
arrSQL2 = objERS.RetrieveData(strSQL, errLog)
  
ErrorMessage "131", errLog, 0
%> 

<div id="ShowCenter2" align="left" >
    &nbsp;&nbsp;<select id='txtRoom' name='txtRoom' onchange="ShowRoll2(this.value,document.getElementById('txtPosition').value);" class="form-control">
     <option value='s' selected="selected">Select</option>
    </select>
</div>
   	 </div>
       
       <input type="submit" name="btnSubmit" id="btnSubmit" value="Start Pdf>>"  class="btn btn-primary" />
    
    <input type="hidden" id="hiddenCenterName" name="hiddenCenterName" value="<%=id%>" />
    
</form>

<br><br>
</div>