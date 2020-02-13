// JavaScript Document

$(document).ready(function(){
	
	$('#File1').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True",document.getElementById('ersPhoto').value,"Photo",document.getElementById('bdjPhoto').value,"100"," passport size scanned photo", 1790) == false)
		{
			data_ok = false;
		 //return false;		   
		}
		else
		{
		  hide_error_message("File1");
		}
	})	
	
	$('#File_Certificate').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True",document.getElementById('ersCertificate').value,"Certificate","","100"," scanned trascript/certificate ", 1790) == false)
		{
			data_ok = false;
			   //return false;		   
		}
		else{
		  hide_error_message('File_Certificate');
		}
	})
	$('#txtName_bn').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True",document.getElementById('ersPhoto').value,"Photo",document.getElementById('bdjPhoto').value,"100"," passport size scanned photo", 1790) == false)
		{
			data_ok = false;
		 //return false;		   
		}
		else
		{
		  hide_error_message("File1");
		}		
		
		if ( CheckValidation("True",document.getElementById('ersCertificate').value,"Certificate","","100"," scanned trascript/certificate ", 1790) == false)
		{
			data_ok = false;
			   //return false;		   
		}
		else{
		  hide_error_message('File_Certificate');
		}
				
		if ( CheckValidation("True","txtName_bn","text","Text","160","Applicant's Name (Bengali) ", 1900) == false)
		{
			data_ok = false;
		}
		else
		{
		  hide_error_message("txtName_bn");
		}
	})
	$('#txtFirstName').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","txtFirstName","text","Text","80","Applicant's Name", 1900) == false)
		{
			data_ok = false;
		}
		else
		{
		  hide_error_message("txtFirstName");
		}
	})
	
	$('#txtLastName').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","txtLastName","text","Text","40","Last Name", 1900) == false)
		{
			data_ok = false;
		}
		else
		{
		  hide_error_message("txtLastName");
		}
	})

	$('#txtFatherName').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","txtFatherName","text","Text","70","Father's name", 1900) == false)
		{
			data_ok = false;
		}
		else
		{
		  hide_error_message("txtFatherName");
		}	
	
	})
	
	$('#txtMotherName').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","txtMotherName","text","Text","70","Mother's name", 1900) == false)
		{
			data_ok = false;
		}
		else
		{
		  hide_error_message("txtMotherName");
		}
	})
	$('#txtFathersProfession').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","txtFathersProfession","text","Text","100","Father's profession", 1900) == false)
		{
			data_ok = false;
		}
		else
		{
		  hide_error_message("txtFathersProfession");
		}
	})
	$('#txtMothersProfession').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","txtMothersProfession","text","Text","100","Mother's profession", 1900) == false)
		{
			 data_ok = false;
		}
		else
		{
		  hide_error_message("txtMothersProfession");
		}
	})
	
