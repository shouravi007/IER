<%

'If Request.ServerVariables("REMOTE_ADDR") = "163.53.150.122" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.123" Or Request.ServerVariables("REMOTE_ADDR") = "163.53.150.118"  Or Request.ServerVariables("SERVER_NAME") = "server-ers" or  InStr(Request.ServerVariables("HTTP_REFERER"), "server-ers") > 0  Then   ' only run  in office 

	' This Procedure is Used by All Class, Function & Procedure. This is an Error Message Displaying Procedure.
	SQL_ID = "" 
	SQL_ID = " select id,firstname,email,contactphone,cellphone, bdjobsid from Personal where len(firstname) < 10 and testcv = 0 and bdjobsid = 0 and id < 382 and ersphotourl = '' " 
			
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

      email =  arr_ID(2, i)

      Response.Write("<br>email:"&email)

		strSql2 = " select firstname+' '+lastname from personal where email = '" &email&"'"
		response.Write("<BR>"&strSql2)
		ValuePrint strSql2 , "800-strsql2"
		
				Set objDhakaBank = New c_data
				'objDhakaBank.OpenConnection "DhakaBankSQL",strErr	
				'objDhakaBank.OpenConnection "ksb",strErr	
				'objDhakaBank.OpenConnection "NRBbank",strErr
				'objDhakaBank.OpenConnection "PrimeBank",strErr
				objDhakaBank.OpenConnection "SJIBL",strErr	
				'objDhakaBank.OpenConnection "PCB",strErr	
				'objDhakaBank.OpenConnection "OneBankSQL",strErr	
				'objDhakaBank.OpenConnection "KrishiBank",strErr	
				'objDhakaBank.OpenConnection "ersModhumotiBank",strErr	
				'objDhakaBank.OpenConnection "eblnewlook",strErr			
		
		
		arrBdjPersonal=objDhakaBank.RetrieveData(strSql2,strErr)
		if arrBdjPersonal(0,0) <> "Nothing" then
        Response.Write("<br>full_name_ers:"&arrBdjPersonal(0,0))
		strFirstName = arrBdjPersonal(0,0)
		
			if firstname <> strFirstName then 
			  
			   sql = " update personal set firstname = '"&strFirstName&"' where firstname = '"&firstname&"' and id = " & TrackNo
			   
			   response.Write("<br>"&sql) 
			   objERS.ExecuteQuery sql,errMsg
			   
			
			end if 		
		
		end if 


     Next 
 End If 
%>

