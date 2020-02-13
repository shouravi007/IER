    <div class="row">
		<div class="col-sm-12">
			<div class="btn-wrap">
				<button class="btn-style" type="submit" onclick="return EmptyAcademicEdit();">Save Change</button> 
				<button class="btn-style-2" type="button" onclick="PageSubmit_Cancel();">Cancel</button>
                <!--return EmptyAcademicEdit();-->
			<input name="count_edu" id="count_edu" type="hidden" value="<%=intUBEdu+1%>" /> 
<!--include File = 'HiddenValueNew.asp' -->  
</form>
			</div>
		    </div>
	       </div>
       </div>
   </div>
</div>



<form  id="frmCancel" name="frmCancel" method="post" action="?<%=Encode("Location=Edit&FormAction=academic")%>">

<!--#include File = 'HiddenValueNew.asp' -->     

</form> 


<script type="text/javascript">

var bgcolor = "#800000";
var fgcolor = "#FFF";
var txtcolor = "#000";





function LoadJubject_Edit_1(myobj, place)
{
	//alert(system);

	objSubject = "spnSubject"+place;
	strValue = myobj.value;
	//alert(strValue + document.getElementById("ol").style.visibility);
		
	objResultPoint = document.getElementById("txtResultPoint"+place)
	objScale = document.getElementById("ddlCGPAScale"+place);
			
	objTxtLevel_O1 = document.getElementById("txtLevel_O1");
	objTxtLevel_O2 = document.getElementById("txtLevel_O2");
	objTxtLevel_O3 = document.getElementById("txtLevel_O3");
	objTxtLevel_O4 = document.getElementById("txtLevel_O4");
	objTxtLevel_O5 = document.getElementById("txtLevel_O5");
	objTxtLevel_A1 = document.getElementById("txtLevel_A1");
	objTxtLevel_A2 = document.getElementById("txtLevel_A2");
	
	if(strValue == "SSC" || strValue == "Dakhil" || strValue == "Vocational" || strValue == "Equivalent")
	{
		document.getElementById("ol").style.display = "none";
		
		document.getElementById("spn_subject").innerHTML = "<div class='col-sm-6'><label for='major1' id='lblmajor1'> <h4>Major 1 <span>*</span></h4> </label></div><div class='col-sm-6'><select class='form-control input-sm' name='ddlSubject"+place+"' id='ddlSubject"+place+"' onchange='putValueInHidden(this,"+place+");LoadOthers(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='Science' selected='selected'>Science</option><option value='Humanities'>Humanities</option><option value='Commerce'>Commerce</option><option value='Business Studies'>Business Studies</option><option value='Others'>Others</option> </select><div style='display:none;' id='spnOthers"+place+"'>	<input class='form-control input-sm' name='txtOthers"+place+"' type='text' id='txtOthers"+place+"' value='' placeholder='type here major 1'></div>"
		
		
		document.getElementById("spn_result").innerHTML = "<div class='col-sm-6'><label for='result' id='lblresult'><h4>Result  <span>*</span></h4> </label></div><div class='col-sm-6'><div id='spn_result"+place+"'> <select class='form-control input-sm' id='ddlResult"+place+"' onchange='return createGrd(this,"+place+");' name='ddlResult"+place+"' style=''><option value='-1' selected=''>Select</option><option value='0'>Grade</option></select></div><div id='sp_grd"+place+"'></div></div>"
		
		document.getElementById("spn_marks").innerHTML = "<div class='col-sm-6'><label for='resultPoint' id='lblresultpoint'><h4> CGPA <span>*</span> </h4> </label></div> <div class='col-sm-6'><div id='cgpa"+place+"' class='form-group' > <input class='form-control input-sm' type='text' name='txtResultPoint"+place+"' id='txtResultPoint"+place+"' size='3' maxlength='5' value='' onkeypress='return resultPoint(this, event)'></div>"
 
 
 
     document.getElementById("spn_cgpascale").innerHTML = " <div class='col-sm-6'><label for='cgpascla' id='lblcgpascale'> <h4>CGPA Scale<span>*</span></h4> </label> </div><div class='col-sm-6'> <div id='scale"+place+"' class='form-group'> <select class='form-control input-sm' id='ddlCGPAScale"+place+"' name='ddlCGPAScale"+place+"'><option value='-1' selected='selected'>Out of</option><option value='5'>5</option> </select></div>"
		
	}
	else if(strValue == "HSC" || strValue == "Alim" || strValue == "Business Management" || strValue == "Diploma" || strValue == "Equivalent")
	{
		document.getElementById("al").style.display = "none";
		document.getElementById("spn_subject").innerHTML = "<div class='col-sm-6'><label for='major1' id='lblmajor1'> <h4>Major 1 <span>*</span></h4> </label></div><div class='col-sm-6'><select class='form-control input-sm' name='ddlSubject"+place+"' id='ddlSubject"+place+"' onchange='putValueInHidden(this,"+place+");LoadOthers(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='Science' selected='selected'>Science</option><option value='Humanities'>Humanities</option><option value='Commerce'>Commerce</option><option value='Business Studies'>Business Studies</option><option value='Others'>Others</option> </select><div style='display:none;' id='spnOthers"+place+"'>	<input class='form-control input-sm' name='txtOthers"+place+"' type='text' id='txtOthers"+place+"' value='' placeholder='type here major 1'></div>"
		
		
		document.getElementById("spn_result").innerHTML = "<div class='col-sm-6'><label for='result' id='lblresult'><h4>Result  <span>*</span></h4> </label></div><div class='col-sm-6'><div id='spn_result"+place+"'> <select class='form-control input-sm' id='ddlResult"+place+"' onchange='return createGrd(this,"+place+");' name='ddlResult"+place+"' style=''><option value='-1' selected=''>Select</option><option value='0'>Grade</option></select></div><div id='sp_grd"+place+"'></div></div>"
		
		document.getElementById("spn_marks").innerHTML = "<div class='col-sm-6'><label for='resultPoint' id='lblresultpoint'><h4> CGPA <span>*</span> </h4> </label></div> <div class='col-sm-6'><div id='cgpa"+place+"' class='form-group' > <input class='form-control input-sm' type='text' name='txtResultPoint"+place+"' id='txtResultPoint"+place+"' size='3' maxlength='5' value='' onkeypress='return resultPoint(this, event)'></div>"
 
 
 
     document.getElementById("spn_cgpascale").innerHTML = " <div class='col-sm-6'><label for='cgpascla' id='lblcgpascale'> <h4>CGPA Scale<span>*</span></h4> </label> </div><div class='col-sm-6'> <div id='scale"+place+"' class='form-group'> <select class='form-control input-sm' id='ddlCGPAScale"+place+"' name='ddlCGPAScale"+place+"'><option value='-1' selected='selected'>Out of</option><option value='5'>5</option> </select></div>"
	 						
	}				
	else if(strValue == "O Level")
	{					
		if(system=='trustbank')
		{	
			alert("Grade Point Average (GPA) will be calculated by averaging the grade points of the five best grades for O Level and the two best grades for A Level.\n\nFollowing is the table for O/A Level Grade and it's equivalent Grade Point-\n\nGrade at O/A level ---------- Equivalent Grade Point\n          A                    ----------               5");	
		}
		
		else
		{
			alert("Grade Point Average (GPA) will be calculated by averaging the grade points of the five best grades for O Level and the two best grades for A Level.\n\nFollowing is the table for O/A Level Grade and it's equivalent Grade Point-\n\nGrade at O/A level ---------- Equivalent Grade Point\n          A                    ----------               5\n          B                    ----------               4\n          C                    ----------               3\n          D                    ----------               2");	
		
		}
		document.getElementById("ol").style.display = "block";
//        document.getElementById("spn_subject").innerHTML ="";
//        document.getElementById("spn_result").innerHTML ="";
//        document.getElementById("spn_marks").innerHTML="";
//        document.getElementById("spn_cgpascale").innerHTML ="";	
		
		
		document.getElementById("ddlResult"+place).style.display = "none";
		document.getElementById("txtResultPoint"+place).style.display = "none";
		document.getElementById("ddlCGPAScale"+place).style.display = "none";
		document.getElementById("ddlSubject"+place).style.display="none";

		$('#lblmajor1').hide();
		$('#lblresult').hide();
		$('#lblresultpoint').hide();
		$('#lblcgpascale').hide();		
		
		
		
		

	}
	else if(strValue == "A Level")
	{
		if(system=='trustbank')
		{	
			alert("Grade Point Average (GPA) will be calculated by averaging the grade points of the five best grades for O Level and the two best grades for A Level.\n\nFollowing is the table for O/A Level Grade and it's equivalent Grade Point-\n\nGrade at O/A level ---------- Equivalent Grade Point\n          A                    ----------               5");	
		}
		
		else
		{	
		alert("Grade Point Average (GPA) will be calculated by averaging the grade points of the five best grades for O Level and the two best grades for A Level.\n\nFollowing is the table for O/A Level Grade and it's equivalent Grade Point-\n\nGrade at O/A level ---------- Equivalent Grade Point\n          A                    ----------               5\n          B                    ----------               4\n          C                    ----------               3\n          D                    ----------               2");
		
		}
		
		document.getElementById("al").style.display = "block";
//        document.getElementById("spn_subject").innerHTML ="";
//        document.getElementById("spn_result").innerHTML ="";
//        document.getElementById("spn_marks").innerHTML="";
//        document.getElementById("spn_cgpascale").innerHTML ="";
		
		
		document.getElementById("ddlResult"+place).style.display = "none";
		document.getElementById("txtResultPoint"+place).style.display = "none";
		document.getElementById("ddlCGPAScale"+place).style.display = "none";
		document.getElementById("ddlSubject"+place).style.display="none";

		$('#lblmajor1').hide();
		$('#lblresult').hide();
		$('#lblresultpoint').hide();
		$('#lblcgpascale').hide();		
		
		
			
	}

	/*else if(strValue == "MBM")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"'  class='form-control input-sm' onchange='putValueInHidden(this,"+place+"); return LoadOthers(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='Bank Management'>Bank Management</option><option value = 'Others'>Others</option></select> ";
		//document.getElementById("spnOthers"+place).innerHTML = "";
	}*/

	else if(strValue == "Others")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"'  class='form-control input-sm'    onchange='putValueInHidden(this,"+place+"); return LoadOthers(this,"+place+");'><option value='S' selected='selected'>Select</option></select> ";
	}
	else
	{
		$('#ol').hide();
	}
	
}