$('#ddlGender').on('keyup keypress blur change', function(e) {
    if ( CheckValidation("True","ddlGender" ,"select","S","1"," Gender", 1760) == false)
	{
		data_ok = false;
	}		
	else
	{
	  hide_error_message("ddlGender");
	}
	
  if(document.getElementById('ddlGender').value != 'S')
   {	
    if ( CheckValidation("True","ddlGender" ,"text","Text","10"," Gender", 1760) == false)
	{
		 data_ok = false;
	}		
	else
	{
	  hide_error_message("ddlGender");
	}
   }
  })
  
  
	$('#ddlDateOfBirthDay').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","ddlDateOfBirthDay" ,"select","S","1"," Day in Date of Birth", 1850) == false)
		{
			data_ok = false;
		}		
		else
		{
			hide_error_message("ddlDateOfBirthDay");
		}
	})
	$('#ddlDateOfBirthMonth').on('keyup keypress blur change', function(e) {
    if ( CheckValidation("True","ddlDateOfBirthMonth" ,"select","S","1"," Month in Date of Birth", 1840) == false)
	{
		data_ok = false;
	}		
	else
	{
	    hide_error_message("ddlDateOfBirthMonth");
	}
	})
	
	$('#ddlDateOfBirthYear').on('keyup keypress blur change', function(e) {
   if ( CheckValidation("True","ddlDateOfBirthYear" ,"select","S","1"," Year in Date of Birth", 1830) == false)
	{
		data_ok = false;
	}	
	else
	{
	    hide_error_message("ddlDateOfBirthYear");
	}
	})



	if(document.getElementById("ddlDateOfBirthDay").value !='S' && document.getElementById("ddlDateOfBirthMonth").value !='S' && document.getElementById("ddlDateOfBirthYear").value !='S' )
	{
	$('#ddlDateOfBirthYear').on('keyup keypress blur change', function(e) {
		// e.type is the type of event fired
		if(validatedate(dob) == false)
		{
			data_ok = false;
		}
		else
		{
		  hide_error_message('ddlDateOfBirth');
		}
		
	   if(CheckAge(deadlineDate, Age) == false )
	   {
		   data_ok = false;
	   }
	   else
	   {
		  hide_error_message('ddlDateOfBirth');
	   }		
		
		
	})		
		
	}
 	else
	{
	 // hide_error_message("ddlDateOfBirthYear");
	}
 
	

	$('#ddlMaritalStatus').on('keyup keypress blur change', function(e) {
	 if ( CheckValidation("True","ddlMaritalStatus" ,"select","S","1"," Marital status ", 1800) == false)
	{
		data_ok = false;
	}	
	else
	{
	  hide_error_message("ddlMaritalStatus");
	}
	})
	$('#ddlReligion').on('keyup keypress blur change', function(e) {
    if ( CheckValidation("True","ddlReligion" ,"select","S","20"," Religion", 1730) == false)
	{
		data_ok = false;
	}		
	else
	{
	  hide_error_message("ddlReligion");
	}
	})
	
	
	$('#txtNationality').on('keyup keypress blur change', function(e) {
	if ( CheckValidation("True","txtNationality","text","Text","20","Nationality", 1790) == false)
	{
		data_ok = false;
	}
	else
	{
	  hide_error_message("txtNationality");
	}
	})
	
	$('#txtContactPhone').on('keyup keypress blur change', function(e) {
	if ( CheckValidation("True","txtContactPhone","text","Text","11","Contact Mobile", 1780) == false)
	{
		data_ok = false;
	}
	else
	{
	  hide_error_message("txtContactPhone");
	}
	
	 if(document.getElementById("txtContactPhone").value != "")
	  {
		if(document.getElementById("txtContactPhone").length<11 || document.getElementById("txtContactPhone").length>11 )	
		{
			ShowValidateMsg("Invalid Contact Mobile. \n Contact Mobile Must be 11 digits \n please remove +88 or - if has  ","txtContactPhone",288);		
			data_ok = false;
		}
		else
		{
		   hide_error_message('txtContactPhone');
		}
	  }	
	
	})
	
	
	$('#txtContactPhone').on('keyup keypress blur change', function(e) {
	if (CheckValidation("True","txtCellPhone","text","Text","11","Emergency Contact Number", 1780) == false)
	{
		data_ok = false;
	}
	else
	{
	    hide_error_message('txtContactPhone');
	}
	})
	
	
