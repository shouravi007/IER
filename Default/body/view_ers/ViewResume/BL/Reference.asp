<%

SQLRef = "SELECT id, Name, Position, Address, Phone, Email FROM Reference WHERE PersonalId=" & intTrakingNo
	'Response.Write("<br>"&SQLRef)
ValuePrint SQLRef, "SQLRef"		
arr_Ref = objERS.RetrieveData(SQLRef, errMsg)


ErrorMessage "34", errMsg, 0

intUBRef = UBound(arr_Ref, 2) 
		
If arr_Ref(0, 0) <> "Nothing" Then
	'intRefID = -1
	'intRefID2 = -1
	
	intRefID = arr_Ref(0, 0)
	strRefName = arr_Ref(1, 0)
	strRefPos = arr_Ref(2, 0)
	strRefAdd = arr_Ref(3, 0)
	strRefPhone = arr_Ref(4, 0)
	'strRefHomePhone = arr_Ref(5, 0)
	strRefEmail = arr_Ref(5, 0)

	If intUBRef >= 1 Then
		intRefID2 = arr_Ref(0, 1)
		strRefName2 = arr_Ref(1, 1)
		strRefPos2 = arr_Ref(2, 1)
		strRefAdd2 = arr_Ref(3, 1)
		strRefPhone2 = arr_Ref(4, 1)
		'strRefHomePhone2 = arr_Ref(5, 1)
		strRefEmail2 = arr_Ref(5, 1)
	Else
		'intRefID2 = -1
		strRefName2 = ""
		strRefPos2 = ""
		strRefAdd2 = ""
		strRefPhone2 = ""
		strRefHomePhone2 = ""
		strRefEmail2 = ""
	End If
Else
	' Variable Initialization 4 Reference
	'intRefID = -1
	strRefName = ""
	strRefPos = ""
	strRefAdd = ""
	strRefPhone = ""
	strRefCell = ""
	strRefEmail = ""
	
	'intRefID2 = -1
	strRefName2 = ""
	strRefPos2 = ""
	strRefAdd2 = ""
	strRefPhone2 = ""
	strRefCell2 = ""
	strRefEmail2 = ""
End If


%>