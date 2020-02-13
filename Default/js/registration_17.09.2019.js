var bgcolor = "#e60278"// "#FF0000";
var fgcolor = "#FFF";
var txtcolor = "#000";



function Validate()
{
	var userName = "";
	var pass = "" ; 
	
	var objUserName = document.getElementById('txtTrackingNo');
	var objPassword = document.getElementById('txtPassword');
	


	if ( CheckValidation("True",objUserName,"text","Text","20","Login Id", 1900) == false)
	{
		   return false;		   
	}


	if ( CheckValidation("True",objPassword,"text","Text","12","Password" , 1900) == false)
	{
	   return false;		   
	}
	
	
   return true; 
}



function ValidateAdmin()
{
	var userName = "";
	var pass = "" ; 
	
	var objUserName = document.getElementById('txtUserName');
	var objPassword = document.getElementById('txtPassword');
	
	
	if ( CheckValidation("True",objUserName,"text","Text","20"," User Name ") == false)
	{
	   return false;		   
	}
	
//	if ( CheckValidation("True",objPassword,"text","Text","20"," Password ") == false)
//	{
//	   return false;		   
//	}
    
	if(objPassword.value == '')
	{
		alert("Password can not be empty! ");
		objPassword.focus();
		return false;
	}
	
    return true; 
}



/*<SCRIPT LANGUAGE="JavaScript">*/


/**********************  FOR INSTITUTE FIELD  *********************/

