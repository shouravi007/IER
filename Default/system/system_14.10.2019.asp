<%
url = lcase(strUrl)

if InStr(url, "bdjobs.com/kb") > 0  Or InStr(url, "applications/karmasangsthanbank") > 0 Or InStr(url, "applications/ksb") > 0  then 
%>
   <!--#include virtual = '/applications/common/system/kb.asp' -->
<%
elseif InStr(url, "bdjobs.com/bkb") > 0  Or InStr(url, "applications/krishibank") > 0  then 
%>
   <!--#include virtual = '/applications/common/system/krishibank.asp' -->
<%
elseif InStr(url, "bdjobs.com/trustbank") > 0  Or InStr(url, "applications/trustbank") > 0  then 
%>
   <!--#include virtual = '/applications/common/system/trustbank.asp' -->
<%
elseif InStr(url, "bdjobs.com/sjibl") > 0  Or InStr(url, "applications/shahjalalbank") > 0  then  
%>
   <!--#include virtual = '/applications/common/system/sjibl.asp' -->
<%
elseif InStr(url, "bdjobs.com/pcb") > 0  Or InStr(url, "applications/pcb") > 0  then  
%>
   <!--#include virtual = '/applications/common/system/pcb.asp' -->
<%
elseif InStr(url, "bdjobs.com/dhakabank") > 0  Or InStr(url, "applications/dhakabank") > 0  then  
%>
   <!--#include virtual = '/applications/common/system/dhakabank.asp' -->
<%
elseif InStr(url, "bdjobs.com/onebank") > 0  Or InStr(url, "applications/onebank") > 0  then 
%>
   <!--#include virtual = '/applications/common/system/onebank.asp' -->
<%
elseif InStr(url, "bdjobs.com/biffl") > 0  Or InStr(url, "applications/biffl") > 0  then  
%>
   <!--#include virtual = '/applications/common/system/biffl.asp' -->
<%
elseif InStr(url, "bdjobs.com/cagbd") > 0  Or InStr(url, "applications/cagbd") > 0  then 
%>
   <!--#include virtual = '/applications/common/system/cagbd.asp' -->
<%
elseif InStr(url, "bdjobs.com/citibank") > 0  Or InStr(url, "applications/citibank") > 0  then  
%>
   <!--#include virtual = '/applications/common/system/citibank.asp' -->
   
<%elseif InStr(url, "bdjobs.com/dsebd") > 0  Or InStr(url, "applications/dsebd") > 0  then 
%>
   <!--#include virtual = '/applications/common/system/dsebd.asp' -->
<%
elseif InStr(url, "bdjobs.com/ibbl") > 0  Or InStr(url, "applications/ibbl") > 0  then  
%>
   <!--#include virtual = '/applications/common/system/ibbl.asp' -->
<%
elseif InStr(url, "bdjobs.com/meghnabank") > 0  Or InStr(url, "applications/meghnabank") > 0  then 
%>
   <!--#include virtual = '/applications/common/system/meghnabank.asp' -->
   
<%elseif InStr(url, "bdjobs.com/modhumotibank") > 0  Or InStr(url, "applications/modhumotibank") > 0  then 
%>
   <!--#include virtual = '/applications/common/system/modhumotibank.asp' -->
   
<%elseif InStr(url, "bdjobs.com/nrbbank") > 0  Or InStr(url, "applications/nrbbank") > 0  then  
%>
   <!--#include virtual = '/applications/common/system/nrbbank.asp' -->
   
<%elseif InStr(url, "bdjobs.com/primbank") > 0  Or InStr(url, "applications/primebank") > 0  then 
%>
   <!--#include virtual = '/applications/common/system/primebank.asp' -->
   
<%elseif InStr(url, "bdjobs.com/ucb") > 0  Or InStr(url, "applications/ucb") > 0  then 
%>
   <!--#include virtual = '/applications/common/system/ucb.asp' -->
<%
End if 
%>