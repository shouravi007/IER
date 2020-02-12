<script>
function createGrd_Edit(myobj, place)
{
	objResultPoint = document.getElementById("txtResultPoint"+place);
	objScale = document.getElementById("ddlCGPAScale"+place);

	cgpa  =  "cgpa"+place;
	scale = "scale"+place;
	if(myobj.value == "0")
	{
	  document.getElementById(cgpa).style.display = "block";
	  document.getElementById(scale).style.display = "block";
	  
		objResultPoint.value = "0.00";
		objResultPoint.maxLength = 5 ;
	}
	else if(myobj.value == "S" || myobj.value == "12" || myobj.value == "14"|| myobj.value == "15")
	{
	  document.getElementById(cgpa).style.display = "none";
	  document.getElementById(scale).style.display = "none";
	  
	  objResultPoint.value = "";
	  objScale.value = "-1" ; 
	}
	else
	{
	  document.getElementById(cgpa).style.display = "block";
	  document.getElementById(scale).style.display = "none";
	  objScale.value = "-1" ; 
      objResultPoint.value = "0.00";
	  objResultPoint.maxLength = 5 ;

	}
	return;

}


</script>

<div class="col-sm-6">
    <label for="result" id="lblresult">
        <h4>Result
            <span>*</span>
        </h4>
    </label>
</div>
<div class="col-sm-6">
     <div id="spn_result1">   
     <select  name="ddlResult1" id="ddlResult1" onchange="return createGrd_Edit(this, 1);"  class="form-control" readonly>
<option value="S" <%If strResult = "S" Then%> selected="selected" <%End If%> >Select</option>
<%
If bytEduLevel = 1 or bytEduLevel = 2 then 
%>
<option value="0" <%If strResult = "0" Then%> selected="selected" <%End If%>>Grade</option>
<%
Else
%>
<option value="0" <%If strResult = "0" Then%> selected="selected" <%End If%>>Grade</option>
<option value="15" <%If strResult = "15" Then%> selected="selected" <%End If%>>First Class/Div</option>
<!--<option value="14" <%'If strResult = "14" Then%> selected="selected" <%'End If%>>Second Class/Div</option>-->
<%
End If
%>
<!--<option value="12" <%'If strResult = "12" Then%> selected="selected" <%'End If%>>Appeared</option>-->
<!--<option value="13" <%'If strResult = "13" Then%> selected="selected" <%'End If%>>Third Class/Div</option>-->

</select>

<%
'	If strResult = 0 Then
%>
<!--							<input type='text' name='PERCENT<%'=intEduIndex+1%>' id='PERCENT<%'=intEduIndex+1%>' value='<%'=strPercent%>' size='5' maxlength='4' style='width:20px;font-size:7pt;background-color:#EEEEEE' onKeyPress='return resultPoint(this, event)' class="<%'=frmcon%>" />-->
<%	
'	End If
%>
<input type="hidden" id="ddlResult1_old" name="ddlResult1_old" value="<%=strResult%>" />
    </div>
</div>
