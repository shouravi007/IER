 <!-- include File = "ViewAdmitCard\DateOverFromDB.asp"-->
<%'=Encode("Location=Admit&FormAction=viewAdmitCard_ezone")%>
 
 <div class="mx-auto" style="margin:5%"> 
  
  <h3 class="accounts-services-heading">Login for Admit Download </h3>
  <span class="bg-border"></span>    
<form action="?<%=Encode("Location=Admit&FormAction=viewAdmitCard")%>" method="post" name="form1" id="form1">            
<div class="form-group">
   <label for="">Login ID </label>
    
    <input type="text"  name="txtTrackingNo" id="txtTrackingNo" class="form-control" placeholder="type your login id" onKeyPress="return intonly(this, event)" />
           
</div>
                      
<div class="form-group">
  
    <label for="">Password</label>
    
    <input type="password" name="txtPassword" id="txtPassword" class="form-control" maxlength="12" placeholder="type your password "/>

</div>

<div class="form-group">

	<button type="submit" onClick="return Validate();"  class="btn btn-primary">Download Admit </button>  
                  
</div> 

</form>
               
</div>       
  
