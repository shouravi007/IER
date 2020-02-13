var bgcolor = "#FF0000";
var fgcolor = "#FFF";


function ChangeEstaricColor(Obj, fieldId)
{
	if(fieldId == "ddlDateOfBirth")
	{
		//alert("If");
		if(document.getElementById(fieldId + "Day").value != "S" && document.getElementById(fieldId + "Month").value != "S" && document.getElementById(fieldId + "Year").value != "S")
		{
			document.getElementById(fieldId).style.color = "#009900";
		}
		
		else
		{
			document.getElementById(fieldId).style.color = "#FF0000";
		}
	}
	else
	{
		//alert("Else");
		if(Obj.value != "S")
		{
			document.getElementById(fieldId).style.color = "#009900";
		}
		
		else
		{
			document.getElementById(fieldId).style.color = "#FF0000";
		}
	}
}

function ChangeEstaricColorOfCheck(fieldId)
{
	if(document.getElementById(fieldId).checked == true)
	{
		document.getElementById(fieldId + "Esteric").style.color = "#009900";
	}
	
	else
	{
		document.getElementById(fieldId + "Esteric").style.color = "#FF0000";
	}
}



function EnableDisable(obj, one, two)
{
	if(obj.value == "Any")
	{
		document.getElementById("ddlPreferedLocation"+one).disabled = true;
		document.getElementById("ddlPreferedLocation"+two).disabled = true;
		document.getElementById("lblPreferedLocation2").style.color = "#009900";
		document.getElementById("lblPreferedLocation1").style.color = "#009900";
	}
	else
	{
		document.getElementById("ddlPreferedLocation"+one).disabled = false;
		document.getElementById("ddlPreferedLocation"+two).disabled = false;
		document.getElementById("lblPreferedLocation2").style.color = "#FF0000";
		document.getElementById("lblPreferedLocation1").style.color = "#FF0000";
	}
		
	
	//alert(obj.value);
}

// This function is 4 only digit allowed. 
/*function OnlyDigit(objValue)
{
	if(isNaN(objValue.value))
	{
		alert("Please give number only.");
		objValue.focus();
		objValue.value = "";
		return false;
	}
	return true;
}*/

// Change color of *
function changeEstericColor(fieldId)
{
	if(document.getElementById(fieldId).value != "")
	{
		document.getElementById(fieldId + "Esteric").style.color = "#009900";
	}
	
	else
	{
		document.getElementById(fieldId + "Esteric").style.color = "#FF0000";
	}
}

// Letter Count
function letterCount(cotrolName, chrLimit)
{
	//alert(chrLimit);
	cotrolValue = document.getElementById(cotrolName).value ;
	lengthOfControl = parseInt(cotrolValue.length);
	if(lengthOfControl != 0)
	{
		window.status = lengthOfControl ; 
		txtArea = document.getElementById(cotrolName+"_span");
		txtArea.innerHTML = "<a style=\"color:#3300FF;font-family:Arial;font-size:8pt;\">You wrote <b style='color:#FF0000'>"+lengthOfControl+"</b> character(s)</a>" ;
		
		if(lengthOfControl >= parseInt(chrLimit)+1)//if(lengthOfControl >= 200)
		{
				alert("Please stop writing as you are crossing the "+chrLimit+" letter limit!")
		}
	
		if( lengthOfControl > parseInt(chrLimit) )
		{
			nb = document.getElementById(cotrolName).value.substr(0,parseInt(chrLimit));
			txtara = document.getElementById(cotrolName) ; 
			txtara.value =  nb ;
			span_area = document.getElementById( cotrolName + "_span" ) ; 
			span_area.innerHTML ="<a style=\"color:#3300FF;font-family:Arial;font-size:8pt; \">You wrote <b style='color:#FF0000'>" + nb.length + "</b> character(s)</a>" ;
			 //alert(nb)
		}
	}
	else
	{
		window.status = "";
		txtArea = document.getElementById(cotrolName + "_span" ) ; 
		txtArea.innerHTML = "";
	}
}

// This function is 4 Capital letter. 
function UpperCase(strID, strValue)
{
	document.getElementById(strID).value = strValue.toUpperCase();
}

// This function is 4 negative number check. 
function IsNegativeNum(str)
{ 
	mystring = str;
	if (mystring.match(/^-\d+$/)) 
	{
		return true;
	}
	else
	{
		return false;
	}
}
function CheckAge(deadlineDate, Age)
{
	var dtmDay = "S";
	var dtmMonth = "S";
	var dtmYear = "S";
	
	objDay = document.getElementById("ddlDateOfBirthDay");
	//alert(objDay.value);
	objMonth = document.getElementById("ddlDateOfBirthMonth");
	//alert(objMonth.value);
	objYear = document.getElementById("ddlDateOfBirthYear");

	dtmDay = objDay.value;
	dtmMonth = objMonth.value;
	dtmYear = objYear.value;
	var dateOfBirth = dtmMonth+"/"+dtmDay+"/"+dtmYear	
	
	var deadline = new Date(deadlineDate);
	var deadlineDay = deadline.getDate();
	var deadlineMonth = deadline.getMonth()+1; // 
	var deadlineYear =  deadline.getFullYear()- parseInt(Age);
	
	 if(parseInt(dtmYear)<=parseInt(deadlineYear))
	  {
			if(parseInt(dtmYear)<parseInt(deadlineYear))
			{
			alert("Sorry! You must be of "+Age+" years old as on "+deadlineDate+".");
			objYear.focus();
			objYear.style.backgroundColor = bgcolor;
			return false;
			}
		   else 
			{	
				   if (parseInt(dtmMonth) < parseInt(deadlineMonth))
				   {		
					  alert("Sorry! You must be of "+Age+" years old as on "+deadlineDate+".");
					  objMonth.focus();
					  objMonth.style.backgroundColor = bgcolor;
					  return false;	
				   }			   
				   if(parseInt(dtmMonth) == parseInt(deadlineMonth) && parseInt(dtmDay) < parseInt(deadlineDay))  
				   {
					  alert("Age must be of "+Age+" years old ");
					  alert("Sorry! You must be of "+Age+" years old as on "+deadlineDate+".");
					  objMonth.focus();
					  objMonth.style.backgroundColor = bgcolor;
					  return false;					   
				   }
				 //return false;		 
			  }			 
		}
		else
		{
			objYear.style.backgroundColor = fgcolor;
		}
}


// This function is 4 Email validation.
function CheckEmail(strEmail)
{	
	//alert(objEmail);
	var filter = /^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/;
	
	if (filter.test(strEmail))
	{
		return true;
	}
	else 
	{
		//document.getElementById(strID).focus();
		return false;
	}
}

