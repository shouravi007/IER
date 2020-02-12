<%
ValuePrint strEduLevel1, "strEduLevel1-1"
ValuePrint strEduLevel2, "strEduLevel2-1"
ValuePrint strEduLevel3, "strEduLevel3-1"
ValuePrint strEduLevel4, "strEduLevel4-1"



If i =1 Then
	 strEduLevel = strEduLevel1
ElseIf i = 2 Then 
	 strEduLevel = strEduLevel2
ElseIf i = 3 Then 
	 strEduLevel = strEduLevel3
ElseIf i = 4 Then 
	 strEduLevel = strEduLevel4
ElseIf i = 5 Then 
	 strEduLevel = strEduLevel5
Else
	 strEduLevel = ""
	 
End If
If strEduLevel = "" or strEduLevel = "S" or strEduLevel = "-1"  Then 
	' bgColorEduLevel = " background-color: #FF0000;" 
Else 
	 bgColorEduLevel = ""
End If

'response.Write(strEduLevel)


flag_edulevel = False
str_edu_level_value = "" 


%>
<input type="hidden" name="hidEducationID<%=i%>" id="hidEducationID<%=i%>" value="-1" />
<input type="hidden" name="ddlEducationLevel<%=i%>" id="ddlEducationLevel<%=i%>" value="<%=i%>" />