$('#txtCellPhone').on('keyup keypress blur change', function(e) {
 if(document.getElementById("txtCellPhone").value != "")
  {	
	if(document.getElementById("txtCellPhone").length<11 || document.getElementById("txtCellPhone").length>11 )	
	{
        ShowValidateMsg("Invalid Emergency Contact Number. \n Emergency Contact Number Must be 11 digits \n please remove +88 or - if has  ","txtCellPhone",288);		
		data_ok = false;
	}
	else
	{
	    hide_error_message('txtCellPhone');
	}
  }
 })
 
 
	$('#txtContactPhone').on('keyup keypress blur change', function(e) {
  if(document.getElementById('txtContactPhone').value != "" &&  document.getElementById('txtCellPhone').value !="" )
  {
	if (document.getElementById('txtContactPhone').value == document.getElementById('txtCellPhone').value)
	{
		
	    ShowValidateMsg("Contact Mobile & Emergency Contact Number can not be similar.","txtContactPhone",288);		
		data_ok = false;
	}
	else
	{
	    hide_error_message('txtContactPhone');
	}
  }
 })
 
	$('#txtNationalId').on('keyup keypress blur change', function(e) {
	if(document.getElementById("txtNationalId").value != "")
	{
		if(isNaN(document.getElementById("txtNationalId").value ))
		{
			 ShowValidateMsg("National Id should be numeric.","txtNationalId",288);	         data_ok = false;
		}
		else
		{
		 hide_error_message("txtNationalId");
		}
	}
	
    if ( CheckValidation("False","txtNationalId" ,"text","Number","25"," National ID", 1740) == false)
	{
		data_ok = false;
	}
	else
	{
	  hide_error_message("txtNationalId");
	}
			
	})
	
	
	$('#txtEmail').on('keyup keypress blur change', function(e) {
	if (system == "ksb")
	{
		reqEmail = "False";
	}
	else
	{
		reqEmail = "True";	
	}

   if ( CheckValidation(reqEmail,"txtEmail","text","Text","50","Email ",1720) == false)
	{
		data_ok = false;
	}
	else
	{
	  hide_error_message("txtEmail");
	}
	
    if(document.getElementById("txtEmail").value != "" )
	  {
	   if ( CheckValidation(reqEmail,"txtEmail","email","Text","50","Email ",1710) == false)
		{
			data_ok = false;
		}	
		else
		{
		  hide_error_message("txtEmail");
		}
	  }
	  	
	})
	
	$('#txtContactAddress').on('keyup keypress blur change', function(e) {
    if ( CheckValidation("True","txtContactAddress" ,"text","Text","250"," Present  Address", 1700) == false)
	{
		data_ok = false;
	}
	else
	{
	  hide_error_message("txtContactAddress");
	}
	})
	
	$('#txtPermanentAddress').on('keyup keypress blur change', function(e) {
    if ( CheckValidation("True","txtPermanentAddress" ,"text","Text","250","Permanent Address", 1690) == false)
	{
		data_ok = false;
	}
	else
	{
	  hide_error_message("txtPermanentAddress");
	}
	})
	
	$('#txtCurrentOccupation').on('keyup keypress blur change', function(e) {
    if ( CheckValidation("True","txtCurrentOccupation" ,"text","Text","100","Current Occupation", 1690) == false)
	{
		data_ok = false;
	}
	else
	{
	  hide_error_message("txtCurrentOccupation");
	}
	})	
	
	
	
	$('#ddlHomeDistrict2').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","ddlHomeDistrict2" ,"select","S","2"," Present District", 1680) == false)
		{
		data_ok = false;
		  // return false;		   
		}	
		else
		{
		  hide_error_message("ddlHomeDistrict2");
		}
	})
	
	$('#ddlHomeDistrict').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","ddlHomeDistrict" ,"select","S","2"," Home District", 1680) == false)
		{
		data_ok = false;
		  // return false;		   
		}	
		else
		{
		  hide_error_message("ddlHomeDistrict");
		}
	})


	$('#ddlThanaPrmDist').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","ddlThanaPrmDist" ,"select","S","2"," Police Station/Thana of your Home District", 1680) == false)
		{
		 data_ok = false;
		}	
		else
		{
		  hide_error_message("ddlThanaPrmDist");
		}
	})
		
	$('#ddlHomeDistrict2').on('keyup keypress blur change', function(e) {
	  if(document.getElementById("ddlHomeDistrict2").value != "S" )
	  {	
	   if ( CheckValidation("True","ddlHomeDistrict2","text","Text","5","Present  District", 1790) == false)
		{
		 data_ok = false;
		}
		else
		{
		  hide_error_message("ddlHomeDistrict2");
		}
	  }
	 })
	 
	$('#ddlHomeDistrict').on('keyup keypress blur change', function(e) {
     if(document.getElementById("ddlHomeDistrict").value != "S" )
	  {
		if ( CheckValidation("True","ddlHomeDistrict","text","Text","5","Home District", 1790) == false)
		{
		 data_ok = false;
		}
		else
		{
		  hide_error_message("ddlHomeDistrict");
		}
	  }
	})
	
	$('#ddlThanaPrmDist').on('keyup keypress blur change', function(e) {
     if(document.getElementById("ddlThanaPrmDist").value != "S" )
	  {
		if ( CheckValidation("True","ddlThanaPrmDist","text","Text","5","Police Station/Thana of your Home District", 1790) == false)
		{
		 data_ok = false;
		}
		else
		{
		  hide_error_message("ddlThanaPrmDist");
		}
	  }
    })
	
	
	$('#ddlDegreeName1').on('keyup keypress blur change', function(e) {
	   if ( CheckValidation("True","ddlDegreeName1","select","S","1", "Exam/Degree title of Secondary level in  ACADEMIC QUALIFICATION",1368 ) == false)
		{
			   data_ok = false;
		}					
		else
		{
		  hide_error_message("ddlDegreeName1");
		}	
	})
	
	$('#ddlDegreeName2').on('keyup keypress blur change', function(e) {
	   if ( CheckValidation("True","ddlDegreeName2","select","S","1", "Exam/Degree title of Higher Secondary level in  ACADEMIC QUALIFICATION",1368 ) == false)
		{
			   data_ok = false;
		}					
		else
		{
		  hide_error_message("ddlDegreeName2");
		}	
	})
	
	$('#ddlDegreeName3').on('keyup keypress blur change', function(e) {
	   if ( CheckValidation("True","ddlDegreeName3","select","S","1", "Exam/Degree title of Graduation level in  ACADEMIC QUALIFICATION",1368 ) == false)
		{
			   data_ok = false;
		}					
		else
		{
		  hide_error_message("ddlDegreeName3");
		}	
	})
	
	$('#ddlDegreeName4').on('keyup keypress blur change', function(e) {
	   if ( CheckValidation("False","ddlDegreeName4","select","S","1", "Exam/Degree title of Post graduation level in  ACADEMIC QUALIFICATION",1368 ) == false)
		{
			   data_ok = false;
		}					
		else
		{
		  hide_error_message("ddlDegreeName4");
		}	
	})


