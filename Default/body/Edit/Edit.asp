<%
intTrackingNo = Request.Form("txtTrackingNo")
strPassword = Request.Form("txtPassword") 

if isnull(intTrackingNo) or isempty(intTrackingNo) or intTrackingNo = "" then 
  intTrackingNo = Session("txtTrackingNo") 
end if 

if isnull(intTrackingNo) or isempty(intTrackingNo) or intTrackingNo = "" then 
  intTrackingNo = Request.Cookies("txtTrackingNo") 
end if 


if isnull(strPassword) or isempty(strPassword) or strPassword = "" then 
  strPassword = Session("txtPassword") 
end if 

if isnull(strPassword) or isempty(strPassword) or strPassword = "" then 
  strPassword = Request.Cookies("txtPassword") 
end if 

%>

<!--#include virtual = '/applications/common/view_ers/job_reference_id.asp' -->

<!--#include File = 'HomeBack.asp' -->


<script>
 var intTrackingNo = "<%=intTrackingNo%>";
 if ( intTrackingNo != "")
 {
	 document.getElementById('login').innerHTML = "Logout";
	 document.getElementById('backMenu').style.display = "block";
	 document.getElementById('homeMenu').style.display = "block";
	 
 }
 else
 {
	 
 } 

</script>

<%if cstr(strFormAction) = cstr("EditResume") then %>
<!--#include File = 'EditResume.asp'--> 
<%Elseif cstr(strFormAction) = cstr("personal") then %>
<%jsValidate = "return EmptyPersonal();"%>
<!--#include File = 'personal.asp'--> 
<%Elseif cstr(strFormAction) = cstr("academic") then %>
<!--#include File = 'academic.asp'--> 
<%Elseif cstr(strFormAction) = cstr("others") then %>
<%jsValidate = "return Others();"%>
<!--#include File = 'others.asp'-->
<%Elseif cstr(strFormAction) = cstr("quota") then %>>
<!--#include File = 'Quota.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Refference") then %>
<%jsValidate = "return EmptyReferees();"%>
<!--#include File = 'Refference.asp'--> 
<%Elseif cstr(strFormAction) = cstr("InsertPersonal") then %>
<!--#include File = 'InsertPersonal.asp'--> 
<%Elseif cstr(strFormAction) = cstr("InsertOthers") then %>
<!--#include File = 'InsertOthers.asp'--> 
<%Elseif cstr(strFormAction) = cstr("InsertQuota") then %>
<!--#include File = 'InsertQuota.asp'--> 
<%Elseif cstr(strFormAction) = cstr("InsertRefference") then %>
<!--#include File = 'InsertRefference.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Education_Edit") then %><!--panel edit -->
<!--#include File = 'Education_Change.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Education_Add") then %><!--panel add -->
<!--#include File = 'Education_Change.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Education_Delete") then %>
<!--#include File = 'Education_Delete.asp'--> 
<%Elseif cstr(strFormAction) = cstr("Education_Update") then %>
<!--#include File = 'Education_Update.asp'--> 

<%Elseif cstr(strFormAction) = cstr("ChangePositionByApplicants") then %>
<!--  include File = 'ChangePositionByApplicants.asp'--> 

<%Else%>

<%End If%>
