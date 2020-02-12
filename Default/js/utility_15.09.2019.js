// JavaScript Document

//var bgcolor = "#F9A51B";
//var bgcolor = "#F00";
var bgcolor = "#800000";
var fgcolor = "#FFF";
var txtcolor = "#000";



function isNumber(s) {
    if (s === "" || s === null) {
        return false;
    } else {
        var number = parseInt(s);
        if (number == 'NaN') {
            return false;
        } else {
            return true;
        }
    }
}

function  ErrorMessage(LineNumber, errLog, flag , pageName, systemName)
{
	//alert(ip);
	try
	{
	//if(ip == "123.49.32.141"  || ip == "serverbdj" ||  ip == "192.168.100.134")

		ShowMessage_ADOErrors ( errLog.message, pageName , LineNumber, systemName );
	}
	catch(ex)
	{
			ShowMessage_ADOErrors ( errLog.message, pageName , LineNumber, systemName );
		   
		    //alert("error"+ex.message);
	}
}


function addElement() {

  var ni = document.getElementById('myDiv');

  var numi = document.getElementById('theValue');

  var num = (document.getElementById('theValue').value -1)+ 2;

  numi.value = num;

  var newdiv = document.createElement('div');

  var divIdName = 'my'+num+'Div';

  newdiv.setAttribute('id',divIdName);

  newdiv.innerHTML = 'Element number '+num+' has been added! <a href=\'#\' onclick=\'removeElement('+divIdName+')\'>Remove the div "'+divIdName+'"</a>';

  ni.appendChild(newdiv);

}

function removeElement(divNum) {

  var d = document.getElementById('myDiv');

  var olddiv = document.getElementById(divNum);

  d.removeChild(olddiv);

}

/*
$(document).ready(function () {

	// if user clicked on button, the overlay layer or the dialogbox, close the dialog-edit	
	$('a.btn-ok, #dialog-edit-overlay, #dialog-edit-box').click(function () {		
		$('#dialog-edit-overlay, #dialog-edit-box').hide();		
		return false;
	});
	
	// if user resize the window, call the same function again
	// to make sure the overlay fills the screen and dialogbox aligned to center	
	$(window).resize(function () {
		
		//only do it if the dialog-edit box is  not hidden
		if (!$('#dialog-edit-box').is(':hidden')) popup();		
	});	
	
	
});*/
/*
		$(document).ready(function () {
  	$(".button").fancybox({
		openEffect : 'elastic',
		openSpeed  : 600,
		closeEffect : 'elastic',
		closeSpeed  : 600 ,
		closeClick : true,
		'scrolling'  : 'yes',
		 'type' : 'inline'
	 });
});			
                     
 
     
	$(document).ready(function () {
	$(".BDJButton3").fancybox({
		openEffect : 'elastic',
		openSpeed  : 600,
		closeEffect : 'elastic',
		closeSpeed  : 600 ,
		closeClick : true,
		href : '#Wrapperbox',
		'scrolling'  : 'yes',
		'type' : 'inline'
	});
}); 
*/
//Popup dialog-edit


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


 function EmailTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName)
 {
	//var filter = /^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/;
	
	//var filter = /^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/;
    
	  var filter=/^[_a-zA-Z0-9-\s]+(\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,4})$/;
	
	if(Required == "True")
       {  
	   
			  if (!filter.test(strVariable.value.trim())) 
			 {
				   ShowValidateMsg( "Invalid " + strMsgVariableName + " address .", strVariable);
				return false;
			 }else{
				 //strVariable.style.backgroundColor = fgcolor;
				 strVariable.style.borderColor = "Orange";
				 return true;
				 
			 }	   
	   

	  }
	  else
	  {
		  if(strVariable.value != "")
		  {
				if (filter.test(strVariable.value.trim()))
				{			
					strVariable.style.backgroundColor = fgcolor;
					return true;
				}
				else 
				{
					//document.getElementById(strID).focus();
				   ShowValidateMsg( "Invalid " + strMsgVariableName + " address .", strVariable);
					return false;
				}
		   }
		   else
		   {
				strVariable.style.backgroundColor = fgcolor;
				return true;
		   }
	  }
 }