$('#ddlResult1').on('keyup keypress blur change', function(e) {
					if(CheckValidation("True","ddlResult1","select","-1","2", "Result of Secondary level in ACADEMIC QUALIFICATION",1452 ) == false)
					{
		               data_ok = false;
					}					
					else
					{
					  hide_error_message("ddlResult1");
					}
})

$('#ddlResult2').on('keyup keypress blur change', function(e) {
					if(CheckValidation("True","ddlResult2","select","-1","2", "Result of Higher Secondary level in ACADEMIC QUALIFICATION",1452 ) == false)
					{
		               data_ok = false;
					}					
					else
					{
					  hide_error_message("ddlResult2");
					}
})

$('#ddlResult3').on('keyup keypress blur change', function(e) {
					if(CheckValidation("True","ddlResult3","select","-1","2", "Result of Graduation level in ACADEMIC QUALIFICATION",1452 ) == false)
					{
		               data_ok = false;
					}					
					else
					{
					  hide_error_message("ddlResult3");
					}
})
$('#ddlResult4').on('keyup keypress blur change', function(e) {
					if(CheckValidation("True","ddlResult4","select","-1","2", "Result of Post graduation level in ACADEMIC QUALIFICATION",1452 ) == false)
					{
		               data_ok = false;
					}					
					else
					{
					  hide_error_message("ddlResult4");
					}
})

$('#txtResultPoint1').on('keyup keypress blur change', function(e) {
					if (CheckValidation("True","txtResultPoint1","text","Text","5", "GPA of Secondary level in ACADEMIC QUALIFICATION",1600) == false)
					{
						  data_ok = false;
					
					}					
					else
					{
					  hide_error_message("txtResultPoint1");
					}
})

$('#txtResultPoint2').on('keyup keypress blur change', function(e) {
					if (CheckValidation("True","txtResultPoint2","text","Text","5", "GPA of Higher Secondary level in ACADEMIC QUALIFICATION",1600) == false)
					{
						  data_ok = false;
					
					}					
					else
					{
					  hide_error_message("txtResultPoint2");
					}
})


$('#txtResultPoint3').on('keyup keypress blur change', function(e) {
					if (CheckValidation("True","txtResultPoint3","text","Text","5", "CGPA/Marks of Graduation level in ACADEMIC QUALIFICATION",1600) == false)
					{
						  data_ok = false;
					
					}					
					else
					{
					  hide_error_message("txtResultPoint3");
					}
})


$('#txtResultPoint4').on('keyup keypress blur change', function(e) {
					if (CheckValidation("True","txtResultPoint4","text","Text","5", "CGPA/Marks of Post graduation level in ACADEMIC QUALIFICATION",1600) == false)
					{
						  data_ok = false;
					
					}					
					else
					{
					  hide_error_message("txtResultPoint4");
					}
})

$('#ddlCGPAScale1').on('keyup keypress blur change', function(e) {
					  if ( CheckValidation("True","ddlCGPAScale1","select","-1","5", "GPA Scale of Secondary level in ACADEMIC QUALIFICATION",1620) == false)
						{
							  data_ok = false;
						}					
						else
						{
						  hide_error_message("ddlCGPAScale1");
						}
})

$('#ddlCGPAScale2').on('keyup keypress blur change', function(e) {
					  if ( CheckValidation("True","ddlCGPAScale2","select","-1","5", "GPA Scale of Higher Secondary level in ACADEMIC QUALIFICATION",1620) == false)
						{
							  data_ok = false;
						}					
						else
						{
						  hide_error_message("ddlCGPAScale2");
						}
})


$('#ddlCGPAScale3').on('keyup keypress blur change', function(e) {
					  if ( CheckValidation("True","ddlCGPAScale3","select","-1","5", "CGPA Scale  Graduation level in ACADEMIC QUALIFICATION",1620) == false)
						{
							  data_ok = false;
						}					
						else
						{
						  hide_error_message("ddlCGPAScale3");
						}
})

$('#ddlCGPAScale4').on('keyup keypress blur change', function(e) {
					  if ( CheckValidation("True","ddlCGPAScale4","select","-1","5", "CGPA Scale  Post graduation level in ACADEMIC QUALIFICATION",1620) == false)
						{
							  data_ok = false;
						}					
						else
						{
						  hide_error_message("ddlCGPAScale4");
						}
})




	
   $('#ddlPassingYear1').on('keyup keypress blur change', function(e) {
	   
			   if ( CheckValidation("True","ddlPassingYear1","select","S","1", "Passing year of Secondary level in  ACADEMIC QUALIFICATION",1375) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("ddlPassingYear1");
				}		   
   })

   $('#ddlPassingYear2').on('keyup keypress blur change', function(e) {
	   
			   if ( CheckValidation("True","ddlPassingYear2","select","S","1", "Passing year of Higher Secondary level in  ACADEMIC QUALIFICATION",1375) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("ddlPassingYear2");
				}		   
   })

   $('#ddlPassingYear3').on('keyup keypress blur change', function(e) {
	   
			   if ( CheckValidation("True","ddlPassingYear3","select","S","1", "Passing year of Graduation level in  ACADEMIC QUALIFICATION",1375) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("ddlPassingYear3");
				}		   
   })


   $('#ddlPassingYear4').on('keyup keypress blur change', function(e) {
	   
			   if ( CheckValidation("True","ddlPassingYear4","select","S","1", "Passing year of Post graduation level in  ACADEMIC QUALIFICATION",1375) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("ddlPassingYear4");
				}		   
   })

