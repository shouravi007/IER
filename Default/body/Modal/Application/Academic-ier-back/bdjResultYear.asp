<%
ValuePrint intResultDay1, "intResultDay1-1"
ValuePrint intResultDay2, "intResultDay2-1"
ValuePrint intResultDay3, "intResultDay3-1"
ValuePrint intResultDay4, "intResultDay4-1"

If i =1 Then
	 intResultDay = intResultDay1
ElseIf i = 2 Then 
	 intResultDay = intResultDay2
ElseIf i = 3 Then 
	 intResultDay = intResultDay3
ElseIf i = 4 Then 
	 intResultDay = intResultDay4
ElseIf i = 5 Then 
	 intResultDay = intResultDay5

Else
	 intResultDay = 0
	 'response.Write(intYear)
End If


If intResultDay = "" or intResultDay = "S" Then 
	'bgColorYear = " background-color: #FF0000;" 
	intResultDay = 0
Else 
	'intResultDay = 0
End If

'response.Write("intResultDay:"&intResultDay)
ValuePrint intResultDay, "intResultDay-1"

'ValuePrint intResultMonth1, "intResultMonth1-1"
'ValuePrint intResultMonth2, "intResultMonth2-1"
'ValuePrint intResultMonth3, "intResultMonth3-1"
'ValuePrint intResultMonth4, "intResultMonth4-1"

If i =1 Then
	 intResultMonth = intResultMonth1
ElseIf i = 2 Then 
	 intResultMonth = intResultMonth2
ElseIf i = 3 Then 
	 intResultMonth = intResultMonth3
ElseIf i = 4 Then 
	 intResultMonth = intResultMonth4
ElseIf i = 5 Then 
	 intResultMonth = intResultMonth5

Else
	 intResultMonth = 0
	 'response.Write(intYear)
End If


If intResultMonth = "" or intResultMonth = "S" Then 
   intResultMonth = 0
	'bgColorYear = " background-color: #FF0000;" 
Else 
	'intResultMonth = 0
End If


'response.Write("intResultMonth:"&intResultMonth)
ValuePrint intResultMonth, "intResultMonth-1"

'ValuePrint intResultYear1, "intResultYear1-1"
'ValuePrint intResultYear2, "intResultYear2-1"
'ValuePrint intResultYear3, "intResultYear3-1"
'ValuePrint intResultYear4, "intResultYear4-1"

If i =1 Then
	 intResultYear = intResultYear1
ElseIf i = 2 Then 
	 intResultYear = intResultYear2
ElseIf i = 3 Then 
	 intResultYear = intResultYear3
ElseIf i = 4 Then 
	 intResultYear = intResultYear4
ElseIf i = 5 Then 
	 intResultYear = intResultYear5

Else
	 intResultYear = 0
	 'response.Write(intYear)
End If


If intResultYear = "" or intResultYear = "S" Then 
  intResultYear = 0
	'bgColorYear = " background-color: #FF0000;" 
Else 
 ' intResultYear = 0
End If

'response.Write("intResultYear:"&intResultYear)
ValuePrint intResultYear, "intResultYear-1"

%>



  <div class="col-sm-4">
    <label for="degreelvl">Result Publish Date</label>
  </div>
  <div class="col-sm-8">														
    
    <div class="row">
      <div class="col-xs-4">
        <div class="required">

<select name="ddlResultDay<%=i%>" id="ddlResultDay<%=i%>" class="form-control input-sm">
<option value="S" <%if request.Form("ddlResultDay"&i) = "S" then %>selected="selected"<%end if%>>day</option>
<%
For a = 1 To 31
	'response.Write(request.Form("ddlResultDay"&i))
%>
    <option value="<%=a%>" <%if cstr(request.Form("ddlResultDay"&i)) = cstr(a) then %>selected="selected"<%end if%>><%=a%></option>
<%
Next
%>
</select>
    </div>
  </div>
  <div class="col-xs-4">
    <div class="required">
  <%
	'Response.Write("Mon: "&varBirthMon)
	ReDim varBMon(13)
	For b=1 To 12
		If cstr(b)=cstr(request.Form("ddlResultMonth"&i)) Then
			varBMon(b)="selected"
			'Exit For
		Else
			varBMon(b)=""
		End If
	Next
%>
	
<select name="ddlResultMonth<%=i%>" id="ddlResultMonth<%=i%>" class="form-control input-sm">
    <option value="S"<%if request.Form("ddlResultMonth"&i) = "S" Then%> selected="selected"<%End If%>>Mon</option>
    <option value="1" <%=varBMon(1)%>>Jan</option>
    <option value="2" <%=varBMon(2)%>>Feb</option>
    <option value="3" <%=varBMon(3)%>>Mar</option>
    <option value="4" <%=varBMon(4)%>>Apr</option>
    <option value="5" <%=varBMon(5)%>>May</option>
    <option value="6" <%=varBMon(6)%>>Jun</option>
    <option value="7" <%=varBMon(7)%>>Jul</option>
    <option value="8" <%=varBMon(8)%>>Aug</option>
    <option value="9" <%=varBMon(9)%>>Sep</option>
    <option value="10" <%=varBMon(10)%>>Oct</option>
    <option value="11" <%=varBMon(11)%>>Nov</option>
    <option value="12" <%=varBMon(12)%>>Dec</option>
</select>

        </div>
  </div>
  <div class="col-xs-4" >
<div class="required">
<select name="ddlResultYear<%=i%>" id="ddlResultYear<%=i%>" class="form-control input-sm">
	<option value="S" >year</option>
<%	For j=CInt(Year(Date))  to (CInt(Year(Date))-18) Step -1
%>
	<option value="<%=j%>" <%If cstr(request.Form("ddlResultYear"&i)) = cstr(j) Then%> selected='selected'<%End If%>><%=j%></option>
<%
Next
%>
</select> <!--<label id="ddlResult<%'=i%>" style="color:#FF0000;">*</label>-->

</div>
            </div>
           </div>
         </div>
       