<%
'---------------------------------------------------------------------------------------------------------
'Class No   	: 01
'Purpose 	  	: This is a class used for database related work (all types of Select, Insert, Update and 
'				Delete operation).
'Page		  	: This class is used by all pages of Bdjobs.com application.
'Author  	  	: Probal
'Created On 	: 01 Sep 2005 
'Last Modified 	: 13 Feb 2006 
'---------------------------------------------------------------------------------------------------------

Class c_Data
	private m_obj_conn
	'private m_Conn_Str_Resume
	'private m_Conn_Str_Corporate
	
	Sub Class_Initialize()
		
	End Sub
	
	Sub Class_Terminate()
		on error resume next
		'response.Write("<br>St: "&m_obj_conn.state&"<br>")
		if m_obj_conn.state = 1 then 'adStateOpen						
			m_obj_conn.close
			'response.Write("<br>St: "&m_obj_conn.state&"<br>")
		end if
		set m_obj_conn = Nothing
	End Sub
%>
<%
'---------------------------------------------------------------------------------------------------------
'Function No   	: 01
'Purpose 	  	: Create and open a connection  
'				ServerType : Name of Database Server (like 'Corporate'/'Resume')
'				errMsg	   : To store error message if error occurs	
'Page		  	: All pages where this class is used and do database related work
'Author  	  	: Probal
'Created On 	: 01 Aug 2006 
'Last Modified 	: 
'---------------------------------------------------------------------------------------------------------
public sub OpenConnection(ServerName, errMsg)
	on error resume next
	dim strConn
	set m_obj_conn = server.CreateObject("ADODB.Connection")
	'Response.Write("<br>Database: " & strDatabase)
	
	strConn=getConnectionString(ServerName)
	
	m_obj_conn.open strConn
	errMsg=""
	if err.number<>0 then errMsg=err.number&"_"&err.description&"<br><br>OpenConnection"
	'if errMsg<>"" then response.Write(errMsg)
	err.clear
end sub
%>
<%
'---------------------------------------------------------------------------------------------------------
'Function No   	: 02
'Purpose 	  	: Set connection object to Begin Transaction mode'
'Parameters		: errMsg: To store error message if error occurs					
'Page		  	: Most of the pages where more than one transaction occured
'Author  	  	: Probal
'Created On 	: 01 Aug 2006 
'Last Modified 	: 
'---------------------------------------------------------------------------------------------------------
public sub BeginTransaction(errMsg)
	on error resume next
	m_obj_conn.BeginTrans
	errMsg=""
	if err.number<>0 then errMsg=err.number&"_"&err.description&"<br><br>BeginTransaction"
	err.clear
end sub
%>
<%
'---------------------------------------------------------------------------------------------------------
'Function No   	: 03
'Purpose 	  	: Set connection object to Commit all Transactions
'Parameters		: errMsg: To store error message if error occurs					
'Page		  	: Most of the pages where BeginTransaction method is called 
'Author  	  	: Probal
'Created On 	: 01 Aug 2006 
'Last Modified 	: 
'---------------------------------------------------------------------------------------------------------
public sub CommitTransaction(errMsg)
	on error resume next
	m_obj_conn.CommitTrans
	errMsg=""
	if err.number<>0 then errMsg=err.number&"_"&err.description&"<br><br>CommitTransaction"
	err.clear
end sub
%>
<%
'---------------------------------------------------------------------------------------------------------
'Function No   	: 04
'Purpose 	  	: Roll over back all Transactions
'Parameters		: errMsg: To store error message if error occurs					
'Page		  	: Most of the pages where BeginTransaction method is called 
'Author  	  	: Probal
'Created On 	: 01 Aug 2006 
'Last Modified 	: 
'---------------------------------------------------------------------------------------------------------
public sub RollBackTransaction(errMsg)
	on error resume next
	m_obj_conn.RollBackTrans
	errMsg=""
	if err.number<>0 then errMsg=err.number&"_"&err.description&"<br><br>CommitTransaction"
	err.clear
end sub
%>
<%
'---------------------------------------------------------------------------------------------------------
'Function No   	: 05
'Purpose 	  	: Close connection object					
'Page		  	: Most of the pages where BeginTransaction method is called 
'Author  	  	: Probal
'Created On 	: 01 Aug 2006 
'Last Modified 	: 
'---------------------------------------------------------------------------------------------------------
public sub CloseConnection()	
	m_obj_conn.close
	'set m_obj_conn = nothing	