//if(document.getElementById("ddlDegreeName1").value == 'O Level')
//{
$('#txtSubO1').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","txtSubO1","text","Text","50","O LEVEL subject 1 ", 1790) == false)
		{
		 data_ok = false;
		}
		else
		{
		  hide_error_message("txtSubO1");
		}
})


$('#txtLevel_O1').on('keyup keypress blur change', function(e) {
			   if ( CheckValidation("True","txtLevel_O1","select","","1", "O LEVEL grade 1 ",1375) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("txtLevel_O1");
				}	
})

$('#txtSubO2').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","txtSubO2","text","Text","50","O LEVEL subject 2 ", 1790) == false)
		{
		 data_ok = false;
		}
		else
		{
		  hide_error_message("txtSubO2");
		}
})


$('#txtLevel_O2').on('keyup keypress blur change', function(e) {
			   if ( CheckValidation("True","txtLevel_O2","select","","1", "O LEVEL grade 2 ",1375) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("txtLevel_O2");
				}	
})



$('#txtSubO3').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","txtSubO3","text","Text","50","O LEVEL subject 1 ", 1790) == false)
		{
		 data_ok = false;
		}
		else
		{
		  hide_error_message("txtSubO3");
		}
})


$('#txtLevel_O3').on('keyup keypress blur change', function(e) {
			   if ( CheckValidation("True","txtLevel_O3","select","","1", "O LEVEL grade 3 ",1375) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("txtLevel_O3");
				}	
})



$('#txtSubO4').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","txtSubO4","text","Text","50","O LEVEL subject 4 ", 1790) == false)
		{
		 data_ok = false;
		}
		else
		{
		  hide_error_message("txtSubO4");
		}
})


$('#txtLevel_O4').on('keyup keypress blur change', function(e) {
			   if ( CheckValidation("True","txtLevel_O4","select","","1", "O LEVEL grade 4 ",1375) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("txtLevel_O4");
				}	
})



$('#txtSubO5').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","txtSubO5","text","Text","50","O LEVEL subject 5 ", 1790) == false)
		{
		 data_ok = false;
		}
		else
		{
		  hide_error_message("txtSubO5");
		}
})


$('#txtLevel_O5').on('keyup keypress blur change', function(e) {
			   if ( CheckValidation("True","txtLevel_O5","select","","1", "O LEVEL grade 5 ",1375) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("txtLevel_O5");
				}	
})
//}




//if(document.getElementById("ddlDegreeName2").value == 'A Level')
//{
	
$('#txtSubA1').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","txtSubA1","text","Text","50","A LEVEL subject 1 ", 1790) == false)
		{
		 data_ok = false;
		}
		else
		{
		  hide_error_message("txtSubA1");
		}
})


$('#txtLevel_A1').on('keyup keypress blur change', function(e) {
			   if ( CheckValidation("True","txtLevel_A1","select","","1", "A LEVEL grade 1 ",1375) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("txtLevel_A1");
				}	
})

$('#txtSubA2').on('keyup keypress blur change', function(e) {
		if ( CheckValidation("True","txtSubA2","text","Text","50","A LEVEL subject 2 ", 1790) == false)
		{
		 data_ok = false;
		}
		else
		{
		  hide_error_message("txtSubA2");
		}
})


$('#txtLevel_A2').on('keyup keypress blur change', function(e) {
			   if ( CheckValidation("True","txtLevel_A2","select","","1", "A LEVEL grade 2 ",1375) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("txtLevel_A2");
				}	
})
//}


$('#txtInstitute1').on('keyup keypress blur change', function(e) {
			   if ( CheckValidation("True","txtInstitute1","text","Text","255", "Institute  of Secondary level in  ACADEMIC QUALIFICATION",1382) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("txtInstitute1");
				}	
})

$('#txtInstitute2').on('keyup keypress blur change', function(e) {
			   if ( CheckValidation("True","txtInstitute2","text","Text","255", "Institute  of Higher Secondary level in  ACADEMIC QUALIFICATION",1382) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("txtInstitute2");
				}	
})