function LoadJubject_Edit(myobj, place)
{
	//alert(system);

	objSubject = "spnSubject"+place;
	strValue = myobj.value;
	//alert(strValue + document.getElementById("ol").style.visibility);
		
	objResultPoint = document.getElementById("txtResultPoint"+place)
	objScale = document.getElementById("ddlCGPAScale"+place);
			
	objTxtLevel_O1 = document.getElementById("txtLevel_O1");
	objTxtLevel_O2 = document.getElementById("txtLevel_O2");
	objTxtLevel_O3 = document.getElementById("txtLevel_O3");
	objTxtLevel_O4 = document.getElementById("txtLevel_O4");
	objTxtLevel_O5 = document.getElementById("txtLevel_O5");
	objTxtLevel_A1 = document.getElementById("txtLevel_A1");
	objTxtLevel_A2 = document.getElementById("txtLevel_A2");
	
	if(strValue == "SSC" || strValue == "Dakhil" || strValue == "Vocational" || strValue == "Equivalent")
	{
		document.getElementById("ol").style.display = "none";
		
		document.getElementById("spn_subject").innerHTML = "<div class='col-sm-6'><label for='major1' id='lblmajor1'> <h4>Major 1 <span>*</span></h4> </label></div><div class='col-sm-6'><select class='form-control input-sm' name='ddlSubject"+place+"' id='ddlSubject"+place+"' onchange='putValueInHidden(this,"+place+");LoadOthers(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='Science' selected='selected'>Science</option><option value='Humanities'>Humanities</option><option value='Commerce'>Commerce</option><option value='Business Studies'>Business Studies</option><option value='Others'>Others</option> </select><div style='display:none;' id='spnOthers"+place+"'>	<input class='form-control input-sm' name='txtOthers"+place+"' type='text' id='txtOthers"+place+"' value='' placeholder='type here major 1'></div>"
		
		
		document.getElementById("spn_result").innerHTML = "<div class='col-sm-6'><label for='result' id='lblresult'><h4>Result  <span>*</span></h4> </label></div><div class='col-sm-6'><div id='spn_result"+place+"'> <select class='form-control input-sm' id='ddlResult"+place+"' onchange='return createGrd(this,"+place+");' name='ddlResult"+place+"' style=''><option value='-1' selected=''>Select</option><option value='0'>Grade</option></select></div><div id='sp_grd"+place+"'></div></div>"
		
		document.getElementById("spn_marks").innerHTML = "<div class='col-sm-6'><label for='resultPoint' id='lblresultpoint'><h4> CGPA <span>*</span> </h4> </label></div> <div class='col-sm-6'><div id='cgpa"+place+"' class='form-group' > <input class='form-control input-sm' type='text' name='txtResultPoint"+place+"' id='txtResultPoint"+place+"' size='3' maxlength='5' value='' onkeypress='return resultPoint(this, event)'></div>"
 
 
 
     document.getElementById("spn_cgpascale").innerHTML = " <div class='col-sm-6'><label for='cgpascla' id='lblcgpascale'> <h4>CGPA Scale<span>*</span></h4> </label> </div><div class='col-sm-6'> <div id='scale"+place+"' class='form-group'> <select class='form-control input-sm' id='ddlCGPAScale"+place+"' name='ddlCGPAScale"+place+"'><option value='-1' selected='selected'>Out of</option><option value='5'>5</option> </select></div>"
		
	}
	else if(strValue == "HSC" || strValue == "Alim" || strValue == "Business Management" || strValue == "Diploma" || strValue == "Equivalent")
	{
		document.getElementById("al").style.display = "none";
		document.getElementById("spn_subject").innerHTML = "<div class='col-sm-6'><label for='major1' id='lblmajor1'> <h4>Major 1 <span>*</span></h4> </label></div><div class='col-sm-6'><select class='form-control input-sm' name='ddlSubject"+place+"' id='ddlSubject"+place+"' onchange='putValueInHidden(this,"+place+");LoadOthers(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='Science' selected='selected'>Science</option><option value='Humanities'>Humanities</option><option value='Commerce'>Commerce</option><option value='Business Studies'>Business Studies</option><option value='Others'>Others</option> </select><div style='display:none;' id='spnOthers"+place+"'>	<input class='form-control input-sm' name='txtOthers"+place+"' type='text' id='txtOthers"+place+"' value='' placeholder='type here major 1'></div>"
		
		
		document.getElementById("spn_result").innerHTML = "<div class='col-sm-6'><label for='result' id='lblresult'><h4>Result  <span>*</span></h4> </label></div><div class='col-sm-6'><div id='spn_result"+place+"'> <select class='form-control input-sm' id='ddlResult"+place+"' onchange='return createGrd(this,"+place+");' name='ddlResult"+place+"' style=''><option value='-1' selected=''>Select</option><option value='0'>Grade</option></select></div><div id='sp_grd"+place+"'></div></div>"
		
		document.getElementById("spn_marks").innerHTML = "<div class='col-sm-6'><label for='resultPoint' id='lblresultpoint'><h4> CGPA <span>*</span> </h4> </label></div> <div class='col-sm-6'><div id='cgpa"+place+"' class='form-group' > <input class='form-control input-sm' type='text' name='txtResultPoint"+place+"' id='txtResultPoint"+place+"' size='3' maxlength='5' value='' onkeypress='return resultPoint(this, event)'></div>"
 
 
 
     document.getElementById("spn_cgpascale").innerHTML = " <div class='col-sm-6'><label for='cgpascla' id='lblcgpascale'> <h4>CGPA Scale<span>*</span></h4> </label> </div><div class='col-sm-6'> <div id='scale"+place+"' class='form-group'> <select class='form-control input-sm' id='ddlCGPAScale"+place+"' name='ddlCGPAScale"+place+"'><option value='-1' selected='selected'>Out of</option><option value='5'>5</option> </select></div>"
	 						
	}				
	else if(strValue == "O Level")
	{					
		if(system=='trustbank')
		{	
			alert("Grade Point Average (GPA) will be calculated by averaging the grade points of the five best grades for O Level and the two best grades for A Level.\n\nFollowing is the table for O/A Level Grade and it's equivalent Grade Point-\n\nGrade at O/A level ---------- Equivalent Grade Point\n          A                    ----------               5");	
		}
		
		else
		{
			alert("Grade Point Average (GPA) will be calculated by averaging the grade points of the five best grades for O Level and the two best grades for A Level.\n\nFollowing is the table for O/A Level Grade and it's equivalent Grade Point-\n\nGrade at O/A level ---------- Equivalent Grade Point\n          A                    ----------               5\n          B                    ----------               4\n          C                    ----------               3\n          D                    ----------               2");	
		
		}
		document.getElementById("ol").style.display = "block";
        document.getElementById("spn_subject").innerHTML ="";
        document.getElementById("spn_result").innerHTML ="";
        document.getElementById("spn_marks").innerHTML="";
        document.getElementById("spn_cgpascale").innerHTML ="";	
		
		
//		document.getElementById("ddlResult"+place).style.display = "none";
//		document.getElementById("txtResultPoint"+place).style.display = "none";
//		document.getElementById("ddlCGPAScale"+place).style.display = "none";
//		document.getElementById("ddlSubject"+place).style.display="none";
//
//		$('#lblmajor1').hide();
//		$('#lblresult').hide();
//		$('#lblresultpoint').hide();
//		$('#lblcgpascale').hide();		
//		
		
		
		

	}
	else if(strValue == "A Level")
	{
		if(system=='trustbank')
		{	
			alert("Grade Point Average (GPA) will be calculated by averaging the grade points of the five best grades for O Level and the two best grades for A Level.\n\nFollowing is the table for O/A Level Grade and it's equivalent Grade Point-\n\nGrade at O/A level ---------- Equivalent Grade Point\n          A                    ----------               5");	
		}
		
		else
		{	
		alert("Grade Point Average (GPA) will be calculated by averaging the grade points of the five best grades for O Level and the two best grades for A Level.\n\nFollowing is the table for O/A Level Grade and it's equivalent Grade Point-\n\nGrade at O/A level ---------- Equivalent Grade Point\n          A                    ----------               5\n          B                    ----------               4\n          C                    ----------               3\n          D                    ----------               2");
		
		}
		
		document.getElementById("al").style.display = "block";
        document.getElementById("spn_subject").innerHTML ="";
        document.getElementById("spn_result").innerHTML ="";
        document.getElementById("spn_marks").innerHTML="";
        document.getElementById("spn_cgpascale").innerHTML ="";
		
		
//		document.getElementById("ddlResult"+place).style.display = "none";
//		document.getElementById("txtResultPoint"+place).style.display = "none";
//		document.getElementById("ddlCGPAScale"+place).style.display = "none";
//		document.getElementById("ddlSubject"+place).style.display="none";
//
//		$('#lblmajor1').hide();
//		$('#lblresult').hide();
//		$('#lblresultpoint').hide();
//		$('#lblcgpascale').hide();		
//		
		
			
	}

	/*else if(strValue == "MBM")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"'  class='form-control input-sm' onchange='putValueInHidden(this,"+place+"); return LoadOthers(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='Bank Management'>Bank Management</option><option value = 'Others'>Others</option></select> ";
		//document.getElementById("spnOthers"+place).innerHTML = "";
	}*/

	else if(strValue == "Others")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"'  class='form-control input-sm'    onchange='putValueInHidden(this,"+place+"); return LoadOthers(this,"+place+");'><option value='S' selected='selected'>Select</option></select> ";
	}
	else
	{
		$('#ol').hide();
	}
	
}