function createEdu(myobj,place)
{
	obj_name = "sp_edu"+place;
	if(myobj.value == "Others")
	{
		document.getElementById("sp_edu"+place).innerHTML="<font face='Verdana' color='#FF0000' size='1'>* Institute Name</font><br><input type='text' name='txtUniversity"+place+"' id='txtUniversity"+place+"' maxlength='255'  class = 'form-control'   onblur = 'putValueInHiddenOthers(this,"+place+");'>"
	}	
	else if(myobj.value == "Foreign")
	{
		document.getElementById("sp_edu"+place).innerHTML ="<font face='Verdana' color='#FF0000' size='1'>* Campus location<br><select id='ddlCountry"+place+"' name='ddlCountry"+place+"'  class = 'form-control'   onchange = 'putValueInHiddenCountry(this,"+place+");'><option value='Select' selected>Select</option>  <option value='Afghanistan' id='AF'>Afghanistan </option>  <option value='Albania' id='AL'>Albania </option>  <option value='Algeria' id='DZ'>Algeria </option>  <option value='American Samoa' id='AS'>American Samoa </option>  <option value='Andorra' id='AD'>Andorra </option>  <option value='Angola' id='AO'>Angola </option>  <option value='Anguilla' id='AI'>Anguilla </option>  <option value='Antarctica' id='AQ'>Antarctica </option>  <option value='Antigua and Barbuda' id='AG'>Antigua and Barbuda</option>  <option value='Argentina' id='AR'>Argentina</option>  <option value='Armenia' id='AM'>Armenia</option>  <option value='Aruba' id='AW'>Aruba</option>  <option value='Australia' id='AU'>Australia</option>  <option value='Austria' id='AT'>Austria</option>  <option value='Azerbaijan' id='AZ'>Azerbaijan</option>  <option value='Bahamas' id='BS'>Bahamas</option>  <option value='Bahrain' id='BH'>Bahrain</option>  <option value='Bangladesh' id='BD'>Bangladesh</option>  <option value='Barbados' id='BB'>Barbados</option>  <option value='Belarus' id='BY'>Belarus</option>  <option value='Belgium' id='BE'>Belgium</option>  <option value='Belize' id='BZ'>Belize</option>  <option value='Benin' id='BJ'>Benin</option>  <option value='Bermuda' id='BM'>Bermuda</option>  <option value='Bhutan' id='BT'>Bhutan</option>  <option value='Bolivia' id='BO'>Bolivia</option>  <option value='Bosnia and Herzegovina' id='BA'>Bosnia and Herzegovina</option>  <option value='Botswana' id='BW'>Botswana</option>  <option value='Bouvet Island' id='BV'>Bouvet Island</option>  <option value='Brazil' id='BR'>Brazil</option>  <option value='British Indian Ocean Territory' id='IO'>British Indian Ocean Territory</option>  <option value='Brunei' id='BN'>Brunei</option>  <option value='Bulgaria' id='BG'>Bulgaria</option>  <option value='Burkina Faso' id='BF'>Burkina Faso</option>  <option value='Burundi' id='BI'>Burundi</option>  <option value='Cambodia' id='KH'>Cambodia</option>  <option value='Cameroon' id='CM'>Cameroon</option>  <option value='Canada' id='CA'>Canada</option>  <option value='Cape Verde' id='CV'>Cape Verde</option>  <option value='Cayman Islands' id='KY'>Cayman Islands</option>  <option value='Central African Republic' id='CF'>Central African Republic</option>  <option value='Chad' id='TD'>Chad</option>  <option value='Chile' id='CL'>Chile</option>  <option value='China' id='CN'>China</option>  <option value='Christmas Island' id='CX'>Christmas Island</option>  <option value='Cocos (Keeling) Islands' id='CC'>Cocos (Keeling) Islands</option>  <option value='Colombia' id='CO'>Colombia</option>  <option value='Comoros' id='KM'>Comoros</option>  <option value='Congo' id='CG'>Congo</option>  <option value='Cook Islands' id='CK'>Cook Islands</option>  <option value='Costa Rica' id='CR'>Costa Rica</option>  <option value='Côte d&#39;Ivoire' id='CI'>Côte d&#39;Ivoire</option>  <option value='Croatia (Hrvatska)' id='HR'>Croatia (Hrvatska)</option>  <option value='Cuba' id='CU'>Cuba</option>  <option value='Cyprus' id='CY'>Cyprus</option>  <option value='Czech Republic' id='CZ'>Czech Republic</option>  <option value='Congo (DRC)' id='CD'>Congo (DRC)</option>  <option value='Denmark' id='DK'>Denmark</option>  <option value='Djibouti' id='DJ'>Djibouti</option>  <option value='Dominica' id='DM'>Dominica</option>  <option value='Dominican Republic' id='DO'>Dominican Republic</option>  <option value='East Timor' id='TP'>East Timor</option>  <option value='Ecuador' id='EC'>Ecuador</option>  <option value='Egypt' id='EG'>Egypt</option>  <option value='El Salvador' id='SV'>El Salvador</option>  <option value='Equatorial Guinea' id='GQ'>Equatorial Guinea</option>  <option value='Eritrea' id='ER'>Eritrea</option>  <option value='Estonia' id='EE'>Estonia</option>  <option value='Ethiopia' id='ET'>Ethiopia</option>  <option value='Falkland Islands (Islas Malvinas)' id='FK'>Falkland Islands (Islas Malvinas)</option>  <option value='Faroe Islands' id='FO'>Faroe Islands</option>  <option value='Fiji Islands' id='FJ'>Fiji Islands</option>  <option value='Finland' id='FI'>Finland</option>  <option value='France' id='FR'>France</option>  <option value='French Guiana' id='GF'>French Guiana</option>  <option value='French Polynesia' id='PF'>French Polynesia</option>  <option value='French Southern and Antarctic Lands' id='TF'>French Southern and Antarctic Lands</option>  <option value='Gabon' id='GA'>Gabon</option>  <option value='Gambia' id='GM'>Gambia</option>  <option value='Georgia' id='GE'>Georgia</option>  <option value='Germany' id='DE'>Germany</option>  <option value='Ghana' id='GH'>Ghana</option>  <option value='Gibraltar' id='GI'>Gibraltar</option>  <option value='Greece' id='GR'>Greece</option>  <option value='Greenland' id='GL'>Greenland</option>  <option value='Grenada' id='GD'>Grenada</option>  <option value='Guadeloupe' id='GP'>Guadeloupe</option>  <option value='Guam' id='GU'>Guam</option>  <option value='Guatemala' id='GT'>Guatemala</option>  <option value='Guinea' id='GN'>Guinea</option>  <option value='Guinea-Bissau' id='GW'>Guinea-Bissau</option>  <option value='Guyana' id='GY'>Guyana</option>  <option value='Haiti' id='HT'>Haiti</option>  <option value='Heard Island and McDonald Islands' id='HM'>Heard Island and McDonald Islands</option>  <option value='Honduras' id='HN'>Honduras</option>  <option value='Hong Kong SAR' id='HK'>Hong Kong SAR</option>  <option value='Hungary' id='HU'>Hungary</option>  <option value='Iceland' id='IS'>Iceland</option>  <option value='India' id='IN'>India</option>  <option value='Indonesia' id='ID'>Indonesia</option>  <option value='Iran' id='IR'>Iran</option>  <option value='Iraq' id='IQ'>Iraq</option>  <option value='Ireland' id='IE'>Ireland</option>  <option value='Israel' id='IL'>Israel</option>  <option value='Italy' id='IT'>Italy</option>  <option value='Jamaica' id='JM'>Jamaica</option>  <option value='Japan' id='JP'>Japan</option>  <option value='Jordan' id='JO'>Jordan</option>  <option value='Kazakhstan' id='KZ'>Kazakhstan</option>  <option value='Kenya' id='KE'>Kenya</option>  <option value='Kiribati' id='KI'>Kiribati</option>  <option value='Korea' id='KR'>Korea</option>  <option value='Kuwait' id='KW'>Kuwait</option>  <option value='Kyrgyzstan' id='KG'>Kyrgyzstan</option>  <option value='Laos' id='LA'>Laos</option>  <option value='Latvia' id='LV'>Latvia</option>  <option value='Lebanon' id='LB'>Lebanon</option>  <option value='Lesotho' id='LS'>Lesotho</option>  <option value='Liberia' id='LR'>Liberia</option>  <option value='Libya' id='LY'>Libya</option>  <option value='Liechtenstein' id='LI'>Liechtenstein</option>  <option value='Lithuania' id='LT'>Lithuania</option>  <option value='Luxembourg' id='LU'>Luxembourg</option>  <option value='Macao SAR' id='MO'>Macao SAR</option>  <option value='Macedonia, Former Yugoslav Republic of' id='MK'>Macedonia, Former Yugoslav Republic of</option>  <option value='Madagascar' id='MG'>Madagascar</option>  <option value='Malawi' id='MW'>Malawi</option>  <option value='Malaysia' id='MY'>Malaysia</option>  <option value='Maldives' id='MV'>Maldives</option>  <option value='Mali' id='ML'>Mali</option>  <option value='Malta' id='MT'>Malta</option>  <option value='Marshall Islands' id='MH'>Marshall Islands</option>  <option value='Martinique' id='MQ'>Martinique</option>  <option value='Mauritania' id='MR'>Mauritania</option>  <option value='Mauritius' id='MU'>Mauritius</option>  <option value='Mayotte' id='YT'>Mayotte</option>  <option value='Mexico' id='MX'>Mexico</option>  <option value='Micronesia' id='FM'>Micronesia</option>  <option value='Moldova' id='MD'>Moldova</option>  <option value='Monaco' id='MC'>Monaco</option>  <option value='Mongolia' id='MN'>Mongolia</option>  <option value='Montserrat' id='MS'>Montserrat</option>  <option value='Morocco' id='MA'>Morocco</option>  <option value='Mozambique' id='MZ'>Mozambique</option>  <option value='Myanmar' id='MM'>Myanmar</option>  <option value='Namibia' id='NA'>Namibia</option>  <option value='Nauru' id='NR'>Nauru</option>  <option value='Nepal' id='NP'>Nepal</option>  <option value='Netherlands' id='NL'>Netherlands</option>  <option value='Netherlands Antilles' id='AN'>Netherlands Antilles</option>  <option value='New Caledonia' id='NC'>New Caledonia</option>  <option value='New Zealand' id='NZ'>New Zealand</option>  <option value='Nicaragua' id='NI'>Nicaragua</option>  <option value='Niger' id='NE'>Niger</option>  <option value='Nigeria' id='NG'>Nigeria</option>  <option value='Niue' id='NU'>Niue</option>  <option value='Norfolk Island' id='NF'>Norfolk Island</option>  <option value='North Korea' id='KP'>North Korea</option>  <option value='Northern Mariana Islands' id='MP'>Northern Mariana Islands</option>  <option value='Norway' id='NO'>Norway</option>  <option value='Oman' id='OM'>Oman</option>  <option value='Pakistan' id='PK'>Pakistan</option>  <option value='Palau' id='PW'>Palau</option>  <option value='Panama' id='PA'>Panama</option>  <option value='Papua New Guinea' id='PG'>Papua New Guinea</option>  <option value='Paraguay' id='PY'>Paraguay</option>  <option value='Peru' id='PE'>Peru</option>  <option value='Philippines' id='PH'>Philippines</option>  <option value='Pitcairn Islands' id='PN'>Pitcairn Islands</option>  <option value='Poland' id='PL'>Poland</option>  <option value='Portugal' id='PT'>Portugal</option>  <option value='Puerto Rico' id='PR'>Puerto Rico</option>  <option value='Qatar' id='QA'>Qatar</option>  <option value='Reunion' id='RE'>Reunion</option>  <option value='Romania' id='RO'>Romania</option>  <option value='Russia' id='RU'>Russia</option>  <option value='Rwanda' id='RW'>Rwanda</option>  <option value='Samoa' id='WS'>Samoa</option>  <option value='San Marino' id='SM'>San Marino</option>  <option value='São Tomé and Príncipe' id='ST'>São Tomé and Príncipe</option>  <option value='Saudi Arabia' id='SA'>Saudi Arabia</option>  <option value='Senegal' id='SN'>Senegal</option>  <option value='Serbia and Montenegro' id='YU'>Serbia and Montenegro</option>  <option value='Seychelles' id='SC'>Seychelles</option>  <option value='Sierra Leone' id='SL'>Sierra Leone</option>  <option value='Singapore' id='SG'>Singapore</option>  <option value='Slovakia' id='SK'>Slovakia</option>  <option value='Slovenia' id='SI'>Slovenia</option>  <option value='Solomon Islands' id='SB'>Solomon Islands</option>  <option value='Somalia' id='SO'>Somalia</option>  <option value='South Africa' id='ZA'>South Africa</option>  <option value='South Georgia and the South Sandwich Islands' id='GS'>South Georgia and the South Sandwich Islands</option>  <option value='Spain' id='ES'>Spain</option>  <option value='Sri Lanka' id='LK'>Sri Lanka</option>  <option value='St. Helena' id='SH'>St. Helena</option>  <option value='St. Kitts and Nevis' id='KN'>St. Kitts and Nevis</option>  <option value='St. Lucia' id='LC'>St. Lucia</option>  <option value='St. Pierre and Miquelon' id='PM'>St. Pierre and Miquelon</option>  <option value='St. Vincent and the Grenadines' id='VC'>St. Vincent and the Grenadines</option>  <option value='Sudan' id='SD'>Sudan</option>  <option value='Suriname' id='SR'>Suriname</option>  <option value='Svalbard and Jan Mayen' id='SJ'>Svalbard and Jan Mayen</option>  <option value='Swaziland' id='SZ'>Swaziland</option>  <option value='Sweden' id='SE'>Sweden</option>  <option value='Switzerland' id='CH'>Switzerland</option>  <option value='Syria' id='SY'>Syria</option>  <option value='Taiwan' id='TW'>Taiwan</option>  <option value='Tajikistan' id='TJ'>Tajikistan</option>  <option value='Tanzania' id='TZ'>Tanzania</option>  <option value='Thailand' id='TH'>Thailand</option>  <option value='Togo' id='TG'>Togo</option>  <option value='Tokelau' id='TK'>Tokelau</option>  <option value='Tonga' id='TO'>Tonga</option>  <option value='Trinidad and Tobago' id='TT'>Trinidad and Tobago</option>  <option value='Tunisia' id='TN'>Tunisia</option>  <option value='Turkey' id='TR'>Turkey</option>  <option value='Turkmenistan' id='TM'>Turkmenistan</option>  <option value='Turks and Caicos Islands' id='TC'>Turks and Caicos Islands</option>  <option value='Tuvalu' id='TV'>Tuvalu</option>  <option value='Uganda' id='UG'>Uganda</option>  <option value='Ukraine' id='UA'>Ukraine</option>  <option value='United Arab Emirates' id='AE'>United Arab Emirates</option>  <option value='United Kingdom' id='UK'>United Kingdom</option>  <option value='United States' id='US'>United States</option>  <option value='United States Minor Outlying Islands' id='UM'>United States Minor Outlying Islands</option>  <option value='Uruguay' id='UY'>Uruguay</option>  <option value='Uzbekistan' id='UZ'>Uzbekistan</option>  <option value='Vanuatu' id='VU'>Vanuatu</option>  <option value='Vatican City' id='VA'>Vatican City</option>  <option value='Venezuela' id='VE'>Venezuela</option>  <option value='VietNam' id='VN'>VietNam</option>  <option value='Virgin Islands (British)' id='VG'>Virgin Islands (British)</option>  <option value='Virgin Islands' id='VI'>Virgin Islands</option>  <option value='Wallis and Futuna' id='WF'>Wallis and Futuna</option>  <option value='Yemen' id='YE'>Yemen</option>  <option value='Zambia' id='ZM'>Zambia</option>  <option value='Zimbabwe' id='ZW'>Zimbabwe</option></select><br><font face='Verdana' color='#FF0000' size='1'>* Institute Name</font><br><input type='text' id='txtUniversity"+place+"' name='txtUniversity"+place+"' maxlength='255'  class = 'form-control'   onblur = 'putValueInHiddenFcampus(this,"+place+");'>";
	}
	else
	{
		document.getElementById("sp_edu"+place).innerHTML="";
	}
	return;
}

