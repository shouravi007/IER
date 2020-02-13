<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include virtual = "\Class\c_data_batch.asp" -->

<%on error resume next%>
<!--#include File = 'Default\request\RequestProcessing_Ajax.asp' -->
<!--#include File = 'Default\system\system.asp' -->

<%If strLocation = "Ajax" Then%>
    <!--#include File = 'Default\ajax\Body_Ajax.asp' -->
<%ElseIF strLocation = "Error" Then %>
    <!--#include File = 'Default\error\ErrorMailForJavaScript.asp' -->
<%Else%>
	<!--#include File = 'Default\header\header.asp' -->
    <SCRIPT language="JavaScript" src="Default/js/utility.js?<%=time&rnd%>"></SCRIPT>	
    <script type="text/javascript" src="Default/js/registration.js?<%=time&rnd%>"></script>
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="Default/js/event.js?<%=time&rnd%>"></script>
    
    <!--#include File = 'Default\body\body.asp' -->
    <!--#include File = 'Default\footer\Footer.asp' -->
<%end if%>

<%if err.number <> 0 then 
	  ' sendmail replyTo, commonMail , "error-default-"&now, err.description, replyTo, "", replyTo  
end if%>

