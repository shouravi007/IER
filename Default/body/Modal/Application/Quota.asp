 <%If system = "ksb" then
    sql = " SELECT [id] ,[FreedomFighter] ,[Tribal] ,[Disable] ,[Ansarvdp],[Orphan]  FROM [dbo].[Quota]  where id = "&TrackNo
	arrQuota = objERS.RetrieveData(sql, errMsg)
	
	if arrQuota(0,0) <> "Nothing" then
	   FreedomFighter = arrQuota(1,0)
	   Tribal = arrQuota(2,0)
	   Disable = arrQuota(3,0)
	   Ansarvdp = arrQuota(4,0)
	   Orphan = arrQuota(5,0)  
	end if
    err.clear  
 %> 
 <fieldset>
  <legend>Quota information:</legend>
  <input type="hidden" name="work_box" value="1">
   <!--#include File = 'Quota\Freedom_Fighter_Status.asp' -->
   <!--#include File = 'Quota\Orphan.asp' -->
   <!--#include File = 'Quota\Tribal.asp' -->
   <!--#include File = 'Quota\Physically_Challenged.asp' -->
   <!--#include File = 'Quota\Ansar_VDP.asp' -->
 </fieldset>
<%end if%>