end sub
%>
<%	
'---------------------------------------------------------------------------------------------------------
'Function No   	: 06
'Purpose 	  	: Execute a transact query. It has three parameters.  				
'				SQL		   : SQL Statement
'				errMsg	   : To store error message if error occurs	
'Page		  	: Most of the pages
'Author  	  	: Probal
'Created On 	: 01 Sep 2005 
'Last Modified 	: 01 Aug 2006  
'---------------------------------------------------------------------------------------------------------
	'Insert/Update/Delete data
	public sub ExecuteQuery(SQL, errMsg)
		on error resume next		
		'response.Write(sql)
		'response.End()
		m_obj_conn.Execute(SQL)
				
		errMsg=""
		if err.number<>0 then errMsg=err.number&"_"&err.description&"<br><br>SQL = "&SQL&"<br>"
		err.clear		
	end sub
%>
<%	
'---------------------------------------------------------------------------------------------------------
'Function No   	: 07
'Purpose 	  	: Add/Update Record(s). It has three parameters.  
'Parameters		:
'	ServerType : Name of Database Server (like 'Corporate'/'Resume')
'	arrSQL()   : An array of 'SELECT' SQL Statements
'	strArr()   : An array containing corresponding data of SQL Statement to Add/Update record(s)
'				errMsg	   : To store error message if error occurs	
'Page		  	: Most of the pages
'Author  	  	: Probal
'Created On 	: 01 Sep 2005 
'Last Modified 	: 01 Aug 2006  
'---------------------------------------------------------------------------------------------------------	
	'Insert or update data by selecting record
	public sub UpdateData(arrSQL(), strArr(), errMsg)
		on error resume next
		dim strData
				
		set rs=server.CreateObject("ADODB.RecordSet")
		errMsg=""
		
		for intRecLoop = 0 to ubound(strArr)
			if arrSQL(intRecLoop) <> "" then
				strData = ""
				'response.Write(arrSQL(intRecLoop)&"<br>")
				rs.open arrSQL(intRecLoop), m_obj_conn, 2, 3			'adOpenStatic,adLockOptimistic			
				if err.number<>0 then 
					errMsg=err.number&"_"&err.description&"<br><br>(for UpdateData) SQL"&intRecLoop&" = "&arrSQL(intRecLoop)&"<br>"
					err.clear
					exit for
				end if
				if rs.eof then 
					rs.addnew		
					'response.Write("<br>Add<br>")
				end if
				
				for intLoop=0 to rs.Fields.Count-1
					strData=strData&"<br>"&rs.Fields(intLoop).name&" = "&strArr(intRecLoop,intLoop)
					rs.Fields(intLoop)=strArr(intRecLoop,intLoop)						
				next
				rs.update
				'response.Write(strData&"<br>")
				if err.number<>0 then 
					errMsg=err.number&"_"&err.description&"<br>"&strData&"<br>"
					err.clear
					exit for
				end if
				rs.close
			end if
		next
		set rs=nothing	
	end sub
