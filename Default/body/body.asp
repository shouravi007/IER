<%
   
Response.AddHeader "WARNING","Site is temporarily unavailable for maintenance, please try after one hour. রক্ষণাবেক্ষণের জন্য সাইট সাময়িকভাবে অনুপলব্ধ, দয়া করে এক ঘন্টা পরে চেষ্টা করুন।"


Set objResumeServer = New c_data
objResumeServer.OpenConnection resumeServer,strErr


' sql = "select accid from userAccounts where accUserName = '01646490304'"
' arrTestMobileUser = objResumeServer.RetrieveData(sql, errMsg)
' response.Write("pid : "&arrTestMobileUser(0,0))


 sql = "SELECT [INST_ID] ,[INST_Name]  FROM [INSTITUTES] order by [INST_Name]"
 arrUni = objResumeServer.RetrieveData(sql, errMsg)
 'response.Write(errMsg)
	
 sql = "SELECT [MAJOR_ID],[MAJOR_Name] FROM [MAJOR_SUBJECT] order by major_name "
 arrSub = objResumeServer.RetrieveData(sql, errMsg)
' response.Write(errMsg)
 
sqlForDistrict = "SELECT L_ID, L_Name FROM Locations WHERE ParentID >= 1000 And ParentID < 1010 ORDER BY L_Name"
arrSqlForDistrict = objResumeServer.RetrieveData(sqlForDistrict, errMsg)
	
'sqlForThana = "SELECT L_ID, L_Name FROM Locations WHERE ParentID >= 1 And ParentID < 100 And ParentID = 40 ORDER BY L_Name"
'arrSqlForThana = objResumeServer.RetrieveData(sqlForThana, errMsg)

Set objERS = New c_data
objERS.OpenConnection ConnectionName, errLog
'Response.Write("<br>errMsg:"&errLog)
'Response.Write("<br>ConnectionName:"&ConnectionName)
'Response.End() 
ErrorMessage "34", errMsg, 0

'response.Write("back form: "& cstr(strFormAction))
%>
<!--#include File = 'DateOverJobs.asp' -->	
<!-- include virtual = '/applications/common/DateOver/DateOverJobs.asp' -->	
<!--#include virtual = '/applications/common/header/css.asp' -->


<%If strLocation = "Modal" Then%>
   <%if cstr(strFormAction) = cstr("Application") then %>
	<%
     IsBlank = Trim(Request.form("txtBlank"))
     If IsBlank = "" Then
    %>
     <!--#include virtual = '/applications/common/popup/mybdjLogin_popup.asp' -->           
    <%End If%>
    
    <!--#include virtual = '/applications/common/popup/myBdjLogin_default.asp' --> 
   
   <%End If%>
<%End If%>

	
<body class="">
  <!--import from mybdjobs-->
  <div class="main-header">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <div class="main-top">
            <div class="row">
              <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <a href="<%=logo_link%>" class="logo">
                  <img src="<%=logo_url%>" alt="<%=strSystemName%>" class="img-responsive">
                </a>
              </div>
           
           
            </div>
          </div>
        </div>
      </div>
      <nav class="navbar navbar-default">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
            aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span> 
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Menu</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                   <ul class="nav navbar-nav">
                        <!--#include File = 'view/MenuTop.asp' -->
				   </ul>
        </div>
      </nav>
    </div>
  </div>
  
					
                    
	<div class="main-full">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
           <%
		    If cstr(strFormAction) = cstr("GroupAdmin_bd") Then 
		      divClass = "cv-search bg-style"
		    ElseIf cstr(strFormAction) = cstr("JobApply") Then 
		      divClass = "notify bg-style"
		    ElseIf cstr(strFormAction) = cstr("Login") Then 
		      divClass = "login-form bg-style"
		    ElseIf cstr(strFormAction) = cstr("TrackingSearch") Then 
		      divClass = "help-desk bg-style"
		    ElseIf cstr(strFormAction) = cstr("ViewResume") Then 
		      divClass = "summery-view bg-style"			
			Else
			  divClass = "row"
			End If 
		   %>
           
             <div class="<%=divClass%>"> 

						<%If strLocation = "Modal" Then%>    
						   
						<!--#include  File = 'Modal/Modal.asp' -->
						
                        <%Elseif strLocation = "View" Then %>
						
						<!--#include  File = 'View/View.asp' -->
						
                        <%ElseIf strLocation = "Controller" Then%> 

						<!--#include  File = 'Controller/Controller.asp' -->
						
                        <%ElseIf strLocation = "Edit" Then %>
						<!--#include  File = 'Edit/Edit.asp' -->
						
                       	<%ElseIf strLocation = "Problem" Then %>
						<!--#include File ='Problem\Problem.asp' -->
                        
                       	<%ElseIf strLocation = "attendance" Then %>
						<!--include virtual ='/applications/common/attendance/attendance.asp' -->
                        
						<%ElseIf strLocation = "Admin" Then %>
						<!--#include  File = 'Admin/Admin.asp' -->
                        
						<%ElseIf strLocation = "Admit" Then %>
						<!--#include  File = 'Admit/Admit.asp' -->
                        
                        <%ElseIf strLocation = "Admit_TO" Then %>
						<!--include File ='Body\Admit\Admit_TO.asp' -->
						<%Else%>
						 <!--#include  File = 'View/Current_Opening.asp'--> 
						 <!-- include File ='Body\Modal\Application.asp' -->
                        <%End if%>
           
                   </div>
                </div>
            </div>

        </div>
    </div>
	
    
<%
objERS.CloseConnection()
set objERS = Nothing


objResumeServer.CloseConnection 
Set objResumeServer = Nothing	

%>