$('#txtInstitute3').on('keyup keypress blur change', function(e) {
			   if ( CheckValidation("True","txtInstitute3","text","Text","255", "Institute  of Graduation level in  ACADEMIC QUALIFICATION",1382) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("txtInstitute3");
				}	
})


$('#txtInstitute4').on('keyup keypress blur change', function(e) {
			   if ( CheckValidation("False","txtInstitute4","text","Text","255", "Institute  of Post Graduation level in  ACADEMIC QUALIFICATION",1382) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("txtInstitute4");
				}	
})


$('#ddlAcademicDist1').on('keyup keypress blur change', function(e) {
	if ( CheckValidation("True","ddlAcademicDist1","select","S","1", "District of Secondary level in  ACADEMIC QUALIFICATION",1600) == false)
	{
		  // return false;
		  // break;	
		   data_ok = false;
	}					
	else
	{
	  hide_error_message("ddlAcademicDist1");
	}
})

$('#ddlAcademicDist2').on('keyup keypress blur change', function(e) {
	if ( CheckValidation("True","ddlAcademicDist2","select","S","1", "District of Higher Secondary level in  ACADEMIC QUALIFICATION",1600) == false)
	{
		  // return false;
		  // break;	
		   data_ok = false;
	}					
	else
	{
	  hide_error_message("ddlAcademicDist2");
	}
})

$('#ddlUniversity1').on('keyup keypress blur change', function(e) {
			   if ( CheckValidation("True","ddlUniversity1","select","S","1", "Board of Secondary level in ACADEMIC QUALIFICATION" ,1407) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("ddlUniversity1");
				}
})

$('#ddlUniversity2').on('keyup keypress blur change', function(e) {
			   if ( CheckValidation("True","ddlUniversity2","select","S","1", "Board of Higher Secondary level in ACADEMIC QUALIFICATION" ,1407) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("ddlUniversity2");
				}
})

$('#ddlUniversity3').on('keyup keypress blur change', function(e) {
			   if ( CheckValidation("True","ddlUniversity3","select","S","1", "Board of Graduation level in ACADEMIC QUALIFICATION" ,1407) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("ddlUniversity3");
				}
})


$('#ddlUniversity4').on('keyup keypress blur change', function(e) {
			   if ( CheckValidation("False","ddlUniversity4","select","S","1", "Board of Post Graduation level in ACADEMIC QUALIFICATION" ,1407) == false)
				{
		               data_ok = false;
				}					
				else
				{
				  hide_error_message("ddlUniversity4");
				}
})


$('#ddlSubject1').on('keyup keypress blur change', function(e) {
			 	if ( CheckValidation("True","ddlSubject1","select","S","1", "Subject of Secondary level in  ACADEMIC QUALIFICATION",1648) == false)
				{
				       data_ok = false;
				}
				else
				{
				  hide_error_message("ddlSubject1");
				}

})

$('#ddlSubject2').on('keyup keypress blur change', function(e) {
			 	if ( CheckValidation("True","ddlSubject2","select","S","1", "Subject of Higher Secondary level in  ACADEMIC QUALIFICATION",1648) == false)
				{
				       data_ok = false;
				}
				else
				{
				  hide_error_message("ddlSubject2");
				}

})


$('#ddlSubject3').on('keyup keypress blur change', function(e) {
			 	if ( CheckValidation("True","ddlSubject3","select","S","1", "Subject of Graduation level in  ACADEMIC QUALIFICATION",1648) == false)
				{
				       data_ok = false;
				}
				else
				{
				  hide_error_message("ddlSubject3");
				}

})


$('#ddlSubject4').on('keyup keypress blur change', function(e) {
			 	if ( CheckValidation("True","ddlSubject4","select","S","1", "Subject of Post Graduation level in  ACADEMIC QUALIFICATION",1648) == false)
				{
				       data_ok = false;
				}
				else
				{
				  hide_error_message("ddlSubject4");
				}

})

$('#txtOthers1').on('keyup keypress blur change', function(e) {
		   if ( CheckValidation("True","txtOthers1","text","Text","255", "Major 1 of Secondary level in   ACADEMIC QUALIFICATION",1657 ) == false)
			{
				  data_ok = false;
			}					
			else
			{
			  hide_error_message("txtOthers1");
			}	
})

$('#txtOthers2').on('keyup keypress blur change', function(e) {
		   if ( CheckValidation("True","txtOthers2","text","Text","255", "Major 2 of Higher Secondary level in   ACADEMIC QUALIFICATION",1657 ) == false)
			{
				  data_ok = false;
			}					
			else
			{
			  hide_error_message("txtOthers2");
			}	
})


$('#txtOthers3').on('keyup keypress blur change', function(e) {
		   if ( CheckValidation("True","txtOthers3","text","Text","255", "Major 3 of Graduation level in   ACADEMIC QUALIFICATION",1657 ) == false)
			{
				  data_ok = false;
			}					
			else
			{
			  hide_error_message("txtOthers3");
			}	
})


