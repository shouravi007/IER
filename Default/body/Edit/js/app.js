/*<SCRIPT LANGUAGE="JavaScript">*/


/**********************  FOR INSTITUTE FIELD  *********************/

function Validate()
{
	var objTrakingNo, objOtherExp, objTotalExp
	objTrakingNo = document.getElementById("txtTrakingNo");
	objPassword = document.getElementById("txtPassword");
			
	if(objTrakingNo.value == "")
	{
		alert("Login id can't be empty.");
		objTrakingNo.focus();
		return false;
	}

	if(objPassword.value == "")
	{
		alert("Password can't be empty.");
		objPassword.focus();
		return false;
	}
	
	return true;
	
}

function createEdu(myobj,place)
{
	obj_name = "sp_edu"+place;
	if(myobj.value == "Others")
	{
		document.getElementById("sp_edu"+place).innerHTML="<font face='Verdana' color='#FF0000' size='1'>* Institute Name</font><br><input type='text' name='txtUniversity"+place+"' id='txtUniversity"+place+"' maxlength='255' style='width:170px;border: 1px solid #bdbdbd;border-radius: 4px;font-family: Arial;font-size: 12px;height: 24px;' onblur = 'putValueInHiddenOthers(this,"+place+");'>"
	}	
	else if(myobj.value == "Foreign")
	{
		document.getElementById("sp_edu"+place).innerHTML ="<font face='Verdana' color='#FF0000' size='1'>* Campus location<br><select id='ddlCountry"+place+"' name='ddlCountry"+place+"' style='width:170px;border: 1px solid #bdbdbd;border-radius: 4px;font-family: Arial;font-size: 12px;height: 24px;' onchange = 'putValueInHiddenCountry(this,"+place+");'>  <option value='Afghanistan' id='AF'>Afghanistan </option>  <option value='Albania' id='AL'>Albania </option>  <option value='Algeria' id='DZ'>Algeria </option>  <option value='American Samoa' id='AS'>American Samoa </option>  <option value='Andorra' id='AD'>Andorra </option>  <option value='Angola' id='AO'>Angola </option>  <option value='Anguilla' id='AI'>Anguilla </option>  <option value='Antarctica' id='AQ'>Antarctica </option>  <option value='Antigua and Barbuda' id='AG'>Antigua and Barbuda</option>  <option value='Argentina' id='AR'>Argentina</option>  <option value='Armenia' id='AM'>Armenia</option>  <option value='Aruba' id='AW'>Aruba</option>  <option value='Australia' id='AU'>Australia</option>  <option value='Austria' id='AT'>Austria</option>  <option value='Azerbaijan' id='AZ'>Azerbaijan</option>  <option value='Bahamas' id='BS'>Bahamas</option>  <option value='Bahrain' id='BH'>Bahrain</option>  <option value='Bangladesh' selected id='BD'>Bangladesh</option>  <option value='Barbados' id='BB'>Barbados</option>  <option value='Belarus' id='BY'>Belarus</option>  <option value='Belgium' id='BE'>Belgium</option>  <option value='Belize' id='BZ'>Belize</option>  <option value='Benin' id='BJ'>Benin</option>  <option value='Bermuda' id='BM'>Bermuda</option>  <option value='Bhutan' id='BT'>Bhutan</option>  <option value='Bolivia' id='BO'>Bolivia</option>  <option value='Bosnia and Herzegovina' id='BA'>Bosnia and Herzegovina</option>  <option value='Botswana' id='BW'>Botswana</option>  <option value='Bouvet Island' id='BV'>Bouvet Island</option>  <option value='Brazil' id='BR'>Brazil</option>  <option value='British Indian Ocean Territory' id='IO'>British Indian Ocean Territory</option>  <option value='Brunei' id='BN'>Brunei</option>  <option value='Bulgaria' id='BG'>Bulgaria</option>  <option value='Burkina Faso' id='BF'>Burkina Faso</option>  <option value='Burundi' id='BI'>Burundi</option>  <option value='Cambodia' id='KH'>Cambodia</option>  <option value='Cameroon' id='CM'>Cameroon</option>  <option value='Canada' id='CA'>Canada</option>  <option value='Cape Verde' id='CV'>Cape Verde</option>  <option value='Cayman Islands' id='KY'>Cayman Islands</option>  <option value='Central African Republic' id='CF'>Central African Republic</option>  <option value='Chad' id='TD'>Chad</option>  <option value='Chile' id='CL'>Chile</option>  <option value='China' id='CN'>China</option>  <option value='Christmas Island' id='CX'>Christmas Island</option>  <option value='Cocos (Keeling) Islands' id='CC'>Cocos (Keeling) Islands</option>  <option value='Colombia' id='CO'>Colombia</option>  <option value='Comoros' id='KM'>Comoros</option>  <option value='Congo' id='CG'>Congo</option>  <option value='Cook Islands' id='CK'>Cook Islands</option>  <option value='Costa Rica' id='CR'>Costa Rica</option>  <option value='Côte d&#39;Ivoire' id='CI'>Côte d&#39;Ivoire</option>  <option value='Croatia (Hrvatska)' id='HR'>Croatia (Hrvatska)</option>  <option value='Cuba' id='CU'>Cuba</option>  <option value='Cyprus' id='CY'>Cyprus</option>  <option value='Czech Republic' id='CZ'>Czech Republic</option>  <option value='Congo (DRC)' id='CD'>Congo (DRC)</option>  <option value='Denmark' id='DK'>Denmark</option>  <option value='Djibouti' id='DJ'>Djibouti</option>  <option value='Dominica' id='DM'>Dominica</option>  <option value='Dominican Republic' id='DO'>Dominican Republic</option>  <option value='East Timor' id='TP'>East Timor</option>  <option value='Ecuador' id='EC'>Ecuador</option>  <option value='Egypt' id='EG'>Egypt</option>  <option value='El Salvador' id='SV'>El Salvador</option>  <option value='Equatorial Guinea' id='GQ'>Equatorial Guinea</option>  <option value='Eritrea' id='ER'>Eritrea</option>  <option value='Estonia' id='EE'>Estonia</option>  <option value='Ethiopia' id='ET'>Ethiopia</option>  <option value='Falkland Islands (Islas Malvinas)' id='FK'>Falkland Islands (Islas Malvinas)</option>  <option value='Faroe Islands' id='FO'>Faroe Islands</option>  <option value='Fiji Islands' id='FJ'>Fiji Islands</option>  <option value='Finland' id='FI'>Finland</option>  <option value='France' id='FR'>France</option>  <option value='French Guiana' id='GF'>French Guiana</option>  <option value='French Polynesia' id='PF'>French Polynesia</option>  <option value='French Southern and Antarctic Lands' id='TF'>French Southern and Antarctic Lands</option>  <option value='Gabon' id='GA'>Gabon</option>  <option value='Gambia' id='GM'>Gambia</option>  <option value='Georgia' id='GE'>Georgia</option>  <option value='Germany' id='DE'>Germany</option>  <option value='Ghana' id='GH'>Ghana</option>  <option value='Gibraltar' id='GI'>Gibraltar</option>  <option value='Greece' id='GR'>Greece</option>  <option value='Greenland' id='GL'>Greenland</option>  <option value='Grenada' id='GD'>Grenada</option>  <option value='Guadeloupe' id='GP'>Guadeloupe</option>  <option value='Guam' id='GU'>Guam</option>  <option value='Guatemala' id='GT'>Guatemala</option>  <option value='Guinea' id='GN'>Guinea</option>  <option value='Guinea-Bissau' id='GW'>Guinea-Bissau</option>  <option value='Guyana' id='GY'>Guyana</option>  <option value='Haiti' id='HT'>Haiti</option>  <option value='Heard Island and McDonald Islands' id='HM'>Heard Island and McDonald Islands</option>  <option value='Honduras' id='HN'>Honduras</option>  <option value='Hong Kong SAR' id='HK'>Hong Kong SAR</option>  <option value='Hungary' id='HU'>Hungary</option>  <option value='Iceland' id='IS'>Iceland</option>  <option value='India' id='IN'>India</option>  <option value='Indonesia' id='ID'>Indonesia</option>  <option value='Iran' id='IR'>Iran</option>  <option value='Iraq' id='IQ'>Iraq</option>  <option value='Ireland' id='IE'>Ireland</option>  <option value='Israel' id='IL'>Israel</option>  <option value='Italy' id='IT'>Italy</option>  <option value='Jamaica' id='JM'>Jamaica</option>  <option value='Japan' id='JP'>Japan</option>  <option value='Jordan' id='JO'>Jordan</option>  <option value='Kazakhstan' id='KZ'>Kazakhstan</option>  <option value='Kenya' id='KE'>Kenya</option>  <option value='Kiribati' id='KI'>Kiribati</option>  <option value='Korea' id='KR'>Korea</option>  <option value='Kuwait' id='KW'>Kuwait</option>  <option value='Kyrgyzstan' id='KG'>Kyrgyzstan</option>  <option value='Laos' id='LA'>Laos</option>  <option value='Latvia' id='LV'>Latvia</option>  <option value='Lebanon' id='LB'>Lebanon</option>  <option value='Lesotho' id='LS'>Lesotho</option>  <option value='Liberia' id='LR'>Liberia</option>  <option value='Libya' id='LY'>Libya</option>  <option value='Liechtenstein' id='LI'>Liechtenstein</option>  <option value='Lithuania' id='LT'>Lithuania</option>  <option value='Luxembourg' id='LU'>Luxembourg</option>  <option value='Macao SAR' id='MO'>Macao SAR</option>  <option value='Macedonia, Former Yugoslav Republic of' id='MK'>Macedonia, Former Yugoslav Republic of</option>  <option value='Madagascar' id='MG'>Madagascar</option>  <option value='Malawi' id='MW'>Malawi</option>  <option value='Malaysia' id='MY'>Malaysia</option>  <option value='Maldives' id='MV'>Maldives</option>  <option value='Mali' id='ML'>Mali</option>  <option value='Malta' id='MT'>Malta</option>  <option value='Marshall Islands' id='MH'>Marshall Islands</option>  <option value='Martinique' id='MQ'>Martinique</option>  <option value='Mauritania' id='MR'>Mauritania</option>  <option value='Mauritius' id='MU'>Mauritius</option>  <option value='Mayotte' id='YT'>Mayotte</option>  <option value='Mexico' id='MX'>Mexico</option>  <option value='Micronesia' id='FM'>Micronesia</option>  <option value='Moldova' id='MD'>Moldova</option>  <option value='Monaco' id='MC'>Monaco</option>  <option value='Mongolia' id='MN'>Mongolia</option>  <option value='Montserrat' id='MS'>Montserrat</option>  <option value='Morocco' id='MA'>Morocco</option>  <option value='Mozambique' id='MZ'>Mozambique</option>  <option value='Myanmar' id='MM'>Myanmar</option>  <option value='Namibia' id='NA'>Namibia</option>  <option value='Nauru' id='NR'>Nauru</option>  <option value='Nepal' id='NP'>Nepal</option>  <option value='Netherlands' id='NL'>Netherlands</option>  <option value='Netherlands Antilles' id='AN'>Netherlands Antilles</option>  <option value='New Caledonia' id='NC'>New Caledonia</option>  <option value='New Zealand' id='NZ'>New Zealand</option>  <option value='Nicaragua' id='NI'>Nicaragua</option>  <option value='Niger' id='NE'>Niger</option>  <option value='Nigeria' id='NG'>Nigeria</option>  <option value='Niue' id='NU'>Niue</option>  <option value='Norfolk Island' id='NF'>Norfolk Island</option>  <option value='North Korea' id='KP'>North Korea</option>  <option value='Northern Mariana Islands' id='MP'>Northern Mariana Islands</option>  <option value='Norway' id='NO'>Norway</option>  <option value='Oman' id='OM'>Oman</option>  <option value='Pakistan' id='PK'>Pakistan</option>  <option value='Palau' id='PW'>Palau</option>  <option value='Panama' id='PA'>Panama</option>  <option value='Papua New Guinea' id='PG'>Papua New Guinea</option>  <option value='Paraguay' id='PY'>Paraguay</option>  <option value='Peru' id='PE'>Peru</option>  <option value='Philippines' id='PH'>Philippines</option>  <option value='Pitcairn Islands' id='PN'>Pitcairn Islands</option>  <option value='Poland' id='PL'>Poland</option>  <option value='Portugal' id='PT'>Portugal</option>  <option value='Puerto Rico' id='PR'>Puerto Rico</option>  <option value='Qatar' id='QA'>Qatar</option>  <option value='Reunion' id='RE'>Reunion</option>  <option value='Romania' id='RO'>Romania</option>  <option value='Russia' id='RU'>Russia</option>  <option value='Rwanda' id='RW'>Rwanda</option>  <option value='Samoa' id='WS'>Samoa</option>  <option value='San Marino' id='SM'>San Marino</option>  <option value='São Tomé and Príncipe' id='ST'>São Tomé and Príncipe</option>  <option value='Saudi Arabia' id='SA'>Saudi Arabia</option>  <option value='Senegal' id='SN'>Senegal</option>  <option value='Serbia and Montenegro' id='YU'>Serbia and Montenegro</option>  <option value='Seychelles' id='SC'>Seychelles</option>  <option value='Sierra Leone' id='SL'>Sierra Leone</option>  <option value='Singapore' id='SG'>Singapore</option>  <option value='Slovakia' id='SK'>Slovakia</option>  <option value='Slovenia' id='SI'>Slovenia</option>  <option value='Solomon Islands' id='SB'>Solomon Islands</option>  <option value='Somalia' id='SO'>Somalia</option>  <option value='South Africa' id='ZA'>South Africa</option>  <option value='South Georgia and the South Sandwich Islands' id='GS'>South Georgia and the South Sandwich Islands</option>  <option value='Spain' id='ES'>Spain</option>  <option value='Sri Lanka' id='LK'>Sri Lanka</option>  <option value='St. Helena' id='SH'>St. Helena</option>  <option value='St. Kitts and Nevis' id='KN'>St. Kitts and Nevis</option>  <option value='St. Lucia' id='LC'>St. Lucia</option>  <option value='St. Pierre and Miquelon' id='PM'>St. Pierre and Miquelon</option>  <option value='St. Vincent and the Grenadines' id='VC'>St. Vincent and the Grenadines</option>  <option value='Sudan' id='SD'>Sudan</option>  <option value='Suriname' id='SR'>Suriname</option>  <option value='Svalbard and Jan Mayen' id='SJ'>Svalbard and Jan Mayen</option>  <option value='Swaziland' id='SZ'>Swaziland</option>  <option value='Sweden' id='SE'>Sweden</option>  <option value='Switzerland' id='CH'>Switzerland</option>  <option value='Syria' id='SY'>Syria</option>  <option value='Taiwan' id='TW'>Taiwan</option>  <option value='Tajikistan' id='TJ'>Tajikistan</option>  <option value='Tanzania' id='TZ'>Tanzania</option>  <option value='Thailand' id='TH'>Thailand</option>  <option value='Togo' id='TG'>Togo</option>  <option value='Tokelau' id='TK'>Tokelau</option>  <option value='Tonga' id='TO'>Tonga</option>  <option value='Trinidad and Tobago' id='TT'>Trinidad and Tobago</option>  <option value='Tunisia' id='TN'>Tunisia</option>  <option value='Turkey' id='TR'>Turkey</option>  <option value='Turkmenistan' id='TM'>Turkmenistan</option>  <option value='Turks and Caicos Islands' id='TC'>Turks and Caicos Islands</option>  <option value='Tuvalu' id='TV'>Tuvalu</option>  <option value='Uganda' id='UG'>Uganda</option>  <option value='Ukraine' id='UA'>Ukraine</option>  <option value='United Arab Emirates' id='AE'>United Arab Emirates</option>  <option value='United Kingdom' id='UK'>United Kingdom</option>  <option value='United States' id='US'>United States</option>  <option value='United States Minor Outlying Islands' id='UM'>United States Minor Outlying Islands</option>  <option value='Uruguay' id='UY'>Uruguay</option>  <option value='Uzbekistan' id='UZ'>Uzbekistan</option>  <option value='Vanuatu' id='VU'>Vanuatu</option>  <option value='Vatican City' id='VA'>Vatican City</option>  <option value='Venezuela' id='VE'>Venezuela</option>  <option value='VietNam' id='VN'>VietNam</option>  <option value='Virgin Islands (British)' id='VG'>Virgin Islands (British)</option>  <option value='Virgin Islands' id='VI'>Virgin Islands</option>  <option value='Wallis and Futuna' id='WF'>Wallis and Futuna</option>  <option value='Yemen' id='YE'>Yemen</option>  <option value='Zambia' id='ZM'>Zambia</option>  <option value='Zimbabwe' id='ZW'>Zimbabwe</option></select><br><font face='Verdana' color='#FF0000' size='1'>* Institute Name</font><br><input type='text' id='txtUniversity"+place+"' name='txtUniversity"+place+"' maxlength='255' style='width:170px;border: 1px solid #bdbdbd;border-radius: 4px;font-family: Arial;font-size: 12px;height: 24px;' onblur = 'putValueInHiddenFcampus(this,"+place+");'>";
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

function createGrd(myobj, place)
{

	objResultPoint = document.getElementById("txtResultPoint"+place);
	objScale = document.getElementById("ddlCGPAScale"+place);
	if(myobj.value == "12" || myobj.value == "-1")
	{
		objResultPoint.style.visibility = "hidden";
		objScale.style.visibility = "hidden";
		//objResultPoint.style.background = "#FFEE00";
	}
	else
	{
		if(myobj.value == "0")
		{
		    objResultPoint.value = "0.00";
		    objResultPoint.maxLength = 5 ;
			objResultPoint.style.visibility = "visible";
			objScale.style.visibility = "visible";
			objResultPoint.disabled = false;
		}
		else
		{
			objResultPoint.style.visibility = "visible";
			objResultPoint.value = "00.00";
		    objResultPoint.maxLength = 5;
			objScale.style.visibility = "hidden";
			objResultPoint.disabled = false;
		}
	}
	return;
}

function LoadDegree(myobj, place)
{
	objDegree = "spnDegree"+place;
	objResult = "spnResult"+place;
	strValue = myobj.value;
	
	arrSSC = ["SSC","Dakhil","O Level","Vocational","Equivalent"];
	arrHSC = ["HSC","Alim","Business Management","A Level","Diploma","Equivalent"];
	arrBS = ["BA(Hons)","BBA","BBS(Hons)","BCom(Hons)","BSc(Hons)","BSc(Engg)","BSS(Hons)"];
	
	/*,"BA(Pass)","BSS(Pass)","BSc(Pass)","BBS(Pass)","BCom(Pass)","B.Ed(Pass)"*/
	
	arrMS = ["MA","MBA","MBS","MBM","MCom","MS","MSc","MSc(Engg)","MSS"];
	//alert(objDegree);
	
	if(strValue == 1)
	{
		optionSSC = "";
		for(i=0; i<arrSSC.length; i++)
		{
			optionSSC = optionSSC + "<option value = '"+arrSSC[i]+"'>"+arrSSC[i]+"</option>";
		}
		document.getElementById(objDegree).innerHTML = "" ;
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionSSC+"</select> ";
	
		//document.getElementById(objResult).innerHTML = "" ;
		//document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onChange='return createGrd(this,"+place+");'><option value='-1' selected='selected'>Select</option><option value='15'>First</option><option value='14'>Second</option><option value='0'>Grade</option></select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
	}
	else if(strValue == 2)
	{
		//document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='FONT-SIZE:7pt;WIDTH:60px' onchange='return LoadJubject(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='HSC'>HSC</option><option value='Alim'>Alim</option><option value='Business Management'>Business Management</option><option value='A Level'>A Level</option><option value='Equivalent'>Equivalent</option></select> ";
		optionHSC = "";
		for(i=0; i<arrHSC.length; i++)
		{
			optionHSC = optionHSC + "<option value = '"+arrHSC[i]+"'>"+arrHSC[i]+"</option>";
		}		
		
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionHSC+"</select> ";
	//	document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onChange='return createGrd(this,"+place+");'><option value='-1' selected='selected'>Select</option><option value='15'>First</option><option value='14'>Second</option><option value='0'>Grade</option></select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
	}
	else if(strValue == 3)
	{
		//document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='FONT-SIZE:7pt;WIDTH:60px' onchange='return LoadJubject(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='BBA'>BBA</option><option value='BBS'>BBS</option><option value='Bachelor(Hons)'>Bachelor(Hons)</option><option value='BA(Pass)'>BA(Pass)</option><option value='BCom(Pass)'>BCom(Pass)</option><option value='BSc(Pass)'>BSc(Pass)</option><option value='BSS(Pass)'>BSS(Pass)</option></select> ";
		
		optionBS = "";
		for(i=0; i<arrBS.length; i++)
		{
			optionBS = optionBS + "<option value = '"+arrBS[i]+"'>"+arrBS[i]+"</option>";
		}
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionBS+"</select> ";
		
		//document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onChange='return createGrd(this,"+place+");'><option value='-1' selected='selected'>Select</option><option value='15'>First</option><option value='14'>Second</option><option value='0'>Grade</option></select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
	}
	else if(strValue == 4)
	{
		optionMS = "";
		for(i=0; i<arrMS.length; i++)
		{
			optionMS = optionMS + "<option value = '"+arrMS[i]+"'>"+arrMS[i]+"</option>";
		}
		
		
		//document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='FONT-SIZE:7pt;WIDTH:60px' onchange='return LoadJubject(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='MBA'>MBA</option><option value='MBM'>MBM</option><option value='MBS'>MBS</option><option value='Masters'>Masters</option></select> ";
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionMS+"</option></select> ";
		
		//document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onChange='return createGrd(this,"+place+");'><option value='-1' selected='selected'>Select</option><option value='15'>First</option><option value='14'>Second</option><option value='0'>Grade</option></select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
	}
	else if(strValue == 5 || strValue == 6)
	{
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject(this,"+place+");'><option value='S' selected='selected'>Select</option></select> ";
		//document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onChange='return createGrd(this,"+place+");'><option value='-1' selected='selected'>Select</option><option value='15'>First</option><option value='14'>Second</option><option value='0'>Grade</option></select> ";
	}
	else
	{
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' ><option value='S' selected='selected'>Select</option></select> ";
	//	document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;'><option value='-1' selected='selected'>Select</option></select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
	}
	
}
	
function LoadJubject(myobj, place)
{
	objSubject = "spnSubject"+place;
	strValue = myobj.value;


strNewSubjectList =  "<option value='Accountancy'>Accountancy</option><option value='Accounting'>Accounting</option><option value='Accounting &amp; Finance'>Accounting &amp; Finance</option><option value='Accounts &amp; Economics'>Accounts &amp; Economics</option><option value='Actuarial Mathematics'>Actuarial Mathematics</option><option value='Actuarial Science'>Actuarial Science</option><option value='Agricultural Science'>Agricultural Science</option><option value='Additional Mathematics/Further'>Additional Mathematics/Further</option><option value='Advertising'>Advertising</option><option value='Aeronautical Engineering'>Aeronautical Engineering</option><option value='Analysis &amp; Forex Trading'>Analysis &amp; Forex Trading</option><option value='Applied Chemistry'>Applied Chemistry</option><option value='Applied Genetics'>Applied Genetics</option><option value='Applied Mathematics'>Applied Mathematics</option><option value='Applied Physics'>Applied Physics</option><option value='Archaeology'>Archaeology</option><option value='Architectural Studies'>Architectural Studies</option><option value='Architecture'>Architecture</option><option value='Art'>Art</option><option value='Art History'>Art History</option><option value='Artificial Intelligence &amp; Software'>Artificial Intelligence &amp; Software</option><option value='Auditing'>Auditing</option><option value='Anthropology'>Anthropology</option><option value='Bangla'>Bangla</option><option value='Banking'>Banking</option><option value='Banking Law'>Banking Law</option><option value='Bank Management'>Bank Management</option><option value='Banking Practices'>Banking Practices</option><option value='Banking and Finance'>Banking and Finance</option><option value='Biochemistry'>Biochemistry</option><option value='Biology'>Biology</option><option value='Botany'>Botany</option><option value='Zoology'>Zoology</option><option value='Biotechnology'>Biotechnology</option><option value='Bookkeeping'>Bookkeeping</option><option value='Buddhist Studies (Syl 1)'>Buddhist Studies (Syl 1)</option><option value='Building Services Engineering'>Building Services Engineering</option><option value='Business Accounts'>Business Accounts</option><option value='Business Administration'>Business Administration</option><option value='Business Correspondence / Repo'>Business Correspondence / Repo</option><option value='Business Eco &amp; Busi Info Sys'>Business Eco &amp; Busi Info Sys</option><option value='Business Information Systems'>Business Information Systems</option><option value='Business Law'>Business Law</option><option value='Business Management Systems'>Business Management Systems</option><option value='Business Strategy'>Business Strategy</option><option value='Business Studies'>Business Studies</option><option value='Business Studies &amp; Economics'>Business Studies &amp; Economics</option><option value='Chemical Sciences'>Chemical Sciences</option><option value='Chemical Technical/Engineering'>Chemical Technical/Engineering</option><option value='Chemistry'>Chemistry</option><option value='Chinese'>Chinese</option><option value='Chinese History'>Chinese History</option><option value='Chinese Language'>Chinese Language</option><option value='Chinese Language &amp; Culture'>Chinese Language &amp; Culture</option><option value='Chinese Language &amp; Literature'>Chinese Language &amp; Literature</option><option value='Chinese Literature'>Chinese Literature</option><option value='Civil &amp; Structural Engineering'>Civil &amp; Structural Engineering</option><option value='Civil Engineering'>Civil Engineering</option><option value='Classics &amp; German'>Classics &amp; German</option><option value='Classics &amp; Philosophy'>Classics &amp; Philosophy</option><option value='Commerce'>Commerce</option><option value='Commercial Studies and Admin'>Commercial Studies and Admin</option><option value='Commerical Studies'>Commerical Studies</option><option value='Communication'>Communication</option><option value='Communication, Advertising &amp; Media'>Communication, Advertising &amp; Media</option><option value='Company Secretaryship &amp; Admin'>Company Secretaryship &amp; Admin</option><option value='Comparative Law'>Comparative Law</option><option value='Computer Applications'>Computer Applications</option><option value='Computer Engineering'>Computer Engineering</option><option value='Computer Operation'>Computer Operation</option><option value='Computer Programming'>Computer Programming</option><option value='Computer Science'>Computer Science</option><option value='Computer Science & Engineering'>Computer Science & Engineering</option><option value='Computer Simulation Studies'>Computer Simulation Studies</option><option value='Computer Studies'>Computer Studies</option><option value='Computer Systems'>Computer Systems</option><option value='Computers &amp; Statistics'>Computers &amp; Statistics</option><option value='Computing &amp; Information System'>Computing &amp; Information System</option><option value='Corporate Finance'>Corporate Finance</option><option value='Cost Accounting'>Cost Accounting</option><option value='Credit Management / Loan Admin'>Credit Management / Loan Admin</option><option value='Criminology'>Criminology</option><option value='Data Processing'>Data Processing</option><option value='Database'>Database</option><option value='Design'>Design</option><option value='Design &amp; Technology'>Design &amp; Technology</option><option value='Development Studies'>Development Studies</option><option value='Economic History'>Economic History</option><option value='Economics'>Economics</option><option value='Economics &amp; Business Finance'>Economics &amp; Business Finance</option><option value='Economics &amp; Finance'>Economics &amp; Finance</option><option value='Economics &amp; Politics'>Economics &amp; Politics</option><option value='Economics &amp; Public Affairs'>Economics &amp; Public Affairs</option><option value='Economics &amp; Social History'>Economics &amp; Social History</option><option value='Education'>Education</option><option value='Electrical &amp; Electronic Engrg'>Electrical &amp; Electronic Engrg</option><option value='Electrical Engineering'>Electrical Engineering</option><option value='Electronic Engineering'>Electronic Engineering</option><option value='Electronics'>Electronics</option><option value='Electronics &amp; Electricity'>Electronics &amp; Electricity</option><option value='Electronics Telecoms Computing'>Electronics Telecoms Computing</option><option value='Engineering'>Engineering</option><option value='Engineering Science'>Engineering Science</option><option value='English'>English</option><option value='English &amp; American Studies'>English &amp; American Studies</option><option value='English Drama &amp; Med Studs'>English Drama &amp; Med Studs</option><option value='English For Commerce'>English For Commerce</option><option value='English History'>English History</option><option value='English Language (Syl A)'>English Language (Syl A)</option><option value='English Language (Syl B)'>English Language (Syl B)</option><option value='English Literature / Language'>English Literature / Language</option><option value='English Studies &amp; Comparative'>English Studies &amp; Comparative</option><option value='Environmental Design'>Environmental Design</option><option value='Environmental Planning'>Environmental Planning</option><option value='Equality Studies'>Equality Studies</option><option value='Estate Management'>Estate Management</option><option value='European Administration'>European Administration</option><option value='European Business Admin'>European Business Admin</option><option value='European Business Studies'>European Business Studies</option><option value='European Languages &amp; Business'>European Languages &amp; Business</option><option value='European Law'>European Law</option><option value='European Studies'>European Studies</option><option value='Executive Secretarial Studies'>Executive Secretarial Studies</option><option value='Finance'>Finance</option><option value='Finance & Banking'>Finance & Banking</option><option value='Financial Decision Analysis'>Financial Decision Analysis</option><option value='Financial Economics'>Financial Economics</option><option value='Financial Law'>Financial Law</option><option value='Financial Services'>Financial Services</option><option value='Fine Arts'>Fine Arts</option><option value='Food &amp; Beverage Service'>Food &amp; Beverage Service</option><option value='French'>French</option><option value='French &amp; Business Studies'>French &amp; Business Studies</option><option value='French &amp; Spanish'>French &amp; Spanish</option><option value='General Business Management'>General Business Management</option><option value='General Science'>General Science</option><option value='General Studies'>General Studies</option><option value='Genetics'>Genetics</option><option value='Geography'>Geography</option><option value='Geography &amp; Geology'>Geography &amp; Geology</option><option value='Geography &amp; Organisation Studs'>Geography &amp; Organisation Studs</option><option value='Geology'>Geology</option><option value='German'>German</option><option value='Government &amp; Public Affairs'>Government &amp; Public Affairs</option><option value='Graphic Design'>Graphic Design</option><option value='Higher Mathematics'>Higher Mathematics</option><option value='History'>History</option><option value='History &amp; Archaeology'>History &amp; Archaeology</option><option value='Home Economics'>Home Economics</option><option value='Hospitality Management / Hotel'>Hospitality Management / Hotel</option><option value='Human Biology'>Human Biology</option><option value='Human Resources'>Human Resources</option><option value='Humanity'>Humanity</option><option value='Import/Export Studies'>Import/Export Studies</option><option value='Industrial Engineering'>Industrial Engineering</option><option value='Industrial Management'>Industrial Management</option><option value='Industrial Relations'>Industrial Relations</option><option value='Information Engineering'>Information Engineering</option><option value='Information Systems'>Information Systems</option><option value='Information Technology'>Information Technology</option><option value='Insurance'>Insurance</option><option value='Interior Design'>Interior Design</option><option value='International Business'>International Business</option><option value='International Economics'>International Economics</option><option value='International Management'>International Management</option><option value='Islamic History'>Islamic History</option><option value='International Relations'>International Relations</option><option value='International Studies'>International Studies</option><option value='International Trade'>International Trade</option><option value='Investment'>Investment</option><option value='Investment Management'>Investment Management</option><option value='Japanese'>Japanese</option><option value='Journalism'>Journalism</option><option value='Journalism &amp; Communication'>Journalism &amp; Communication</option><option value='Language &amp; Communication'>Language &amp; Communication</option><option value='Latin'>Latin</option><option value='Law'>Law</option><option value='Legal Executive Studies'>Legal Executive Studies</option><option value='Liberal Studies'>Liberal Studies</option><option value='Linguistics/Politics'>Linguistics/Politics</option><option value='Management'>Management</option><option value='Management &amp; Business Admin'>Management &amp; Business Admin</option><option value='Management Accountancy'>Management Accountancy</option><option value='Management Information System'>Management Information System</option><option value='Management Information Systems'>Management Information Systems</option><option value='Management Studies/Science'>Management Studies/Science</option><option value='Mandarin'>Mandarin</option><option value='Marketing'>Marketing</option><option value='Marketing &amp; Finance'>Marketing &amp; Finance</option><option value='Marketing &amp; International Busi'>Marketing &amp; International Busi</option><option value='Marketing Management'>Marketing Management</option><option value='Marketing/Sales'>Marketing/Sales</option><option value='Mathematical Bus Analysis'>Mathematical Bus Analysis</option><option value='Mathematics'>Mathematics</option><option value='Mathematics &amp; Management'>Mathematics &amp; Management</option><option value='Mathematics for Decision Making'>Mathematics for Decision Making</option><option value='Mathematics, Statistics &amp; Compu'>Mathematics, Statistics &amp; Compu</option><option value='Mathematics/Arithmetic'>Mathematics/Arithmetic</option><option value='Maths &amp; Computing'>Maths &amp; Computing</option><option value='Mechanical Engineering'>Mechanical Engineering</option><option value='Metalwork'>Metalwork</option><option value='Modern Langauges'>Modern Langauges</option><option value='Music / Theory Of Music'>Music / Theory Of Music</option><option value='Natural Sciences'>Natural Sciences</option><option value='New Technology'>New Technology</option><option value='Office Studies/Management'>Office Studies/Management</option><option value='Operational Research'>Operational Research</option><option value='Organizational Analysis &amp; Behav'>Organizational Analysis &amp; Behav</option><option value='Personnel Management'>Personnel Management</option><option value='Pharmacology'>Pharmacology</option><option value='Pharmacy'>Pharmacy</option><option value='Philosophy'>Philosophy</option><option value='Philosophy Politics Economics'>Philosophy Politics Economics</option><option value='Phys Recreation &amp; Geography'>Phys Recreation &amp; Geography</option><option value='Physics'>Physics</option><option value='Political Economy'>Political Economy</option><option value='Political Science'>Political Science</option><option value='Politics &amp; History'>Politics &amp; History</option><option value='Principles Of Accounts'>Principles Of Accounts</option><option value='Private Secretaries'>Private Secretaries</option><option value='Production &amp; Industrial Engrg'>Production &amp; Industrial Engrg</option><option value='Project Management'>Project Management</option><option value='Property Management'>Property Management</option><option value='Psychology'>Psychology</option><option value='Public Administration'>Public Administration</option><option value='Public Relations'>Public Relations</option><option value='Pure Mathematics'>Pure Mathematics</option><option value='Quantitative Analysis'>Quantitative Analysis</option><option value='Quantitative Economics'>Quantitative Economics</option><option value='Religion/Religious Studies/B.K'>Religion/Religious Studies/B.K</option><option value='Russian &amp; French'>Russian &amp; French</option><option value='Safety Management'>Safety Management</option><option value='Science'>Science</option><option value='Secretarial Studies'>Secretarial Studies</option><option value='Securities Investment'>Securities Investment</option><option value='Shorthand'>Shorthand</option><option value='Social Anthropology'>Social Anthropology</option><option value='Social Science'>Social Science</option><option value='Social Work'>Social Work</option><option value='Social welfare'>Social welfare</option><option value='Sociology'>Sociology</option><option value='Software Engineering'>Software Engineering</option><option value='Spanish'>Spanish</option><option value='SANSKRIT'>SANSKRIT</option><option value='Statistics'>Statistics</option><option value='Strategic Marketing &amp; Busi Mgmnt'>Strategic Marketing &amp; Busi Mgmnt</option><option value='Structural Engineering'>Structural Engineering</option><option value='Supervisory Management'>Supervisory Management</option><option value='System Analysis'>System Analysis</option><option value='Taxation'>Taxation</option><option value='Teaching'>Teaching</option><option value='Technical Drawing'>Technical Drawing</option><option value='Telecommunication'>Telecommunication</option><option value='Textile Technology'>Textile Technology</option><option value='Training Management'>Training Management</option><option value='Translation'>Translation</option><option value='Transport'>Transport</option><option value='Typewriting'>Typewriting</option><option value ='Urban & Rural Planning'>Urban & Rural Planning</option><option value='Word Processing'>Word Processing</option><option value='Zoology'>Zoology</option>";

	if(strValue == "MBS" || strValue == "MCom" || strValue == "BBS(Hons)" || strValue == "BCom(Hons)")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' ><option value='S' selected ='selected'>Select</option><option value='Economics'>Economics</option><option value='Finance'>Finance</option><option value='Banking'>Banking</option><option value='Accounting'>Accounting</option><option value='Management'>Management</option><option value='Marketing'>Marketing</option></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "MBA" || strValue == "BBA")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' ><option value='S'>Select</option><option value='Finance'>Finance</option><option value='Banking'>Banking</option><option value='Finance_Banking'>Finance & Banking</option><option value='Accounting'>Accounting</option><option value='Accounting_Information System'>Accounting & Information System</option><option value='MIS'>MIS</option><option value='International Business'>International Business</option><option value='Marketing'>Marketing</option><option value='Management'>Management</option><option value='Human Resource'>Human Resource</option><option value='Strategic International Management'>Strategic International Management</option></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}

	else if(strValue == "HSC" || strValue == "Alim" ||  strValue == "A Level" || strValue == "Equivalent" || strValue == "SSC" || strValue == "Dakhil" || strValue == "Dakhil" || strValue == "O Level" || strValue == "Vocational" || strValue == "Business Management" || strValue == "Diploma")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");' ><option value='S'>Select</option><option value='Science'>Science</option><option value='Humanities'>Humanities</option><option value='Commerce'>Commerce</option><option value='Business Studies'>Business Studies</option></select></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}	
	

	else if(strValue == "MBM")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='return LoadOthers(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='Bank Management'>Bank Management</option></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "BSc(Engg)" || strValue == "MSc(Engg)")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;'><option value='S' selected='selected'>Select</option><option value='CSE'>CSE</option><option value='CE'>Civil Engg</option><option value='ME'>Mechanical Engg</option><option value='EEE'>EEE</option></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "MSc" || strValue == "BSc(Hons)" )
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='return LoadOthers(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='IT'>IT</option><option value='Computer Science'>Computer Science</option><option value='Economics'>Economics</option><option value='Mathematics'>Mathematics</option><option value='Statistics'>Statistics</option></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	else if(strValue == "MSS" || strValue == "MA" || strValue == "MS" || strValue == "BSS(Hons)" || strValue == "BA(Hons)")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='return LoadOthers(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='Economics'>Economics</option><option value='Public Administration'>Public Administration</option><option value='Development Studies'>Development Studies</option></select> ";
		//<option value='O'>Others</option>
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "B.Ed(Hons)" || strValue == "M.Ed")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='return LoadOthers(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='Economics'>Economics</option><option value='Finance'>Finance</option><option value='Banking'>Banking</option><option value='Accounting'>Accounting</option><option value='Management'>Management</option><option value='Marketing'>Marketing</option><option value='Public Administration'>Public Administration</option><option value='Development Studies'>Development Studies</option><option value='Mathematics'>Mathematics</option></select> ";
		//<option value='O'>Others</option>
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "Others")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='return LoadOthers(this,"+place+");'><option value='S' selected='selected'>Select</option></select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "<input name='txtDoctorate"+place+"' type='text' class='text' id='txtDoctorate"+place+"' style='width:70px;' />";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	else
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' ><option value='S' selected='selected'>Select</option>"+strNewSubjectList+"</select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
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



function LoadOthers(myobj, place)
{
	objOthers = "spnOthers"+place;
	strValue = myobj.value;
	//alert(objOthers);
	
	/*  */ 
	if(strValue == "O")
	{
		document.getElementById(objOthers).innerHTML = "<input name='txtOthers"+place+"' type='text' class='text' id='txtOthers"+place+"' style='width:70px;' />";
	}
	
	else
	{
		document.getElementById(objOthers).innerHTML = "";
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