function valueRemove(obj)
{
	//alert(obj.value);
	if(obj.value == "00.00" || obj.value == "0.00")
	{
		obj.value = "";
	}
}
	
/*function result_publish(myobj, place)
{
	objResultDate = "result_publishing_date"+place;
	strValue = myobj.value;

    if(strValue != 'S' || strValue != '' )
	{
	    alert("Please select result publish date as day/month/year ");	
		
		document.getElementById(objResultDate).style.display = "block";
	}
	else
	{
		document.getElementById(objResultDate).style.display = "none;";
	}
		
}*/


function putValueInHidden2(myobj, place)
{
	objSubjectHidden = "ddlSubject2"+place+"hidden";
	strValue = myobj.value;
	//alert(objOthers);
    document.getElementById(objSubjectHidden).value = strValue;
}


function putValueInHidden(myobj, place)
{
	objSubjectHidden = "ddlSubject"+place+"hidden";
	strValue = myobj.value;
	//alert(objOthers);
    document.getElementById(objSubjectHidden).value = strValue;
}

function putValueInHiddenDegreeName(myobj, place)
{
	objSubjectHidden = "ddlDegreeName"+place+"hidden";
	strValue = myobj.value;
	//alert(objOthers);
    document.getElementById(objSubjectHidden).value = strValue;
}

function putValueInHiddenUniversity(myobj, place)
{
	objUniversityHidden = "ddlUniversity"+place+"hidden";
	strValue = myobj.value;
	//alert(objOthers);
    document.getElementById(objUniversityHidden).value = strValue;
}


function putValueInHiddenOthers(myobj, place)
{
	objSubjectHidden = "txtUniversity"+place+"hidden";
	strValue = myobj.value;
	//alert(objOthers);
    document.getElementById(objSubjectHidden).value = strValue;
}

function putValueInHiddenCountry(myobj, place)
{
	objSubjectHidden = "ddlCountry"+place+"hidden";
	strValue = myobj.value;
	//alert(objOthers);
    document.getElementById(objSubjectHidden).value = strValue;
}
function putValueInHiddenFcampus(myobj, place)
{
	objSubjectHidden = "txtUniversity"+place+"hidden";
	strValue = myobj.value;
	//alert(objOthers);
    document.getElementById(objSubjectHidden).value = strValue;
}


function LoadOthers2(myobj, place)
{
	objOthers = "spnOthers2"+place;
	strValue = myobj.value;
	//alert(objOthers);
	
	/*  */ 
	if(strValue == "Others")
	{
		       //document.getElementById(objOthers).innerHTML = "<input name='txtOthers"+place+"' type='text' class='text' id='txtOthers"+place+"' style='width:140px;' />";
		
				document.getElementById(objOthers).style.display = "block";
 
	}
	
	else
	{
		document.getElementById(objOthers).style.display = "none";
	}
}



function othersCert(myobj)
{
	objOthers = "spnCert";
	if(document.getElementById('chkCertification4').checked == true ) 
	{
				document.getElementById(objOthers).style.display = "block";
	}
	
	else
	{
		document.getElementById(objOthers).style.display = "none";
	}
}



function LoadOthers(myobj, place)
{
	objOthers = "spnOthers"+place;
	strValue = myobj.value;
	//alert(objOthers);
	
	/*  */ 
	if(strValue == "Others")
	{
		       //document.getElementById(objOthers).innerHTML = "<input name='txtOthers"+place+"' type='text' class='text' id='txtOthers"+place+"' style='width:140px;' />";
		
				document.getElementById(objOthers).style.display = "block";
 
	}
	
	else
	{
		document.getElementById(objOthers).style.display = "none";
	}
}

function createMaj(myMaj,place)
{
//alert(myMaj.value);

	obj_name = "sp_maj"+place;
//for others
	if(myMaj.value == "Others")
	{
		/*eval(obj_name).innerHTML="<font face='Verdana' color='#FF0000' size='1'>* Please mention<br><select name='ddlCountry"+place+"'><option value=USA>USA</option><option value=UK>UK</option></select>";*/
		//alert()
		document.getElementById("sp_maj"+place).innerHTML="<font face='Verdana' color='#FF0000' size='1'>* Major area</font><br><input type='text' name='MAJOR"+place+"' id='MAJOR"+place+"' style='width:150px;font-size:7pt;background-color:#F1F7DE '>"
	}	
	else
		document.getElementById("sp_maj"+place).innerHTML="";
	return;
}



