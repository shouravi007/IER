<script>
function putValueInHidden_Edit2(myobj, place)
{
	objSubjectHidden2 = "ddlSubject"+place+"hidden";
	strValue2 = myobj.value;
    document.getElementById(objSubjectHidden2).value = strValue2;
}

function LoadOthers_Edit2(myobj, place)
{
	objOthers2 = "spnOthers"+place;
	strValue2 = myobj.value;
	if(strValue2 == "Others")
	{
		document.getElementById(objOthers2).style.display = "block";
		document.getElementById('txtOthers2').value = "";
	}
	else
	{
		document.getElementById(objOthers2).style.display = "none";
		document.getElementById('txtOthers2').value = "";
	}
}

</script>

<div class="col-sm-6">
    <label for="firstName">
        <h4>Major 2
            <!--<span>*</span>-->
        </h4>
    </label>
</div>
<div class="col-sm-6">

<select id="ddlSubject2" name="ddlSubject2" class="form-control" onchange="putValueInHidden_Edit2(this,2); LoadOthers_Edit2(this,2);">

<option value="S" selected="selected">Select</option>
 <%if isnull(subject_others2) = False  then%>
   
   <%if subject_others2 = true or subject_others2 = 1 or subject_others2 = "1" then%>
	
    <option value="Others" selected="selected">Others</option>
	
		<%If bytEduLevel = 1 Then%>
            <%For s = 0 To Ubound(arrSubjectNameSec,1) %>
            <option value="<%=arrSubjectNameSec(s)%>"><%=arrSubjectNameSec(s)%></option>
            <%Next%>
        <%ElseIf bytEduLevel = 2 then %>    
            <%For s = 0 To Ubound(arrSubjectNameHigh,1) %>
            <option value="<%=arrSubjectNameHigh(s)%>"><%=arrSubjectNameHigh(s)%></option>
            <%Next%> 
        <%ElseIf bytEduLevel = 3 or bytEduLevel = 4 then %>
            <%
			'For s = 0 To Ubound(arrSubjectGrad,1) 
			For sg = 0 To Ubound(arrSub,2) 
			%>
           <!-- <option value="<%'=arrSubjectGrad(s)%>"><%'=arrSubjectGrad(s)%></option>-->
            <option value="<%=arrSub(1,sg)%>"><%=arrSub(1,sg)%></option>
		   <%Next%>
            <option value="Others">Others</option>
           
        <%'ElseIf bytEduLevel = 4 or bytEduLevel = 5 Then %>
            <%'For s = 0 To Ubound(arrSubjectPostGrad,1) %>
            <!--<option value="<%'=arrSubjectPostGrad(s)%>"><%'=arrSubjectPostGrad(s)%></option>-->
            <%'Next%>
        <%End if%>

	<%Else%>
    
		<%If bytEduLevel = 1 Then%>
            <%For s = 0 To Ubound(arrSubjectNameSec,1) %>
            <option value="<%=arrSubjectNameSec(s)%>"<%If Cstr(strSubject2) = Cstr(arrSubjectNameSec(s)) Then %>selected="selected"<%End If%>><%=arrSubjectNameSec(s)%>
            </option>
            <%Next%>
        <%ElseIf bytEduLevel = 2 then %> 
            <%For s = 0 To Ubound(arrSubjectNameHigh,1) %>
            <option value="<%=arrSubjectNameHigh(s)%>"<%If Cstr(strSubject2) = Cstr(arrSubjectNameHigh(s)) Then %>selected="selected"<%End If%>><%=arrSubjectNameHigh(s)%></option>
            <%Next%>       
        <%ElseIf bytEduLevel = 3 or bytEduLevel = 4 then %>
            <%For sg = 0 To Ubound(arrSub,2) %>
            <option value="<%=arrSub(1,sg)%>"<%If Cstr(strSubject2) = Cstr(arrSub(1,sg)) Then %>selected="selected"<%End If%>><%=arrSub(1,sg)%>
            </option>
            <%Next%>
             <option value="Others">Others</option>
        <%'ElseIf bytEduLevel = 4 or bytEduLevel = 5 Then %>
            <%'For s = 0 To Ubound(arrSubjectPostGrad,1) %>
            <!--<option value="<%'=arrSubjectPostGrad(s)%>"<%'If Cstr(strSubject2) = Cstr(arrSubjectPostGrad(s)) Then %>selected="selected"<%'End If%>><%'=arrSubjectPostGrad(s)%>
            </option>-->
            <%'Next%>
        <%End if%>

	<%End if%>
<%End if%>

</select>
<%
'response.Write("form back"&Request.Form("txtOthers2") &"<BR> "& subject_others2&" db : "&strSubject2 )

If subject_others2 = true or subject_others2 = 1 or subject_others2 = "1" then
	varDisplay2 = "display:block;"
ElseIf strOthers2 <> "" then
	varDisplay2 = "display:block;"
Else
	varDisplay2 = "display:none;"
End If

'
'If Request.Form("txtOthers2") <> "" Then
'	strSubject2 = Request.Form("txtOthers2")
'End If

%>
<div id="spnOthers2" style="<%if subject_others2 = true or subject_others2 = 1 or subject_others2 = "1" then%>display:block<%Else%>display:none;<%End If%>">	
    <input placeholder="type here major 2" class="form-control input-sm" name='txtOthers2' type='text' id='txtOthers2' value="<%=strSubject2%>" />

</div>

</div>
