 <script>
 function LoadResultOption(myobj, place)
 {
	     strValue = myobj.value;
	 
		 if( strValue == "O Level" || strValue == "A Level" )
		 {
			 objResult = "spn_result"+place;
			 document.getElementById(objResult).innerHTML =  ""; 
		     document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' class='form-control input-sm'  onChange='return createGrd_Edit(this,"+place+");'><option value='-1' selected='selected'>Select</option><option value='0'>Grade</option></select> ";
			 
		 }	 
 }
 
 function LoadDegree_Edit(myobj, place)
{
	objDegree = "spnDegree"+place;
	objResult = "spnResult"+place;
	strValue = myobj.value;
	
	arrSSC = ["SSC","Dakhil","O Level","Vocational","Equivalent"];
	arrHSC = ["HSC","Alim","Business Management","A Level","Diploma","Equivalent"];
	arrBS = ["BA(Pass)","BSS(Pass)","BSc(Pass)","BBS(Pass)","BCom(Pass)","B.Ed(Pass)","LLB(Pass)","Fazil","BBA","BA(Hons.)","BBS(Hons.)","BCom(Hons.)","BSc(Hons.)","BSc(Engg)","BSS(Hons.)","B.Ed(Hons.)","LLB(Hons.)"];
	
	/*,"BA(Pass)","BSS(Pass)","BSc(Pass)","BBS(Pass)","BCom(Pass)","B.Ed(Pass)"*/
	
	arrMS = ["MA","MS","MSc","MSS","MCom","MBS","MBA","MBM","M.Ed","MSc(Engg)","L.L.M.","Kamil"];
	//alert(objDegree);
	
	if(strValue == 1)
	{
		optionSSC = "";
		for(i=0; i<arrSSC.length; i++)
		{
			optionSSC = optionSSC + "<option value = '"+arrSSC[i]+"'>"+arrSSC[i]+"</option>";
		}
		document.getElementById(objDegree).innerHTML = "" ;
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"'   class='form-control input-sm'  onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionSSC+"</select> ";
	
		document.getElementById("spnDoctorate"+place).innerHTML = "";
	}
	else if(strValue == 2)
	{
		optionHSC = "";
		for(i=0; i<arrHSC.length; i++)
		{
			optionHSC = optionHSC + "<option value = '"+arrHSC[i]+"'>"+arrHSC[i]+"</option>";
		}		
		
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"'   class='form-control input-sm'  onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionHSC+"</select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
	}
	else if(strValue == 3)
	{
		
		optionBS = "";
		for(i=0; i<arrBS.length; i++)
		{
			optionBS = optionBS + "<option value = '"+arrBS[i]+"'>"+arrBS[i]+"</option>";
		}
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"'   class='form-control input-sm'  onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionBS+"</select> ";
		
		document.getElementById("spnDoctorate"+place).innerHTML = "";
	}
	else if(strValue == 4 || strValue == 5)
	{
		optionMS = "";
		for(i=0; i<arrMS.length; i++)
		{
			optionMS = optionMS + "<option value = '"+arrMS[i]+"'>"+arrMS[i]+"</option>";
		}
		
		
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"'   class='form-control input-sm'  onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionMS+"</option></select> ";
		
		document.getElementById("spnDoctorate"+place).innerHTML = "";
	}

	else
	{
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"'   class='form-control input-sm'  ><option value='S' selected='selected'>Select</option></select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
	}
	
}
	
 
 </script>
 
                        <div class="col-sm-6">
                            <label for="firstName">
                                <h4>Education Level
                                    <span>*</span>
                                </h4>
                            </label>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group degree-level">  
                <input type="hidden" name="hidEducationID1" id="hidEducationID1" value="<%=intEduID%>" />
                <%'=Request.Form("ddlEducationLevel1")&intEduID%>
                            
                             <select name="ddlEducationLevel1" id="ddlEducationLevel1" class="<%=frmcon%>" onChange="return LoadDegree_Edit(this,1);">

<option value="S"<%If bytEduLevel = "S" Then%> selected="selected" <%End If%>>Select  Education Level </option>

<%If bytEduLevel = 4 Then%>
	<option value="4" <%If bytEduLevel = "4" Then%> selected="selected" <%End If%>>Post Graduation</option>
<%ElseIf bytEduLevel = 3 Then%>        
	<option value="3" <%If bytEduLevel = "3" Then%> selected="selected" <%End If%>>Graduation</option>
<%ElseIf bytEduLevel = 2 Then%>     
	<option value="2" <%If bytEduLevel = "2" Then%> selected="selected" <%End If%>>Higher Secondary</option>
<%ElseIf bytEduLevel = 1 Then%>
	<option value="1" <%If bytEduLevel = "1"  Then%> selected="selected" <%End If%>>Secondary</option>
<%Else%>
    <option value="1" <%If bytEduLevel = "1"  Then%> selected="selected" <%End If%>>Secondary</option>
    <option value="2" <%If bytEduLevel = "2" Then%> selected="selected" <%End If%>>Higher Secondary</option>
    <option value="3" <%If bytEduLevel = "3" Then%> selected="selected" <%End If%>>Graduation</option>
    <option value="4" <%If bytEduLevel = "4" Then%> selected="selected" <%End If%>>Post Graduation</option>
<%End If%>
</select>
                            </div>
                        </div>