function countLetter(frm_nm, nm, chr_lmt)
{
	//alert(nm);E_CUR = nm;eval(nm);//nm;document.form1.
	//alert(E_CUR.value)
	//tfVal = parseInt(E_CUR.value.length);tfVal = parseInt(document.form1.nm.value.length);
	//alert(nm.Source());
	//alert(frm_nm + nm + chr_lmt);
	//ev_v = eval("document." + frm_nm +"."+ nm +".value") ;
	form_name = frm_nm.id ;
	//alert("Form: "+frm_nm);
	//ev_v = eval("document."+form_name+"."+ nm +".value");
	ev_v = eval("document.getElementById('"+nm+"').value");
	//alert("Nothing");
	//alert("Value: "+ev_v);
	tfVal = parseInt(ev_v.length);
	//tfVal = parseInt(document.getElementById('"+nm+"').value.length);
	if(tfVal != 0)
	{
		window.status = tfVal ; 
		txt_area = document.getElementById(nm+"_sp1");
		txt_area.innerHTML = "<a style=\"color:#3300FF;font-family=Arial;font-size:8pt; position:relative; left: -1px;\">You wrote <b>"+tfVal+"</b> character(s)</a>" ;
		//document.all.sp1.innerHTML = tfVal ;
		//eval("document.all."+nm+"_sp1.innerHTML") = tfVal ;
		 
		//window.status = tfVal + 1;
		if(tfVal >= parseInt(chr_lmt)+1)//if(tfVal >= 200)
		{
				alert("Please stop writing as you are crossing the "+chr_lmt+" letter limit!")
		}
	
		if(tfVal > parseInt(chr_lmt))
		{
			nb = eval("document.form1."+nm+".value").substr(0,parseInt(chr_lmt));
			txtara = eval("document.form1."+nm) ;
			txtara.value =  nb;
			span_area = eval("document.all."+nm+"_sp1");
			span_area.innerHTML ="<a style=\"color:#3300FF;font-family=Arial;font-size:8pt; position:relative; left: -1px;\">You wrote <b>"+nb.length+"</b> character(s)</a>" ;
			 //alert(nb)
		}
	}
	else
	{
		window.status = "";
		txt_area = eval("document.all."+nm+"_sp1");
		txt_area.innerHTML = "";
		//document.all.sp1.innerHTML = "";
	}
}//end countLetter fnc




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
					 // alert("Age must be of "+Age+" years old ");
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




function EmptyPhoto()
{
	try
	{

    var ersPHOTOURL = document.getElementById('ersPhoto').value;
	var bdjPHOTOURL = document.getElementById('bdjPhoto').value;
	//var bdjID = document.getElementById('id_my').value;

		
	if ( CheckValidation("True",ersPHOTOURL,"Photo",bdjPHOTOURL,"100"," passport size scanned photo", 1790) == false)
	{
		   return false;		   
	}

	}
	catch(ex)
	{
		  ErrorMessage("619", ex, "1" ,url + " ::  registration.js  :: function EmptyPhoto", system);
	}

	return true;

}

function EmptySignature()
{
	try
	{

    var ersSignatureURL = document.getElementById('ersSignature').value;

		
		if ( CheckValidation("True",ersSignatureURL,"Signature","","100"," scanned signature ", 1790) == false)
		{
			   return false;		   
		}

	}
	catch(ex)
	{
		  ErrorMessage("642", ex, "1" ,url + " ::  registration.js  :: function EmptySignature", system);
	}

	return true;

}