// This function is 4 empty check of Personal.
function EmptyPersonal()
{
	// Variable declare and initialization.
	
	try
	{
	
	var strFirstName = "";
	var strLastName = "";
	var strFatherName = "";
	var strMotherName = "";
	var dtmDay = "S";
	var dtmMonth = "S";
	var dtmYear = "S";
	var strMeritalStatus = "S";
	var strNationality = "";
	var strEmail = "";
	var strContactPhone = ""; 
	var strCellPhone = "";
	var intNationalId = "";
	var strGender = "S";
	var strReligion = "S";
	var strContactAddress = "";
	var strPermanentAddress = "";
	var strDistrict = "S";

	objFirstName = document.getElementById("txtFirstName");
	objLastName = document.getElementById("txtLastName");
	objFatherName = document.getElementById("txtFatherName");
	objMotherName = document.getElementById("txtMotherName");
	objDay = document.getElementById("ddlDateOfBirthDay");
	objMonth = document.getElementById("ddlDateOfBirthMonth");
	objYear = document.getElementById("ddlDateOfBirthYear");
	objMeritalStatus = document.getElementById("ddlMaritalStatus");
	objNationality = document.getElementById("txtNationality");
	objDistrict = document.getElementById("ddlHomeDistrict");
	//objGender = document.getElementById("ddlGender");
	objEmail = document.getElementById("txtEmail");
	objContactPhone = document.getElementById("txtContactPhone");
	objCellPhone = document.getElementById("txtCellPhone");
	objCellPhoneCommon = document.getElementById("txtCellPhone2");
	objNationalId = document.getElementById("txtNationalId");
	objBloodGroup = document.getElementById("ddlBloodGroup");
	objGender = document.getElementById("ddlGender");
	objReligion = document.getElementById("ddlReligion");
	objContactAddress = document.getElementById("txtContactAddress");
	objPermanentAddress = document.getElementById("txtPermanentAddress");
	

	strFirstName = objFirstName.value;
	strLastName = objLastName.value;
	strFatherName = objFatherName.value;
	strMotherName = objMotherName.value;
	dtmDay = objDay.value;
	dtmMonth = objMonth.value;
	dtmYear = objYear.value;
	strMeritalStatus = objMeritalStatus.value;
	strNationality = objNationality.value;
    strDistrict = objDistrict.value;
	
	strEmail = objEmail.value;
	strContactPhone = objContactPhone.value;
	strCellPhone = objCellPhone.value;
	intNationalId = objNationalId.value;
	//strBloodGroup = objBloodGroup.value;
	strGender = objGender.value;
	strReligion = objReligion.value;
	strContactAddress = objContactAddress.value;
	strPermanentAddress = objPermanentAddress.value;
//	alert(dtmDay+dtmMonth+dtmYear);
//	strReffName1 = objReffName1.value;
//    strReffName2 = objReffName2.value;	
	// Checking & focusing of html controls.	
	
	
	if ( CheckValidation("True",objFirstName,"text","Text","50","First Name", 1900) == false)
	{
		   return false;		   
	}

	if ( CheckValidation("True",objLastName,"text","Text","50","Last Name", 1900) == false)
	{
		   return false;		   
	}

	if ( CheckValidation("True",objFatherName,"text","Text","100","Father's name", 1900) == false)
	{
		   return false;		   
	}
	
	if ( CheckValidation("True",objMotherName,"text","Text","100","Mother's name", 1900) == false)
	{
		   return false;		   
	}
	
    if ( CheckValidation("True",objDay ,"select","S","1"," Day in Date of Birth", 1850) == false)
	{
		   return false;		   
	}		

    if ( CheckValidation("True",objMonth ,"select","S","1"," Month in Date of Birth", 1840) == false)
	{
		   return false;		   
	}		


   if ( CheckValidation("True",objYear ,"select","S","1"," Year in Date of Birth", 1830) == false)
	{
		   return false;		   
	}		

	if(parseInt(dtmYear)<=1985 )
	{
	 msgYear = "Sorry! You must be of 30 years old as on 25 August, 2015."
		if(parseInt(dtmYear)<1985)
		{
		popup(msgYear,"1820");
		objYear.focus();
		objYear.style.backgroundColor = bgcolor;
		return false;
		}
		 else 
		  {	
			   if (dtmMonth < 8)
			   {		
		             popup(msgYear,"1820");
					 objDay.focus();
					 objDay.style.backgroundColor = bgcolor;
					//DisplayHelp("help_birth","Sorry! You must be " +age+ " years old as on June 30, 2013.");
					 return false;	
			   }
			   
			    if(parseInt(dtmMonth) == 8  &&  parseInt(dtmDay) < 25)
			   {
				     popup(msgYear,"1820");

					 objDay.focus();
					 objDay.style.backgroundColor = bgcolor;
	             	//DisplayHelp("help_birth","Sorry! You must be " +age+ " years old as on June 30, 2013.");
					 return false;	
				   
			   }		 

		  }
	}
	else
	{
		objYear.style.backgroundColor = fgcolor;
	}
	
	 if ( CheckValidation("True",objMeritalStatus ,"select","S","1"," Marital status ", 1800) == false)
	{
		   return false;		   
	}	
	
	if ( CheckValidation("True",objNationality,"text","Text","50","Nationality", 1790) == false)
	{
		   return false;		   
	}
	
	if ( CheckValidation("False",document.getElementById('ddlNoOfChildren'),"text","Number","1","Number of children", 1790) == false)
	{
		   return false;		   
	}

	if ( CheckValidation("True",document.getElementById('ddlHomeDistrict'),"text","Text","30","Home Dist", 1790) == false)
	{
		   return false;		   
	}
	
	if ( CheckValidation("True",objCellPhone,"text","Text","50","Cell phone number", 1780) == false)
	{
		   return false;		   
	}
	
	if(strCellPhone.length<11)	
	{
		popup("Invaild Cell Phone ","1770")
		objCellPhone.focus();
		objCellPhone.style.backgroundColor = bgcolor;
		return false;
	}
	else
	{
		objCellPhone.style.backgroundColor = fgcolor;
	}
	
    if ( CheckValidation("True",objGender ,"select","S","1"," Gender", 1760) == false)
	{
		   return false;		   
	}		

	if(intNationalId != "")
	{
		if(isNaN(intNationalId))
		{
			popup("National Id should be numeric.","1750");
			objNationalId.focus();
			objNationalId.style.backgroundColor = bgcolor;
			objNationalId.value = "";
			return false;
		}
		else
		{
		objNationalId.style.backgroundColor = fgcolor;
		}
	}

    if ( CheckValidation("False",objNationalId ,"text","Number","25"," National ID", 1740) == false)
	{
		   return false;		   
	}

    if ( CheckValidation("True",objReligion ,"select","S","25"," Religion", 1730) == false)
	{
		   return false;		   
	}		

   if ( CheckValidation("True",objEmail,"text","Text","100","Email ",1720) == false)
	{
		   return false;		   
	}

   if ( CheckValidation("True",objEmail,"email","Text","100","Email ",1710) == false)
	{
		   return false;		   
	}	
	
    if ( CheckValidation("True",objContactAddress ,"text","Text","250"," Correspondece Address", 1700) == false)
	{
		   return false;		   
	}
	
    if ( CheckValidation("True",objPermanentAddress ,"text","Text","250","Permanent Address", 1690) == false)
	{
		   return false;		   
	}
	
    if ( CheckValidation("True",objDistrict ,"select","S","1"," Home District", 1680) == false)
	{
		   return false;		   
	}

	}
	catch(ex)
	{
		  ErrorMessage("583", ex, "1" , "Default.asp :::  registration.js  :: function EmptyPersonal", "Dhakabank");
	}

	return true;
}

