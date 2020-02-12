<%

'If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or Request.ServerVariables("SERVER_NAME") = "server-ers" or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0  Then   ' only run  in office 

	' This Procedure is Used by All Class, Function & Procedure. This is an Error Message Displaying Procedure.
	SQL_ID = "" 
	SQL_ID = " select id,firstname,bdjobsid from Personal where len(firstname) < 40 and testcv = 0 and bdjobsid <> 0   " 
			
	Response.Write("<br>"&SQL_ID)
   ' Response.Write("<br>jobid:"&jobid)
	arr_ID = objERS.RetrieveData(SQL_ID, errMsg)
	'Response.Write errMsg
	ErrorMessage "163", errMsg, 0	
	
	intErsId = 16 
	'intErsId=Request.form("ersId")
	secPersonal = 15022 '1 ' for personal block 
	
	if arr_ID(0, 0) <> "Nothing" then
	  For i = 0 to ubound(arr_ID,  2)  ' 1 '
	  TrackNo = ""
	  TrackNo = arr_ID(0, i)
	  Response.Write("<br>TrackNo:"&TrackNo)
	  
	  ersPHOTOURL = "" 
	  firstname = arr_ID(1, i)

      Response.Write("<br>firstname:"&firstname)

      bdjobsid =  arr_ID(2, i)

      Response.Write("<br>bdjobsid:"&bdjobsid)

		strSql2 = "USP_ExportCVforERS " & bdjobsid & ", " &intErsId& ", " & secPersonal 
		response.Write("<BR>"&strSql2)
		ValuePrint strSql2 , "800-strsql2"
		arrBdjPersonal=objResumeServer.RetrieveData(strSql2,strErr)

		ValuePrint arrBdjPersonal(0,1) , "arrBdjPersonal(0,1)"
		strFirstName = arrBdjPersonal(0,1)
		ValuePrint arrBdjPersonal(1,1) , "arrBdjPersonal(1,1)"
		strLastName = arrBdjPersonal(1,1)
		
		ValuePrint arrBdjPersonal(2,1) , "arrBdjPersonal(2,1)"
		
		strFirstNameNew = strFirstName & " " & strLastName
		strFirstName = ""
		strFirstName = strFirstNameNew

        if firstname <> strFirstName then 
		  
		   sql = " update personal set firstname = '"&strFirstName&"' where firstname = '"&firstname&"' and id = " & TrackNo
		   
		   response.Write("<br>"&sql) 
		   objERS.ExecuteQuery sql,errMsg
		   
		
		end if 

     Next 
 End If 
%>

