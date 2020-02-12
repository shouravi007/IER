// JavaScript Document

function TestData()
{
	chktest = document.getElementById('chkBasicTesting').value;
	
	if ( chktest == 1 ) 
	{
		basicFill();
	}
	else if( chktest == 2 )
	{
		basicFill_level();
	}
	else
	{
		// location.reload(true);	
	}
	
}

function advancedFill()
{ 
      if(document.getElementById('chkAdvancedTesting').checked == true) 
	   {
		var is = '';	
		$('#frmApplication :input').each(function(){
		var input = this.id;
          is = is + input + ',';		
		});
		// alert(is);   // get all id of a form 

      data_array = $("#frmApplication").serialize();
     // alert(data_array);
	  
	  		 
		$("#frmApplication input[type=text]").each(function() { 
			var input = $(this);
			//alert('Type: ' + input.attr('type') + 'Name: ' + input.attr('name') + 'Value: ' + input.val());
			var x = Math.random();
			var y = encodeURIComponent(x);
			input.val(y);
		}
	);

     Validation("True",document.getElementById('NAME'),"text","Text","10"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('SEX'),"text","select","50"," Name", 1500) ;
     Validation("True",document.getElementById('FNAME'),"text","Text","100"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('DDLMOBILE'),"text","Text","20"," Name", 1500) ;
     Validation("True",document.getElementById('MOBILE'),"text","Text","9"," Name", 1500) ;
     Validation("True",document.getElementById('HOME_DIST'),"text","Text","50"," Name", 1500) ;
     Validation("True",document.getElementById('HOMEPHONE'),"text","Text","100"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('BIRTH1'),"text","Text","2"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('BIRTH2'),"text","Text","2"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('BIRTH3'),"text","Text","2"," Name", 1500) ;
     Validation("True",document.getElementById('NATION'),"text","Text","50"," Name", 1500) ;
     Validation("True",document.getElementById('E_MAIL'),"text","email","100"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('MSTATUS'),"text","Text","50"," Name", 1500) ;
     Validation("True",document.getElementById('CHILD'),"text","Text","50"," Name", 1500); 
     Validation("True",document.getElementById('CADD'),"text","Text","200"," Name", 1500); 
     Validation("True",document.getElementById('PADD'),"text","Text","100"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('EDULEVEL1'),"text","Text","50"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('EDULEVEL2'),"text","Text","50"," Name", 1500); 
     SelectTypeInput("True",document.getElementById('EDULEVEL3'),"text","Text","50"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('EDULEVEL4'),"text","Text","50"," Name", 1500) ;

	 LoadDegree(document.getElementById('EDULEVEL1'),1);
	 LoadDegree(document.getElementById('EDULEVEL2'),2);
	 LoadDegree(document.getElementById('EDULEVEL3'),3);
	 LoadDegree(document.getElementById('EDULEVEL4'),4);

     SelectTypeInput("True",document.getElementById('EDUCATION1'),"text","Text","255"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('EDUCATION2'),"text","Text","255"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('EDUCATION3'),"text","Text","255"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('EDUCATION4'),"text","Text","255"," Name", 1500) ;

     LoadJubject(document.getElementById('EDUCATION1'),1);
     LoadJubject(document.getElementById('EDUCATION2'),2);
     LoadJubject(document.getElementById('EDUCATION3'),3);
     LoadJubject(document.getElementById('EDUCATION4'),4);

     SelectTypeInput("True",document.getElementById('UNAME1'),"text","Text","255"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('UNAME2'),"text","Text","255"," Name", 1500); 
     SelectTypeInput("True",document.getElementById('UNAME3'),"text","Text","255"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('UNAME4'),"text","Text","255"," Name", 1500) ;

     $('#INSTITUTE5').val('');

     $('#FYEAR5').val('');

     Validation("True",document.getElementById('FYEAR1'),"text","Text","50"," Name", 1500) ;
     Validation("True",document.getElementById('FYEAR2'),"text","Text","50"," Name", 1500) ;
     Validation("True",document.getElementById('FYEAR3'),"text","Text","50"," Name", 1500); 
     Validation("True",document.getElementById('FYEAR4'),"text","Text","50"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('RESULT1'),"text","Text","50"," Name", 1500); 
     SelectTypeInput("True",document.getElementById('RESULT2'),"text","Text","50"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('RESULT3'),"text","Text","50"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('RESULT4'),"text","Text","50"," Name", 1500) ;

     createGrd(document.getElementById('RESULT1'),1);
     createGrd(document.getElementById('RESULT2'),2);
     createGrd(document.getElementById('RESULT3'),3);
     createGrd(document.getElementById('RESULT4'),4);

     Validation("True",document.getElementById('RESULT_ALT1'),"text","Text","50"," Name", 1500) ;
     Validation("True",document.getElementById('RESULT_ALT1'),"text","Text","50"," Name", 1500); 
     Validation("True",document.getElementById('RESULT_ALT1'),"text","Text","50"," Name", 1500) ;
     Validation("True",document.getElementById('RESULT_ALT1'),"text","Text","50"," Name", 1500); 
     SelectTypeInput("True",document.getElementById('SUBJECT1'),"text","Text","255"," Name", 1500); 
     SelectTypeInput("True",document.getElementById('SUBJECT2'),"text","Text","255"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('SUBJECT3'),"text","Text","255"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('SUBJECT4'),"text","Text","255"," Name", 1500) ;

     SelectTypeInput("True",document.getElementById('STARTER'),"text","Text","5"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('ANALYTIC'),"text","Text","5"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('COMM'),"text","Text","5"," Name", 1500); 
     SelectTypeInput("True",document.getElementById('TEAM'),"text","Text","50"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('CREATIVE'),"text","Text","50"," Name", 1500) ;
     SelectTypeInput("True",document.getElementById('INFLUENCE'),"text","Text","50"," Name", 1500); 
     SelectTypeInput("True",document.getElementById('SPEED'),"text","Text","50"," Name", 1500) ;
	   SelectTypeInput("True",document.getElementById('RELATION'),"text","Text","50"," Name", 1500) ;
     Validation("True",document.getElementById('PASSWORD'),"text","Text","8"," Name", 1500) ;
     Validation("True",document.getElementById('PASSWORD2'),"text","Text","8"," Name", 1500) ;
     Validation("True",document.getElementById('RPHONE1'),"text","Text","50"," Name", 1500) ;
     Validation("True",document.getElementById('RPHONE2'),"text","Text","50"," Name", 1500) ;
     Validation("True",document.getElementById('RE_MAIL1'),"text","email","50"," Name", 1500); 
     Validation("True",document.getElementById('RE_MAIL2'),"text","email","50"," Name", 1500) ;
     Validation("True",document.getElementById('RNAME1'),"text","Text","255"," Name", 1500) ;
     Validation("True",document.getElementById('RNAME2'),"text","Text","255"," Name", 1500) ;
     Validation("True",document.getElementById('RPOS1'),"text","Text","50"," Name", 1500) ;
     Validation("True",document.getElementById('RPOS2'),"text","Text","50"," Name", 1500) ;
     Validation("True",document.getElementById('RADD1'),"text","Text","255"," Name", 1500);
     Validation("True",document.getElementById('RADD2'),"text","Text","255"," Name", 1500); 
     Validation("True",document.getElementById('SCHOLARSHIP'),"text","Text","2000"," Name", 1500) ;
     Validation("True",document.getElementById('WHY_BANK'),"text","Text","2000"," Name", 1500) ;
     Validation("True",document.getElementById('CAREERQ'),"text","Text","2000"," Name", 1500) ;
     Validation("True",document.getElementById('CSKILL'),"text","Text","2000"," Name", 1500) ;
     Validation("True",document.getElementById('E_CUR'),"text","Text","2000"," Name", 1500) ;
     Validation("True",document.getElementById('DUTY1'),"text","Text","2000"," Name", 1500); 
     Validation("True",document.getElementById('PEDU1'),"text","Text","255"," Name", 1500) ;
     Validation("True",document.getElementById('PPLACE1'),"text","Text","255"," Name", 1500) ;
     Validation("True",document.getElementById('COMPANY1'),"text","Text","200"," Name", 1500); 
     Validation("True",document.getElementById('EPOSITION1'),"text","Text","150"," Name", 1500) ;
     Validation("True",document.getElementById('DEPT1'),"text","Text","150"," Name", 1500) ;
	  
	 $('#PFM1').val('01');
	 $('#PTM1').val('01');
	 $('#PFY1').val('2005');
	 $('#PTY1').val('2005');
	 $('#EFM1').val('01');
	 $('#ETM1').val('01');
	 $('#EFY1').val('2010');
	 $('#ETY1').val('2012');

     $('#FYEAR5').val('');
     $('#FYEAR1').val('2000');
     $('#FYEAR2').val('2002');
     $('#FYEAR3').val('2008');
     $('#FYEAR4').val('2010');
	 $('#E_MAIL').val('mahbubulhaque001@gmail.com');
	 $('#PASSWORD').val("  \\'~,");
	 $('#PASSWORD2').val("  \\'~,");
	 $('#MOBILE').val('12345678');
	// $('#RE_MAIL1').val('auny@bdjobs.com');
	// $('#RE_MAIL2').val('auny@bdjobs.com');	 
	  }
	 else
	 {
		  location.reload(true);		 
	 }
}