function ResultChekingForJobPost()
 {
 jobid = document.getElementById('JOB_ID').value;
 
 if (jobid == "1")
  {

	  //alert(123);
          try
		  {
			var strResult1 = document.getElementById("ddlResult1").value;
			var strResult2 = document.getElementById("ddlResult2").value;
			var strResult3 = document.getElementById("ddlResult3").value;
			var strResult4 = document.getElementById("ddlResult4").value; 
		//	var strResult5 = document.getElementById("ddlResult5").value;				  
			var strCgpaOrMarks1 =  document.getElementById("txtResultPoint1").value; 
			var strCgpaOrMarks2 =  document.getElementById("txtResultPoint2").value; 
			var strCgpaOrMarks3 =  document.getElementById("txtResultPoint3").value; 
			var  strCgpaOrMarks4 =  document.getElementById("txtResultPoint4").value; 
		//	var strCgpaOrMarks5 =  document.getElementById("txtResultPoint5").value; 
			
			var  strCgpaScale1 = document.getElementById("ddlCGPAScale1").value;
			var strCgpaScale2 = document.getElementById("ddlCGPAScale2").value;
			var strCgpaScale3 = document.getElementById("ddlCGPAScale3").value;
			var strCgpaScale4 = document.getElementById("ddlCGPAScale4").value;
		//	var strCgpaScale5 = document.getElementById("ddlCGPAScale5").value;
                  
			var CgpaScale = [strCgpaScale1,strCgpaScale2,strCgpaScale3,strCgpaScale4];
			var  Result = [strResult1,strResult2,strResult3,strResult4];
			var Marks = [strCgpaOrMarks1,strCgpaOrMarks2,strCgpaOrMarks3,strCgpaOrMarks4];
			var FirstClass = 0 

                        
						for ( resultIndex  = 0  ;  resultIndex <= 4 ; resultIndex ++)
						 {
							  if( Result[resultIndex] == "15" )
							     { 
								   FirstClass  = FirstClass + 1;
								 }
							  
								if ( resultIndex > 1 )
								 { 
											if(Result[resultIndex] == "0"  &&  CgpaScale[resultIndex]  =="4") 
											 { 
												if( parseFloat(Marks[resultIndex]) >= 3 )
												  {
												   FirstClass  = FirstClass + 1 ;
												 }
											 }    
											
											  if(Result[resultIndex] == "0"  &&  CgpaScale[resultIndex]  =="5" )
												{ 
												 if (parseFloat(Marks[resultIndex]) >= 3.00 ) // 3.75
												 {
												   FirstClass  = FirstClass + 1;
												 }
												}
								  }
								  else
								  {	  							  
											   if(Result[resultIndex] == "0")
												 { 
												  if(parseFloat(Marks[resultIndex]) >= 3 )
													{
													 FirstClass  = FirstClass + 1;
													}
												 }
						            }
						 }
					
					   if(FirstClass >= 3 )
					     { 
					       var strJobids = "2";
						 }
						 else
						 {
					      var  strJobids = "1";
						 }						 									   
	
					      if( strJobids == "1")
						   { 
						      popup("Sorry , you are not eligible for Management Trainee Position, because you have not Three (3) first divison marks or equivalent cgpa ",1600);
							  return false;
						   }
				
					return true;	 
		  }
		  catch(ex)
		  {
				  ErrorMessage("583", ex, "1" , "Application.asp :::  registration.js  :: function ResultChekingForJobPost", "Rupali Bank Limited ");
		  }
    }
				   
}