function  PasswordTypeInputValidation(Required,strVariable,FormInputType,DbType,DbFieldSize,strMsgVariableName,clientTop)
{
	if(Required == "True")
	{
	var strPassword = strVariable;
	var strConfirmpassword = DbType;
       if(strPassword.value == "")
	     {
					 ShowValidateMsg( strMsgVariableName+"  is  empty ",strPassword,clientTop );
					 return false;
		 }
	  if(strConfirmpassword.value  ==  "" )
	    {
					 ShowValidateMsg( strMsgVariableName +"  is  empty ",strConfirmpassword,clientTop );
					 return false;
		}
	  var strLengthPass =  strPassword.value.trim().length;
	  var strLengthConPass = strConfirmpassword.value.trim().length;
	  
	  var DbFieldSize = parseInt(DbFieldSize);
		if (strLengthPass > DbFieldSize)
		{ 
			  ShowValidateMsg(strMsgVariableName + " can't be greater than " + DbFieldSize.toString()+ " characters " , strPassword,clientTop);
		} 
		else
		{
			strPassword.style.backgroundColor = fgcolor;
		}
		if (strLengthConPass > DbFieldSize)
		{ 
			  ShowValidateMsg( strMsgVariableName + " can't be greater than " + DbFieldSize.toString()+ " characters " , strConfirmpassword,clientTop);
		} 
		else
		{
			strConfirmpassword.style.backgroundColor = fgcolor;
		}

	    if(strPassword.value.trim() != strConfirmpassword.value.trim())
		  {
					 ShowValidateMsg( strMsgVariableName+"  are not same ! ",strPassword,clientTop );
					 return false;
		  }
		  
		if(strPassword.value !="" || strConfirmpassword.value !="")
		{
			var arr = new Array("`","~","!","@","#","$","%","^","&","*","(",")","-","+","=","_","[","]","{","}","/","?",".",",","<",">","|","\\","\'",":",";","\""); 
			
			for(i=0;i<arr.length;i++)
			{
				if(strPassword.value.trim().indexOf(arr[i])>-1)
				{
					alert("Your given password contains "+arr[i]+ " characters, which is not acceptable. Please mention password without "+arr[i]+" type of Charecters" );				
					return false;
					break;
				}
				if(strConfirmpassword.value.trim().indexOf(arr[i])>-1)
				{
					alert("Your given password contains "+arr[i]+ " characters, which is not acceptable. Please mention password without "+arr[i]+" type of charecters" );				
					return false;
					break;
				}
			}
			 
		}	
	}
   return true;	 
}
function   RadioTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName,clientTop)
 {
   if(Required == "True")
       {  
/*	   alert(strVariable.value);
*/       if(strVariable.checked == false && DbType.checked == false )
	     { 
	        ShowValidateMsg(strMsgVariableName + " should be selected.", strVariable,clientTop);
			return false;
		 }
	   else
	    {
			strVariable.style.backgroundColor = fgcolor;
		}
	  }
 }
 

function PhotoTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName,clientTop)
 {

 if ( Required == "True" && DbFieldSize == "" && DbFieldSize.length == 0  ) 
   {
	if ( strVariable == "" || strVariable.length == 0 )
	  { 
	      ShowValidateMsg(" Please upload a " + clientTop, document.getElementById('File1'),clientTop);
		 
			return false;		 
	  }
	
//  url22 = split(strVariable,"?")
//  url44 = url22(0)
//  url66 = split(url44, "http://ers.bdjobs.com/applications/ImageResize/photos/trustbank/temp/")
//  imgERStemp = url66(1)
//	dim objFSO99
//	set objFSO99=Server.CreateObject("Scripting.FileSystemObject")
//	dir99 = Request.ServerVariables("APPL_PHYSICAL_PATH")& "applications\ImageResize\photos\trustbank\temp\"
//
//	photoTemp = ""
//	photoTemp = dir99 & imgERStemp
//	
//		 if objFSO99.FileExists(photoTemp) then
//		 else
//	      Call  ShowValidateMsg(" Please upload a  "&strMsgVariableName& "<br />Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
//	      Response.End()
//	     End if 	   
   
	}
 }
 
 
 
 function SignatureTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName,clientTop)
  {
 if ( Required == "True" ) 
   {
	if ( strVariable == "" || strVariable.length == 0 )
	  { 
	      ShowValidateMsg2(" Please upload a "+clientTop, document.getElementById('file2'),clientTop);
		 
			return false;		 
	  }
//	
//  url222 = split(strVariable,"?")
//  url444 = url222(0)
// ' Response.Write("<br>url444:"&url444)
//  
//  url666 = split(url444, "http://ers.bdjobs.com/applications/ImageResize/photos/trustbank/signature/temp/")
//  imgERStemp2 = url666(1)
// ' Response.Write("<br>imgERStemp2:"&imgERStemp2)
//
//
//	dim objFSO999
//	set objFSO999=Server.CreateObject("Scripting.FileSystemObject")
//	dir999 = Request.ServerVariables("APPL_PHYSICAL_PATH")& "applications\ImageResize\photos\trustbank\signature\temp\"
//
//	photoTemp2 = ""
//	photoTemp2 = dir999 & imgERStemp2
//	
//		if objFSO999.FileExists(photoTemp2) then
//          'response.Write("signature file is found ")
//		else
//	     Call  ShowValidateMsg(" Please upload a  "&strMsgVariableName& "<br />Click <a href='#' style='color:#F00;' onclick='javascript:PageSubmit();return false;'>here</a> to retry.")
//	     Response.End()
//	   End if 	   
	   
	}
  }






function SelectTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName,clientTop)
 {
   if(Required == "True")
       {  
/*	   alert(strVariable.value);
*/       if(strVariable.value == DbType || strVariable.value == "Bangladesh" )
	     { 
	        ShowValidateMsg(strMsgVariableName + " must be selected.", strVariable,clientTop);
			return false;
		 }
	   else
	    {
			strVariable.style.backgroundColor = fgcolor;
		}
	  }
 }
 
function CheckValidation(Required,strVariable,FormInputType,DbType,DbFieldSize,strMsgVariableName,clientTop)
{
	 var txt = ""
	 try 
	 {
		 switch(FormInputType)
		 {
			  case  "text" : 
			      txt = TextTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName,clientTop);
			  break;
			  case "select":
			     txt = SelectTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName,clientTop);
			   break;
			  case "email":
			     txt = EmailTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName,clientTop);
			   break;
			  case "pass":
			     txt = PasswordTypeInputValidation(Required,strVariable,FormInputType,DbType,DbFieldSize,strMsgVariableName,clientTop);
			   break;
			  case "Photo":
			     txt = PhotoTypeInputValidation(Required,strVariable,FormInputType,DbType,DbFieldSize,strMsgVariableName,clientTop);
			   break;
			   
			  case "Signature":
			     txt = SignatureTypeInputValidation(Required,strVariable,FormInputType,DbType,DbFieldSize,strMsgVariableName,clientTop);
			   break;
			   			   			   
			  case "radio":
			     txt = RadioTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName,clientTop);
			   break;			 
			    default: 
			  break;
		 }
		 if ( txt == false )
		 {
			  return false;
		 }
		 else
		 {
		 var  correctVariable = "";
		 
		 if(FormInputType == 'Photo' || FormInputType == 'Signature' )
		 {
			 
		 }
		 else
		 {
		 correctVariable = checkCopyPestFromWord(strVariable);
	//	 return correctVariable;
      	 strVariable.style.borderColor = txtcolor;
		 }
		 }
	 }
	 catch(ex)
	 {		   
		//  ShowValidateMsg(strMsgVariableName+" is invalid and  has some errors  "+ex.message, strVariable);
		  ErrorMessage("451", ex, "1" , "application.asp :::  utilty.js  :: function CheckValidation", "DSEBD");

	     // return false; 
	 }
	return true; 	 
}


function TextTypeInputValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName,clientTop)
{
	 var txt = "";
	 var rgEx = /^[ A-Za-z0-9\s./''-]*$/;
	 var obj = strVariable.value.trim();
	 
//     if(!rgEx.test(obj.trim())){
//					 data_ok = false;
//					
//						ShowValidateMsg("Please use only letters (a-z),numbers (0-9),punctuations like (.),(-),(\') and space.",strVariable,clientTop);
//						
//						 return false;
//	 }
	 
	
	 if(Required == "True")
	 {
		 
		
		 
		 if (obj ==  ""  || obj == null || obj ==  " "  || obj ==  "  "  || obj ==  "   "|| obj ==  "    " || obj ==  "     " || obj ==  "      " || obj ==  "       " || obj ==  "        " || obj ==  "         " || obj ==  "          " || obj ==  "           " || obj ==  "            " || obj ==  "           " || obj ==  "            " || obj ==  "             " || obj ==  "             " || obj ==  "             " || obj ==  "               " || obj ==  "0.00" || obj.length==0 ||  obj.trim() == ''  )
		 {
			 ShowValidateMsg(strMsgVariableName +"  can't be empty.",strVariable,clientTop);
			 return false;
		 }	
		// else if(obj.indexOf("&") > -1 || obj.indexOf("%") > -1 || obj.indexOf("'") > -1 || obj.indexOf(" ") > -1)
//		 {
//			 ShowValidateMsg(strMsgVariableName +"  has invalid charecters.\n please remove &/%/' ",strVariable,clientTop);
//			 return false; 
//		 }
		 
		 else
		 {
		       txt =  RequiredTextTypeDataValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName,clientTop);
				 
		 }
	 }
	 else 
	 {   	      
		     txt  =   RequiredTextTypeDataValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName,clientTop);
	 }
	 
	 if(txt == false)
	 {
		 return false;
	 }
	 else
	 {
		 return true ; 
	 }

}

