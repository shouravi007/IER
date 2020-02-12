<%

jobid = trim(request.Form("JOB_ID")) 

if jobid <> "" Then 

Else
  %>
    <script>
	  alert("There was an error in your application process.\n You need to submit the application form again.\n We are exttremely sorry for the inconvenience.");
	</script>
  <%
  'Response.Redirect("http://bdjobs.com/"&commonFolder)
  Response.Redirect(commonURL)
end if 


'response.Write(Request.ServerVariables("REMOTE_ADDR"))
SQLEduLevel = "SELECT EducationId, EducationName FROM EducationLevel"
arrEduLevel = objERS.RetrieveData(SQLEduLevel, strErr)
ErrorMessage "34", errMsg, 0
%>
<!--  include file = 'Application\myBdjLogin_default.asp' --> 
<!--#include file = 'Application\JavaScriptCheckingInBrowser.asp' --> 
<!--#include virtual = '/applications/common/Application/RetrieveData.asp'-->
<!--#include file = 'Application\Personal.asp'--> 

<!--   include virtual = '/applications/common/Application/Academic_Result_Publish_Date_With_One_Major.asp'-->


<!--#include virtual = '/applications/common/Application/Academic_No_Result_Publish_Date_With_Two_Major.asp'-->

<!-- include virtual = '/applications/common/Application/Academic_No_Result_Publish_Date_With_One_Major.asp'-->

<!-- include virtual = '/applications/common/Application/Academic_No_Result_Publish_Date_With_Two_Major.asp'-->


<!--  include file = 'Application\Academic.asp'--> 


<!--#include file = 'Application\Others.asp' --> 
<!--#include file = 'Application\Reference.asp' --> 
<!--#include file = 'Application\Password.asp' --> 

    
                  <div class="btn-wrap text-center">
                    <!--#include virtual = '/applications/common/Application/Submit.asp' -->                   
                  </div>
                  <!-- <div class="submt-btn">
                    <a href="1.html" class="more-feature">submit your resume</a>
                  </div> -->
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
  
  
  