// This function is 4 empty check of Personal.
function EmptyPersonal()
{
	// Variable declare and initialization.
	
	try
	{
	
	var strFirstName = "";
	//var strLastName = "";
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
	var strThanaPrmDist = "S";

	objFirstName = document.getElementById("txtFirstName");
	//objLastName = document.getElementById("txtLastName");
	objFatherName = document.getElementById("txtFatherName");
	objMotherName = document.getElementById("txtMotherName");
	//objFathersProfession = document.getElementById("txtFathersProfession");
	//objMothersProfession = document.getElementById("txtMothersProfession");
	
	objDay = document.getElementById("ddlDateOfBirthDay");
	objMonth = document.getElementById("ddlDateOfBirthMonth");
	objYear = document.getElementById("ddlDateOfBirthYear");
	objMeritalStatus = document.getElementById("ddlMaritalStatus");
	objNationality = document.getElementById("txtNationality");
	objDistrict = document.getElementById("ddlHomeDistrict");
	objDistrict2 = document.getElementById("ddlHomeDistrict2");
	objThanaPrmDist = document.getElementById("ddlThanaPrmDist"); 
	
	//objGender = document.getElementById("ddlGender");
	objEmail = document.getElementById("txtEmail");
	objContactPhone = document.getElementById("txtContactPhone");
	objCellPhone = document.getElementById("txtCellPhone");
	//objCellPhoneCommon = document.getElementById("txtCellPhone2");
	objNationalId = document.getElementById("txtNationalId");
	objBloodGroup = document.getElementById("ddlBloodGroup");
	objGender = document.getElementById("ddlGender");
	objReligion = document.getElementById("ddlReligion");
	objContactAddress = document.getElementById("txtContactAddress");
	objPermanentAddress = document.getElementById("txtPermanentAddress");
	

	strFirstName = objFirstName.value;
	//strLastName = objLastName.value;
	strFatherName = objFatherName.value;
	strMotherName = objMotherName.value;
	dtmDay = objDay.value;
	dtmMonth = objMonth.value;
	dtmYear = objYear.value;
	strMeritalStatus = objMeritalStatus.value;
	strNationality = objNationality.value;
    strDistrict = objDistrict.value;
    strDistrict2 = objDistrict2.value;
	strThanaPrmDist = objThanaPrmDist.value;
	
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
	
	
	if ( CheckValidation("True",objFirstName,"text","Text","40","Applicant's Name", 1900) == false)
	{
		   return false;		   
	}

//	 var rgEx = /^[ A-Za-z0-9\s/''-]*$/;
//	 
//     if(!rgEx.test(strFirstName.trim())){
//					
//		  alert("Please use only letters (a-z),numbers (0-9),punctuations like (-),(\') and space .");
//		  
//		objFirstName.focus();
//		//objContactPhone.style.backgroundColor = bgcolor;
//		objFirstName.style.borderColor = "Orange";
//		objFirstName.style.color = txtcolor;		
//		return false;
//	 }


	/*if ( CheckValidation("True",objLastName,"text","Text","40","Last Name", 1900) == false)
	{
		   return false;		   
	}*/

	if ( CheckValidation("True",objFatherName,"text","Text","70","Father's name", 1900) == false)
	{
		   return false;		   
	}
	
	if ( CheckValidation("True",objMotherName,"text","Text","70","Mother's name", 1900) == false)
	{
		   return false;		   
	}
	
	/*
	if ( CheckValidation("True",objFathersProfession,"text","Text","100","Father's profession", 1900) == false)
	{
		   return false;		   
	}
	
	if ( CheckValidation("True",objMothersProfession,"text","Text","100","Mother's profession", 1900) == false)
	{
		   return false;		   
	}
	*/
	
    if ( CheckValidation("True",objGender ,"select","S","1"," Gender", 1760) == false)
	{
		   return false;		   
	}		
	
    if ( CheckValidation("True",objGender ,"text","Text","10"," Gender", 1760) == false)
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

   if(CheckAge(deadlineDate, Age) == false )
   {
	   return false;
   }
	
	 if ( CheckValidation("True",objMeritalStatus ,"select","S","1"," Marital status ", 1800) == false)
	{
		   return false;		   
	}	
	
	
    if ( CheckValidation("True",objReligion ,"select","S","20"," Religion", 1730) == false)
	{
		   return false;		   
	}		
	
	
	if ( CheckValidation("True",objNationality,"text","Text","20","Nationality", 1790) == false)
	{
		   return false;		   
	}
		
	
	if ( CheckValidation("True",objContactPhone,"text","Text","11","Contact Mobile", 1780) == false)
	{
		   return false;		   
	}
	
	if(strContactPhone.length<11 || strContactPhone.length>11 )	
	{
		alert("Invalid Contact Mobile. \n Contact Mobile Must be 11 digits \n please remove +88 or - if has  ");
		objContactPhone.focus();
		//objContactPhone.style.backgroundColor = bgcolor;
		objContactPhone.style.borderColor = "Orange";
		objContactPhone.style.color = txtcolor;		
		return false;
	}
	else
	{
		objContactPhone.style.backgroundColor = fgcolor;
		//objContactPhone.style.borderColor = "Orange";
		objContactPhone.style.color = txtcolor;		
	}
	

	if (CheckValidation("True",objCellPhone,"text","Text","11","Emergency Contact Number", 1780) == false)
	{
		   return false;		   
	}
	
	
	if(strCellPhone.length<11 || strCellPhone.length>11 )	
	{
		alert("Invalid Emergency Contact Number. \n Emergency Contact Number Must be 11 digits \n please remove +88 or - if has  ");
		objCellPhone.focus();
		//objCellPhone.style.backgroundColor = bgcolor;		
		objCellPhone.style.borderColor = "Orange";
		objCellPhone.style.color = txtcolor;			
		return false;
	}
	else
	{
		objCellPhone.style.backgroundColor = fgcolor;
		//objCellPhone.style.borderColor = "Orange";
		objCellPhone.style.color = txtcolor;			
			
	}
	
	if (strContactPhone == strCellPhone)
	{
		alert("Contact Mobile & Emergency Contact Number can not be similar.");
		objCellPhone.focus();
		objCellPhone.style.borderColor = "Orange";
		objCellPhone.style.color = txtcolor;		

		return false;
	}
	else
	{
		objCellPhone.style.backgroundColor = fgcolor;
		//objCellPhone.style.borderColor = "Orange";
		objCellPhone.style.color = txtcolor;		
	}
	

	if(intNationalId != "")
	{
		if(isNaN(intNationalId))
		{
			alert("National Id should be numeric.");
			objNationalId.focus();
			//objNationalId.style.backgroundColor = bgcolor;
			objNationalId.value = "";				
			objNationalId.style.borderColor = "Orange";
			objNationalId.style.color = txtcolor;			
			return false;
		}
		else
		{
		//objNationalId.style.backgroundColor = fgcolor;
		
		objNationalId.style.borderColor = fgcolor // "Orange";
		objNationalId.style.color = txtcolor;		
		}
	}

    if ( CheckValidation("False",objNationalId ,"text","Number","25"," National ID", 1740) == false)
	{
		   return false;		   
	}

	if (system == "ksb")
	{
		reqEmail = "False";
	}
	else
	{
		reqEmail = "True";	
	}

   if ( CheckValidation(reqEmail,objEmail,"text","Text","50","Email ",1720) == false)
	{
		   return false;		   
	}

   if ( CheckValidation(reqEmail,objEmail,"email","Text","50","Email ",1710) == false)
	{
		   return false;		   
	}	
	
    if ( CheckValidation("True",objContactAddress ,"text","Text","250"," Present  Address", 1700) == false)
	{
		   return false;		   
	}
	
    if ( CheckValidation("True",objPermanentAddress ,"text","Text","250","Permanent Address", 1690) == false)
	{
		   return false;		   
	}
	
  
  // if(document.getElementById('chkDistrict').checked = false )
   //{
		if ( CheckValidation("True",objDistrict2 ,"select","S","2"," Present District", 1680) == false)
		{
			   return false;		   
		}	
		
		if ( CheckValidation("True",objDistrict ,"select","S","2"," Home District", 1680) == false)
		{
			   return false;		   
		}	
		
		if ( CheckValidation("True",objThanaPrmDist ,"select","S","2"," Police Station/Thana of your Home District", 1680) == false)
		{
			   return false;		   
		}	
		
		if ( CheckValidation("True",document.getElementById('ddlHomeDistrict2'),"text","Text","5","Present  District", 1790) == false)
		{
			   return false;		   
		}
		
		
		if ( CheckValidation("True",document.getElementById('ddlHomeDistrict'),"text","Text","5","Home District", 1790) == false)
		{
			   return false;		   
		}
		
		if ( CheckValidation("True",document.getElementById('ddlThanaPrmDist'),"text","Text","5","Police Station/Thana of your Home District", 1790) == false)
		{
			   return false;		   
		}
     // }
	  
	  
//   if(document.getElementById('chkDistrict').checked = true )
//   {
	   if ( CheckValidation("False",document.getElementById('txtDistrictOther'),"text","Text","200","Ohter Than Bangladesh", 1790) == false)
			{
				   return false;		   
			}
		}
	//}
	catch(ex)
	{
		  ErrorMessage("985", ex, "1" ,url + " ::  registration.js  :: function EmptyPersonal", system);
	}

	return true;
}


function minimum_academic_qualification_ksb()
 {
          try
		  {
			
			var strEducationLevel1 = document.getElementById("ddlEducationLevel1").value;
			var strEducationLevel2 = document.getElementById("ddlEducationLevel2").value;
			var strEducationLevel3 = document.getElementById("ddlEducationLevel3").value;
			//var strEducationLevel4 = document.getElementById("ddlEducationLevel4").value;
			
			/*if(strEducationLevel4 == 4)
			{
				
			}
			else
			{*/
				var strResult1 = document.getElementById("ddlResult1").value;
				var strResult2 = document.getElementById("ddlResult2").value;
				var strResult3 = document.getElementById("ddlResult3").value;
				//var strResult4 = document.getElementById("ddlResult4").value; 
			//	var strResult5 = document.getElementById("ddlResult5").value;				  
				var strCgpaOrMarks1 =  document.getElementById("txtResultPoint1").value; 
				var strCgpaOrMarks2 =  document.getElementById("txtResultPoint2").value; 
				var strCgpaOrMarks3 =  document.getElementById("txtResultPoint3").value; 
				//var strCgpaOrMarks4 =  document.getElementById("txtResultPoint4").value; 
			//	var strCgpaOrMarks5 =  document.getElementById("txtResultPoint5").value; 
				
				var strCgpaScale1 = document.getElementById("ddlCGPAScale1").value;
				var strCgpaScale2 = document.getElementById("ddlCGPAScale2").value;
				var strCgpaScale3 = document.getElementById("ddlCGPAScale3").value;
				//var strCgpaScale4 = document.getElementById("ddlCGPAScale4").value;
			//	var strCgpaScale5 = document.getElementById("ddlCGPAScale5").value;
					  
				var CgpaScale = [strCgpaScale1,strCgpaScale2,strCgpaScale3];
				var Result = [strResult1,strResult2,strResult3];
				var Marks = [strCgpaOrMarks1,strCgpaOrMarks2,strCgpaOrMarks3];
			
				var FirstClass = 0 
	
				for ( resultIndex  = 0  ;  resultIndex <= 2 ; resultIndex ++)
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
							 if (parseFloat(Marks[resultIndex]) >= 3.75 ) //  3.00
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
				// }
						
				if(FirstClass >= 1 )
				{ 
					
				}
				else
				{
				  alert("Sorry , you are not eligible for assistant officer (general) or assistant officer(cash) position, because you have not at least one first division marks/ equivalent cgpa ");
				  return false;
				}						 									   
			

				return true;
				
			} // checking finish
			
		  }
		  catch(ex)
		  {
			ErrorMessage("1015", ex, "1" , "registration.js  :: function ResultChekingForJobPost", system);
		  }
	
}


function minimum_academic_qualification_krishi()
{
	
}


function ResultChekingForJobPost()
 {
	if ( system == "ksb")
	{
	  minimum_academic_qualification_ksb()
	}
	else if(system == "krishibank")
	{
	  minimum_academic_qualification_krishi()
	 // code to be come next when krishi bank system has come 
	}
 }

