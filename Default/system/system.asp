<%
url = lcase(strUrl)

if InStr(url, "bdjobs.com/kb") > 0  Or InStr(url, "applications/karmasangsthanbank") > 0 Or InStr(url, "applications/ksb") > 0  then 
%>
   <!--#include File = 'kb.asp' -->
<%
elseif InStr(url, "bdjobs.com/bkb") > 0  Or InStr(url, "applications/krishibank") > 0  then 
%>
   <!--#include File = 'krishibank.asp' -->
<%
elseif InStr(url, "bdjobs.com/trustbank") > 0  Or InStr(url, "applications/trustbank") > 0  then 
%>
   <!--#include File = 'trustbank.asp' -->
<%
elseif InStr(url, "bdjobs.com/sjibl") > 0  Or InStr(url, "applications/shahjalalbank") > 0  then  
%>
   <!--#include File = 'sjibl.asp' -->
<%
elseif InStr(url, "bdjobs.com/pcb") > 0  Or InStr(url, "applications/pcb") > 0  then  
%>
   <!--#include File = 'pcb.asp' -->
<%
elseif InStr(url, "bdjobs.com/dhakabank") > 0  Or InStr(url, "applications/dhakabank") > 0  then  
%>
   <!--#include File = 'dhakabank.asp' -->
<%
elseif InStr(url, "bdjobs.com/onebank") > 0  Or InStr(url, "applications/onebank") > 0  then 
%>
   <!--#include File = 'onebank.asp' -->
<%
elseif InStr(url, "bdjobs.com/biffl") > 0  Or InStr(url, "applications/biffl") > 0  then  
%>
   <!--#include File = 'biffl.asp' -->
<%
elseif InStr(url, "bdjobs.com/cagbd") > 0  Or InStr(url, "applications/cagbd") > 0  then 
%>
   <!--#include File = 'cagbd.asp' -->
<%
elseif InStr(url, "bdjobs.com/citibank") > 0  Or InStr(url, "applications/citibank") > 0  then  
%>
   <!--#include File = 'citibank.asp' -->
   
<%elseif InStr(url, "bdjobs.com/dsebd") > 0  Or InStr(url, "applications/dsebd") > 0  then 
%>
   <!--#include File = 'dsebd.asp' -->
<%
elseif InStr(url, "bdjobs.com/ibbl") > 0  Or InStr(url, "applications/ibbl") > 0  then  
%>
   <!--#include File = 'ibbl.asp' -->
<%
elseif InStr(url, "bdjobs.com/meghnabank") > 0  Or InStr(url, "applications/meghnabank") > 0  then 
%>
   <!--#include File = 'meghnabank.asp' -->
   
<%elseif InStr(url, "bdjobs.com/modhumotibank") > 0  Or InStr(url, "applications/modhumotibank") > 0  then 
%>
   <!--#include File = 'modhumotibank.asp' -->
   
<%elseif InStr(url, "bdjobs.com/nrbbank") > 0  Or InStr(url, "applications/nrbbank") > 0  then  
%>
   <!--#include File = 'nrbbank.asp' -->
   
<%elseif InStr(url, "bdjobs.com/primbank") > 0  Or InStr(url, "applications/primebank") > 0  then 
%>
   <!--#include File = 'primebank.asp' -->
   
<%elseif InStr(url, "bdjobs.com/ucb") > 0  Or InStr(url, "applications/ucb") > 0  then 
%>
   <!--#include File = 'ucb.asp' -->
<%elseif InStr(url, "bdjobs.com/ier") > 0  Or InStr(url, "applications/ier") > 0  then 
%>
   <!--#include File = 'ier.asp' -->

<%
End if 
%>