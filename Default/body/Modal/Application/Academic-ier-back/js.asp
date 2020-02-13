<script>

function createGrd_k(myobj, place)
{
		
	objResultPoint = document.getElementById("txtResultPoint"+place);
	objScale = document.getElementById("ddlCGPAScale"+place);
	//alert(objResultPoint + objScale)
	cgpa  =  "cgpa"+place;
	scale = "scale"+place;
	//alert(cgpa +scale );
	
	
	if(myobj.value == "0")
	{
	  	document.getElementById(cgpa).style.display = "block";
	  	document.getElementById(scale).style.display = "block";
	  
		objResultPoint.placeholder = "0.00";
		objResultPoint.value = "";
		objResultPoint.maxLength = 5 ;
		document.getElementById('lblcgpa'+place).innerHTML = "CGPA (0.00)";
	    objResultPoint.style.width = "100%";		
	   // document.getElementById('lblpercentsign'+place).style.display = "none;";
		
	}
	else if(myobj.value == "-1" || myobj.value == "12")
	{
	  document.getElementById(cgpa).style.display = "none";
	  document.getElementById(scale).style.display = "none";
	  
	  objResultPoint.value = "";
	  objScale.value = "-1" ; 
	  objResultPoint.style.width = "100%";
	  //document.getElementById('lblpercentsign'+place).style.display = "none;";	  
	}
	else if(myobj.value == "15")
	{
	  //document.getElementById("txtResultPoint"+place).style.display = "block";
	  //document.getElementById("ddlCGPAScale"+place).style.display = "none";
	  document.getElementById(cgpa).style.display = "none";
	  document.getElementById(scale).style.display = "none";
	  
	  objScale.value = "-1" ; 
	  //objResultPoint.placeholder = "100";
	  objResultPoint.value = "";
	  objResultPoint.maxLength = 5 ;
	  //document.getElementById('lblcgpa'+place).innerHTML = "Marks (60-100)";
	 // objResultPoint.style.width = "50%";
	 // document.getElementById('lblpercentsign'+place).style.display = "block";
	  
	  //alert("Please give your marks in percentage \n Please do not use percentages(%) sign");
	}
	else if(myobj.value == "14")
	{
	  document.getElementById(cgpa).style.display = "none";
	  document.getElementById(scale).style.display = "none";
	  objScale.value = "-1" ; 
	  //objResultPoint.placeholder = "59.99";
	  objResultPoint.value = "";
	  objResultPoint.maxLength = 5 ;
	  //document.getElementById('lblcgpa'+place).innerHTML = "Marks (45-59.99)";
	 // objResultPoint.style.width = "50%";
	 // document.getElementById('lblpercentsign'+place).style.display = "block";
	  
	  //alert("Please give your marks in percentage \n Please do not use percentages(%) sign");
	}

	return;

}