function  RequiredTextTypeDataValidation(Required,strVariable,DbType,DbFieldSize,strMsgVariableName,clientTop)
 {
      var strDataType = DbType.toString(); 
			   switch(strDataType)
			     { 
				 case "Text":
					  var strLength =  strVariable.value.trim().length;
                     // alert(strVariable);
					  var DbFieldSize = parseInt(DbFieldSize);
						  if (strLength > DbFieldSize)
						    { 
							  ShowValidateMsg(strMsgVariableName + " can't be greater than " + DbFieldSize.toString()+ " characters " , strVariable);
		                    	 return false;
							} 
						else
						{
							strVariable.style.backgroundColor = fgcolor;
						}
					break;
				  case  "Number":
				     if(strVariable.value !="")
					  {
                        if (isNumber(strVariable.value.trim()) == false)
						  {							   
					        ShowValidateMsg(strMsgVariableName + " should be number or numeric " , strVariable);
			                return false;
						  }					 	  
						else
						{
							strVariable.style.backgroundColor = fgcolor;
						}
					  }
				break;
				default : 
				break;
		}
	
}


function  ShowValidateMsgNext(strMsg)
{
	alert(strMsg);

}

function CGPATypeInputValidation_Edit(Required,strCgpaOrMarks,cgPaScale,strMsgVariableName,obj,row,strJobId,strEducationLevel)	
  {
	  //alert(strEducationLevel + row);
	 
   try
   {
	if(strEducationLevel < 3)
	{
		var resultRange = 2;
	}
	else
	{
		var resultRange = 2;
	}
	
    if ( isNaN(strCgpaOrMarks) == true  || isNaN(cgPaScale) == true  ) 
	{
		 ShowValidateMsg( "Invalid  "+strMsgVariableName + " ",obj,row);
		 return false;
	}
	   
   if ( Required == "True")
    {		
		if (cgPaScale == "-1" )
		{ 
			ShowValidateMsg( "Please select CGPA/GPA scale  ",obj,row);
			return false;
		} 	 
		if (parseFloat(strCgpaOrMarks) > parseFloat(cgPaScale) ) 
		{ 
			ShowValidateMsg( "Invalid  "+strMsgVariableName + " ",obj,row);
			return false;
		}
					
		if(strEducationLevel > 2  )
		{	
			if( (parseFloat(strCgpaOrMarks) < parseFloat(resultRange))  && parseFloat(cgPaScale) == 4 )
			{
			//ShowValidateMsg( "Invalid  "+strMsgVariableName + " ",obj,row);
				ShowValidateMsg( "CGPA less than "+ resultRange +" out of 4 is not acceptable ",obj,row);
				return false;
			}
		
			if( (parseFloat(strCgpaOrMarks) < parseFloat(resultRange)) && parseFloat(cgPaScale) == 5 )
			{
				 //ShowValidateMsg( "Invalid  "+strMsgVariableName + " ",obj,row);
				ShowValidateMsg( "CGPA less than "+ resultRange +" out of 5 is not acceptable ",obj,row);
				return false;
			}
		}
		else
		{
			if(parseFloat(strCgpaOrMarks) < parseFloat(resultRange))/*ssc , hsc, o level, a level*/
			{
				 ShowValidateMsg("CGPA/Marks can't be less than " +resultRange+ " in row " + row+ ".");
				 return false;
			}
		}
     }
	 
   }
   catch(ex)
   {
		 ShowValidateMsg( "Invalid  "+strMsgVariableName + " ",obj,row);
		 return false;
   }
	return true;
  }