%>
<%	
'---------------------------------------------------------------------------------------------------------
'Function No   	: 08
'Purpose 	  	: Retrieve Record(s). It fills an array with data and return it. It has two parameters.  
'				SQL		   : A 'SELECT' SQL Statement
'				errMsg	   : To store error message if error occurs	
'Page		  	: Most of the pages
'Author  	  	: Probal
'Created On 	: 01 Sep 2005 
'Last Modified 	: 01 Aug 2006 
'---------------------------------------------------------------------------------------------------------	
	'Selecting Records	
	public function RetrieveData(SQL, errMsg)
		'on error resume next
		'dim strArr()
		set rs=server.CreateObject("ADODB.RecordSet")
		
		'response.Redirect("C: "&m_obj_conn.ConnectionString)
		'response.Write("<br>"&sql)		
		'response.End()

		rs.open SQL,m_obj_conn,3,1   'adOpenStatic,adLockReadOnly
		if err.number<>0 then 
			errMsg=err.number&"_"&err.description&"<br><br>SQL = "&SQL&"<br>"
			set rs=nothing
		else		
			'if rs.State=0 then
			'	set rs=nothing
			'	set rs=server.CreateObject("ADODB.RecordSet")
			'	rs.open SQL,m_Conn,3,1   'adOpenStatic,adLockReadOnly
			'end if
			if rs.Eof then
				ReDim strArr(0,0)
				strArr(0,0)="Nothing"
			else
				strArr = rs.GetRows()
				'TRecords = rs.RecordCount-1
				'TFields = rs.Fields.Count-1
				'redim strArr(TRecords,TFields)
				'RecNo=0
				'do until rs.eof
				'	for intLoop=0 to TFields
				'		if isnull(rs.Fields(intLoop)) then
				'			strArr(RecNo,intLoop)=""
				'		else
				'			strArr(RecNo,intLoop) = rs.Fields(intLoop)
				'		end if
				'	next
				'	RecNo = RecNo + 1
				'	rs.MoveNext
				'	if err.number<>0 then exit do				
				'Loop
			End If
			rs.Close
			set rs = Nothing
			
			RetrieveData = strArr			
			errMsg=""
			if err.number<>0 then errMsg=err.number&"_"&err.description&"<br><br>SQL = "&SQL&"<br>"
		end if
		err.clear
	End Function				
%>
<%
'---------------------------------------------------------------------------------------------------------
'Function No   	: 09
'Purpose 	  	:  Execute a transact query (basically DELETE query). It has two parameters.  
'Parameters		:
'				SQL		   : A 'DELETE' SQL Statement
'				errMsg	   : To store error message if error occurs	
'Page		  	: Most of the pages
'Author  	  	: Probal
'Created On 	: 01 Sep 2005 
'Last Modified 	: 01 Aug 2006 
'---------------------------------------------------------------------------------------------------------		
	Public sub DeleteData(SQL, errMsg)
		on error resume next		
		m_obj_conn.Execute(SQL)		
		errMsg=""
		if err.number<>0 then errMsg=err.number&"_"&err.description&"<br><br>SQL = "&SQL&"<br>"
		err.clear
	End Sub
%>
<%	
'---------------------------------------------------------------------------------------------------------
'Function No   	: 10
'Purpose 	  	: Get highest ID of a Table. It has four parameters.  
'				ServerType : Name of Database Server (like 'Corporate'/'Resume')
'				TableName  : Name of a table from where find the highest ID
'				FieldName  : Field Name from where find the highest ID
'				errMsg	   : To store error message if error occurs	
'Page		  	: Most of the pages
'Author  	  	: Probal
'Created On 	: 01 Sep 2005 
'Last Modified 	: 01 Aug 2006 
'---------------------------------------------------------------------------------------------------------	
	Public Function getNewId(TableName, FieldName, errMsg)
		on error resume next
		
		set RS = Server.CreateObject("ADODB.RecordSet")
		sql = "Select Max("&FieldName&") As MaxID From "&TableName
		
		Rs.Open sql, m_obj_conn, 0, 1  'adOpenForwardOnly,adLockReadOnly
		if isnull(rs("MaxId")) or rs("MaxId") = 0 then
			getNewId = 1
		else
			getNewId = rs("MaxId") + 1
		end if
		rs.close
		set rs = nothing

		errMsg=""
		if err.number<>0 then errMsg=err.number&"_"&err.description
		err.clear
	End Function
