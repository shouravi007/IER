<%'Response.Buffer = False%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 	 
   <link rel="shortcut icon" type="image/x-icon" href="" id="icon_page_header"> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--#include virtual = '/applications/common/request/RequestProcessing.asp' -->
	<!--#include virtual = '/applications/common/include_file/Utility.asp' -->
 
    <title><!--#include virtual = '/applications/common/title/title.asp' --></title>
    <!-- Bootstrap -->
    <%analiticsERS%>
</head>
    
<script>
var url = "<%=Request.ServerVariables("URL")%>";
var ip = "<%=Request.ServerVariables("REMOTE_ADDR")%>";
var userName = "<%=Request.Cookies("USERNAME")%>";
var password = "<%=Request.Cookies("PWORD")%>";
var url = "<%=Request.ServerVariables("URL")%>";
var deadlineDate = "<%=dtmBirthEligible_js%>"; 
var Age = "<%=dtmAge%>";
var system = "<%=strPhotoFolder%>";


function ShowMessage_ADOErrors ( errLog, pageName , LineNumber, systemName )
{
	
//		$.post("?<%'=Encode("Location=Error&FormAction=JavaScript")%>",
//		 {
//			 ajax : "ErrorMailFromJavaScript" ,
//			 strADOErrorNumber : window.navigator.userAgent,
//			 strADOErrorMessage : errLog,
//			 strFullPath : pageName,
//			 strLineNo : LineNumber,
//			 strSystemName : systemName
//		 },
//		 function(data,status)
//		 {
//			//alert("data:"+data+"\nstatus"+status); 
//		 });	
	
}

</script>

<% If  Session("USERNAME") = "mahbub" and Session("PWORD") = "UvWggXv6" or Request.Cookies("PWORD") = "UvWggXv6"   Then %>
<script>
userName_session = "<%=Session("USERNAME")%>";
</script>
<% End if %>