// This function is 4 empty check of Academic.
function EmptyAcademic()
{
	//var EduUB = parseInt(document.getElementById("count_edu").value);
	try
	{
	
	  if(document.getElementById('JOB_ID').value == "1" ) 
	    { 
			if (document.getElementById("ddlDegreeName3").value ==  "BSc(Engg)"  && document.getElementById("ddlUniversity3").value == "Bangladesh University of Engineering and Technology")
			{
				if( document.getElementById("ddlSubject3").value == "CSE"   || document.getElementById("ddlSubject3").value == "CE"   || document.getElementById("ddlSubject3").value == "ME"  || document.getElementById("ddlSubject3").value == "EEE" )
				{
				 	var ubound = 3 ;
        		}
	         }
			else 
			 {
				 var  ubound = 4;
			 }
		}
	  else if(document.getElementById('JOB_ID').value == "3" ) 
	   {
			var ubound = 3 ;
	   }


	var EduUB = 4;
	var i;
		
	// For loop starts here.
	for(i = 1; i <= EduUB; i++)
	{
		// Variable declare and initialization.
		var strEducationLevel = "-1";
		var strDegreeName = "S";
		var strPassingYear = "S";
		var strInstitute = "";
		var strUniversity = "S";
		var strResult = "-1";
		var strSubject = "S";
	//	var strScale = "-1";

		// Object declare and initialization.
		objEducationLevel = document.getElementById("ddlEducationLevel"+i);
		objDegreeName = document.getElementById("ddlDegreeName"+i);
		objPassingYear = document.getElementById("ddlPassingYear"+i);
		objInstitute = document.getElementById("txtInstitute"+i);
		objUniversity = document.getElementById("ddlUniversity"+i);
		objResult = document.getElementById("ddlResult"+i);
		objSubject = document.getElementById("ddlSubject"+i);
		//objScale = document.getElementById("ddlCGPAScale"+i);
				
		// Value of html controls.
		strEducationLevel = objEducationLevel.value;
		strDegreeName = objDegreeName.value;
		strPassingYear = objPassingYear.value;
		strInstitute = objInstitute.value;
		strUniversity = objUniversity.value;
		strResult = objResult.value;
		strSubject = objSubject.value;
	//	strScale = objScale.value;
		//alert(strScale);
		//alert(strResult);
		//return false;
		//alert(strEducationLevel);
		
		    var x = 0 ; 
			if(i == 1)
			{
			 var Education = "Secondary";
			}
			else if(i == 2)
			{
				var Education = "Higher secondary";
				x = x + 20;
			}
			else if(i == 3)
			{
				var Education = "Graduation";
				x = x + 20;
			}
			else if(i == 4)
			{
				var Education = "Post graduation";
				x = x + 20;
			}
			else if(i == 5)
			{
				var Education = "Post graduation/doctorate";	
				x = x + 20;
			}						
			
			switch(i)
		    { 
			case 1:
			level = "Secondary";
			BoardUni = "Name of Board";
			break;
			
			case 2:
			level = "Higher Secondary";
			BoardUni = "Name of  Board";
			break;
			
			case 3:
			level = "Graduation";
			BoardUni = "Name of  University";			
			break;
			
			case 4:
			level = "Post Graduation";
			BoardUni = "Name of  University";			
			break;
			
			case 5 :
			level = "Post Graduation/Doctorate";
			BoardUni = "Name of  University";
			break;
			
			default:		  
		    }
	//	BSc(Engg),Bangladesh University of Engineering and Technology,CSE
	//	alert(document.getElementById("ddlDegreeName3").value +","+document.getElementById("ddlUniversity3").value+","+ document.getElementById("ddlSubject3").value);
		


	
		// Checking & focusing of html controls.	
		if(i > ubound)
		{			 			
			
			if(strEducationLevel != "-1" || strDegreeName != "S" || strPassingYear != "S" || strInstitute != "" || strUniversity != "S" || strResult != "-1" || strSubject != "S")
			{				
		
				Req = "True";
			}
			else 
			{
	          		Req = "False"
			}			
		}
		else
		{
			Req = "True";
		}
	
							
			
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
	
			   if ( CheckValidation(Req,objInstitute,"text","Text","255", "Institute  of "+level+" level in  ACADEMIC QUALIFICATION",1600) == false)
				{
					   return false;		
					   break;	   
				}				
			
				
				if(i>2)
					{
				var  eduMsg= "University of "+level+" level in ACADEMIC QUALIFICATION";
					}
					else
					{
				var  eduMsg= "Board of "+level+" level in ACADEMIC QUALIFICATION"; 	
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
				}
				
				 if ( CheckValidation(Req,objResult,"select","-1","1", "Result of "+level+" level in ACADEMIC QUALIFICATION",1600 ) == false)
				{
					   return false;		
					   break;	   
				}
				else
				{
					if(objResult.value == "15" || objResult.value == "14")
					{
			         	objResultPoint = document.getElementById("txtResultPoint"+i);

					     if ( CheckValidation(Req,objResultPoint,"text","Text","5", "CGPA/Marks of "+level+" level in ACADEMIC QUALIFICATION",1600) == false)
						{
						   DisplayHelp("help_academic","CGPA/GPA of "+level+" level in ACADEMIC QUALIFICATION");
						   return false;		
						   break;	   
						}
											
		                  if(MarksTypeInputValidation(Req,objResult.value,objResultPoint.value,0,"CGPA/GPA   of  row is  "+i,objResultPoint,1600 ) == false )
						{
						   DisplayHelp("help_academic", "CGPA/GPA  of row is "+i +" invalid");
							return false;
						     break;	   
						}


					}
					else if(objResult.value == "12")
					{
						
					}				
					else if(objResult.value == "0")
					{
						objResultPoint = document.getElementById("txtResultPoint"+i);
						strCgpaOrmarks = objResultPoint.value;					
					
						objScale = document.getElementById("ddlCGPAScale"+i);
						strScale = objScale.value;	
					  if ( CheckValidation(Req,objResultPoint,"text","Text","5", "CGPA/Marks of "+level+" level in ACADEMIC QUALIFICATION",1600) == false)
						{
						   DisplayHelp("help_academic","CGPA/GPA of "+level+" level in ACADEMIC QUALIFICATION");
						   return false;		
						   break;	   
						}
				       else
					    {
					  if ( CheckValidation(Req,objScale,"select","-1","5", "CGPA/GPA Scale  "+level+" level in ACADEMIC QUALIFICATION",1600) == false)
						{
						   return false;		
						   break;	   
						}
						
		                  if(MarksTypeInputValidation(Req,objResult.value,strCgpaOrmarks,strScale,"CGPA/GPA   of  row is  "+i,objResultPoint,1600 ) == false )
						{
						   DisplayHelp("help_academic", "CGPA/GPA  of row is "+i +" invalid");
							return false;
						     break;	   
						}
					  }
			      	}
				}
				
			   if ( CheckValidation(Req,objSubject,"select","S","1", "Subject of "+level+" level in  ACADEMIC QUALIFICATION",1600) == false)
				{
					   return false;		
					   break;	   
				}
				else
				{				
					if(objSubject.value == "Others")
					{
						   if ( CheckValidation(Req,document.getElementById("txtOthers"+i),"text","Text","255", "Major of "+level+" level in   ACADEMIC QUALIFICATION",1600 ) == false)
							{
								   return false;		
								   break;	   
							}	
					}	
				}
		
		
		// Checking & focusing of html controls.	
		if(i > 3)
		{			
			if(strEducationLevel != "-1" || strDegreeName != "S" || strPassingYear != "S" || strInstitute != "" || strUniversity != "S" || strResult != "-1" || strSubject != "S")
			{				
				//alert(i);
				if(strEducationLevel == "-1")
				{					
					alert( Education + " Level of Academic Qualification should be selected.");
					objEducationLevel.style.backgroundColor = bgcolor;
					objEducationLevel.focus();
					return false;
				}
				else
				{
					objEducationLevel.style.backgroundColor = fgcolor;
				}
					
				if(strDegreeName == "S")
				{
					if(i>2)
					{
					  alert("Degree Name of "+level+" Level in  Academic Qualification should be selected.");
					}
					else
					{
					  alert("Exam Name of "+level+" Level in  Academic Qualification should be selected.");
					}
					objDegreeName.focus();
					objDegreeName.style.backgroundColor = bgcolor;
					return false;
				}
				else
				{
				objDegreeName.style.backgroundColor = fgcolor;
				}				
				
				
				if(strDegreeName == "Others")
				{
					if(document.getElementById("txtDoctorate"+i).value == "")
					{
						alert("Doctorate of  "+level+" Level in  Academic Qualification can't be empty.");
						document.getElementById("txtDoctorate"+i).focus();
						document.getElementById("txtDoctorate"+i).style.backgroundColor = bgcolor;
						return false;
					}
					else
					{
						document.getElementById("txtDoctorate"+i).style.backgroundColor = fgcolor;
					}	
					
				}
				
				if(strPassingYear == "S")
				{
					alert("Passing year of "+level+" Level in  Academic Qualification should be selected.");
					objPassingYear.focus();
					objPassingYear.style.backgroundColor = bgcolor;					
					return false;
				}
				else
				{
					objPassingYear.style.backgroundColor = fgcolor;
				}
								
				if(strInstitute == "")
				{
					alert("Institute of "+level+" Level in  Academic Qualification should be selected.");
					objInstitute.focus();
					objInstitute.style.backgroundColor = bgcolor;					
					return false;
				}
				else
				{
				objInstitute.style.backgroundColor = fgcolor;
				}
				
				if(strUniversity == "S")
				{
					
					alert(BoardUni + " of  "+level+" Level  in  Academic Qualification should be selected.");				
					
				
					objUniversity.focus();
					objUniversity.style.backgroundColor = bgcolor;
					return false;
				}
				else
				{
				objUniversity.style.backgroundColor = fgcolor;
				}
				
				
				if(strUniversity == "Foreign" || strUniversity == "Others")
				{
					if(document.getElementById("txtUniversity"+i).value == "")
					{
						alert(BoardUni + "of" +level+" Level in  Academic Qualification  can't be empty.");
						document.getElementById("txtUniversity"+i).focus();
						document.getElementById("txtUniversity"+i).style.backgroundColor = bgcolor;
						return false;
					}				
					else
					{
						strUniversity.style.backgroundColor = fgcolor;
					}				
				}
				
				
				if(strResult == -1)
				{
					alert("Result of  "+level+" Level in  Academic Qualification should be selected.");
					objResult.focus();
					objResult.style.backgroundColor = bgcolor;
					return false;
				}
				else
				{
					objResult.style.backgroundColor = fgcolor;					
				}				
				
				
				if(strResult > 12 || strResult == 0)
				{
					objResultPoint = document.getElementById("txtResultPoint"+i);
					//alert("Point: " + objRejultPoint.value);
					if(objResultPoint.value == "")
					{
						alert("CGPA/Marks of "+level+" Level in  Academic Qualification can't be empty.");
						objResultPoint.focus();
						objResultPoint.style.backgroundColor = bgcolor;
						return false;
					}
					else
					{
						objResultPoint.style.backgroundColor = fgcolor;
					}					
					//added by Auny on 14 Sep 2011
/*					else
					{
						if(strScale == "" || strScale == "-1")
						{
							alert("CGPA Scale in in Academic Qualification should be selected.");
							objScale.focus();
							return false;
						}
					}
*/					// End add
					if(isNaN(objResultPoint.value))
					{
						alert("CGPA/Marks of "+level+" Level in Academic Qualification should numeric.");
						objResultPoint.focus();
						objResultPoint.style.backgroundColor = bgcolor;
						objResultPoint.value = "";
						return false;
					}
					else
					{
					 objResultPoint.style.backgroundColor = fgcolor;
					}					
					/**/
					if(strResult > 12)
					{
						if(objResultPoint.value > 100)
						{
							alert("Percentage of Marks in "+level+" Level of  Academic Qualification can't be greater than 100.\n Please check and be sure to mention your marks in percent.");
							objResultPoint.focus();
							objResultPoint.style.backgroundColor = bgcolor;
							return false;
						}
						else
						{
							objResultPoint.style.backgroundColor = fgcolor;
						}	
					}
					if(strResult == 0)
					{
						if(strEducationLevel == 1 || strEducationLevel == 2)
						{
							//if(objResultPoint.value > 5)
						
							//added by Auny on 14 Sep 2011
					
							// End add						
						}
						else
						{
							if(objResultPoint.value > 10)
							{
								alert("CGPA/Marks of "+level+" Level  in Academic Qualification can't be greater than 10.");
								objResultPoint.focus();
								objResultPoint.style.backgroundColor = bgcolor;
								return false;
							}
							//added by Auny on 14 Sep 2011
							else
							{

								
							}
							// End add
							
						}
					}
				}
				
				if(strSubject == "S")
				{
					alert("Subject of "+level+" Level  in Academic Qualification area can't be empty.");
					objSubject.focus();
					objSubject.style.backgroundColor = bgcolor;
					return false;
				}
				else
				{
				    objSubject.style.backgroundColor = fgcolor;
				}
								
				if(strSubject == "Others")
				{
					if(document.getElementById("txtOthers"+i).value == "")
					{
						alert("Major of  "+level+" Level  in Academic Qualification can't be empty.");
						document.getElementById("txtOthers"+i).focus();
						document.getElementById("txtOthers"+i).style.backgroundColor = bgcolor;
						return false;
					}
					else
					{
					  document.getElementById("txtOthers"+i).style.backgroundColor = fgcolor;
					}
				}
			}
		}
		else
		{
			if(strEducationLevel == "-1")
			{
				alert( Education+" Level in Academic Qualification should be selected.");			
				objEducationLevel.focus();
				objEducationLevel.style.backgroundColor = bgcolor;
				return false;
			}
			else
			{
			   objEducationLevel.style.backgroundColor = fgcolor;
			}
				
			if(strDegreeName == "S")
			{
				if(i>2)
				{
				 alert("Degree Name of "+level+" Level  in Academic Qualification should be selected.");
				}
				else
				{				
				 alert("Exam Name of "+level+" Level  in Academic Qualification should be selected.");	
				}
				objDegreeName.focus();
				objDegreeName.style.backgroundColor = bgcolor;
				return false;
			}
			else
			{
			   objDegreeName.style.backgroundColor = fgcolor;
			}
			
			
			if(strDegreeName == "Others")
			{
				if(document.getElementById("txtDoctorate"+i).value == "")
				{
					alert("Doctorate of "+level+" Level in Academic Qualification can't be empty.");
					document.getElementById("txtDoctorate"+i).focus();
					document.getElementById("txtDoctorate"+i).style.backgroundColor = bgcolor;
					return false;
				}
		        else
				{
				  document.getElementById("txtDoctorate"+i).style.backgroundColor = fgcolor;
				}
			}
			
			if(strPassingYear == "S")
			{
				alert("Passing year of "+level+" Level  in Academic Qualification should be selected.");
				objPassingYear.focus();
				objPassingYear.style.backgroundColor = bgcolor;
				return false;
			}
			else
			{
			objPassingYear.style.backgroundColor = fgcolor;
			}
			
			if(strInstitute == "")
			{
				alert("Institute Name of "+level+" Level in Academic Qualification can't be empty.");
				objInstitute.focus();
				objInstitute.style.backgroundColor = bgcolor;
				return false;
			}
			else
			{
		     	objInstitute.style.backgroundColor = fgcolor;
			}
			
			if(strUniversity == "S")
			{					
				alert( BoardUni + " of "+level+" Level  in Academic Qualification should be selected.");	
				objUniversity.focus();
				objUniversity.style.backgroundColor = bgcolor;
				return false;
			}
			else
			{
			    objUniversity.style.backgroundColor = fgcolor;
			}
			
			if(strUniversity == "Foreign" || strUniversity == "Others")
			{
				if(document.getElementById("txtUniversity"+i).value == "")
				{
					alert(BoardUni+ "of "+level+" Level  in Academic Qualification  name can't be empty.");
					document.getElementById("txtUniversity"+i).focus();
					document.getElementById("txtUniversity"+i).style.backgroundColor = bgcolor;
					return false;
				}
		        else
				{
				  objResultPoint.style.backgroundColor = fgcolor;
				}				
			}
			
			if(strResult == -1)
			{
				alert("Result of "+level+" Level  in Academic Qualification should be selected.");
				objResult.focus();
				objResult.style.backgroundColor = bgcolor;
				return false;
			}
			else
			{
			  objResult.style.backgroundColor = fgcolor;
			}			
			
			if(strResult > 12 || strResult == 0)
			{
				objResultPoint = document.getElementById("txtResultPoint"+i);
				if(objResultPoint.value == "")
				{
					alert("CGPA/Marks of "+level+" Level  in Academic Qualification can't be empty.");
					objResultPoint.focus();
					objResultPoint.style.backgroundColor = bgcolor;
					return false;
				}
				else
				{
				  objResultPoint.style.backgroundColor = fgcolor;
				}					

				if(isNaN(objResultPoint.value))
				{
					alert("CGPA/Marks of "+level+" Level in Academic Qualification should numeric.");
					objResultPoint.focus();
					objResultPoint.style.backgroundColor = bgcolor;
					objResultPoint.value = "";
					return false;
				}
				else
				{
				  objResultPoint.style.backgroundColor = fgcolor;
				}					

				/**/
				if(strResult > 12)
				{
					if(objResultPoint.value > 100)
					{
				    alert("Percentage of Marks in "+level+" Level of  Academic Qualification can't be greater than 100.\n Please check and be sure to mention your marks in percent.");
						objResultPoint.focus();
						objResultPoint.style.backgroundColor = bgcolor;
						return false;
					}
					else
					{
					  objResultPoint.style.backgroundColor = fgcolor;
					}					

				}
				if(strResult == 0)
				{
					if(strEducationLevel > 0)
					{
				        if(objResultPoint.value <2)
						{
							alert("CGPA of "+level+" Level in Academic Qualification can't be Less than 2 ");
							objResultPoint.focus();
							objResultPoint.style.backgroundColor = bgcolor;
							return false;
						}
						else if(objResultPoint.value>5)
						{
							alert("CGPA of "+level+" Level in Academic Qualification can't be Greater than 5 ");
							objResultPoint.focus();
							objResultPoint.style.backgroundColor = bgcolor;
							return false;
							//added by mahbub on 21 march 2012
										// End add
						}
					}
					else
					{
						if(objResultPoint.value > 10)
						{
							alert("CGPA/Marks of "+level+" Level  in Academic Qualification can't be greater than 10.");
							objResultPoint.focus();
							objResultPoint.style.backgroundColor = bgcolor;
							return false;
						}
						else
						{
							//added by Auny on 14 Sep 2011
							if(strScale == "" || strScale == "-1")
							{
								alert("CGPA Scale of "+level+" Level  in Academic Qualification should be selected.");
								objScale.focus();
								objScale.style.backgroundColor = bgcolor;
								return false;
							}
							else
							{
							objResultPoint.style.backgroundColor = fgcolor;
							}	
							// End add
						}
					}

				}
/*				
				if(strResult == 0)
				{
					if(objResultPoint.value > 5)
					{
						alert("CGPA/Marks in in Academic Qualification can't be greater than 5.");
						objResultPoint.focus();
						return false;
					}
				}
*/			
			}
			
			if(strSubject == "S")
			{
				alert("Subject of "+level+" Level  in Academic Qualification area can't be empty.");
				objSubject.focus();
				objSubject.style.backgroundColor = bgcolor;
				return false;
			}
			else
			{
			    objSubject.style.backgroundColor = fgcolor;
			}				
			
			if(strSubject == "Others")
			{
				if(document.getElementById("txtOthers"+i).value == "")
				{
					alert("Major of "+level+" Level  in Academic Qualification can't be empty.");
					document.getElementById("txtOthers"+i).focus();
					document.getElementById("txtOthers"+i).style.backgroundColor = bgcolor;
					return false;
				}
				else
				{
				  objResultPoint.style.backgroundColor = fgcolor;
				}					
			}
		}
	}
		
	}
	catch(ex)
	{
				  ErrorMessage("583", ex, "1" , "Application.asp :::  registration.js  :: function EmptyAcademic", "DhakaBank Limited ");

	}

	// For loop ends here.
	return true;
	// Experience block ends here.
}
function SameDegree()
{
	var EduUB =4;
   	for(i = 4 ; i <= EduUB; i++)
	{
		if(i!=5)
		{
		var j = i+1;
		}
		var strEducationLevel = "-1";
		var strDegreeName = "S";
		var strPassingYear = "S";
		var strEducationLevel1 = "-1";
		var strDegreeName1 = "S";
		var strPassingYear1 = "S";		
		
		objEducationLevel = document.getElementById("ddlEducationLevel"+i);
		objDegreeName = document.getElementById("ddlDegreeName"+i);
		objPassingYear = document.getElementById("ddlPassingYear"+i);
		objEducationLevel1 = document.getElementById("ddlEducationLevel"+j);
		objDegreeName1 = document.getElementById("ddlDegreeName"+j);
		objPassingYear1 =  document.getElementById("ddlPassingYear"+j);
		strEducationLevel = objEducationLevel.value;
		strDegreeName = objDegreeName.value;
		strPassingYear = objPassingYear.value;		
		strEducationLevel1 = objEducationLevel1.value;
		strDegreeName1 = objDegreeName1.value;
		strPassingYear1 = objPassingYear1.value;
			
		if(strEducationLevel == "-1" || strEducationLevel1=="-1" || strDegreeName=="S" || strDegreeName1=="S" || strPassingYear == "S" || strPassingYear1 == "S" )
		{
		//objResultPoint.style.backgroundColor = bgcolor;			   
		break;
		}
		else 
		{
	//	objResultPoint.style.backgroundColor = fgcolor;
		}
	   	if(strEducationLevel == strEducationLevel1 && strDegreeName == strDegreeName1 && strPassingYear == strPassingYear1 )
		 {
			//alert(strEducationLevel + strEducationLevel1 + strDegreeName + strDegreeName1+strPassingYear+strPassingYear1) ;
			alert("You have written same academic information of PostGraduation and PostGraduation/Doctorate Level. Please verify and then continue to update.");
			objDegreeName1.focus();
		//	objDegreeName1.style.backgroundColor = bgcolor;
			return false;
			break;
		  }	
			else 
			{
			// objDegreeName1.style.backgroundColor = fgcolor;
			}		       	
	}
	return true;	
}
function EmptyPEdu()
{
	//var PEduUB = parseInt(document.getElementById("count_pedu").value);
	var i;
	var PEduUB = 3;
	// For loop starts here.
	for(i = 1; i <= PEduUB; i++)
	{
		// Variable declare and initialization.
		var strPDegree = "";
		var strPInstitute = "";
		var strPassingYear = "";
		var strPInstitute = "";
		var strPPassingYear = "";
		var strPSubject = "";

		// Object declare and initialization.
		objPDegree = document.getElementById("P_DEGREE"+i);
		objPInstitute = document.getElementById("P_INST"+i);
		objPLocation = document.getElementById("P_LOC"+i);
		objPPassingYear = document.getElementById("P_YEAR"+i);
		objPSubject = document.getElementById("P_SUB"+i);
		//alert('degree val :- '+objPInstitute.value);
		// Value of html controls.
		strPDegree = objPDegree.value;
		strPInstitute = objPInstitute.value;
		strPLocation = objPLocation.value;
		strPPassingYear = objPPassingYear.value;
		strPSubject = objPSubject.value;
				
		// Checking & focusing of html controls.	
		if(strPDegree != "" || strPInstitute != "" || strPLocation != "" || strPPassingYear != "S" || strPSubject != "")
		{//alert('PEduUB:- '+PEduUB);
			if(strPDegree == "")
			{
				alert("Degree name " + i + " can't be empty.");
				objPDegree.focus();
				objPDegree.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
			objPDegree.style.backgroundColor = fgcolor;
			}
			if(strPInstitute == "")
			{
				alert("Awarding Body " + i + " can't be empty.");
				objPInstitute.focus();
				objPInstitute.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
			objPInstitute.style.backgroundColor = fgcolor;
			}			
			if(strPLocation == "")
			{
				alert("Location of Awarding Body " + i + " can't be empty.");
				objPLocation.focus();
				objPLocation.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
			objPLocation.style.backgroundColor = fgcolor;
			}			
			if(strPPassingYear == "S")
			{
				alert("Passing of awarding year " + i + " can't be empty.");
				objPPassingYear.focus();
				return false;
			}
			else 
			{
			  objPPassingYear.style.backgroundColor = fgcolor;
			}
			if(strPSubject == "")
			{
				alert("Awarding Subject " + i + " can't be empty.");
				objPSubject.focus();
				objPSubject.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
			  objPSubject.style.backgroundColor = fgcolor;
			}

		}
		
	}
	// For loop ends here.
	return true;
	// Experience block ends here.
}