%>
<%
'---------------------------------------------------------------------------------------------------------
'Function No   	: 11
'Purpose 	  	: Checking for duplicate user. It has five parameters.  
'				strTableName: Name of the Database table where search duplicate record
'				strIDName	: Name od the field (like ID) indicates this record unique
'				lnIDValue 	: Value of the unique field defined in 'strIDName' variable
'				arrFields	: Array of fields required to search. It is a two dimentional array. 
'							  It can be defined as arrFields(n, 2).
'							  n - Number of fields
'							  0 - Field name, 1 - Field value, 2 - Field type (it can be 'Date', 'Number' or 'String'
'				errMsg	   	: To store error message if error occurs
'Page		  	: May be at first step of every resume system to check duplicate Username.
'Author  	  	: Probal
'Created On 	: 01 Sep 2005 
'Last Modified 	: 21 Aug 2006 
'---------------------------------------------------------------------------------------------------------	
	'Checking duplicate user
	Public Function DuplicateUser(strTableName, strIDName, lnIDValue, arrFields, errMsg)
		on error resume next				
		
		strWhere = ""
		for intI = 0 to ubound(arrFields)
			'response.Write("0-"&arrFields(intI,0)&", 1-"&arrFields(intI,1)&", 2-"&arrFields(intI,2)&"<br>")
			select case arrFields(intI,2)
				case "Number"
					tmpSTR = arrFields(intI,0)&" = "&arrFields(intI,1)
				case "Date"
					tmpSTR = arrFields(intI,0)&" = '"&arrFields(intI,1)&"'"
				case "String"
					tmpSTR = "replace("&arrFields(intI,0)&",' ','') = '"&replace(arrFields(intI,1)," ","")&"'"
				case else
					tmpSTR = ""
			end select
			
			if tmpSTR <> "" then
				if strWhere = "" then
					strWhere = " Where "&tmpSTR
				else
					strWhere = strWhere&" And "&tmpSTR
				end if
			end if
		next
		
		if lnIDValue>0 then
			if strWhere = "" then
				strWhere = " Where "&strIDName&"<>"&lnIDValue
			else
				strWhere = " And "&strIDName&"<>"&lnIDValue
			end if
		end if

		sql = "Select "&strIDName&" From "&strTableName&strWhere 
		
		'response.Write(sql)
		'response.End()
		set RS = Server.CreateObject("ADODB.RecordSet")
		RS.Open sql, m_obj_conn, 0, 1  'adOpenForwardOnly,adLockReadOnly
		'response.Write(err.description)
		'response.End()
		If RS.EOF then
			DuplicateUser = False
		Else
			DuplicateUser = True
		End If
		RS.Close
		Set RS = Nothing

		errMsg=""
		if err.number<>0 then errMsg=err.number&"_"&err.description
		err.clear
	End Function
%>
<%	
'---------------------------------------------------------------------------------------------------------
'Function No   	: 12
'Purpose 	  	: Checking for a record (is this record exists or not). It will return 'TRUE' or 'FALSE'.
'				It has four parameters.  
'				ServerType : Name of Database Server (like 'Corporate'/'Resume')
'				TableName  : Name of a table from where it will check
'				FieldName  : Checking data into this field
'				strData	   : This is the value which will be checking here	
'				errMsg	   : To store error message if error occurs	
'Page		  	: Most of the pages
'Author  	  	: Probal
'Created On 	: 01 Sep 2005 
'Last Modified 	: 01 Aug 2006 
'---------------------------------------------------------------------------------------------------------	
	'Checking data, if it is exist or not (like User_Name, Institute name etc.)
	public Function DataExist(TableName, FieldName, strData, errMsg)
		on error resume next
		
		set RS = Server.CreateObject("ADODB.RecordSet")
		SQL="Select "&FieldName&" From "&TableName&" Where "&FieldName&"='"&strData&"'"
		'response.Write(SQL)
		'response.End()
		RS.Open SQL,m_obj_conn,0,1 'adOpenForwardOnly,adLockReadOnly
		If RS.EOF Then
			DataExist=False
		Else
			DataExist=True
		End If
		RS.Close

		errMsg=""
		if err.number<>0 then errMsg=err.number&"_"&err.description
		err.clear						
	End Function
%>
<%
'---------------------------------------------------------------------------------------------------------
'Function No   	: 10
'Purpose 	  	: Retrieve Record(s) from XML file.
'				strPath	   : File path from where the records will be retrieved
'				errMsg	   : To store error message if error occurs	
'Page		  	: Most of the pages
'Author  	  	: Probal
'Created On 	: 20 Nov 2008 
'Last Modified 	:  
'---------------------------------------------------------------------------------------------------------
	function LoadFromXMLFile(strPath, errMsg)
		on error resume next
		if blFileExists(strPath) then
			set rs=server.CreateObject("ADODB.RecordSet")	
			rs.Open strPath, "Provider=MSPersist;"
			if err.number<>0 then 
				errMsg=err.number&"_"&err.description&"<br>"
				'errMsg=errMsg&"<br>Elapsed time: "&c_getDuration(ctmpPreviousTime)& " sec"
				'rs.close 
				'set rs=nothing
			else				
				'if SQL <> "" then
					rs.Filter = SQL '"L_Name = '" & txtFilter1.Text & "' OR L_Name = '" & txtFilter2.Text & "'"
				'end if
				if rs.eof then
					ReDim strArr(0,0)
					strArr(0,0)="Nothing"
				else
					strArr = rs.GetRows()
				end if				
			end if
			set rs=nothing
		else
			ReDim strArr(0,0)
			strArr(0,0)="Nothing"
		end if		
		LoadFromXMLFile = strArr
		err.clear
	end function
