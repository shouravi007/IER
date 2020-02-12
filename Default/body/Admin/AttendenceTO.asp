
<!-- #include File = "CheckSession.asp" -->

<%

	strModuleName = "Attendence Sheet" 
	strDescription = "Attendence Sheet view with  : "&strUserName&"##"&strPassword
	strAction = "Attendence Sheet for.. "
%>
<!--#include File = "UserLog.asp" -->
<!--#include File = "JobList.asp" -->
  <!--<div class="col-sm-12">-->

<!--<script type="text/javascript" src="ajax.js?<%'=rnd&time%>"></script>-->
<script>

function ShowRoomNo(jobid)
{
	var objJobId = document.getElementById("txtPosition");
	var intJobId = objJobId.value;
	
	if ( intJobId != '') 
	 {
		 if ( intJobId != 'S') 
		  {
			//alert(intJobId);
	
		var xmlhttp;	
		var str_Message;
		
		if (window.XMLHttpRequest)
		{
			xmlhttp=new XMLHttpRequest();
		}
		else
		{// code for IE6, IE5
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		xmlhttp.onreadystatechange=function()
		{
			
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{         					  
				txt = xmlhttp.responseText;
			     // document.getElementById("ShowCenter2").innerHTML = txt;
				 document.getElementById("ShowCenter").innerHTML = txt;
				 //alert(document.getElementById("ShowCenter").innerHTML);
				 
			 }
		  }
		xmlhttp.open("GET","Default/Body/Admin/CenterList.asp?jid="+intJobId,true);
	   
		xmlhttp.send(null);
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
	
		var xmlhttp;	
		var str_Message;
		
		if (window.XMLHttpRequest)
		{
			xmlhttp=new XMLHttpRequest();
		}
		else
		{// code for IE6, IE5
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		xmlhttp.onreadystatechange=function()
		{
			
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{         					  
				txt = xmlhttp.responseText;
			     // document.getElementById("ShowCenter2").innerHTML = txt;
				 document.getElementById("ShowCenter2").innerHTML = txt;
				 //alert(document.getElementById("ShowCenter2").innerHTML);
				 
			 }
		  }
		xmlhttp.open("GET","Default/Body/Admin/RoomNo.asp?jid="+intJobId+"&center="+center,true);
	   
		xmlhttp.send(null);
	   }
	 }
  }
 }
}
 
</script>
<!--<link href="css/style.css" rel="stylesheet" type="text/css" />-->
 
<div class="col-sm-12">
    <div class="summery-view bg-style">
		
        <h1 class="post-name">Attendance Sheet for TO (CASH)</h1>
 		
        <div class="wrapper">
								 
<form action="?<%=Encode("Location=Admin&FormAction=Attendence_action_pdf")%>" method="post" name="frmSubmit" id="frmSubmit" target="_blank" >

   
<div class="row">
    <div class="col-sm-6">
         <div class="form-group">           		
  				<label for="position">Position</label>
                    
                    <div class="row">
                           <div class="col-sm-6">
                               <div class="form-group">
                               
<select id="txtPosition" name="txtPosition" class="form-control" style="width:200PX;" onchange="ShowRoomNo(this);" required>		
    <option value="">Select</option>
    <%if arrJobPosting( 0, 0) <> "Nothing" then %>
    <%For i = 0 to ubound(arrJobPosting, 2)%>
    <option value="<%=arrJobPosting(0, i)%>" <%if cstr(ddlJobs) = cstr(arrJobPosting(0, i)) then %>selected="selected"<%end if%>><strong><%=arrJobPosting(1, i)%></strong>--<i>(Deadline : <%=arrJobPosting(2, i)%>)</i></option>
    <%next
    end if
    %>
</select>
                                
                                </div>          
                            </div>          
                        </div>
            
          </div> 
    </div>   
</div>
    
<div class="row">
    <div class="col-sm-6">
            <div class="form-group">
            
				<label for="center"> Center</label>
 
<%
strCenterName = Request.Form("hiddenCenterName")  
%> 

               
<div class="row">
      <div class="col-sm-6">
          <div class="form-group">
              <div id="ShowCenter" align="left">                                                               
                <select id='txtCenter' name='txtCenter' onchange="ShowRoll(this.value,document.getElementById('txtPosition').value);" class="form-control" style="width:200PX;" required>
                <option value='' selected="selected">Select</option>
                
                </select>
                
              </div>                      
         </div>          
     </div>
     
</div>                     

                
                
       </div>
    </div>   
</div>


<%
	strSQL = "SELECT id, RoomNumber, RoomLocation, [from],[to] FROM Attendance where Centerid = 1 and jobid =1 order by [from]" 
	'response.Write(strSQL )
	arrSQL2 = objERS.RetrieveData(strSQL, errLog)	  
	ErrorMessage "31", errLog, 0

%>     
     
<div class="row">
    <div class="col-sm-6">
            <div class="form-group">
                
       				<label for="room"> Room </label>
 

<div class="row">
  <div class="col-sm-6">
      <div class="form-group">
      
         <div id="ShowCenter2" align="left">

       	<select id='txtRoom' name='txtRoom' onchange="ShowRoll2(this.value,document.getElementById('txtPosition').value);" class="form-control" style="width:200PX;" required>
            <option value='' selected="selected">Select</option>

        </select>
         </div>          
                    
      </div>          
	</div>                
</div> 

        </div>
    </div>   
</div>     
 

 
<div class="btn-wrap text-center">                         
    <input type="submit" name="btnSubmit" id="btnSubmit" value="Start Pdf>>"  class="btn btn-primary" />    
    <input type="hidden" id="hiddenCenterName" name="hiddenCenterName" value="<%=id%>" />
 </div>
    
</form>

<!--</div>-->

                    </div>					
				</div>
			</div>
		</div>