$('#txtOthers4').on('keyup keypress blur change', function(e) {
		   if ( CheckValidation("True","txtOthers4","text","Text","255", "Major 4 of Post Graduation level in   ACADEMIC QUALIFICATION",1657 ) == false)
			{
				  data_ok = false;
			}					
			else
			{
			    hide_error_message("txtOthers4");
			}	
})




$('#txtPassword').on('keyup keypress blur change', function(e) {
	if ( CheckValidation("True","txtPassword","text","Text","12","Password", 1900) == false)
	{
		data_ok = false;
		  //  return false;		   
	}	
	else
	{
		  hide_error_message('txtPassword');
	}	
})


$('#txtConfirmPassword').on('keyup keypress blur change', function(e) {
	if ( CheckValidation("True","txtConfirmPassword","text","Text","12","Re-enter Password", 1900) == false)
	{
		data_ok = false;
		  //  return false;		   
	}	
	else
	{
		  hide_error_message('txtConfirmPassword');
	}
	
	
	
	if(	document.getElementById('txtPassword').value !='' & document.getElementById('txtConfirmPassword').value != '' )
	  {	
		if ( CheckValidation("True","txtPassword","pass","txtConfirmPassword","12","Password/Re-enter Password ", 400) == false)
		{
			data_ok = false;
			  //  return false;		   
		}	
		else
		{
			  hide_error_message('txtPassword');
			  hide_error_message('txtConfirmPassword');
		}
	  }	
	
	
	
})


$('#chkDeclaration').on('keyup keypress blur change', function(e) {
	if(document.getElementById("chkDeclaration").checked == false)
	{
         ShowValidateMsg("Please declare the information is correct for next step.","chkDeclaration",288);		
		 data_ok = false;
	}	
	else
	{
		 hide_error_message('chkDeclaration');
	}
})


$('#txtReferenceName1').on('keyup keypress blur change', function(e) {
		  if ( CheckValidation("True","txtReferenceName1","text","Text","100", "Name 1 of Reference 1 ", 500 ) == false)
			{
		      data_ok = false;
			}
			else
			{
				 hide_error_message('txtReferenceName1');
			}			
})


$('#txtReferencePosition1').on('keyup keypress blur change', function(e) {
		   if ( CheckValidation("True","txtReferencePosition1","text","Text","100","Post 1  of Reference 1 ", 500) == false)
			{
		       data_ok = false;
			}
			else
			{
				 hide_error_message('txtReferencePosition1');
			}			
})


$('#txtReferenceAddress1').on('keyup keypress blur change', function(e) {
		   if ( CheckValidation("True","txtReferenceAddress1","text","Text","255", "Address 1 of Reference 1 ", 500 ) == false)
			{
		       data_ok = false;
			}
			else
			{
				 hide_error_message('txtReferenceAddress1');
			}			
})


$('#txtReferencePhone1').on('keyup keypress blur change', function(e) {
		   if ( CheckValidation("True","txtReferencePhone1","text","Text","50", "Phone 1 of Reference 1", 500) == false)
			{
		       data_ok = false;
			}
			else
			{
				 hide_error_message('txtReferencePhone1');
			}		  
		  
		  
		   if ( CheckValidation("True","txtReferencePhone1","text","Number","50", "Phone 1 of Reference 1", 500) == false)
			{
		       data_ok = false;
			}
			else
			{
				 hide_error_message('txtReferencePhone1');
			}
})


$('#txtReferenceEmail1').on('keyup keypress blur change', function(e) {
		   if ( CheckValidation("False","txtReferenceEmail1","email","Text","100", "Email 1 of Reference 1",500 ) == false)
			{
			}
			else
			{
				 hide_error_message('txtReferenceEmail1');
			}
})



$('#txtReferenceName2').on('keyup keypress blur change', function(e) {
		  if ( CheckValidation("True","txtReferenceName2","text","Text","100", "Name 2 of Reference 2 ", 500 ) == false)
			{
		      data_ok = false;
			}
			else
			{
				 hide_error_message('txtReferenceName2');
			}			
})


$('#txtReferencePosition2').on('keyup keypress blur change', function(e) {
		   if ( CheckValidation("True","txtReferencePosition2","text","Text","100","Post 2  of Reference 2 ", 500) == false)
			{
		       data_ok = false;
			}
			else
			{
				 hide_error_message('txtReferencePosition2');
			}			
})


$('#txtReferenceAddress2').on('keyup keypress blur change', function(e) {
		   if ( CheckValidation("True","txtReferenceAddress2","text","Text","255", "Address 2 of Reference 2 ", 500 ) == false)
			{
		       data_ok = false;
			}
			else
			{
				 hide_error_message('txtReferenceAddress2');
			}			
})