function basicFill()
{ 
 try
  {
     // if(document.getElementById('chkBasicTesting').checked == true) 
//	   {
//	     
		var is = '';	
		$('#frmApplication :input').each(function(){
		var input = this.id;
          is = is + input + ',';		
		});
		// alert(is);   // get all id of a form 

      data_array = $("#frmApplication").serialize();
     // alert(data_array);
	  
	  		 
		$("#frmApplication input[type=text]").each(function() { 
			var input = $(this);
			//alert('Type: ' + input.attr('type') + 'Name: ' + input.attr('name') + 'Value: ' + input.val());
			var x = Math.random();
			var y = encodeURIComponent(x);
			input.val(y);
		}
	);
    var ff = Math.random();

	 $("textarea").val('test area....  ');
	 $("text").val('text valuesss ');


	$("#txtFirstName").val(ff);
	$("#txtLastName").val(ff);
	$('#txtFathersProfession').val(ff);
	$('#txtMothersProfession').val(ff);

	$("#ddlHomeDistrict").val("5");
	$("#txtFatherName").val("md. s");
	$("#txtMotherName").val("ms. s");
	

     $("#ddlMaritalStatus").val('Married');	
	 $("#ddlReligion").val("Islam");
	 $('#ddlGender').val('Male');
	 $('#txtCellPhone').val('01939365837');
	 $('#txtContactPhone').val('01740432128');
	 $('#ddlDateOfBirthDay').val('1');
	 $('#ddlDateOfBirthMonth').val('2');
	 $('#ddlDateOfBirthYear').val('1990');
	 $('#txtEmail').val('mahbubulhaque001@gmail.com');
	 $('#txtInstitute1').val('arminatola hsihsf scholsl dhaka');
	 $('#txtInstitute2').val('dhaka residfendtional college');
	 $('#txtInstitute3').val('institue of bsgind addminstratin ');
	 $('#txtInstitute4').val('institue of bsgind addminstratin ');
//	 $('#txtInstitute5').val('institue of bsgind addminstratin ');
	 
	 $('#ddlEducationLevel1').val('1');
	 $('#ddlEducationLevel2').val('2');
	 $('#ddlEducationLevel3').val('3');
	 $('#ddlEducationLevel4').val('4');
//	 $('#ddlEducationLevel5').val('5');
	 
//	 LoadDegree(document.getElementById('ddlEducationLevel1'),1)
//	 LoadDegree(document.getElementById('ddlEducationLevel2'),2)
//	 LoadDegree(document.getElementById('ddlEducationLevel3'),3)
//	 LoadDegree(document.getElementById('ddlEducationLevel4'),4)
//	 LoadDegree(document.getElementById('ddlEducationLevel5'),5)
	 
	 $('#ddlDegreeName1').val('SSC');
	 putValueInHiddenDegreeName(document.getElementById('ddlDegreeName1'),1);
	 $('#ddlDegreeName2').val('HSC');
	 putValueInHiddenDegreeName(document.getElementById('ddlDegreeName2'),2);
	 $('#ddlDegreeName3').val('BBA');
	 putValueInHiddenDegreeName(document.getElementById('ddlDegreeName3'),3);
	 $('#ddlDegreeName4').val('MBA');
 	 putValueInHiddenDegreeName(document.getElementById('ddlDegreeName4'),4);
//	 $('#ddlDegreeName5').val('MBA');
//	 putValueInHiddenDegreeName(document.getElementById('ddlDegreeName5'),5);
//	 
     LoadJubject(document.getElementById('ddlDegreeName1'),1);
	 
     LoadJubject(document.getElementById('ddlDegreeName2'),2);
     LoadJubject(document.getElementById('ddlDegreeName3'),3);
     LoadJubject(document.getElementById('ddlDegreeName4'),4);
//     LoadJubject(document.getElementById('ddlDegreeName5'),5);
//	 
	 

     $('#ddlUniversity1').val('Dhaka Board');
     $('#ddlUniversity2').val('Dhaka Board');
     $('#ddlUniversity3').val('Barisal University');
     $('#ddlUniversity4').val('Barisal University');
	 

     $('#ddlResultYear1').val('2016');
     $('#ddlResultYear2').val('2018');
	 $('#ddlResultYear3').val('2016');
     $('#ddlResultYear4').val('2018');
//
//
     $('#ddlResultDay1').val('2');
     $('#ddlResultDay2').val('2');
	 $('#ddlResultDay3').val('2');
     $('#ddlResultDay4').val('2');
//
//
     $('#ddlResultMonth1').val('5');
     $('#ddlResultMonth2').val('5');
	 $('#ddlResultMonth3').val('5');
     $('#ddlResultMonth4').val('5');

	 

     $('#ddlPassingYear1').val('2008');
     $('#ddlPassingYear2').val('2010');
     $('#ddlPassingYear3').val('2012');
     $('#ddlPassingYear4').val('2014');

//     createGrd(document.getElementById('ddlResult1'),1)
//     createGrd(document.getElementById('ddlResult2'),2)
//     createGrd(document.getElementById('ddlResult3'),3)
//     createGrd(document.getElementById('ddlResult4'),4)
//     createGrd(document.getElementById('ddlResult5'),5)

	
	 $('#ddlResult1').val('0');
	 $('#ddlResult2').val('0');
	 $('#ddlResult3').val('0');
	 $('#ddlResult4').val('0');
	
	 $('#ddlCGPAScale1').val('5');
	 $('#ddlCGPAScale2').val('5');
	 $('#ddlCGPAScale3').val('4');
	 $('#ddlCGPAScale4').val('4');

//	   
	 $('#txtResultPoint1').val('5');
	 $('#txtResultPoint2').val('5');
	 $('#txtResultPoint3').val('4');
	 $('#txtResultPoint4').val('4');


	 $('#ddlSubject1').val('Science');
	 putValueInHidden(document.getElementById('ddlSubject1'),1);
	 $('#ddlSubject2').val('Science');
	 putValueInHidden(document.getElementById('ddlSubject2'),2);
	 $('#ddlSubject3').val('Banking');
	 putValueInHidden(document.getElementById('ddlSubject3'),3);
	 $('#ddlSubject4').val('Banking');
	 putValueInHidden(document.getElementById('ddlSubject4'),4);
//	 $('#ddlSubject5').val('Banking');
//	 putValueInHidden(document.getElementById('ddlSubject5'),5);
//	 


	 $('#ddlAcademicDist1').val('5');
	 $('#ddlAcademicDist2').val('5');
	 $('#ddlAcademicDist3').val('5');
	 $('#ddlAcademicDist4').val('5');



	 $('#txtPassword').val('123');
	 $('#txtConfirmPassword').val('123');
     $('#ddlHomeDistrict').val('40');
	 LoadThana(document.getElementById('ddlHomeDistrict').value);
     $('#ddlHomeDistrict2').val('40');
     $('#ddlThanaPrmDist').val('1271');
	 
	 $('#ddlReading').val('High');
	 $('#ddlWriting').val('High');
	 $('#ddlSpeaking').val('High');
	 $('#ddlListening').val('High');
     $('#ddlPreferedLocation1').val('Any');
     document.getElementById('chkDeclaration').checked = true; 
     $('#ddlBloodGroup').val('B+');
	 $('#txtCellPhone').val('01939365837');
	 $('#txtNationalId').val('23423234');
	 $('#P_YEAR2').val('2015');
	 $('#P_YEAR3').val('2015');
	 $('#txtReferenceEmail1').val('onowoeir@gmail.com');
	 $('#txtReferenceEmail2').val('weriwer@yahoo.com');

	 $('#txtReferenceName1').val('weriwer@yahoo.com');
	 $('#txtReferenceName2').val('weriwer@yahoo.com');
	 $('#txtReferencePosition1').val('weriwer@yahoo.com');
	 $('#txtReferencePosition2').val('weriwer@yahoo.com');
	 $('#txtReferenceAddress1').val('weriwer@yahoo.com');
	 $('#txtReferenceAddress2').val('weriwer@yahoo.com');
	 $('#txtReferencePhone1').val('weriwer@yahoo.com');
	 $('#txtReferencePhone2').val('weriwer@yahoo.com');
     setTimeout(function() {tt()},6000000000);
	 
	//  }
//	 else
//	 {
//		  location.reload(true);		 
//	 }
  }
  catch(ex)
  {
	  alert(ex.message);
  }
}