function CGPATypeInputValidation(Required,strCgpaOrMarks,cgPaScale,strMsgVariableName,obj,row,strJobId)	
  {
	 
	// alert("Required"+Required+" --row"+row);
	 
   try
   {
		var resultRangeSSCHSC = 2;
		var resultRangeGradPGrad = 2;
		
    if ( isNaN(strCgpaOrMarks) == true  || isNaN(cgPaScale) == true  ) 
	{
		 ShowValidateMsg( "Invalid  "+strMsgVariableName + " ",obj,row);
		 return false;
	}
	   
   if ( Required == "True")
    {		
		if (cgPaScale == "-1" )
		{ 
			ShowValidateMsg( "Please select CGPA/GPA scale  ",obj,row);
			return false;
		} 	 
		if (parseFloat(strCgpaOrMarks) > parseFloat(cgPaScale) ) 
		{ 
			ShowValidateMsg( "Invalid  "+strMsgVariableName + " ",obj,row);
			return false;
		}
					
		if(row > 2  )
		{	
			if( (parseFloat(strCgpaOrMarks) < parseFloat(resultRangeGradPGrad))  && parseFloat(cgPaScale) == 4 )
			{
			//ShowValidateMsg( "Invalid  "+strMsgVariableName + " ",obj,row);
				ShowValidateMsg( "CGPA less than "+ resultRangeGradPGrad +" out of 4 is not acceptable ",obj,row);
				return false;
			}
		
			if( (parseFloat(strCgpaOrMarks) < parseFloat(resultRangeGradPGrad)) && parseFloat(cgPaScale) == 5 )
			{
				 //ShowValidateMsg( "Invalid  "+strMsgVariableName + " ",obj,row);
				ShowValidateMsg( "CGPA less than "+ resultRangeGradPGrad +" out of 5 is not acceptable ",obj,row);
				return false;
			}
/*			else if(parseFloat(strCgpaOrMarks) < resultRangeGradPGrad  && row == 3)
			{
			 ShowValidateMsg( "CGPA less than 2 out of 4 is not acceptable in graduate level ",obj,row);
			  return false;
			}
			
		    if(parseFloat(strCgpaOrMarks) < resultRangeGradPGrad  && row == 4)
			{
			 ShowValidateMsg( "CGPA less than 2 out of 4 is not acceptable in graduation level ",obj,row);
			  return false;
			}
*/						
			
		}
		else
		{
			if(parseFloat(strCgpaOrMarks) < parseFloat(resultRangeSSCHSC))/*ssc , hsc, o level, a level*/
			{
				 ShowValidateMsg("CGPA/Marks can't be less than " +resultRangeSSCHSC+ " in row " + row+ ".");
				 return false;
			}
		}
     }
	 
   }
   catch(ex)
   {
		 ShowValidateMsg( "Invalid  "+strMsgVariableName + " ",obj,row);
		 return false;
   }
	return true;
  }

						
function MarksTypeInputValidation(Required,strResult,strCgpaOrMarks,cgPaScale,strMsgVariableName,clientTop,strJobId)	
  {

    //alert("Required"+Required+" --row"+clientTop+"strResult"+strResult+"strCgpaOrMarks"+strCgpaOrMarks);
		
   if ( Required == "True")
    {
		
		
/*	    if(strResult == "14")
		 {   
		     ShowValidateMsg( "Second class is not acceptable in under-graduate/graduate level ",strJobId,clientTop);
			  return false;
		  
		 }		
*/		
				
		 if(strResult == "15" ) 
		  {    // first division 
		   if (parseFloat(strCgpaOrMarks) > 100  ||   parseFloat(strCgpaOrMarks)  < 60 )
		   { 
				ShowValidateMsg( "First Division Marks should be minimum 60 %" );
				return false;
		   }		   
		  }
		  
	    if(strResult == "14")
		 {   // second division 
			if ( parseFloat(strCgpaOrMarks) < 45  ||   parseFloat(strCgpaOrMarks)  > 60  )  
		    {  
				//ShowValidateMsg( "Invalid  "+strMsgVariableName + " ",obj,clientTop);
				ShowValidateMsg( "Second Division Marks should be minimum 45%");
				return false;
		    }
		 }
			
		 /*if(strResult == "13" )
			  {  // third division 
				   if (strCgpaOrMarks < 33  ||  parseInt(strCgpaOrMarks)  > 45 )
				   { 
						 ShowValidateMsg( "Invalid  "+strMsgVariableName + " ",obj,clientTop);
						 return false;
				   }
			  }
	    if(strResult ==  "12" ) 
			 {  // appeard
				if (isNaN(strCgpaOrMarks)  == true ) 
				{ 
						 ShowValidateMsg( "Invalid  "+strMsgVariableName + " ",obj,clientTop);
						 return false;
				 }		
			 }*/
		 
	}
	return true;
  }
    
 function ShowValidateMsg(strMsg,obj,clientTop)
{
//    popup(strMsg,clientTop);
    alert(strMsg);
	//obj.style.backgroundColor = bgcolor;
	if(clientTop == " scanned signature " ||clientTop == " passport size scanned photo" )
	{
	
	}
	else
	{	
	obj.style.borderColor = "Orange";
	obj.style.color = txtcolor;
	}
	obj.focus();
	return false;
}