%>
<%	
'---------------------------------------------------------------------------------------------------------
'Function No   	: 08
'Purpose 	  	: Retrieve Record(s) from XML file. It fills an array with data and return it. It has three parameters. 
'				c_strFilePath: Path of the XML file 
'				SQL		   : A 'SELECT' SQL Statement
'				errMsg	   : To store error message if error occurs	
'Page		  	: Most of the pages
'Author  	  	: Probal
'Created On 	: 01 Sep 2005 
'Last Modified 	: 01 Aug 2006 
'---------------------------------------------------------------------------------------------------------	
Public Function RetrieveDataFromXML(c_strFilePath, SQL, errMsg)   
	On Error Resume Next    
	'response.Write("Path: "&c_strFilePath)
	
    if not blFileExists(c_strFilePath) then
		errMsg="Invalid Path_File Path not found<br>"
		ReDim strArr(0,0)
		strArr(0,0)="Nothing"
		RetrieveDataFromXML = strArr
		err.clear
       	Exit Function
    End If
	     
    set rs=server.CreateObject("ADODB.RecordSet")
	    
    rs.Open c_strFilePath, "Provider=MSPersist;", 3, 1 ', 256 'adOpenForwardOnly, adLockReadOnly, adCmdFile
    
    If Err.Number <> 0 Then
		errMsg=err.number&"_"&err.description&"<br><br>SQL = "&SQL&"<br>"
	else   		
		if SQL <> "" then
			rs.Filter = SQL '"L_Name = '" & txtFilter1.Text & "' OR L_Name = '" & txtFilter2.Text & "'"
		end if
		if rs.Eof then
			ReDim strArr(0,0)
			strArr(0,0)="Nothing"			
		else
			strArr = rs.GetRows()				
		End If
		rs.Close
		Set rs = Nothing
		errMsg=""
		if err.number<>0 then errMsg=err.number&"_"&err.description&"<br><br>SQL = "&SQL&"<br>"
		RetrieveDataFromXML = strArr				
    end if    
End Function

'---------------------------------------------------------------------------------------------------------
'Function No   	: 09
'Purpose 	  	: Retrieve Record(s) and save into an XML file.
'				SQL		   : A 'SELECT' SQL Statement
'				strPath	   : File path where the records will be saved
'				errMsg	   : To store error message if error occurs	
'Page		  	: Admin generated pages and some other pages
'Author  	  	: Probal
'Created On 	: 20 Nov 2008 
'Last Modified 	:  
'---------------------------------------------------------------------------------------------------------
	Public sub SavetoXMLFile(SQL, strPath, errMsg)
		on error resume next
		
		set rs=server.CreateObject("ADODB.RecordSet")	
		rs.open SQL, m_obj_conn, 3, 1	'adOpenStatic,adLockReadOnly
		if err.number<>0 then 
			errMsg=err.number&"_"&err.description&"<br><br>SQL = "&SQL&"<br>"
			'errMsg=errMsg&"<br>Elapsed time: "&c_getDuration(ctmpPreviousTime)& " sec"
			rs.close 
		else		
			DeleteFile strPath, errMsg
			rs.save strPath, 1
		end if
		set rs=nothing
		err.clear
	end sub
	
	Private sub DeleteFile(strPath, errMsg)
		on error resume next
		
		set objFSO=server.CreateObject("Scripting.FileSystemObject")	
			
		if objFSO.FileExists(strPath) then
			objFSO.deletefile(strPath)
			if err.number<>0 then 
				errMsg=err.number&"_"&err.description&"<br><br>"
				'errMsg=errMsg&"<br>Elapsed time: "&c_getDuration(ctmpPreviousTime)& " sec"
				rs.close 
			end if
		end if
		set objFSO=nothing		
	end sub	
	
	Private function blFileExists(strPath)		
		set objFSO=server.CreateObject("Scripting.FileSystemObject")	
			
		if objFSO.FileExists(strPath) then
			blFileExists=true
		else
			blFileExists=false
		end if
		set objFSO=nothing		
	end function	
