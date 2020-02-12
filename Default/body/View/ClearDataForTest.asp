
<%
'request.Form("TrackNoNew")
intTrackNo = request.Form("TrackNo")

sqlSelectData = "SELECT [id], [FirstName] + ' ' + [LastName] as Name, [FatherName], [MotherName], [DateOfBirth], [Email], [ContactPhone], [CellPhone], [PostedOn], [UpdatedOn] FROM [Personal] where id="&intTrackNo

arrSelectData = objERS.RetrieveData(sqlSelectData, strErr)
ErrorMessage "34", errMsg, 0

If arrSelectData(0,0) <> "Nothing" Then
	If  cstr(arrSelectData(1,0)) = cstr("Shouravi Sharmin") Then
		
		sqlUpdate1 = "update [Personal] set [FirstName] ='Test Data' where [FirstName] = 'Shouravi Sharmin'"
		
	End If
	
	If  cstr(arrSelectData(5,0)) = cstr("shouravi@bdjobs.com") or cstr(arrSelectData(5,0)) = cstr("shouravisharmin007@gmail.com") Then
		
		sqlUpdate2 = "update [ersKSB].[dbo].[Personal] set email = 'test@gmail.com' where email = 'shouravi@bdjobs.com' or email = 'shouravisharmin007@gmail.com'"
		
	End If
	
	
	If  cstr(arrSelectData(6,0)) = cstr("01715027841") or cstr(arrSelectData(6,0)) = cstr("01684688158") Then
		
		sqlUpdate3 = "update [Personal] set contactphone = '0' where contactphone = '01715027841' or contactphone = '01684688158'"
		
	End If
	
Else
	
End If

response.Write("update 1: "& sqlUpdate1 &"<BR>update 2: " & sqlUpdate2 &"<BR>update 3: "& sqlUpdate3&"<br>")
%>