function createGrd(myobj, place)
{
		
	objResultPoint = document.getElementById("txtResultPoint"+place);
	objScale = document.getElementById("ddlCGPAScale"+place);
	//alert(objResultPoint + objScale)
	cgpa  =  "cgpa"+place;
	scale = "scale"+place;
	//alert(cgpa +scale );
	
	
	if(myobj.value == "0")
	{
	  	document.getElementById(cgpa).style.display = "block";
	  	document.getElementById(scale).style.display = "block";
	  
		objResultPoint.placeholder = "0.00";
		objResultPoint.value = "";
		objResultPoint.maxLength = 5 ;
		if(place > 2 )
		{
		  document.getElementById('lblcgpa'+place).innerHTML = "CGPA (0.00)";
		}
		else
		{
		  document.getElementById('lblcgpa'+place).innerHTML = "GPA (0.00)";
		}
	    objResultPoint.style.width = "100%";		
	   // document.getElementById('lblpercentsign'+place).style.display = "none;";
		
	}
	else if(myobj.value == "-1" || myobj.value == "12")
	{
	  document.getElementById(cgpa).style.display = "none";
	  document.getElementById(scale).style.display = "none";
	  
	  objResultPoint.value = "";
	  objScale.value = "-1" ; 
	  objResultPoint.style.width = "100%";
	  //document.getElementById('lblpercentsign'+place).style.display = "none;";	  
	}
	else if(myobj.value == "15")
	{
	  //document.getElementById("txtResultPoint"+place).style.display = "block";
	  //document.getElementById("ddlCGPAScale"+place).style.display = "none";
	  document.getElementById(cgpa).style.display = "block";
	  document.getElementById(scale).style.display = "none";
	  
	  objScale.value = "-1" ; 
	  objResultPoint.placeholder = "100";
	  objResultPoint.value = "";
	  objResultPoint.maxLength = 5 ;
	  
	  
	  document.getElementById('lblcgpa'+place).innerHTML = "Marks (60-100)";
	 // objResultPoint.style.width = "50%";
	 // document.getElementById('lblpercentsign'+place).style.display = "block";
	  
	  alert("Please give your marks in percentage \n Please do not use percentages(%) sign");
	}
	else if(myobj.value == "14")
	{
	  document.getElementById(cgpa).style.display = "block";
	  document.getElementById(scale).style.display = "none";
	  objScale.value = "-1" ; 
	  objResultPoint.placeholder = "59.99";
	  objResultPoint.value = "";
	  objResultPoint.maxLength = 5 ;
	  document.getElementById('lblcgpa'+place).innerHTML = "Marks (45-59.99)";
	 // objResultPoint.style.width = "50%";
	 // document.getElementById('lblpercentsign'+place).style.display = "block";
	  
	  alert("Please give your marks in percentage \n Please do not use percentages(%) sign");
	}

	return;

}



function LoadJubject(myobj, place)
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
		document.getElementById("ddlSubject"+place).style.display="block";			
		document.getElementById("ddlResult"+place).style.display = "block";
		document.getElementById("txtResultPoint"+place).style.display = "block";
		document.getElementById("ddlCGPAScale"+place).style.display = "block";
		
		$('#maj1'+place).show();
		$('#row_id_div_district'+place).show();
		$('#row_id_div_result'+place).show();
		$('#row_id_div_resultpoint'+place).show();
		$('#row_id_div_institute'+place).show();
		$('#txtOthers'+place).show();
	}
	else if(strValue == "HSC" || strValue == "Alim" || strValue == "Business Management" || strValue == "Diploma" || strValue == "Equivalent")
	{
		document.getElementById("al").style.display = "none";
		document.getElementById("ddlSubject"+place).style.display="block";			
		document.getElementById("ddlResult"+place).style.display = "block";
		document.getElementById("txtResultPoint"+place).style.display = "block";
		document.getElementById("ddlCGPAScale"+place).style.display = "block";
		
		$('#maj1'+place).show();
		$('#row_id_div_district'+place).show();
		$('#row_id_div_result'+place).show();
		$('#row_id_div_resultpoint'+place).show();
		$('#row_id_div_institute'+place).show();
		$('#txtOthers'+place).show();							
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
		document.getElementById("ddlResult"+place).style.display = "none";
		document.getElementById("txtResultPoint"+place).style.display = "none";
		document.getElementById("ddlCGPAScale"+place).style.display = "none";
		document.getElementById("ddlSubject"+place).style.display="none";
		
		$('#row_id_div_institute'+place).show();					
		$('#row_id_div_district'+place).show();
		$('#row_id_div_resultpoint'+place).hide();
		$('#row_id_div_result'+place).hide();

		$('#maj1'+place).hide();
		$('#txtOthers'+place).hide();							
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
		document.getElementById("ddlResult"+place).style.display = "none";
		document.getElementById("txtResultPoint"+place).style.display = "none";
		document.getElementById("ddlCGPAScale"+place).style.display = "none";		
		document.getElementById("ddlSubject"+place).style.display="none";			
		
		$('#row_id_div_institute'+place).show();		
		$('#row_id_div_district'+place).show();
		$('#row_id_div_resultpoint'+place).hide();
		$('#row_id_div_result'+place).hide();
		$('#maj1'+place).hide();
		$('#txtOthers'+place).hide();
			
	
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
</script>