function basicSearch()
{ 
 try
  {
      if(document.getElementById('chkBasicTesting').checked == true) 
	   {

     document.getElementById('ddlEducationLevel1').checked = true; 
     document.getElementById('ddlEducationLevel2').checked = true; 
     document.getElementById('ddlEducationLevel3').checked = true; 
     document.getElementById('ddlEducationLevel4').checked = true; 


	 $('#RESULT1').val('0');
	 $('#RESULT2').val('0');
	 $('#RESULT3').val('0');
	 $('#RESULT4').val('0');
	
   
	 $('#txtPercentFrom1').val('4.5');
	 $('#txtPercentFrom2').val('4.5');
	 $('#txtPercentFrom3').val('3.25');
	 $('#txtPercentFrom4').val('3.25');


	  }
	 else
	 {
		  location.reload(true);		 
	 }
  }
  catch(ex)
  {
	  alert(ex.message);
  }
}


function basicSearch2()
{ 
 try
  {
      if(document.getElementById('chkBasicTesting_level').checked == true) 
	   {
	     

	$("#txtFirstName").val(ff);
	$("#txtLastName").val(ff);
	$('#txtFathersProfession').val(ff);
	$('#txtMothersProfession').val(ff);

	$("#ddlHomeDistrict").val("5");
	$("#txtFatherName").val("md. s");
	$("#txtMotherName").val("ms. s");
	

     $("#ddlMaritalStatus").val('Married');	
	 $("#ddlReligion").val("Islam");
	 $('#ddlGender').val('Male');
	 $('#txtCellPhone').val('01939365837');
	 $('#txtContactPhone').val('01740432128');
	 $('#ddlDateOfBirthDay').val('1');
	 $('#ddlDateOfBirthMonth').val('2');
	 $('#ddlDateOfBirthYear').val('1990');
	 $('#txtEmail').val('mahbubulhaque001@gmail.com');
	 $('#txtInstitute1').val('arminatola hsihsf scholsl dhaka');
	 $('#txtInstitute2').val('dhaka residfendtional college');
	 $('#txtInstitute3').val('institue of bsgind addminstratin ');
	 $('#txtInstitute4').val('institue of bsgind addminstratin ');
//	 $('#txtInstitute5').val('institue of bsgind addminstratin ');
	 
	 $('#ddlEducationLevel1').val('1');
	 $('#ddlEducationLevel2').val('2');
	 $('#ddlEducationLevel3').val('3');
	 $('#ddlEducationLevel4').val('4');
//	 $('#ddlEducationLevel5').val('5');
	 
	 LoadDegree(document.getElementById('ddlEducationLevel1'),1)
	 LoadDegree(document.getElementById('ddlEducationLevel2'),2)
	 LoadDegree(document.getElementById('ddlEducationLevel3'),3)
	 LoadDegree(document.getElementById('ddlEducationLevel4'),4)
//	 LoadDegree(document.getElementById('ddlEducationLevel5'),5)
	 
	 $('#ddlDegreeName1').val('SSC');
	 putValueInHiddenDegreeName(document.getElementById('ddlDegreeName1'),1);
	 $('#ddlDegreeName2').val('HSC');
	 putValueInHiddenDegreeName(document.getElementById('ddlDegreeName2'),2);
	 $('#ddlDegreeName3').val('BBA');
	 putValueInHiddenDegreeName(document.getElementById('ddlDegreeName3'),3);
	 $('#ddlDegreeName4').val('MBA');
 	 putValueInHiddenDegreeName(document.getElementById('ddlDegreeName4'),4);
//	 $('#ddlDegreeName5').val('MBA');
//	 putValueInHiddenDegreeName(document.getElementById('ddlDegreeName5'),5);
//	 
     LoadJubject(document.getElementById('ddlDegreeName1'),1);
	 
     LoadJubject(document.getElementById('ddlDegreeName2'),2);
     LoadJubject(document.getElementById('ddlDegreeName3'),3);
     LoadJubject(document.getElementById('ddlDegreeName4'),4);
//     LoadJubject(document.getElementById('ddlDegreeName5'),5);
//	 
	 

     $('#ddlUniversity1').val('Dhaka Board');
     $('#ddlUniversity2').val('Dhaka Board');
     $('#ddlUniversity3').val('Barisal University');
     $('#ddlUniversity4').val('Barisal University');
	 

     $('#ddlResultYear1').val('2016');
     $('#ddlResultYear2').val('2018');
	 $('#ddlResultYear3').val('2016');
     $('#ddlResultYear4').val('2018');
//
//
     $('#ddlResultDay1').val('2');
     $('#ddlResultDay2').val('2');
	 $('#ddlResultDay3').val('2');
     $('#ddlResultDay4').val('2');
//
//
     $('#ddlResultMonth1').val('5');
     $('#ddlResultMonth2').val('5');
	 $('#ddlResultMonth3').val('5');
  $('#ddlResultMonth4').val('5');

	 

     $('#ddlPassingYear1').val('2008');
     $('#ddlPassingYear2').val('2010');
     $('#ddlPassingYear3').val('2012');
     $('#ddlPassingYear4').val('2014');

//     createGrd(document.getElementById('ddlResult1'),1)
//     createGrd(document.getElementById('ddlResult2'),2)
//     createGrd(document.getElementById('ddlResult3'),3)
//     createGrd(document.getElementById('ddlResult4'),4)
//     createGrd(document.getElementById('ddlResult5'),5)

	
	 $('#ddlResult1').val('0');
	 $('#ddlResult2').val('0');
	 $('#ddlResult3').val('0');
	 $('#ddlResult4').val('0');
	
	 $('#ddlCGPAScale1').val('5');
	 $('#ddlCGPAScale2').val('5');
	 $('#ddlCGPAScale3').val('4');
	 $('#ddlCGPAScale4').val('4');

//	   
	 $('#txtResultPoint1').val('5');
	 $('#txtResultPoint2').val('5');
	 $('#txtResultPoint3').val('4');
	 $('#txtResultPoint4').val('4');


	 $('#ddlSubject1').val('Science');
	 putValueInHidden(document.getElementById('ddlSubject1'),1);
	 $('#ddlSubject2').val('Science');
	 putValueInHidden(document.getElementById('ddlSubject2'),2);
	 $('#ddlSubject3').val('Banking');
	 putValueInHidden(document.getElementById('ddlSubject3'),3);
	 $('#ddlSubject4').val('Banking');
	 putValueInHidden(document.getElementById('ddlSubject4'),4);
//	 $('#ddlSubject5').val('Banking');
//	 putValueInHidden(document.getElementById('ddlSubject5'),5);
//	 


//	 $('#ddlAcademicDist1').val('5');
//	 $('#ddlAcademicDist2').val('5');
//	 $('#ddlAcademicDist3').val('5');
//	 $('#ddlAcademicDist4').val('5');



	 $('#txtPassword').val('123');
	 $('#txtConfirmPassword').val('123');
     $('#ddlHomeDistrict').val('40');
	 LoadThana(document.getElementById('ddlHomeDistrict').value);
     $('#ddlHomeDistrict2').val('40');
     $('#ddlThanaPrmDist').val('1271');
	 
	 $('#ddlReading').val('High');
	 $('#ddlWriting').val('High');
	 $('#ddlSpeaking').val('High');
	 $('#ddlListening').val('High');
     $('#ddlPreferedLocation1').val('Any');
     document.getElementById('chkDeclaration').checked = true; 
     $('#ddlBloodGroup').val('B+');
	 $('#txtCellPhone').val('01939365837');
	 $('#txtNationalId').val('23423234');
	 $('#P_YEAR2').val('2015');
	 $('#P_YEAR3').val('2015');
	 $('#txtReferenceEmail1').val('onowoeir@gmail.com');
	 $('#txtReferenceEmail2').val('weriwer@yahoo.com');

	 $('#txtReferenceName1').val('weriwer@yahoo.com');
	 $('#txtReferenceName2').val('weriwer@yahoo.com');
	 $('#txtReferencePosition1').val('weriwer@yahoo.com');
	 $('#txtReferencePosition2').val('weriwer@yahoo.com');
	 $('#txtReferenceAddress1').val('weriwer@yahoo.com');
	 $('#txtReferenceAddress2').val('weriwer@yahoo.com');
	 $('#txtReferencePhone1').val('weriwer@yahoo.com');
	 $('#txtReferencePhone2').val('weriwer@yahoo.com');
     setTimeout(function() {tt()},6000000000);
	 
	  }
	 else
	 {
		  location.reload(true);		 
	 }
  }
  catch(ex)
  {
	  alert(ex.message);
  }
}


