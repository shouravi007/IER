<%
jobid = trim(request.Form("JOB_ID")) 

if jobid <> "" Then 

Else
  %>
    <script>
	  alert("There was an error in your application process.\n You need to submit the application form again.\n We are exttremely sorry for the inconvenience.");
	</script>
  <%
  Response.Redirect(commonURL)
end if 


SQLEduLevel = "SELECT EducationId, EducationName FROM EducationLevel"
arrEduLevel = objERS.RetrieveData(SQLEduLevel, strErr)
ErrorMessage "34", errMsg, 0
%>
<!--#include file = 'Application\JavaScriptCheckingInBrowser.asp' --> 
<!--#include file = 'Application\RetrieveData.asp'-->
<!--#include file = 'Application\Personal.asp'--> 
<!--#include file = 'Application\Academic_No_Result_Publish_Date_With_Two_Major.asp'-->
<!--#include file = 'Application\Others.asp' --> 
<!--#include file = 'Application\Reference.asp' -->
<!--#include file = 'Application\Password.asp' --> 

    
                  <div class="btn-wrap text-center">
                    
                     <!--#include file = 'Application\Submit.asp' -->                  
                    
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
  </div>
  </div>
  </div>
  
  
  
