<%
' If jobid = "1" Then 
'   strMsg = "Trainee Officer (TO) <br> Or Trainee Assistant Cash Officer (TACO)"
' ElseIf jobid = "2" Then 
'  strMsg = "Management Trainee Officer (MTO) <br> Or Trainee Assistant Cash Officer (TACO)"
' ElseIf jobid = "3" Then 
'  strMsg = "Management Trainee Officer (MTO) <br> Or Trainee Officer (TO) "
' Else
'  strMsg = "Management Trainee Officer (MTO) <br> Or Trainee Assistant Cash Officer (TACO) <br> Or Trainee Officer (TO)"
' End IF


   err.clear 
   sql = "" 
   sql = " select jobtitle from jobposting where jobid <> "&jobid 
   
   arrMsg = objERS.RetrieveData(sql,errMsg)
   
   strMsg = ""
   for jtt = 0 to ubound(arrMsg, 2) 
     strMsg =  strMsg & "<br>"&arrMsg(0,jtt)
   
   next 
   
   err.clear 
   

%>   


<script>
 function yes()
 {
	 document.getElementById('divApply').style.display = "block";
	 document.getElementById('divNew').style.display = "none";
 	 document.getElementById('info').style.display = "none";

 }
 function resett()
 {
	 document.getElementById('divApply').style.display = "none";
	 document.getElementById('divNew').style.display = "block";
 	 document.getElementById('info').style.display = "block";
 }
 
</script>


                <h1 class="post-name">Applied confirmation</h1>
                <div class="wrapper">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="alert alert-danger danger">
                                <h3>Have you already applied for &nbsp;<%=strMsg%>?</h3>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 text-center">
                            <div class="btn-group btn-wrap" id="divNew">
                                <button type="button" class="btn btn-default btn-style" onclick="yes();">Yes</button>
                                <form action="Default.asp?<%=Encode("Location=Modal&FormAction=Application")%>" id="new" name="new" method="post" style="display:inline-block;">
                                    <input type="hidden" id="JOB_ID" name="JOB_ID" value="<%=jobid%>">
                                    <button type="submit" class="btn btn-primary btn-style-2">No</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="row" id="divApply" style="display:none;">
                        <div class="col-xs-12">
                            <div class="btn-group btn-wrap" id="divNew">

                                <button type="button" class="btn btn-warning text-center" onclick="resett();" style="font-size:20px;">
                                    Reset/Restart
                                </button>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-6 col-md-offset-3">

                            <form role="form" id="loginForm22" class="text-center" name="loginForm22" action="?<%=Encode("Location=Controller&FormAction=AfterLogin")%>"
                                method="post">
                                <div class="form-group">
                                    <label for="Name">Login ID :</label>
                                    <input type="text" class="form-control" id="txtTrackingNo" name="txtTrackingNo" value="" placeholder="tracking number">

                                </div>
                                <div class="form-group">
                                    <label for="pwd">
                                        <p>Password:</p>
                                    </label>
                                    <input type="password" class="form-control" id="txtPassword" name="txtPassword" value="" placeholder="password">

                                </div>
                                <input type="hidden" id="JOB_ID" name="JOB_ID" value="<%=Request.Form("JOB_ID")%>">

                                <!-- <button type="button" class="btn btn-default" onclick="return EmptyCheck333();">Apply</button>-->

                                <button type="submit" class="btn btn-primary" onclick="return EmptyCheck333();">Login</button>


                                <script>
                                    function EmptyCheck333() {
                                        var userName = "";
                                        var pass = "";

                                        var objUserName = document.getElementById('txtTrackingNo');
                                        var objPassword = document.getElementById('txtPassword');

                                        userName = objUserName.value;
                                        pass = objPassword.value;

                                        if (userName == "") {
                                            alert('Please enter your tracking number.');
                                            objUserName.focus();
                                            return false;
                                        }

                                        if (pass == "") {
                                            alert('Please enter your password.');
                                            objPassword.focus();
                                            return false;
                                        }
                                        return true;
                                    }
                                </script>
                                <input type="hidden" id="rdoEditOption" name="rdoEditOption" value="">

                            </form>

                        </div>
                    </div>
                </div>