// This function is 4 empty check of Others.
function Others()
{
	// Variable declare and initialization.
	var strReading = "S";
	var strWriting = "S";
	var strSpeaking = "S";
	var strPreferedLocation = "";
	var strPreferedLocation1 = "S";
	var strPreferedLocation2 = "S";
	var strPreferedLocation3 = "S";
	
	objReading = document.getElementById("ddlReading");
	objWriting = document.getElementById("ddlWriting");
	objSpeaking = document.getElementById("ddlSpeaking");
	objPreferedLocation1 = document.getElementById("ddlPreferedLocation1");
	objPreferedLocation2 = document.getElementById("ddlPreferedLocation2");
	objPreferedLocation3 = document.getElementById("ddlPreferedLocation3");
	objDeclaration = document.getElementById("chkDeclaration");

	strReading = objReading.value;
	strWriting = objWriting.value;
	strSpeaking = objSpeaking.value;
	strPreferedLocation1 = objPreferedLocation1.value;
	strPreferedLocation2 = objPreferedLocation2.value;
	strPreferedLocation3 = objPreferedLocation3.value;

	if(strPreferedLocation1 == "Any" || strPreferedLocation2 == "Any" || strPreferedLocation3 == "Any")
	{
		strPreferedLocation = "Any";
	}

	
	 if ( CheckValidation("True",objReading ,"select","S","6","Reading  ", 1200) == false)
	{
		   return false;		   
	}	

	 if ( CheckValidation("True",objWriting ,"select","S","6","Writing  ", 1200) == false)
	{
		   return false;		   
	}	
	 if ( CheckValidation("True",objSpeaking ,"select","S","6","Speaking  ", 1200) == false)
	{
		   return false;		   
	}	
	
	
	 if ( CheckValidation("False", document.getElementById('txtExperience') ,"text","Text","5000","Experience (if any) ",800) == false)
	{
		   return false;		   
	}	
	
		 if ( CheckValidation("False", document.getElementById('txtProfessionalQualification') ,"text","Text","2000","Professional Qualification, Training etc (if any) ",800) == false)
	{
		   return false;		   
	}	
	
			
	 if ( CheckValidation("False", document.getElementById('txtAcademicDistinctions') ,"text","Text","1000","Academic Distinctions(if any) ",800) == false)
	{
		   return false;		   
	}	
	
	 if ( CheckValidation("False", document.getElementById('txtExtraCurricularActivities') ,"text","Text","1000","Extra curricular activities(if any)",800) == false)
	{
		   return false;		   
	}	


	 if ( CheckValidation("False", document.getElementById('txtComputerSkill') ,"text","Text","1000","Computer skills (if any) ",800) == false)
	{
		   return false;		   
	}	
	
	 if ( CheckValidation("False", document.getElementById('txtAnyOther') ,"text","Text","1000","Any other thing you want to disclose(if any) ",800) == false)
	{
		   return false;		   
	}	
					


	return true;
} 
function EmptyReferees()
{
	//var RefereesUB = parseInt(document.getElementById("count_ref").value);
	var RefereesUB = 2;
	var i;
	//alert(RefereesUB);
	// For loop starts here.
	for(i = 1; i <= RefereesUB; i++)
	{
		// Variable declare and initialization.
		var strRName = "";
		var strRPost = "";
		var strRAdd = "";
		var strRPhone = "";
		//var strRMobile = "";
		var strREmail = "";

		// Object declare and initialization.
		objRName = document.getElementById("txtReferenceName"+i);
		objRPost = document.getElementById("txtReferencePosition"+i);
		objRAdd = document.getElementById("txtReferenceAddress"+i);
		objRPhone = document.getElementById("txtReferencePhone"+i);
		//objRMobile = document.getElementById("txtReferenceCellPhone"+i);
		objREmail = document.getElementById("txtReferenceEmail"+i);
		
		// Value of html controls.
		strRName = objRName.value;
		strRPost = objRPost.value;
		strRAdd = objRAdd.value;
		strRPhone = objRPhone.value;
		//strRMobile = objRMobile.value;
		strREmail = objREmail.value;
				
		// Checking & focusing of html controls.	
		//if(strRName != "" || strRPost != "" || strRAdd != "" || strRPhone != "" || strRMobile != "" || strREmail != "")
		//{
		
		
		  if ( CheckValidation("True",objRName,"text","Text","100", "Name " + i + " of Reference " +i,500 ) == false)
			{
				   return false;	
				   break;	   
			}
		   if ( CheckValidation("True",objRPost,"text","Text","100","Post " + i + " of Reference " +i ,500) == false)
			{
				   return false;
				   break;		   
			}
		   if ( CheckValidation("True",objRAdd,"text","Text","255", "Address " + i + " of Reference " +i,500 ) == false)
			{
				   return false;	
				   break;	   
			}
		   if ( CheckValidation("True",objRPhone,"text","Number","50", "Phone " + i + " of Reference " +i ,500) == false)
			{
				   return false;	
				   break;	   
			}
		   if ( CheckValidation("False",objREmail,"email","Text","100", "Email " + i + " of Reference " +i,500 ) == false)
			{
				   return false;	
				   break;	   
			}		
	
	}
	// For loop ends here.
	return true;
	// Experience block ends here.
}