// This function is 4 empty check of Academic.





function EmptyAcademic()
{
	strJobId = document.getElementById("JOB_ID").value;
	//var EduUB = parseInt(document.getElementById("count_edu").value);
	try
	{	
	    if (system == "ksb")
		{
		var EduUB = 3;
		}
		else
		{
		var EduUB = 4;
		}
		var i;
		
	// For loop starts here.
	for(i = 1; i <= EduUB; i++)
	{
		// Variable declare and initialization.
		var strEducationLevel = "-1";
		var strDegreeName = "S";
		var strPassingYear = "S";
		var strInstitute = "";
		var strAcademicDist = "S";
		var strUniversity = "S";
		var strResult = "-1";
		var strSubject = "S";
		//var strSubject2 = "S";
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
				
//		objSubject = document.getElementById("ddlSubject"+i);
//		objResultPoint = document.getElementById("txtResultPoint"+i);	
//		objScale = document.getElementById("ddlCGPAScale"+i);
		
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

		/*if(i<=3)
		{
			objResultDay = document.getElementById("ddlResultDay"+i);
			objResultMonth = document.getElementById("ddlResultMonth"+i);
			objResultYear = document.getElementById("ddlResultYear"+i);
		}
		else
		{
			if(document.getElementById("ddlResult4") == 12)
			{
				//appeared and post grad no need result publish date
			}
			else
			{
				objResultDay = document.getElementById("ddlResultDay"+i);
				objResultMonth = document.getElementById("ddlResultMonth"+i);
				objResultYear = document.getElementById("ddlResultYear"+i);
			}
		}		*/

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
				//strAcademicDist = 0;
			}
			else if(i == 4)
			{
				var Education = "Post graduation";
				x = x + 20;
				//strAcademicDist = 0;
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

	    //ubound = 5  
		var pass = document.getElementById('ddlDegreeName3').value;
		var n = pass.indexOf("Pass");
		
		if(parseInt(strJobId) < 3 )
		{		
		 highest_row = 4 ;
		
		}
		else
		{
		 highest_row = 4 ;	//3
		}
		
		if (i<=highest_row)
		{
			Req = "True";
		}
		else
		{
			if(strDegreeName != 'S' || strEducationLevel != '-1' || strPassingYear != 'S' )
			{
				Req = "True";
			}
			else
			{			
			 Req = "False";
			}
		}
	
			
			   if ( CheckValidation(Req,objEducationLevel,"select","-1","1", " Level  of  "+level+"  in  ACADEMIC QUALIFICATION",1362 ) == false)
				{
				
					   return false;
					   break;	   
				}					
			
			   if ( CheckValidation(Req,objDegreeName,"select","S","1", "Exam/Degree title of "+level+" level in  ACADEMIC QUALIFICATION",1368 ) == false)
				{
					   return false;
					   break;	   
				}
						
				
			   if ( CheckValidation(Req,objPassingYear,"select","S","1", "Passing year of "+level+" level in  ACADEMIC QUALIFICATION",1375) == false)
				{
					   return false;		
					   break;	   
				}				

//  till grad result publish date 
/*if (i<=3)
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

}*/
			  
			   if ( CheckValidation(Req,objInstitute,"text","Text","255", "Institute  of "+level+" level in  ACADEMIC QUALIFICATION",1382) == false)
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
			
					
				if(i>2)
				{
					var eduMsg= "University of "+level+" level in ACADEMIC QUALIFICATION";
				}
				else
				{
					var eduMsg= "Board of "+level+" level in ACADEMIC QUALIFICATION"; 	
				}
					
			   if ( CheckValidation(Req,objUniversity,"select","S","1", eduMsg ,1407) == false)
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
					
					 if ( CheckValidation(Req,document.getElementById("ddlCountry"+i),"select","Select","1", " Campus location "+level+" level in ACADEMIC QUALIFICATION",1414 ) == false)
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
				 
					if(CheckValidation(Req,document.getElementById("ddlResult"+i),"select","-1","2", "Result of "+level+" level in ACADEMIC QUALIFICATION",1452 ) == false)
					{
						 return false;		
						 break;	   
					}
				}

			if(system=="ksb")
			{
				var resultRangeSSCHSC = 2.81;
			}
			else
			{
				var resultRangeSSCHSC = 4;
			}
			//*********** o level validation*******
				
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
				//alert("cgpa"+avg_O + " jobid" + strJobId);
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
				
		         
				 	if(objResult.value == "15" || objResult.value == "14")// *** first div and second div
					{
						objResultPoint = document.getElementById("txtResultPoint"+i);
						
						try
						{
						 var marks = objResultPoint.value;
						 //alert(marks);
						}
						catch(ex)
						{
							//alert(ex);
						}
						if (CheckValidation(Req,objResultPoint,"text","Text","5", "Marks of "+level+" level in ACADEMIC QUALIFICATION",1600) == false)
						{
							   
							  return false;		
							  break;	   
						}
						
						if(MarksTypeInputValidation(Req, objResult.value, marks, 100, "Marks  of  row is  "+i,i,objResult) == false)
						{
							
							return false;
							break;	   
						}					
						
						
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
						if ( CheckValidation(Req,objResultPoint,"text","Text","5", "CGPA of "+level+" level in ACADEMIC QUALIFICATION",1612) == false)
						{
						   
						   return false;		
						   break;	   
						}
						else
						{
						  if ( CheckValidation(Req,objScale,"select","-1","5", "CGPA Scale  "+level+" level in ACADEMIC QUALIFICATION",1620) == false)
							{
							   return false;		
							   break;	   
							}
						
						   if(CGPATypeInputValidation(Req,objResultPoint.value,objScale.value,"CGPA of  row is  "+i,objResultPoint,i,strJobId) == false )
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
				
								
			 	if ( CheckValidation(Req,objSubject,"select","S","1", "Subject of "+level+" level in  ACADEMIC QUALIFICATION",1648) == false)
				{
					   return false;		
					   break;	   
				}
				else
				{				
					if(objSubject.value == "Others")
					{
						   if ( CheckValidation(Req,document.getElementById("txtOthers"+i),"text","Text","255", "Major 1 of "+level+" level in   ACADEMIC QUALIFICATION",1657 ) == false)
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
		

             	//if ( i > 2 ) 
//			  {
//				objSubject2 = document.getElementById("ddlSubject2"+i);
//				strSubject2 = objSubject2.value;				
//			   
//			   if ( CheckValidation("False",objSubject2,"text","Text","255", "Subject of "+level+" level in  ACADEMIC QUALIFICATION",1688) == false)
//				{
//					   return false;		
//					   break;	   
//				}
				//else
				//{				
					/*if(objSubject2.value == "Others")
					{
						   if ( CheckValidation("True",document.getElementById("txtOthers2"+i),"text","Text","255", "Major 2 of "+level+" level in   ACADEMIC QUALIFICATION",1698 ) == false)
							{
								   return false;		
								   break;	   
							}	
							
							try
							{
								var Subject_Others2 = document.getElementById("txtOthers2"+i).value;
							}
							catch(ex)
							{
								
							objSubject2.selectedIndex = "0";
							alert("Please select major 2 again");
							objSubject2.style.borderColor = "Orange";
							objSubject2.style.color = txtcolor;
							
							objSubject2.focus();
							return false; 
								
							}
					}	*/
				//}
		
			  //}
			  
			}
		
	   }
		
	}
	catch(ex)
	{ 	if(ex.message=="Cannot read property 'style' of undefined")
		{
			alert("Check your marks properly.");
			return false;
		}
		else
		{
			alert(ex.message);
		}				
		ErrorMessage("1698", ex, "1" ,url + " ::  registration.js  :: function EmptyAcademic", system);
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
		var strPResult = "";

		// Object declare and initialization.
		objPDegree = document.getElementById("P_DEGREE"+i);
		objPInstitute = document.getElementById("P_INST"+i);
		objPLocation = document.getElementById("P_LOC"+i);
		objPPassingYear = document.getElementById("P_YEAR"+i);
		objPSubject = document.getElementById("P_SUB"+i);
		objPResult = document.getElementById("P_RESULT"+i);
		//alert('degree val :- '+objPInstitute.value);
		// Value of html controls.
		strPDegree = objPDegree.value;
		strPInstitute = objPInstitute.value;
		strPLocation = objPLocation.value;
		strPPassingYear = objPPassingYear.value;
		strPSubject = objPSubject.value;
		strPResult = objPResult	.value;	
		// Checking & focusing of html controls.	
		if(strPDegree != "" || strPInstitute != "" || strPLocation != "" || strPPassingYear != "S" || strPSubject != "" || strPResult!="")
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
				objPPassingYear.style.backgroundColor = bgcolor;
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
			
			if(strPResult == "")
			{
				alert("Result of professional qualification " + i + " can't be empty.");
				objPResult.focus();
				objPResult.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
				objPResult.style.backgroundColor = fgcolor;
			}			

		}
		
	}
	// For loop ends here.
	return true;
	// Experience block ends here.
}





function EmptyTraining()
{
	//var PEduUB = parseInt(document.getElementById("count_pedu").value);
	var i;
	var TraUB = 3;
	// For loop starts here.
	for(i = 1; i <= TraUB; i++)
	{
		// Variable declare and initialization.
		var strPDegree = "";
		var strPInstitute = "";
		var strPassingYear = "";
		var strPInstitute = "";
		var strPPassingYear = "";
		var strPSubject = "";
		var strPResult = "";

		// Object declare and initialization.
		objPDegree = document.getElementById("txtTTraining"+i);
		objPInstitute = document.getElementById("cboTDuration"+i);
		objPLocation = document.getElementById("cboTYear"+i);
		objPPassingYear = document.getElementById("txtTInstitute"+i);
		objPSubject = document.getElementById("txtTCity"+i);
		objPResult = document.getElementById("txtTCountry"+i);
		//alert('degree val :- '+objPInstitute.value);
		// Value of html controls.
		strPDegree = objPDegree.value;
		strPInstitute = objPInstitute.value;
		strPLocation = objPLocation.value;
		strPPassingYear = objPPassingYear.value;
		strPSubject = objPSubject.value;
		strPResult = objPResult.value;	
		// Checking & focusing of html controls.	
		if(strPDegree != "" || strPInstitute != "S" || strPLocation != "S" || strPPassingYear != "" || strPSubject != "" || strPResult!="")
		{//alert('PEduUB:- '+PEduUB);
			if(strPDegree == "")
			{
				alert("Training Title " + i + " can't be empty.");
				objPDegree.focus();
				objPDegree.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
				objPDegree.style.backgroundColor = fgcolor;
			}
			if(strPInstitute == "S")
			{
				alert("Duration " + i + " must be select.");
				objPInstitute.focus();
				objPInstitute.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
				objPInstitute.style.backgroundColor = fgcolor;
			}			
			if(strPLocation == "S")
			{
				alert("Year " + i + " must be select.");
				objPLocation.focus();
				objPLocation.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
				objPLocation.style.backgroundColor = fgcolor;
			}			
			if(strPPassingYear == "")
			{
				alert("Name of Institute " + i + " can't be empty.");
				objPPassingYear.focus();
				objPPassingYear.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
			 	objPPassingYear.style.backgroundColor = fgcolor;
			}
			if(strPSubject == "")
			{
				alert("City " + i + " can't be empty.");
				objPSubject.focus();
				objPSubject.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
			  	objPSubject.style.backgroundColor = fgcolor;
			}
			
			if(strPResult == "")
			{
				alert("Country " + i + " can't be empty.");
				objPResult.focus();
				objPResult.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
				objPResult.style.backgroundColor = fgcolor;
			}			

		}
		
	}
	// For loop ends here.
	return true;
	// Experience block ends here.
}





function EmptyExp()
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
		var strPResult = "";
		var strPResult22 = "";
		var strPResult33 = "";
		

		// Object declare and initialization.
		objPDegree = document.getElementById("txtNameofPosition"+i);
		objPInstitute = document.getElementById("txtCompanyName"+i);
		objPLocation = document.getElementById("txtCompanyLocation"+i);
		objPPassingYear = document.getElementById("expFromMonth"+i);
		objPSubject = document.getElementById("expFromYear"+i);
		objPResult = document.getElementById("expToMonth"+i);
		objPResult22 = document.getElementById("expToYear"+i);
		objPResult33 = document.getElementById("txtDuty"+i);
		
		//alert('degree val :- '+objPInstitute.value);
		// Value of html controls.
		strPDegree = objPDegree.value;
		strPInstitute = objPInstitute.value;
		strPLocation = objPLocation.value;
		strPPassingYear = objPPassingYear.value;
		strPSubject = objPSubject.value;
		strPResult = objPResult.value;	
		strPResult22 = objPResult22.value;	
		strPResult33 = objPResult33.value;	
		
		// Checking & focusing of html controls.	
		if(strPDegree != "" || strPInstitute != "" || strPLocation != "" || strPPassingYear != "S" || strPSubject != "S" || strPResult!= "S" || strPResult22!="S" || strPResult33!="" )
		{//alert('PEduUB:- '+PEduUB);
			if(strPDegree == "")
			{
				alert("Name of Position " + i + " can't be empty.");
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
				alert("Company Name " + i + " can't be empty.");
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
				alert("Company Location" + i + " can't be empty.");
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
				alert("Served From month " + i + " can't be empty.");
				objPPassingYear.focus();
				objPPassingYear.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
			 	objPPassingYear.style.backgroundColor = fgcolor;
			}
			if(strPSubject == "S")
			{
				alert("Served From year " + i + " can't be empty.");
				objPSubject.focus();
				objPSubject.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
			  	objPSubject.style.backgroundColor = fgcolor;
			}
			
			if(strPResult == "S")
			{
				alert("Served Till month of experience " + i + " can't be empty.");
				objPResult.focus();
				objPResult.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
				objPResult.style.backgroundColor = fgcolor;
			}
			
			
			if(strPResult22 == "S")
			{
				alert("Served Till year of experience " + i + " can't be empty.");
				objPResult22.focus();
				objPResult22.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
				objPResult22.style.backgroundColor = fgcolor;
			}			
			
			
			
			if(strPResult33 == "")
			{
				alert("Duty of experience " + i + " can't be empty.");
				objPResult33.focus();
				objPResult33.style.backgroundColor = bgcolor;
				return false;
			}
			else 
			{
				objPResult33.style.backgroundColor = fgcolor;
			}						

		}
		
	}
	// For loop ends here.
	return true;
	// Experience block ends here.
}