function tt()
{
	   $('#ddlThanaPrmDist').val('1271');
}





function basicFill_level()
{ 
 try
  {
  //    if(document.getElementById('chkBasicTesting_level').checked == true) 
//	   {
//	     
		var is = '';	
		$('#frmApplication :input').each(function(){
		var input = this.id;
          is = is + input + ',';		
		});
		// alert(is);   // get all id of a form 

      data_array = $("#frmApplication").serialize();
     // alert(data_array);
	  
	  		 
		$("#frmApplication input[type=text]").each(function() { 
			var input = $(this);
			//alert('Type: ' + input.attr('type') + 'Name: ' + input.attr('name') + 'Value: ' + input.val());
			var x = Math.random();
			var y = encodeURIComponent(x);
			input.val(y);
		}
	);
    var ff = Math.random();

	 $("textarea").val('test area....  ');
	 $("text").val('text valuesss ');


	$("#txtFirstName").val(ff);
	$("#txtLastName").val(ff);
	$('#txtFathersProfession').val(ff);
	$('#txtMothersProfession').val(ff);

	$("#ddlHomeDistrict").val("5");
	$("#txtFatherName").val("md. s");
	$("#txtMotherName").val("ms. s");
	

     $("#ddlMaritalStatus").val('Married');	
	 $("#ddlReligion").val("Islam");
	 $('#ddlGender').val('Male');
	 $('#txtCellPhone').val('01939365837');
	 $('#txtContactPhone').val('01740432128');
	 $('#ddlDateOfBirthDay').val('1');
	 $('#ddlDateOfBirthMonth').val('2');
	 $('#ddlDateOfBirthYear').val('1990');
	 $('#txtEmail').val('mahbubulhaque001@gmail.com');
	 $('#txtInstitute1').val('arminatola hsihsf scholsl dhaka');
	 $('#txtInstitute2').val('dhaka residfendtional college');
	 $('#txtInstitute3').val('institue of bsgind addminstratin ');
	 $('#txtInstitute4').val('institue of bsgind addminstratin ');
//	 $('#txtInstitute5').val('institue of bsgind addminstratin ');
	 
	 $('#ddlEducationLevel1').val('1');
	 $('#ddlEducationLevel2').val('2');
	 $('#ddlEducationLevel3').val('3');
	 $('#ddlEducationLevel4').val('4');
	 
	 $('#ddlAcademicDist1').val('5');
	 $('#ddlAcademicDist2').val('5');
	 
//	 $('#ddlEducationLevel5').val('5');
	// LoadDegree(document.getElementById('ddlEducationLevel1'),1)
//	 LoadDegree(document.getElementById('ddlEducationLevel2'),2)
//	 LoadDegree(document.getElementById('ddlEducationLevel3'),3)
//	 LoadDegree(document.getElementById('ddlEducationLevel4'),4)
//	 LoadDegree(document.getElementById('ddlEducationLevel5'),5)
	 
	 
	 $('#ddlDegreeName1').val('O Level');
	 putValueInHiddenDegreeName(document.getElementById('ddlDegreeName1'),1);
	 $('#ddlDegreeName2').val('A Level');
	 putValueInHiddenDegreeName(document.getElementById('ddlDegreeName2'),2);
	 $('#ddlDegreeName3').val('BBA');
	 putValueInHiddenDegreeName(document.getElementById('ddlDegreeName3'),3);
	 $('#ddlDegreeName4').val('MBA');
 	 putValueInHiddenDegreeName(document.getElementById('ddlDegreeName4'),4);
//	 $('#ddlDegreeName5').val('MBA');
//	 putValueInHiddenDegreeName(document.getElementById('ddlDegreeName5'),5);
//	 
     LoadJubject(document.getElementById('ddlDegreeName1'),1);
	 
     LoadJubject(document.getElementById('ddlDegreeName2'),2);
     LoadJubject(document.getElementById('ddlDegreeName3'),3);
     LoadJubject(document.getElementById('ddlDegreeName4'),4);
//     LoadJubject(document.getElementById('ddlDegreeName5'),5);
//	 
	 

     $('#ddlUniversity1').val('Dhaka Board');
     $('#ddlUniversity2').val('Dhaka Board');
     $('#ddlUniversity3').val('Barisal University');
     $('#ddlUniversity4').val('Barisal University');
	 
	 

     $('#ddlPassingYear1').val('2008');
     $('#ddlPassingYear2').val('2010');
     $('#ddlPassingYear3').val('2012');
     $('#ddlPassingYear4').val('2014');

//     createGrd(document.getElementById('ddlResult1'),1)
//     createGrd(document.getElementById('ddlResult2'),2)
//     createGrd(document.getElementById('ddlResult3'),3)
//     createGrd(document.getElementById('ddlResult4'),4)
//     createGrd(document.getElementById('ddlResult5'),5)

	
	 $('#ddlResult1').val('0');
	 $('#ddlResult2').val('0');
	 $('#ddlResult3').val('0');
	 $('#ddlResult4').val('0');
	
	 $('#ddlCGPAScale1').val('5');
	 $('#ddlCGPAScale2').val('5');
	 $('#ddlCGPAScale3').val('4');
	 $('#ddlCGPAScale4').val('4');

//	   
	 $('#txtResultPoint1').val('5');
	 $('#txtResultPoint2').val('5');
	 $('#txtResultPoint3').val('4');
	 $('#txtResultPoint4').val('4');



     $('#ddlResultYear1').val('2016');
     $('#ddlResultYear2').val('2018');
	 $('#ddlResultYear3').val('2016');
    $('#ddlResultYear4').val('2018');
//
//
     $('#ddlResultDay1').val('2');
     $('#ddlResultDay2').val('2');
	 $('#ddlResultDay3').val('2');
    $('#ddlResultDay4').val('2');
//
//
     $('#ddlResultMonth1').val('5');
     $('#ddlResultMonth2').val('5');
	 $('#ddlResultMonth3').val('5');
  $('#ddlResultMonth4').val('5');








	 $('#ddlSubject1').val('Science');
	 putValueInHidden(document.getElementById('ddlSubject1'),1);
	 $('#ddlSubject2').val('Science');
	 putValueInHidden(document.getElementById('ddlSubject2'),2);
	 $('#ddlSubject3').val('Law');
	 putValueInHidden(document.getElementById('ddlSubject3'),3);
	 $('#ddlSubject4').val('Law');
	 putValueInHidden(document.getElementById('ddlSubject4'),4);
//	 $('#ddlSubject5').val('Banking');
//	 putValueInHidden(document.getElementById('ddlSubject5'),5);
//	 


	 $('#txtSubO1').val('physics');
	 $('#txtSubO2').val('chemistry');
	 $('#txtSubO3').val('oio');
	 $('#txtSubO4').val('phys09ics');
	 $('#txtSubO5').val('mathematics');
	 
	 $('#txtLevel_O1').val('5');
	 $('#txtLevel_O2').val('5');
	 $('#txtLevel_O3').val('5');
	 $('#txtLevel_O4').val('5');
	 $('#txtLevel_O5').val('5');
	 
	 $('#txtSubA1').val('mathematics');
	 $('#txtSubA2').val('656565');

	 $('#txtLevel_A1').val('5');
	 $('#txtLevel_A2').val('5');

	 $('#txtPassword').val('123');
	 $('#txtConfirmPassword').val('123');
     $('#ddlHomeDistrict').val('40');
	 LoadThana(document.getElementById('ddlHomeDistrict').value);
     $('#ddlHomeDistrict2').val('40');
     $('#ddlThanaPrmDist').val('1271');
	 
	 $('#ddlReading').val('High');
	 $('#ddlWriting').val('High');
	 $('#ddlSpeaking').val('High');
	 $('#ddlListening').val('High');
     $('#ddlPreferedLocation1').val('Any');
     document.getElementById('chkDeclaration').checked = true; 
     $('#ddlBloodGroup').val('B+');
	 $('#txtCellPhone').val('01939365837');
	 $('#txtNationalId').val('23423234');
	
	 $('#P_YEAR1').val('2015');
	 $('#P_YEAR2').val('2015');
	 $('#P_YEAR3').val('2015');
	 
	 $('#cboTDuration3').val('5');
	 $('#cboTDuration2').val('5');
	 $('#cboTDuration1').val('5');
	 
	 
	 $('#cboTYear1').val('2015');
	 $('#cboTYear2').val('2015');
	 $('#cboTYear3').val('2015');
	 
	 $('#expFromYear1').val('2015');
	 $('#expFromYear2').val('2015');
	 $('#expFromYear3').val('2015');
	 
	 $('#expToYear1').val('2015');
	 $('#expToYear2').val('2015');
	 $('#expToYear3').val('2015');

	 $('#expToMonth2').val('2');
	 $('#expToMonth1').val('2');
	 $('#expToMonth3').val('2');
	 

	 $('#expFromMonth2').val('2');
	 $('#expFromMonth1').val('2');
	 $('#expFromMonth3').val('2');
	 

	 
	 $('#txtReferenceEmail1').val('onowoeir@gmail.com');
	 $('#txtReferenceEmail2').val('weriwer@yahoo.com');

	 $('#txtReferenceName1').val('weriwer@yahoo.com');
	 $('#txtReferenceName2').val('weriwer@yahoo.com');
	 $('#txtReferencePosition1').val('weriwer@yahoo.com');
	 $('#txtReferencePosition2').val('weriwer@yahoo.com');
	 $('#txtReferenceAddress1').val('weriwer@yahoo.com');
	 $('#txtReferenceAddress2').val('weriwer@yahoo.com');
	 $('#txtReferencePhone1').val('weriwer@yahoo.com');
	 $('#txtReferencePhone2').val('weriwer@yahoo.com');
     setTimeout(function() {tt()},6000000000);
	 
//	  }
//	 else
//	 {
//		  location.reload(true);		 
//	 }
  }
  catch(ex)
  {
	  alert(ex.message);
  }
}