// This function is 4 password checking
function EmptyPassword()
{
	var strPassword = "";
	var strConfirmPassword = "";

	// Object declare and initialization.
	objDeclaration = document.getElementById("chkDeclaration");
	objPassword = document.getElementById("txtPassword");
	objConfirmPassword = document.getElementById("txtConfirmPassword");
	
	// Value of html controls.
	strPassword = objPassword.value;
	strConfirmPassword = objConfirmPassword.value;
			
	// Checking & focusing of html controls.	
	if(document.getElementById("chkDeclaration").checked == false)
	{
		popup("Willing to work any branch of dhaka bank should be selected .",400);
		objDeclaration.focus();
		objDeclaration.style.backgroundColor = bgcolor;
		return false;
	}	
			else 
			{
			  objDeclaration.style.backgroundColor = fgcolor;
			}	
			
 if ( CheckValidation("True",objPassword,"pass",objConfirmPassword,"20","Password/Re-enter Password ", 400) == false)
	{
			  return false;		   
	}	
	
	return true;	
}

// This function is 4 empty check.
function EmptyCheck()
{
	var tf = true;
	// 4 Personal block.  
	/*   */     
	//alert("hello there")
	if(EmptyPersonal() == false)
	{
		//alert(1);
		tf = false;
		return false;
	}
	// 4 Academic block.  
	/*  */    
	if(EmptyAcademic() == false)
	{
		//alert(2);
		tf = false;
		return false;
	}
	
  if(ResultChekingForJobPost() == false)
   {
	   return false;
   }
	      
	if(Others() == false)
	{
		//alert(3);
		//tf = false;
		return false;
	}
	// 4 Password block.  
	 
	if(EmptyReferees() == false)
	{
	//	tf = false;
		return false;
	} 
	     
	if(EmptyPassword() == false)
	{
	//	tf = false;
		return false;
	}	
	return true;
}

