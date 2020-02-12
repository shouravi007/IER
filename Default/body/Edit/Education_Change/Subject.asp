<script>
function putValueInHidden_Edit(myobj, place)
{
	objSubjectHidden = "ddlSubject"+place+"hidden";
	
	strValue = myobj.value;
	//alert(strValue);
    document.getElementById(objSubjectHidden).value = strValue;
}

function LoadOthers_Edit(myobj, place)
{
	objOthers = "spnOthers"+place;
	strValue = myobj.value;
	if(strValue == "Others")
	{
		document.getElementById(objOthers).style.display = "block";
		//alert(document.getElementById('txtOthers1').value);
		document.getElementById('txtOthers1').value = "";
	}
	else
	{
		document.getElementById(objOthers).style.display = "none";
		document.getElementById('txtOthers1').value = "";
	}
}

</script>

<div class="col-sm-6">
    <label for="major1" id="lblmajor1">
        <h4>Major 1
            <span>*</span>
        </h4>
    </label>
</div>
<div class="col-sm-6">

<select id="ddlSubject1" name="ddlSubject1" class="form-control"  onchange="putValueInHidden_Edit(this,1); LoadOthers_Edit(this,1);">

<option value="S"<%If strSubject = "S" Then%>selected="selected"<%End If%>>Select</option>

<%if subject_others = True or subject_others = 1 or subject_others = "1" then%>

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
            <%For sg = 0 To Ubound(arrSub,2) %>
            <option value="<%=arrSub(1,sg)%>"><%=arrSub(1,sg)%></option>
            <%Next%>
             <option value="Others">Others</option>
        <%'ElseIf bytEduLevel = 4 or bytEduLevel = 5 Then %>
            <%'For s = 0 To Ubound(arrSubjectPostGrad,1) %>
           <!-- <option value="<%'=arrSubjectPostGrad(s)%>"><%'=arrSubjectPostGrad(s)%></option>-->
            <%'Next%>
        <%End if%>

<%Else%>
        
		<%If bytEduLevel = 1 Then%>
            <%For s = 0 To Ubound(arrSubjectNameSec,1) %>
            <option value="<%=arrSubjectNameSec(s)%>"<%If Cstr(strSubject) = Cstr(arrSubjectNameSec(s)) Then %>selected="selected"<%End If%>><%=arrSubjectNameSec(s)%>
            </option>
            <%Next%>
        <%ElseIf bytEduLevel = 2 then %>    
           <%For s = 0 To Ubound(arrSubjectNameHigh,1) %>
            <option value="<%=arrSubjectNameHigh(s)%>"<%If Cstr(strSubject) = Cstr(arrSubjectNameHigh(s)) Then%>selected="selected"<%End If%>><%=arrSubjectNameHigh(s)%></option>
            <%Next%>
            
        <%ElseIf bytEduLevel = 3 or bytEduLevel = 4 then %>
            <%For sg = 0 To Ubound(arrSub,2) %>
            <option value="<%=trim(arrSub(1,sg))%>"<%If Cstr(strSubject) = Cstr(trim(arrSub(1,sg))) Then %>selected="selected"<%End If%>><%=arrSub(1,sg)%>
            </option>
            <%Next%>
             <option value="Others">Others</option>
        <%'ElseIf bytEduLevel = 4 or bytEduLevel = 5 Then %>
            <%'For s = 0 To Ubound(arrSubjectPostGrad,1) %>
            <!--<option value="<%'=arrSubjectPostGrad(s)%>"<%'If Cstr(strSubject) = Cstr(arrSubjectPostGrad(s)) Then %>selected="selected"<%'End If%>><%'=arrSubjectPostGrad(s)%>
            </option>-->
            <%'Next%>
        <%End if%>
        
<%end if%>
</select>
<%
If subject_others = true or subject_others = 1 or subject_others = "1" then
	varDisplay = "display:block;"
ElseIf strOthers <> "" then
	varDisplay = "display:block;"
Else
	varDisplay = "display:none;"
End If

'If Request.Form("txtOthers1") <> "" Then
'	strSubject = Request.Form("txtOthers1")
'End If

%>
<div id="spnOthers1" style="<%if subject_others = true or subject_others = 1 or subject_others = "1" then%>display:block<%Else%>display:none;<%End If%>">
  <input placeholder="type here major 1" class="form-control input-sm" name='txtOthers1' type='text' id='txtOthers1' value="<%=strSubject%>" />

</div>

</div>