function ShowValidateMsg2(strMsg,obj,clientTop)
{
//    popup(strMsg,clientTop);
    alert(strMsg);
	$('#File_Signature').focus();
	return false;
}


function stringToAscii (someString){
    var arry = someString.split("");
    for(var i in arry){
        arry[i] = arry[i].charCodeAt(0);
    }
    return arry;
}
function asciiToString (asciiArray){
    var str = "";
    var len = asciiArray.length;

    for(var i=0; i<len; i++){
		if (asciiArray[i]  < 32  ||  asciiArray[i]  > 126 )
		 {
			  asciiArray[i]  = 32;
		 }
		 if(asciiArray[i] == 35  || asciiArray[i] == 39)
		 {
			  asciiArray[i]  = 32;
		 }
        str += String.fromCharCode(asciiArray[i]);
    }
    return str;
}


function checkCopyPestFromWord(obj)
{
	var  strValue = obj.value.trim();
	if(strValue !="")
	{
	var  strValueInAcsii  = "";
	var  chkValueInAscii  = "";
	var  strCorrectText = "";
	var  ascii = stringToAscii(strValue);
	var  string  = asciiToString(ascii);
	//alert("Your  input:"+strValue);
	//alert("Change in ascii"+ascii);
	//alert("Your in put wiil be "+string); 
	obj.value = string;
//	alert(obj.value );
	return obj.value;
	}
}

function isNum(arg)
{
	var args = arg;

	if (args == "" || args == null || args.length == 0)
	{
		return false;
	}

	args = args.toString();

	for (var i = 0;  i<args.length;  i++)
	{
		if ((args.substring(i,i+1) < "0" || args.substring(i, i+1) > "9") && args.substring(i, i+1) != ".")
		{
		return false;
		}
	}
	return true;
}

function checkday(aa)
{
	var val = aa.value;
	var valc = val.substring(0,1);

	if(val.length>0 && val.length<3)
	{
		if(!isNum(val) || val == 0)
		{
			aa.value="";
		}
		else if( val < 1 || val > 31)
		{
			aa.value=valc;
		}
	}
	else if(val.length>2)
	{
		val = val.substring(0, 2);
		aa.value=val;
	}
}

function checkmon(aa)
{
	var val = aa.value;
	var valc = val.substring(0,1);

	if(val.length>0 && val.length<3)
	{
		if(!isNum(val) || val == 0)
		{
			aa.value="";
		}
		else if(val < 1 || val > 12)
		{
			aa.value=valc;
		}
	}
	else if(val.length>2)
	{
		val = val.substring(0, 2);
		aa.value=val;
	}
}

function checkyear(aa)
{
	var val = aa.value;
	var valc = val.substring(0,(val.length-1));

	if(val.length>0 && val.length<7)
	{
		if(!isNum(val) || val == 0)
		{
			aa.value=valc;
		}
		else if(val < 1 || val>275759)
		{
			aa.value="";
		}
	}
	else if(val.length>4)
	{
		aa.value=valc;
	}
}

function checkleapyear(datea)
{
	if(datea.getYear()%4 == 0)
	{
		if(datea.getYear()% 10 != 0)
		{
			return true;
		}
		else
		{
			if(datea.getYear()% 400 == 0)
				return true;
			else
				return false;
		}
	}
return false;
}