// clearIt()
function clearIt()
{
   document.getElementById("infoLayer").innerHTML = "";
   document.getElementById("infoLayer").style.display = "none";
   document.getElementById("hideLayer").innerHTML = "";
   document.getElementById("hideLayer").style.display = "none";
  
}	

function validate(evt) {
  var theEvent = evt || window.event;
  var key = theEvent.keyCode || theEvent.which;
  key = String.fromCharCode( key );
  var regex = /[0-9]|\./;
  if( !regex.test(key) ) {
    theEvent.returnValue = false;
    theEvent.preventDefault();
  }
}

function onlyNumbers(e)
{
var keynum;
var keychar;
var numcheck;
 
if(window.event) // IE
  {
  keynum = e.keyCode;
  }
else if(e.which) // Netscape/Firefox/Opera
  {
  keynum = e.which;
  }
keychar = String.fromCharCode(keynum);
numcheck = /\d/;
return numcheck.test(keychar);
}


function intonly(myfield, e, dec)
{
var key;
var keychar;
 
if (window.event)
   key = window.event.keyCode;
else if (e)
   key = e.which;
else
   return true;
keychar = String.fromCharCode(key);
 
// control keys
if ((key==null) || (key==0) || (key==8) || 
    (key==9) || (key==13) || (key==27) )
   return true;

else if ((("0123456789").indexOf(keychar) > -1))
   return true; 
// numbers

 
 
else
   return false;
}

function resultPoint(myfield, e, dec)
{
var key;
var keychar;
 
if (window.event)
   key = window.event.keyCode;
else if (e)
   key = e.which;
else
   return true;
keychar = String.fromCharCode(key);
 
// control keys
if ((key==null) || (key==0) || (key==8) || 
    (key==9) || (key==13) || (key==27) || (key==46) )
   return true;
 
// numbers
else if ((("0123456789").indexOf(keychar) > -1))
   return true;
 
 
else
   return false;
}

function CorrectChar(myfield, e, dec)
{
var key;
var keychar;
 
if (window.event)
   key = window.event.keyCode;
else if (e)
   key = e.which;
else
   return true;
keychar = String.fromCharCode(key);
 
// control keys
if ((key==null) || (key==0) || (key==8) || 
    (key==9) || (key==13) || (key==27) )
   return true;
 
// numbers

else if ((("\`~!@#$%^&*()_-+=[]{}'()/*|\';\/*: \?/.,><' ").indexOf(keychar) > -1))
   return false; 
 
else if ((key==34) || (key==59) || (key==47) || (key==92))
   return false;
   
else
   return true ;
}