%>
<%	
'---------------------------------------------------------------------------------------------------------
'Function No   	: 14
'Purpose 	  	: Get name of Fields and thier types included into a database table
'				It has three parameters.  
'				TableName  : Name of the table 
'				UniqueField  : Name of the unique field of the table	
'				errMsg	   : To store error message if error occurs	
'Page		  	: 
'Author  	  	: Probal
'Created On 	: 28 May 2007 
'Last Modified 	:  
'---------------------------------------------------------------------------------------------------------		
	public Function getFieldNamesAndTypes(TableName, UniqueField, errMsg)
		on error resume next
		dim strTotalFields
		dim tmpintCounter
		
		set RS = Server.CreateObject("ADODB.RecordSet")
		if TableName<>"" and UniqueField<>"" then
			SQL="Select * from "&TableName&" Where "&UniqueField&"='1'"		
			'response.Write(SQL)
			'response.End()
			RS.Open SQL,m_obj_conn,0,1 'adOpenForwardOnly,adLockReadOnly
			strTotalFields=RS.Fields.Count
			redim strArr(strTotalFields-1, 1)
			
			for tmpintCounter=0 to strTotalFields-1
				strArr(tmpintCounter, 0)=RS.Fields(tmpintCounter).Name
				strArr(tmpintCounter, 1)=RS.Fields(tmpintCounter).Type
			next
			
			RS.Close
			
			errMsg=""
			if err.number<>0 then errMsg=err.number&"_"&err.description
			err.clear
		end if
		getFieldNamesAndTypes=strArr					
	End Function
End Class
%>