function Others()
{
	try
	{
	// Variable declare and initialization.
	
//	ielts = document.getElementById('txtIELTS');
//	
//	if ( ielts.value != '')
//	{
//		if(isNaN(ielts.value))
//		{
//			alert('Please give only score! ');
//			ielts.focus();
//			ielts.style.backgroundColor = bgcolor;
//			return false ;
//		}
//		else
//		{
//			
//			if(parseFloat(ielts.value) < 6.5 )
//			{
//			alert('Ielts 6.5 is preferable ! ');
//			ielts.focus();
//			ielts.style.backgroundColor = bgcolor;
//			return false ;
//			}
//			else
//			{
//			ielts.style.backgroundColor = fgcolor;	
//			}
//		}
//	}
//	else
//	{
//			ielts.style.backgroundColor = fgcolor;	
//	}
//	
//	
//	if(document.getElementById('ddlFFQY').checked == true )
//	{
//		if(document.getElementById('ddlFFC').checked == true || document.getElementById('ddlFFGC').checked == true )
//		{
//			
//			
//		}
//		else
//		{
//			alert('Please select freedom fighter quota as child or grand child!  ');
//			document.getElementById('ddlFFC').focus();
//			document.getElementById('ddlFFC').style.backgroundColor = bgcolor;
//			return false 
//		}
//	}
	
	var strReading = "S";
	var strWriting = "S";
	var strSpeaking = "S";
	
	objReading = document.getElementById("ddlReading");
	objWriting = document.getElementById("ddlWriting");
	objSpeaking = document.getElementById("ddlSpeaking");

	objDeclaration = document.getElementById("chkDeclaration");

	strReading = objReading.value;
	strWriting = objWriting.value;
	strSpeaking = objSpeaking.value;


	
	 if ( CheckValidation("False",objReading ,"select","S","6","Reading  ", 1200) == false)
	{
		   return false;		   
	}	

	 if ( CheckValidation("False",objWriting ,"select","S","6","Writing  ", 1200) == false)
	{
		   return false;		   
	}	
	 if ( CheckValidation("False",objSpeaking ,"select","S","6","Speaking  ", 1200) == false)
	{
		   return false;		   
	}	
	
	if ( document.getElementById('chkCertification4').checked == true )
	{
	 if ( CheckValidation("True", document.getElementById('txtCertification') ,"text","Text","50","Name of professional certification ",800) == false)
	 {
		   return false;		   
	 }	
   }
	
	
	 if ( CheckValidation("False", document.getElementById('txtExperience') ,"text","Text","2000","Experience (if any) ",800) == false)
	{
		   return false;		   
	}	
	
		 if ( CheckValidation("False", document.getElementById('txtProfessionalQualification') ,"text","Text","2000","Professional Qualification, Training etc (if any) ",800) == false)
	{
		   return false;		   
	}	
	
			
	 if ( CheckValidation("False", document.getElementById('txtAcademicDistinctions') ,"text","Text","2000","Academic Distinctions(if any) ",800) == false)
	{
		   return false;		   
	}	
	
	 if ( CheckValidation("False", document.getElementById('txtExtraCurricularActivities') ,"text","Text","2000","Extra curricular activities(if any)",800) == false)
	{
		   return false;		   
	}	


	 if ( CheckValidation("False", document.getElementById('txtComputerSkill') ,"text","Text","2000","Computer skills (if any) ",800) == false)
	{
		   return false;		   
	}	
	
	 if ( CheckValidation("False", document.getElementById('txtAnyOther') ,"text","Text","2000","Any other thing you want to disclose(if any) ",800) == false)
	{
		   return false;		   
	}	
					
	}
	catch(ex)
	{
		ErrorMessage("1913", ex, "1" ,url + " ::  registration.js  :: function Others", system);

	}

	return true;
} 
function EmptyReferees()
{
	try
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
	}
	catch(ex)
	{
				  ErrorMessage("1989", ex, "1" ,url + " ::  registration.js  :: function EmptyReference", system);

	}
	// For loop ends here.
	return true;
	// Experience block ends here.
}