function PageSubmit_Cancel()
{
	document.getElementById('frmCancel').submit(); 
}

function EmptyAcademicEdit()
{
	strJobId = document.getElementById("jobid").value;
	try
	{	
		var EduUB = 1;
		var i;
		
	// For loop starts here.
	for(i = 1; i <= EduUB; i++)
	{
		// Variable declare and initialization.

		var strEducationLevel = "-1";
		var strDegreeName = "S";
		var strPassingYear = "S";
		var strInstitute = "";
		//var strAcademicDist = "S";
		var strUniversity = "S";
		var strResult = "-1";
		var strSubject = "S";
		var strSubject2 = "S";
	//	var strScale = "-1";

		// Object declare and initialization.
		objEducationLevel = document.getElementById("ddlEducationLevel"+i);
		
		objDegreeName = document.getElementById("ddlDegreeName"+i);
		//alert(objDegreeName.value);
		objPassingYear = document.getElementById("ddlPassingYear"+i);
		
		objInstitute = document.getElementById("txtInstitute"+i);
		objAcademicDist = document.getElementById("ddlAcademicDist"+i);
		//alert(objAcademicDist.value);
		objUniversity = document.getElementById("ddlUniversity"+i);
		
		objResult = document.getElementById("ddlResult"+i);
		//alert(objResult.value);
		
		
		//objScale = document.getElementById("ddlCGPAScale"+i);
				
		// Value of html controls.
		strEducationLevel = objEducationLevel.value;
		strDegreeName = objDegreeName.value;
		strPassingYear = objPassingYear.value;
		strInstitute = objInstitute.value;
		strAcademicDist = objAcademicDist.value;
		strUniversity = objUniversity.value;
		strResult = objResult.value;
		//strSubject = objSubject.value;
				
/*		if(strEducationLevel>3)
		{
			if(strResult = 12)
			{
				//appeared and post grad no need result publish date
			}
			else
			{
				objResultDay = document.getElementById("ddlResultDay"+i);
				objResultMonth = document.getElementById("ddlResultMonth"+i);
				objResultYear = document.getElementById("ddlResultYear"+i);
				
			}
		}		
*/
		if(strDegreeName=='O Level' || strDegreeName=='A Level')
		{
		}	
		else
		{		
		
			objResultPoint = document.getElementById("txtResultPoint"+i);			
			objScale = document.getElementById("ddlCGPAScale"+i);
			objSubject = document.getElementById("ddlSubject"+i);

			strCgpaOrmarks = objResultPoint.value;
			strScale = objScale.value;
			strSubject = objSubject.value;
		}		
		
		    var x = 0 ; 
			if(strEducationLevel == 1)
			{
			 var Education = "Secondary";
			}
			else if(strEducationLevel == 2)
			{
				var Education = "Higher secondary";
				x = x + 20;
			}
			else if(strEducationLevel == 3)
			{
				var Education = "Graduation";
				x = x + 20;
				//strAcademicDist = 0;
			}
			else if(strEducationLevel == 4)
			{
				var Education = "Post graduation";
				x = x + 20;
				//strAcademicDist = 0;
			}
			else if(strEducationLevel == 5)
			{
				var Education = "Post graduation/doctorate";	
				x = x + 20;
			}						
			
			if(strEducationLevel==1)
		    { 
				var level = "Secondary";
				var BoardUni = "Name of Board";
			}
			
			else if(strEducationLevel==2)
			{
				var level = "Higher Secondary";
				var BoardUni = "Name of  Board";
			}
			
			else if(strEducationLevel==3)
			{
				var level = "Graduation";
				var BoardUni = "Name of  University";			
			}
			
			else if(strEducationLevel==4)
			{
				var level = "Post Graduation";
			 	var BoardUni = "Name of  University";
			}
			
			else if(strEducationLevel==5)
			{
				var level = "Post Graduation/Doctorate";
				var BoardUni = "Name of  University";
			}
			else{}			
			
	    ubound = 1   
		Req = "True";
	
			
			   if ( CheckValidation(Req,objEducationLevel,"select","-1","1", " Level  of  "+level+"  in  ACADEMIC QUALIFICATION",1600 ) == false)
				{
					   return false;
					   break;	   
				}					
			
			   if ( CheckValidation(Req,objDegreeName,"select","S","1", "Exam/Degree title of "+level+" level in  ACADEMIC QUALIFICATION",1600 ) == false)
				{
					   return false;
					   break;	   
				}
						
				
			   if ( CheckValidation(Req,objPassingYear,"select","S","1", "Passing year of "+level+" level in  ACADEMIC QUALIFICATION",1600) == false)
				{
					   return false;		
					   break;	   
				}
				
//  till grad result publish date 
/*if (strEducationLevel <= 3)
{
	
					
			   if ( CheckValidation(Req,objResultDay,"select","S","1", "Result publish date of day for "+level+" level in  ACADEMIC QUALIFICATION",1375) == false)
				{
					   return false;		
					   break;	   
				}		
	
			   if ( CheckValidation(Req,objResultMonth,"select","S","1", "Result publish date of month for "+level+" level in  ACADEMIC QUALIFICATION",1375) == false)
				{
					   return false;		
					   break;	   
				}	
				
			
			   if ( CheckValidation(Req,objResultYear,"select","S","1", "Result publish date of year for "+level+" level in  ACADEMIC QUALIFICATION",1375) == false)
				{
					   return false;		
					   break;	   
				}	
						  
				
			   if ( CheckValidation(Req,objResultDay,"text","Text","2", "Result publish date of day for "+level+" level in  ACADEMIC QUALIFICATION",1375) == false)
				{
					   return false;		
					   break;	   
				}		
	
			   if ( CheckValidation(Req,objResultMonth,"text","Text","2", "Result publish date of month for "+level+" level in  ACADEMIC QUALIFICATION",1375) == false)
				{
					   return false;		
					   break;	   
				}	
				
				
			   if ( CheckValidation(Req,objResultYear,"text","Text","4", "Result publish date of year for "+level+" level in  ACADEMIC QUALIFICATION",1375) == false)
				{
					   return false;		
					   break;	   
				}	

}	
*/	
			   if ( CheckValidation(Req,objInstitute,"text","Text","255", "Institute  of "+level+" level in  ACADEMIC QUALIFICATION",1600) == false)
				{
					   return false;		
					   break;	   
				}				

				if (i<3)
				{
					if ( CheckValidation(Req,objAcademicDist,"select","S","1", "District of "+level+" level in  ACADEMIC QUALIFICATION",1600) == false)
					{
						   return false;		
						   break;	   
					}
				}
			
					
				if(strEducationLevel>2)
				{
					var eduMsg= "University of "+level+" level in ACADEMIC QUALIFICATION";
				}
				else
				{
					var eduMsg= "Board of "+level+" level in ACADEMIC QUALIFICATION"; 	
				}
					
			   if ( CheckValidation(Req,objUniversity,"select","S","1", eduMsg ,1600) == false)
				{
					   return false;		
					   break;	   
				}					
				if(strUniversity == "Others" || strUniversity == "Foreign")
				{
				   if ( CheckValidation(Req,document.getElementById("txtUniversity"+i),"text","Text","255", "Others/Foreign Board or University name in "+level+" level in ACADEMIC QUALIFICATION",1600  ) == false)
					{
						   return false;		
						   break;	   
					}	
					
					try
					{
					   var objUniversityOthers = document.getElementById("txtUniversity"+i).value ;
					
					   if (typeof(objUniversityOthers) == "undefined" ||typeof(objUniversityOthers) == null )
					   {
						
					   }
					}
					
					catch(ex)
					{
					}
				}
				
				if( strUniversity == "Foreign")
				{
					
					 if ( CheckValidation(Req,document.getElementById("ddlCountry"+i),"select","Select","1", " Campus location "+level+" level in ACADEMIC QUALIFICATION",1600 ) == false)
					{
						   return false;		
						   break;	   
					}				
				}
				
				if(strDegreeName=='O Level' || strDegreeName=='A Level')
				{
						
				}	
				else							
				{	
				 
					if(CheckValidation(Req,document.getElementById("ddlResult"+i),"select","-1","2", "Result of "+level+" level in ACADEMIC QUALIFICATION",1600 ) == false)
					{
						 return false;		
						 break;	   
					}
				}
			
			//*********** o level validation*******
			
/*			if(strJobId==1)
			{
				var resultRangeSSCHSC = 4;
			}
			else if(strJobId==2)
			{
				var resultRangeSSCHSC = 3;
			}
*/			
			if(system=="ksb")
			{
				var resultRangeSSCHSC = 2.81;
			}
			else
			{
				var resultRangeSSCHSC = 4;
			}

							
			if(strDegreeName=='O Level')
			{
				var sum_O = 0;
				var avg_O;
				for (var counter1 = 1; counter1<=5; counter1++)
				{
					objOlevel_sub = document.getElementById("txtSubO"+counter1)
					objOlevel_grade = document.getElementById("txtLevel_O"+counter1)	
					
					if(objOlevel_sub.value=='' || objOlevel_sub.value == null)
					{
						alert("O LEVEL subject "+counter1+" can not be empty");
						objOlevel_sub.focus();
						objOlevel_sub.style.backgroundColor = bgcolor;
						return false;
					}
					else
					{
						objOlevel_sub.style.backgroundColor = fgcolor;																	
					}					
					if(objOlevel_grade.value == '')
					{
						alert("O LEVEL grade "+counter1+" should be selected");
						objOlevel_grade.focus();
						objOlevel_grade.style.backgroundColor = bgcolor;
						return false;						
					}
					else
					{
						objOlevel_grade.style.backgroundColor = fgcolor;
						sum_O = sum_O + parseFloat(objOlevel_grade.value);	
					}																		
				} // end of for o level				
				avg_O = sum_O/5;
				//alert(avg_O);				
				
				if( parseFloat(avg_O) < parseFloat(resultRangeSSCHSC))
				{	
					alert("CGPA of O Level in Academic Qualification can't be Less than "+resultRangeSSCHSC+".");
					objOlevel_grade.focus();
					objOlevel_grade.style.backgroundColor = bgcolor;
					return false;
				}				
				
			} // O LEVE FINISH
			//alert(strDegreeName);
			
			//*********** A level validation*******
			
			if(strDegreeName== 'A Level')
			{
				var sum_A = 0;
				var avg_A;				
				
				for (var AL = 1; AL<=2; AL++)
				{
					objAlevel_sub = document.getElementById("txtSubA"+AL);
					objAlevel_grade = document.getElementById("txtLevel_A"+AL);
					
					if(objAlevel_sub.value=='' || objAlevel_sub.value == null)
					{
						alert("A LEVEL subject "+AL+" can not be empty");
						objAlevel_sub.focus();
						objAlevel_sub.style.backgroundColor = bgcolor;
						return false;
					}
					else
					{
						objAlevel_sub.style.backgroundColor = fgcolor;
					}					
					if(objAlevel_grade.value=='')
					{
						alert("A LEVEL grade "+AL+" can not be empty");
						objAlevel_grade.focus();
						objAlevel_grade.style.backgroundColor = bgcolor;
						return false;
					}
					else
					{
						objAlevel_grade.style.backgroundColor = fgcolor;
						sum_A = sum_A + parseFloat(objAlevel_grade.value);
					}
			
				} // END FOR LOOP A LEVEL
				avg_A = sum_A/2;
				//alert(avg_A); 
					
				if( parseFloat(avg_A) < parseFloat(resultRangeSSCHSC))
				{//alert("cgpa");
					alert("CGPA of A Level in Academic Qualification can't be Less than "+resultRangeSSCHSC+".");
					objAlevel_grade.focus();
					objAlevel_grade.style.backgroundColor = bgcolor;
					return false;
				}
				
			}
				
				// *** first division and second division*********
		         
				 	if(objResult.value == "15" || objResult.value == "14")// *** first div and second div
					{
						if (system == "ksb")
						{}
						else
						{
						
							objResultPoint = document.getElementById("txtResultPoint"+i);
							
							try
							{
							 var marks = objResultPoint.value;
							 //alert(marks);
							}
							catch(ex)
							{
							}
							if (CheckValidation(Req,objResultPoint,"text","Text","5", "Marks of "+level+" level in ACADEMIC QUALIFICATION",1600) == false)
							{
								   
								  return false;		
								  break;	   
							}
							
							if(MarksTypeInputValidation(Req, objResult.value, marks, 100, "Marks  of  row is  "+i,1600,objResult) == false)
							{
								
								return false;
								break;	   
							}						
						
						} // other sys
					}				
					else if(objResult.value == "0")// *** grade point*******
					{
						objResultPoint = document.getElementById("txtResultPoint"+i);
						strCgpaOrmarks = objResultPoint.value;					
					
						objScale = document.getElementById("ddlCGPAScale"+i);
						strScale = objScale.value;	
						
						try
						{
						 var marks = objResultPoint.value;
						}
						
						catch(ex)
						{
						}
						if ( CheckValidation(Req,objResultPoint,"text","Text","5", "CGPA of "+level+" level in ACADEMIC QUALIFICATION",1600) == false)
						{
						   
						   return false;		
						   break;	   
						}
						else
						{
						  if ( CheckValidation(Req,objScale,"select","-1","5", "CGPA Scale  "+level+" level in ACADEMIC QUALIFICATION",1600) == false)
							{
							   return false;		
							   break;	   
							}
						
						   if(CGPATypeInputValidation_Edit(Req,marks,strScale,"CGPA of  row is  "+i,objResultPoint,i,strJobId,strEducationLevel) == false )
							{
							
								return false;
								 break;	   
							}
						}
								   
			      	}
				

//********** subject************

			if(strDegreeName=='O Level' || strDegreeName=='A Level')
			{
					
			}	
			else							
			{	
				
								
			 	if ( CheckValidation(Req,objSubject,"select","S","1", "Subject of "+level+" level in  ACADEMIC QUALIFICATION",1600) == false)
				{
					   return false;		
					   break;	   
				}
				else
				{				
					if(objSubject.value == "Others")
					{
						   if ( CheckValidation(Req,document.getElementById("txtOthers"+i),"text","Text","255", "Major 1 of "+level+" level in   ACADEMIC QUALIFICATION",1600 ) == false)
							{
								   return false;		
								   break;	   
							}	
							
							try
							{
								var Subject_Others = document.getElementById("txtOthers"+i).value;
							}
							catch(ex)
							{
								
							objSubject.selectedIndex = "0";
							alert("Please select subject/major again");
							objSubject.style.borderColor = "Orange";
							objSubject.style.color = txtcolor;
							
							objSubject.focus();
							return false; 
								
							}
					}	
				}
		

            // if ( strEducationLevel > 2 ) 
			 // {
				//objSubject2 = document.getElementById("ddlSubject2"+i);
				//objSubject2 = document.getElementById("ddlSubject2");
				
				//strSubject2 = objSubject2.value;				
			   
			  // if ( CheckValidation("False",objSubject2,"text","Text","255", "Subject of "+level+" level in  ACADEMIC QUALIFICATION",1600) == false)
//				{
//					   return false;		
//					   break;	   
//				}
				//else
//				{				
//					if(objSubject2.value == "Others")
//					{
//						   if ( CheckValidation("True",document.getElementById("txtOthers2"+i),"text","Text","255", "Major 2 of "+level+" level in   ACADEMIC QUALIFICATION",1600 ) == false)
//							{
//								   return false;		
//								   break;	   
//							}	
//							
//							try
//							{
//								var Subject_Others2 = document.getElementById("txtOthers2"+i).value;
//							}
//							catch(ex)
//							{
//								
//								objSubject2.selectedIndex = "0";
//								alert("Please select major 2 again");
//								objSubject2.style.borderColor = "Orange";
//								objSubject2.style.color = txtcolor;
//							
//								objSubject2.focus();
//								return false; 
//								
//							}
//					}	
//				}
		
			 // }
			  
			} //normaly subject 
		
	   }
		
	}
	catch(ex)
	{   if(ex.message=="Cannot read property 'style' of undefined")
		{
			alert("Check your marks properly.");
			return false;
		}			
		ErrorMessage("614", ex, "1" ,url + " ::  CommonFooterActionAcademic.asp  :: function EmptyAcademic_Edit", "sjibl");
	}

	// For loop ends here.
	return true;

}

</script>