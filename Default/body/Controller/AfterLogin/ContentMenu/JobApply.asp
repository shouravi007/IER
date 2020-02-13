<!--apply-->
<form id="form1" action="?<%=Encode("Location=Controller&FormAction=Apply")%>" method="POST">
<script>
function MyFunction()
{

var x = confirm(" Are you sure to apply for <%=strMsgApply%>?\n if yes then click to 'OK'\n Otherwise click to 'Cancel'\n Be carefull your job application can not be changed ! ");


            
        if ( x == true )
         {
            document.getElementById('form1').submit();
         }
         else
         {
             alert("Thanks job applied cancelled!");
         }
            return false;				


}

</script>
<input type="hidden" id="position" name="position" value="<%=strMsgApply%>" />
<input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
<input type="hidden" id="fresh" name="fresh" value="fresh" /> 
<input type="hidden" id="txtTrackingNo" name="txtTrackingNo" value="<%=intTrackingNo%>">
<input type="hidden" id="txtPassword" name="txtPassword" value="<%=strPassword%>">

</form>	
                  
                  
<!--reapply FORM BELOW-->                  
                  

<form id="form333" action="?<%=Encode("Location=Controller&FormAction=Apply")%>" method="POST">
<script>
function MyFunction2()
{

var x = confirm(" Are you sure to re-apply for <%=strMsgApply2%>?\n if yes then click to 'OK'\n Otherwise click to 'Cancel'");
            
        if ( x == true )
         {
            document.getElementById('form333').submit();
         }
         else
         {
             alert("Job Re-Apply cancelled!");
         }
            return false;				

}

</script>

<input type="hidden" id="position" name="position" value="<%=strMsgApply2%>" />
<input type="hidden" id="jobid" name="jobid" value="<%=reAppJobId%>" /> 

<input type="hidden" id="txtTrackingNo" name="txtTrackingNo" value="<%=intTrackingNo%>">

<input type="hidden" id="txtPassword" name="txtPassword" value="<%=strPassword%>">

</form>                  
                  
                  
                  
                  