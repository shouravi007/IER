<!--#include File = 'RetrieveHiddenValueNew.asp' -->
<div class="col-sm-12">
    <div class="edit-profile bg-style">
        <h1 class="post-name">Edit Form Others Information </h1>
          <div class="wrapper">
			 <!--#include File = 'GeneralInformation.asp' -->
				<fieldset>
					<legend>Quota Information</legend>
<%
TrackNo = Request.Form("txtTrackingNo")
strPassword = Request.Form("txtPassword") 

If TrackNo = "" Then 
  Response.Redirect("?"&Encode("Location=Modal&FormAction=Login"))
Else
 
 If IsBlank = "" or isempty(IsBlank) or isnull(IsBlank) Then

		sqlQuota = "SELECT FreedomFighter, Tribal, [Disable], [Ansarvdp], [Orphan], [insertdatetime]  FROM [Quota]  where id =" & TrackNo
		'response.Write(sqlQuota) 
		
		arr_Quata = objERS.RetrieveData(sqlQuota, strErr)
		'response.Write(strErr)
		ErrorMessage "22", errMsg, 0
		'response.Write(arr_Quata(0,0))
		
		if arrQuota(0,0) <> "Nothing" Then		
			
			strFredomFighter = arr_Quata(0,0)
			strTribal = arr_Quata(1,0)
			'response.Write(" strTribal: "& strTribal)	
			strDisableDetails = arr_Quata(2,0)
			'response.Write("strDisableDetails: "& strDisableDetails)	
			strAnserVdpQuota = arr_Quata(3,0)
			'response.Write(" strAnserVdpQuota: "& strAnserVdpQuota)				
			strOrphan = arr_Quata(4,0) 	
			'response.Write(" strOrphan: "& strOrphan)	
		else
		
			strFredomFighter = ""
			'strFredomFighterAnswer = ""
			strOrphan = ""
			strTribal = ""
			strDisableDetails = ""
			strAnserVdpQuota = ""							
		
		end if 	
  Else
  
		strFredomFighter = Request.Form("ddlFFQ")
		'strFredomFighterAnswer = Request.Form("ddlFF")
		strOrphan = Request.Form("ddlOQ") 	
		strTribal = Request.Form("ddlTQ")
		strDisableDetails = Request.Form("ddlDisable")
		strAnserVdpQuota = Request.Form("ddlAVQ")						

 End If
 
End IF 

%>					
	
<form action="?<%=Encode("Location=Edit&FormAction=InsertQuota")%>" method="post" name="frmApplication" id="frmApplication">

<%If system = "ksb" then%>   
     <!--#include File = 'Quota\Freedom_Fighter_Status.asp' -->
   <!--#include File = 'Quota\Orphan.asp' -->
   <!--#include File = 'Quota\Tribal.asp' -->
   <!--#include File = 'Quota\Physically_Challenged.asp' -->
   <!--#include File = 'Quota\Ansar_VDP.asp' -->

<%End If%>
</fieldset>

  <!--#include File = 'CommonFooterAction.asp' -->                          