$('#txtReferencePhone2').on('keyup keypress blur change', function(e) {
		   if ( CheckValidation("True","txtReferencePhone2","text","Text","50", "Phone 2 of Reference 2", 500) == false)
			{
		       data_ok = false;
			}
			else
			{
				 hide_error_message('txtReferencePhone2');
			}		  
		  
		  
		   if ( CheckValidation("True","txtReferencePhone2","text","Number","50", "Phone 2 of Reference 2", 500) == false)
			{
		       data_ok = false;
			}
			else
			{
				 hide_error_message('txtReferencePhone2');
			}
})


$('#txtReferenceEmail2').on('keyup keypress blur change', function(e) {
		   if ( CheckValidation("False","txtReferenceEmail2","email","Text","100", "Email 2 of Reference 2",500 ) == false)
			{
		       data_ok = false;
			}
			else
			{
				 hide_error_message('txtReferenceEmail2');
			}
})



$('#txtAnyOther').on('keyup keypress blur change', function(e) {
	 if ( CheckValidation("False", "txtAnyOther" ,"text","Text","2000","Any other thing you want to disclose(if any) ",800) == false)
	{
	   data_ok = false;
	}
	else
	{
	   hide_error_message('txtAnyOther');
	}	
	
})


$('#txtComputerSkill').on('keyup keypress blur change', function(e) {
	 if ( CheckValidation("False", "txtComputerSkill" ,"text","Text","2000","Computer skills (if any) ", 800) == false)
	{
	   data_ok = false;
	}
	else
	{
	   hide_error_message('txtComputerSkill');
	}	
})


$('#txtExtraCurricularActivities').on('keyup keypress blur change', function(e) {
	 if ( CheckValidation("False", "txtExtraCurricularActivities" ,"text","Text","2000","Extra curricular activities(if any)",800) == false)
	{
	   data_ok = false;
	}
	else
	{
	   hide_error_message('txtExtraCurricularActivities');
	}	
})


$('#txtAcademicDistinctions').on('keyup keypress blur change', function(e) {
	 if ( CheckValidation("False", "txtAcademicDistinctions" ,"text","Text","2000","Academic Distinctions(if any) ",800) == false)
	{
	   data_ok = false;
	}
	else
	{
	   hide_error_message('txtAcademicDistinctions');
	}	
})


$('#txtTraining').on('keyup keypress blur change', function(e) {
	 if ( CheckValidation("False", "txtTraining" ,"text","Text","2000","Training (If Any) ",800) == false)
	{
	   data_ok = false;
	}
	else
	{
	   hide_error_message('txtTraining');
	}	
})

$('#txtProfessionalQualification').on('keyup keypress blur change', function(e) {
	 if ( CheckValidation("False", "txtProfessionalQualification" ,"text","Text","2000","Professional Qualification(If Any) ",800) == false)
	{
	   data_ok = false;
	}
	else
	{
	   hide_error_message('txtProfessionalQualification');
	}	
})



$('#txtExperience').on('keyup keypress blur change', function(e) {
	if ( CheckValidation("False", "txtExperience" ,"text","Text","2000","Experience (if any) ",800) == false)
	{
	   data_ok = false;
	}
	else
	{
	   hide_error_message('txtExperience');
	}
})


$('#chkCertification4').on('keyup keypress blur change', function(e) {
	if ( document.getElementById('chkCertification4').checked == true )
	{
	 if ( CheckValidation("True", "txtCertification" ,"text","Text","50","Name of professional certification ",800) == false)
	  {
	   data_ok = false;
	  }
	  else
	   {
		   hide_error_message('txtCertification');
	   }
   }
})


$('#txtCertification').on('keyup keypress blur change', function(e) {
	 if ( CheckValidation("True", "txtCertification" ,"text","Text","50","Name of professional certification ",800) == false)
	  {
	   data_ok = false;
	  }
	  else
	   {
		   hide_error_message('txtCertification');
	   }
})


$('#ddlReading').on('keyup keypress blur change', function(e) {
	 if ( CheckValidation("False","ddlReading" ,"select","S","6","Reading  ", 1200) == false)
	  {
	   data_ok = false;
	  }
	  else
	   {
		   hide_error_message('ddlReading');
	   }
})


$('#ddlWriting').on('keyup keypress blur change', function(e) {
	 if ( CheckValidation("False","ddlWriting" ,"select","S","6","Writing  ", 1200) == false)
	  {
	   data_ok = false;
	  }
	  else
	   {
		   hide_error_message('ddlWriting');
	   }
})


$('#ddlSpeaking').on('keyup keypress blur change', function(e) {
	 if ( CheckValidation("False","ddlSpeaking" ,"select","S","6","Speaking  ", 1200) == false)
	  {
	   data_ok = false;
	  }
	  else
	   {
		   hide_error_message('ddlSpeaking');
	   }
})

	
	
});