function DaysInMonth(Y, M) {
    with (new Date(Y, M, 1, 12)) {
        setDate(0);
        return getDate();
    }
}


function datediff(date1, date2) {
    var y1 = date1.getFullYear(), m1 = date1.getMonth(), d1 = date1.getDate(),
	 y2 = date2.getFullYear(), m2 = date2.getMonth(), d2 = date2.getDate();

    if (d1 < d2) {
        m1--;
        d1 += DaysInMonth(y2, m2);
    }
    if (m1 < m2) {
        y1--;
        m1 += 12;
    }
    return [y1 - y2, m1 - m2, d1 - d2];
}

function calage(obj)
{
	
	var str1 = obj.value;
//	alert(str);
	if(str!="")
	{
    var n1=str1.split("/"); 
	dtmDay1 = n1[1];	
    dtmMonth1 =  n1[0];	
	dtmYear1 =  n1[2];	
	obj.value = dtmDay1+"/"+dtmMonth1+"/"+dtmYear1;
	var str = obj.value;
    var n=str.split("/"); 
	dtmDay = n[0];	
    dtmMonth =  n[1];	
	dtmYear =  n[2];	
	
	var curday = 30;
	var curmon = 9;
	var curyear = 2018 ;
	var calday = dtmDay;
	var calmon = dtmMonth;
	var calyear = dtmYear;
	if(curday == "" || curmon=="" || curyear=="" || calday=="" || calmon=="" || calyear=="")
	{
		//alert("please fill all the values and click go -");
                result_empty();
	}	
	else if(curday == calday &&  curmon==calmon && curyear==calyear)
	{
            alert("Today is your birthday & your age is 0 years");
            result_empty();
        }
	else
	{
            if(parseFloat(calyear)>parseFloat(curyear))
            {   
                alert("Year in date of birth should be less than current year");
                result_empty();
            }
            else if(parseFloat(calyear)==parseFloat(curyear) && parseFloat(calmon)>parseFloat(curmon))
            {   
                alert("Month in date of birth should be less than current month");
                result_empty();
            }
            else if(parseFloat(calyear)==parseFloat(curyear) && parseFloat(calmon)==parseFloat(curmon) && parseFloat(calday)>parseFloat(curday))
            {   
                alert("Date in date of birth should be less than current date");
                result_empty();
            }
            else
            {
		var curd = new Date(curyear,curmon-1,curday);
		var cald = new Date(calyear,calmon-1,calday);
		
		var diff =  Date.UTC(curyear,curmon-1,curday,0,0,0) - Date.UTC(calyear,calmon-1,calday,0,0,0);

		var dife = datediff(curd,cald);
		document.getElementById('txtAge').value=dife[0]+" years, "+dife[1]+" months, and "+dife[2]+" days";

//		var secleft = diff/1000/60;
//		document.cir.val3.value=secleft+" minutes since your birth";
//
//		var hrsleft = secleft/60;
//		document.cir.val2.value=hrsleft+" hours since your birth";
//	
//		var daysleft = hrsleft/24;
//		document.cir.val1.value=daysleft+" days since your birth";	
//		
//		//alert(""+parseInt(calyear)+"--"+dife[0]+"--"+1);
//		var as = parseInt(calyear)+dife[0]+1;
//
//		var diff =  Date.UTC(as,calmon-1,calday,0,0,0) - Date.UTC(curyear,curmon-1,curday,0,0,0);
//		var datee = diff/1000/60/60/24;
//		document.cir.val4.value=datee+" days left for your next birthday";	
            }
	}
   }
}

function color(test)
{

	for(var j=7; j<12; j++)
	{
		var myI=document.getElementsByTagName("input").item(j);
		//myI.setAttribute("style",ch);
		myI.style.backgroundColor=test;
	}
}


function color1(test)
{
var myI=document.getElementsByTagName("table").item(0);
//myI.setAttribute("style",ch);
myI.style.backgroundColor=test;
}

function result_empty()
{
    document.cir.val.value="";
    document.cir.val1.value="";
    document.cir.val2.value="";
    document.cir.val3.value="";
    document.cir.val4.value="";
    return false;
}
function DisplayHelp(id,msg)
{
	document.getElementById(id).innerHTML = "Error:"+msg;
	document.getElementById(id).style.display = "block";
}

function HideHelp(id,msg)
{
	document.getElementById(id).innerHTML = '';
	document.getElementById(id).style.display = "none";
}
