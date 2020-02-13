<%
   on error resume next 
   jobid = 1 
   sql = "" 
   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
   ValuePrint sql, "sql"

   arr_Tracking = objERS.RetrieveData(sql, errMsg)
   ValuePrint errMsg, "errMsg"
   
   'ErrorMessage "163", errMsg, 0	
   TrackNoNEW = arr_Tracking(0, 0)	
   
	USERID = TrackNo
	currentUser = TrackNoNEW 
	 
	strModuleName = "Resume Submit" 
	strDescription = ReplacedAllTypeOfSpecialChar(sql) 
	strAction = "Insert JobPos"
	
%>
<!--#include File = "UserLog.asp" -->
<%  
   
   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	
	 
	 
   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	




   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	



   if err.number <> 0 then
      err.clear 
	   
     'response.Write("<br>"&err.description)
	 
	   sql = "" 
	   sql = "Exec  USP_GenerateTracking_Number " &TrackNo&","&jobid
	   arr_Tracking = objERS.RetrieveData(sql, errMsg)
	   'ErrorMessage "163", errMsg, 0	
	   TrackNoNEW = arr_Tracking(0, 0)	


   end if 

   end if 

   end if 

   end if 

   end if 

   end if 

   end if 

   end if 


   end if 


   end if 


   end if 


   end if 


   end if 


   end if 


   end if 


   end if 


   end if 


   end if 


   end if 


   end if 
	 
	 
	 
   end if 
   
   
%>
