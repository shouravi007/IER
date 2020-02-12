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


%>
<input type="hidden" name="hidEducationID<%=i%>" id="hidEducationID<%=i%>" value="-1" />
       <select class="form-control input-sm" name="ddlEducationLevel<%=i%>" id="ddlEducationLevel<%=i%>" style="<%=bgColorEduLevel%>" onChange="return LoadDegree(this,<%=i%>);">
          <option value="-1">Select</option>
<%
flag_edulevel = False
If arrEduLevel(0, 0) <> "Nothing" Then
	newI = i-1
	For eduIndex = 0 To UBound(arrEduLevel, 2)
		flag_edulevel = True
		If newI = 0 Then%>
			  <option value="<%=arrEduLevel(0, newI)%>" <%If cstr(strEduLevel) = cstr(1) Then%> selected <%End If%>> <%=arrEduLevel(1, newI)%></option>
			  <%
			Exit For
		ElseIf i-1=1 Then
		%>
			  <option value="<%=arrEduLevel(0, newI)%>"<%If cstr(strEduLevel) = cstr(2) Then%> selected <%End If%> ><%=arrEduLevel(1, newI)%></option>
			  <%
			Exit For				
		ElseIf i-1=2 Then
		%>
			  <option value="<%=arrEduLevel(0, newI)%>"<%If cstr(strEduLevel) = cstr(3) Then%> selected <%End If%> ><%=arrEduLevel(1, newI)%></option>
			  <%
			Exit For
		ElseIf i-1=3 Then
		%>
			  <option value="<%=arrEduLevel(0, newI)%>"<%If cstr(strEduLevel) = cstr(4) Then%> selected <%End If%> ><%=arrEduLevel(1, newI)%></option>
			  <%
			Exit For				
		ElseIf i-1=4  Then
		%>
		 <option value="<%=arrEduLevel(0, newI)%>"<%If strEduLevel5 = 5 Then%> selected <%End If%>><%=arrEduLevel(1, newI)%></option>
		 <%	  
			Exit For
		End If
	Next
End If
%>

</select>