// This function is 4 password checking
function EmptyPassword()
{
	try
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
		alert("Please declare the information is correct for next step.");
		objDeclaration.focus();
		objDeclaration.style.backgroundColor = bgcolor;
		return false;
	}	
	else 
	{
	  objDeclaration.style.backgroundColor = fgcolor;
	}
	
	
	if ( CheckValidation("True",objPassword,"text","Text","12","Password", 1900) == false)
	{
		   return false;		   
	}		
	
	if ( CheckValidation("True",objConfirmPassword,"text","Text","12","Re-enter Password", 1900) == false)
	{
		   return false;		   
	}	
	
    if ( CheckValidation("True",objPassword,"pass",objConfirmPassword,"12","Password/Re-enter Password ", 400) == false)
	{
			  return false;		   
	}	
	}
	catch(ex)
	{
				  ErrorMessage("2355", ex, "1" ,url + " ::  registration.js  :: function EmptyPassword", system);

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
	
	if(EmptyPhoto() == false)
	{
		//alert(1);
		tf = false;
		return false;
	}	
	
	if(EmptySignature() == false)
	{
		//alert(1);
		tf = false;
		return false;
	}	
	
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
	
	if(ResultChekingForJobPost()==false)
	{
		//alert(2160);
		tf = false;
		return false;
	}

//	if( EmptyPEdu() == false)
//	{
//	//	tf = false;
//		return false;
//	}

//	if( EmptyTraining() == false)
//	{
//	//	tf = false;
//		return false;
//	}
	   
//	if( EmptyExp() == false)
//	{
//	//	tf = false;
//		return false;
//	}

	     
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
	
	mobileValidate();
	
	
	return true;
}


   function mobileValidate()
   {
	    var dvElement = $('#txtContactPhone').val();
	    var dvElement2 = $('#txtEmail').val();
		
        if ( dvElement != '' &&  dvElement2 != '' ) 
        {	
			 
		document.getElementById('wait').style.display = "block"; 
		$.post("ajax2.asp",
		 {

			 ajax : "duplicate_email" ,
			 txtEmail : $("#txtEmail").val(),
			 txtContactPhone : $("#txtContactPhone").val(),
			 txtFirstName : $("#txtFirstName").val(),
			 txtLastName : $("#txtLastName").val(),
			 txtFatherName : $("#txtFatherName").val(),
			 txtMotherName : $("#txtMotherName").val(),
			 ddlDateOfBirthDay : $("#ddlDateOfBirthDay").val(),
			 ddlDateOfBirthMonth : $("#ddlDateOfBirthMonth").val(),
			 ddlDateOfBirthYear : $("#ddlDateOfBirthYear").val()
		 },
		 function(data,status)
		 {
			//alert("data:"+data+"\nstatus"+status); 
			
			if (data != "")
			{
	         	document.getElementById('wait').style.display = "none"; 
			    alert(data);
			   //document.getElementById('btnSubmit').disabled = true; 
			   
			    if(data == 'Your email has been already used. Please provide new email account.') 
			    {
			    $("#cemail").text(data);
			   //$("#cphone").style("display","block");
			    $("#cemail").show();
			    
				}
			    if ( data == 'Your mobile number has been already used. Please provide new mobile number.') 
				{
			    $("#cphone").text(data);
			   //$("#cphone").style("display","block");
			    $("#cphone").show();
				
				}
			    if ( data == 'Your personal information  already used. please Call to 16479.') 
				{
			    $("#cphone").text(data);
			   //$("#cphone").style("display","block");
			    $("#cphone").show();
				
				}
				
				

			   return false; 	
			}
			
			else if( data == "")
			{
				document.getElementById('frmApplication').submit();
			}			
			else
			{
	         	document.getElementById('wait').style.display = "none"; 
			   //document.getElementById('btnSubmit').disabled = false; 
			   $("#cphone").text("");
			   $("#cphone").hide();
              return true; 
			}
		 });
		}
	    else
		{
			   //document.getElementById('btnSubmit').disabled = false; 
			   $("#cphone").text("");
			   $("#cphone").hide();
			    return true; 
		}

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



function CorrectCharText(myfield, e, dec)
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