<%
'---------------------------------------------------------------------------------------------------------
'Function No   	: 13
'Purpose 	  	: Get the connection string of the required database  
'				strDatabase : Name of Database Server (like 'Corporate'/'Resume')	
'Page		  	: Most of the pages
'Author  	  	: Probal
'Created On 	: 16 Mar 2006 
'Last Modified 	: 01 Aug 2006 
'---------------------------------------------------------------------------------------------------------
function getConnectionString(strDatabase)			
	If strDatabase="HSBC" Then
		strDatabase	= LCase(strDatabase)
	End If
	select case strDatabase			
		case "CityCell"
			MdbFilePath = Server.MapPath("\data\citycell.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
			
		case "Banglalink"
			MdbFilePath = Server.MapPath("\data\orascom.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "BATB"
			MdbFilePath = Server.MapPath("\data\bat.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "BATB-BM"
			strConn="Provider=SQLOLEDB;Data Source=192.168.0.4;Initial Catalog=ersBATB-BM;User Id=eRecruitAdmin;Password=ERAauny#13"
'			MdbFilePath = Server.MapPath("\data\batb-bm.mdb")
'			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "Intern"
			MdbFilePath = Server.MapPath("\data\intern.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "Lever"
			MdbFilePath = Server.MapPath("\data\lever.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "Nestle"
			MdbFilePath = Server.MapPath("\data\Nestle000.mdb")
			'MdbFilePath = Server.MapPath("\data\Nestle.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "chevron"
			MdbFilePath = Server.MapPath("\applications\data\chevron.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "Ascent"
			MdbFilePath = Server.MapPath("\data\Ascent.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "UNDP"
			MdbFilePath = Server.MapPath("\data\UNDP.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "TestServer"
			MdbFilePath = Server.MapPath("\bdjobs\dbtest\testD.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"				
		case "abbank"
			MdbFilePath = Server.MapPath("\applications\data\abbank_mto_2014.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"	
		case "ebl"
			MdbFilePath = Server.MapPath("\data\ebl.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "ebl_mt"
			MdbFilePath = Server.MapPath("\data\ebl_mt.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "eblnewlook"
			strConn="Provider=SQLOLEDB;Data Source=SERVERBDJ;Initial Catalog=EBL;User Id=ebl1;Password=EasternDB+12"
		case "plan"
			'strConn="Provider=SQLOLEDB;Data Source=SERVERBDJ;Initial Catalog=EBL;User Id=ebl1;Password=EasternDB+12"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersPlan;User Id=planU1RW;Password= BdjPlan#D12B@RW"
		case "RupaliSQL"
			'strConn="Provider=SQLOLEDB;Data Source=SERVERBDJ;Initial Catalog=EBL;User Id=ebl1;Password=EasternDB+12"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersRupaliBank;User Id=RupaliBuRW;Password= uRB@513#rw"
		case "AnsarVDP"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersAnsarVDP;User Id=AnsarV;Password= bdjErs#513@AVDP"
		case "DhakaBankSQL"
			'strConn="Provider=SQLOLEDB;Data Source=SERVERBDJ;Initial Catalog=EBL;User Id=ebl1;Password=EasternDB+12"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersDhakaBank;User Id=DhakaBuRW;Password= uDB@513#rw"
		case "ucbSQL-ACO"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersUCB;User Id=UCBuRW;Password= uUCB@513#rw"
		case "BDBLSQL"
			'strConn="Provider=SQLOLEDB;Data Source=SERVERBDJ;Initial Catalog=EBL;User Id=ebl1;Password=EasternDB+12"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersBDBL;User Id=BDBLuRW;Password= uBDBL@114#rw"
		case "cag"
			'strConn="Provider=SQLOLEDB;Data Source=SERVERBDJ;Initial Catalog=EBL;User Id=ebl1;Password=EasternDB+12"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersCAG;User Id=CAGuRW;Password= uCAG@314#rw"
		
		case "ersModhumotiBank"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersModhumotiBank;User Id=ersMMBL;Password= uModh18#20Bn"
		
		case "trustSQL"
			'strConn="Provider=SQLOLEDB;Data Source=SERVERBDJ;Initial Catalog=EBL;User Id=ebl1;Password=EasternDB+12"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersTrust;User Id=TrustuRW;Password= uTrust@514#rw"
	
		case "trustSQL_OLD"
			'strConn="Provider=SQLOLEDB;Data Source=SERVERBDJ;Initial Catalog=EBL;User Id=ebl1;Password=EasternDB+12"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersTrustOld;User Id=TrustuRW;Password= uTrust@514#rw"
				
		case "trustTACOSQL"
			'Response.Write("Reached Here")
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersTrustTACO;User Id=TrustuRW;Password= uTrust@514#rw"
		case "ersSupport"			
			'If Trim(LCase(Request.ServerVariables("SERVER_NAME"))) = "server-ers" Then
				strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersSupport;User Id=SupportERSuRW;Password=uSupport@1214#rw"	
			'Else
			'	strConn="Provider=SQLOLEDB;data source=192.168.0.2;Initial Catalog=ersRupaliBank;User Id=RupaliBuRW;Password= uRB@513#rw"
			'End If
		case "CitiBank"
				strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersCitibank;User Id=CitiuRW;Password=CitiuDB@816#rw"	
		case "hsbc"
			MdbFilePath = Server.MapPath("\data\hsbc.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "onebank"
			MdbFilePath = Server.MapPath("\applications\data\onebank.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"	
		case "onebanktech"
			MdbFilePath = Server.MapPath("\data\onebanktech.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"	
		case "onebank_email"
			MdbFilePath = Server.MapPath("\data\onebank_email.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"	
		case "ucb"
			MdbFilePath = Server.MapPath("\applications\data\ucb.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "ucb_cashofficer"
			MdbFilePath = Server.MapPath("\data\ucb_cashofficer.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "citybank"
			MdbFilePath = Server.MapPath("\data\citybank.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "Trustbank"
			MdbFilePath = Server.MapPath("\data\Trustbank.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "dhakabank"
			MdbFilePath = Server.MapPath("\applications\data\dhakabank.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "coats"
			MdbFilePath = Server.MapPath("\data\coats.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"
		case "Trustbank_Officer"
			MdbFilePath = Server.MapPath("\applications\data\trustbank_officer.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"	
		case "Trustbank_CTG_SLT"
			MdbFilePath = Server.MapPath("\applications\data\Trustbank_CTG_SLT.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;User Id=Admin; Jet OLEDB:Database Password=bdjobs_rms;Data Source="& MdbFilePath & ";"
		case "ific"
			MdbFilePath = Server.MapPath("\applications\data\ific.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"		
		case "ific_taco"
			MdbFilePath = Server.MapPath("\applications\data\ific_taco.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"		
		case "sibl"
			MdbFilePath = Server.MapPath("\applications\data\sibl.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"		
		case "siblProb"
			MdbFilePath = Server.MapPath("\applications\data\siblProb.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"		
		case "rupalibank"
			MdbFilePath = Server.MapPath("\applications\data\rupalibank.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"		
		case "EBLTest"
			MdbFilePath = Server.MapPath("/MahbubApps/EASTERNBANK/EASTERNBANK.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"		
		case "ersMahaboob"
			MdbFilePath = Server.MapPath("\MahbubApps\ERECRUITEMENT\erecruitement.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"		
		case "meghnaSQL"
			'Response.Write("Reached Here")
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersMeghna;User Id=MeghnaBuRW;Password= uMB@1014#rw"
		case "StaffContacts"
			MdbFilePath = Server.MapPath(PathPart & "\applications\data\StaffContacts.mdb")
			'Response.Write(MdbFilePath)
			'Response.End()
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"		
		case "LafargeSQL"
			'Response.Write("Reached Here")
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersLafarge;User Id=lafargeURW;Password= Lafarge#D415@RW"		
		case "NestleSQL"
			'Response.Write("Reached Here")
			strConn="Provider=SQLOLEDB;Data Source=192.168.0.4;Initial Catalog=ersNestle;User Id=nestleURW;Password=Nestle#D915@RW"
		'__________________________
		'Connections for WHO
		case "whoSQL"
			'Response.Write("Reached Here")
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersWHO;User Id=whoURW;Password= who#D1215@RW"		
		'__________________________
		'Connections for AB Bank
		case "ABSQL"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersAB;User Id=ABuRW;Password= uAB@215#rw"
		case "MyBdjobsView"	
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=bdjResumes;User Id=ersMyBdjobs;Password=ueRecRes+R15#6"
		case "DhakaBankCV"
			MdbFilePath = Server.MapPath(PathPart & "\applications\data\DBLCV.mdb")
			strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="& MdbFilePath & ";"	
		'Connections for Krishi Bank
		case "KrishiBank"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersKrishiBank;User Id=KrishiBankRW;Password=KrishiBankDB@1116#rw"
		'Connections for EBEK (UCBL)
		case "ersEBEK"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersEBEK;User Id=EbekRW;Password=EbekDB@1116#rw"
		'Connections for Krishi Bank
		case "OneBankSQL"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersOneBank;User Id=OneBankRW;Password=OneDB@1216#rw"
		'Connections for Islami Bank
		case "IBBL"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersIBBL;User Id=IslamiBankRW;Password=IslamiiBankDB@0117#rw"
		'Connections for Apollo
		case "Apollo"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersApollo;User Id=ApolloRW;Password=ApolloDB@0417#rw"
		'Connections for Karmasangsthan Bank
		case "KarmasangsthanBank"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersKarmasangsthanBank;User Id=KarmaBankRW;Password=KBankDB@0417#rw"
		case "ksb"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersKSB;User Id=KarmaBankRW;Password=KBankDB@0417#rw"
		case "dseBD"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersDSEBD ;User Id=dseLuRW;Password= udsE@718#rw"	
		case "NRBbank"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersNRBbank ;User Id=ersNRB;Password= nxD2E?$W"				
		case "PrimeBank"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersPrimeBank;User Id=ersPrime;Password= D!9Xc8$&"
		case "PCB"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersPCB;User Id=ersuPCB;Password=@Xe6N^7D7jgS"
		case "IER"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersIER;User Id=ersUieR;Password=ZuNt5A+11"
		case "SJIBL"
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=ersSJIBL;User Id=ersuSjibl;Password=R9CzjHEv*=rt"
		case "erscommunitybank"
			'response.Write("communitybank")
			strConn="Provider=SQLOLEDB;data source=192.168.0.4;Initial Catalog=erscommunitybank;User Id=ersuCmB;Password=2@?5P^et'Q"
	end select
	'response.Write("P="&strDatabase&"<br>Connection String: "&strConn)
	'response.End()
	getConnectionString=strConn
end function
%>
