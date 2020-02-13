   
        <form id="admitCountDaily" action="?<%=Encode("Location=Admin&FormAction=admitCountDaily")%>"   method="POST">
                            <script>
                            function admitcount()
							{
								document.getElementById('admitCountDaily').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="admitcount" class="box-wrap" title="Job Apply" onclick="admitcount();">
									<i class="fa fa-download icon" aria-hidden="true"></i>
									<h3 class="title">Admit Download Counter </h3>
</a>                          
                           
  </form>	
 
 
 
   
   
   
   
   
   
   
   
      <form id="GroupAdmin_bd" action="?<%=Encode("Location=Admin&FormAction=GroupAdmin_bd")%>"   method="POST">
                            <script>
                            function Search()
							{
								document.getElementById('GroupAdmin_bd').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="jobApply" class="box-wrap" title="Job Apply" onclick="Search();">
									<i class="fa fa-search icon" aria-hidden="true"></i>
									<h3 class="title">Search Panel</h3>
</a>                          
                           
  </form>	
 
 
 
   
  
  
  
      <form id="Roll_Generate" action="?<%=Encode("Location=Admin&FormAction=Roll_Generate")%>"   method="POST">
                            <script>
                            function Roll()
							{
								document.getElementById('Roll_Generate').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="Roll" class="box-wrap" title="Roll Generation" onclick="Roll();">
									<i class="fa fa-trello icon" aria-hidden="true"></i>
									<h3 class="title">Roll Generate</h3>
</a>                          
                           
  </form>
 
       <form id="Signature66" action="?<%=Encode("Location=Admin&FormAction=Attendence")%>"   method="POST" target="_blank">
                            <script>
                            function Signature()
							{
								document.getElementById('Signature66').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

<a id="Signature22" class="box-wrap" title="Signature" onclick="Signature();">
									<i class="fa fa-users icon" aria-hidden="true"></i>
									<h3 class="title">Signature sheet</h3>
</a>                          
                           
  </form>	
 
 
 
 
 
                            <form id="formTotalShortlist" action="?<%=Encode("Location=Admin&FormAction=ShortListReport")%>"   method="POST">
                            <script>
                            function TotalShortlist()
							{
								document.getElementById('formTotalShortlist').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

                        
                                  <a id="jobApply" class="box-wrap" title="Job Apply" onclick="TotalShortlist();">
									<i class="fa fa-user icon" aria-hidden="true"></i>
									<h3 class="title">Total Shortlist</h3>
								</a>
                          
                            </form>	
 						 





 
                            <form id="formShortListReportMTO" action="?<%=Encode("Location=Admin&FormAction=ShortListReportMTO")%>"   method="POST">
                            <script>
                            function ShortListReportMTO()
							{
								document.getElementById('formShortListReportMTO').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

                        
                                  <a id="jobApply" class="box-wrap" title="Job Apply" onclick="ShortListReportMTO();">
									<i class="fa fa-user icon" aria-hidden="true"></i>
									<h3 class="title">Veiw Shortlisted MTO Applicants</h3>
								</a>
                          
                            </form>	
 						 
 
 
  
                            <form id="formShortListReportTO" action="?<%=Encode("Location=Admin&FormAction=ShortListReportTO")%>"   method="POST">
                            <script>
                            function ShortListReportTO()
							{
								document.getElementById('formShortListReportTO').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

                        
                                  <a id="jobApply" class="box-wrap" title="Job Apply" onclick="ShortListReportTO();">
									<i class="fa fa-user icon" aria-hidden="true"></i>
									<h3 class="title">Veiw Shortlisted TO Applicants</h3>
								</a>
                          
                            </form>
 
                            <form id="form111" action="?<%=Encode("Location=Admin&FormAction=JobWiseResume")%>"   method="POST">
                            <script>
                            function JobWiseResume()
							{
								document.getElementById('form111').submit();
							}
                            </script>
                          <input type="hidden" id="position" name="position" value="<%=position%>" />
                            <input type="hidden" id="jobid" name="jobid" value="<%=jobid%>" /> 
                             
                               <input type="hidden"  name="txtUserName" id="txtUserName" value="<%=strUserName%>" />
    
                             <input type="hidden" name="txtPassword" id="txtPassword" value="<%=strPassword%>"  />

                        
                                  <a id="jobApply" class="box-wrap" title="Job Apply" onclick="JobWiseResume();">
									<i class="fa fa-user icon" aria-hidden="true"></i>
									<h3 class="title">Date wise resume for MTO, TO</h3>
								</a>
                          
                            </form>	
 						 




