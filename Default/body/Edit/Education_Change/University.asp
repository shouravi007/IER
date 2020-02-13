 <script>
 function putValueInHiddenUniversity_Edit(myobj, place)
{
	objUniversityHidden = "ddlUniversity"+place+"hidden";
	strValue = myobj.value;
	//alert(objOthers);
    document.getElementById(objUniversityHidden).value = strValue;
}
function putValueInHiddenOthers_Edit(myobj, place)
{
	objSubjectHidden = "txtUniversity"+place+"hidden";
	strValue = myobj.value;
	//alert(objOthers);
    document.getElementById(objSubjectHidden).value = strValue;
}
function putValueInHiddenCountry_Edit(myobj, place)
{
	objSubjectHidden = "ddlCountry"+place+"hidden";
	strValue = myobj.value;
	//alert(objOthers);
    document.getElementById(objSubjectHidden).value = strValue;
}
function putValueInHiddenFcampus_Edit(myobj, place)
{
	objSubjectHidden = "txtUniversity"+place+"hidden";
	strValue = myobj.value;
	//alert(objOthers);
    document.getElementById(objSubjectHidden).value = strValue;
}
function createEdu_Edit(myobj,place)
{
	obj_name = "sp_edu"+place;
	if(myobj.value == "Others")
	{
		document.getElementById("sp_edu"+place).innerHTML="<font face='Verdana' color='#FF0000' size='1'>* Institute Name</font><br><input type='text' name='txtUniversity"+place+"' id='txtUniversity"+place+"' maxlength='255'  class = 'form-control'   onblur = 'putValueInHiddenOthers_Edit(this,"+place+");'>"
	}	
	else if(myobj.value == "Foreign")
	{
		document.getElementById("sp_edu"+place).innerHTML ="<font face='Verdana' color='#FF0000' size='1'>* Campus location<br><select id='ddlCountry"+place+"' name='ddlCountry"+place+"'  class = 'form-control'   onchange = 'putValueInHiddenCountry_Edit(this,"+place+");'>  <option value='Afghanistan' id='AF'>Afghanistan </option>  <option value='Albania' id='AL'>Albania </option>  <option value='Algeria' id='DZ'>Algeria </option>  <option value='American Samoa' id='AS'>American Samoa </option>  <option value='Andorra' id='AD'>Andorra </option>  <option value='Angola' id='AO'>Angola </option>  <option value='Anguilla' id='AI'>Anguilla </option>  <option value='Antarctica' id='AQ'>Antarctica </option>  <option value='Antigua and Barbuda' id='AG'>Antigua and Barbuda</option>  <option value='Argentina' id='AR'>Argentina</option>  <option value='Armenia' id='AM'>Armenia</option>  <option value='Aruba' id='AW'>Aruba</option>  <option value='Australia' id='AU'>Australia</option>  <option value='Austria' id='AT'>Austria</option>  <option value='Azerbaijan' id='AZ'>Azerbaijan</option>  <option value='Bahamas' id='BS'>Bahamas</option>  <option value='Bahrain' id='BH'>Bahrain</option>  <option value='Bangladesh' selected id='BD'>Bangladesh</option>  <option value='Barbados' id='BB'>Barbados</option>  <option value='Belarus' id='BY'>Belarus</option>  <option value='Belgium' id='BE'>Belgium</option>  <option value='Belize' id='BZ'>Belize</option>  <option value='Benin' id='BJ'>Benin</option>  <option value='Bermuda' id='BM'>Bermuda</option>  <option value='Bhutan' id='BT'>Bhutan</option>  <option value='Bolivia' id='BO'>Bolivia</option>  <option value='Bosnia and Herzegovina' id='BA'>Bosnia and Herzegovina</option>  <option value='Botswana' id='BW'>Botswana</option>  <option value='Bouvet Island' id='BV'>Bouvet Island</option>  <option value='Brazil' id='BR'>Brazil</option>  <option value='British Indian Ocean Territory' id='IO'>British Indian Ocean Territory</option>  <option value='Brunei' id='BN'>Brunei</option>  <option value='Bulgaria' id='BG'>Bulgaria</option>  <option value='Burkina Faso' id='BF'>Burkina Faso</option>  <option value='Burundi' id='BI'>Burundi</option>  <option value='Cambodia' id='KH'>Cambodia</option>  <option value='Cameroon' id='CM'>Cameroon</option>  <option value='Canada' id='CA'>Canada</option>  <option value='Cape Verde' id='CV'>Cape Verde</option>  <option value='Cayman Islands' id='KY'>Cayman Islands</option>  <option value='Central African Republic' id='CF'>Central African Republic</option>  <option value='Chad' id='TD'>Chad</option>  <option value='Chile' id='CL'>Chile</option>  <option value='China' id='CN'>China</option>  <option value='Christmas Island' id='CX'>Christmas Island</option>  <option value='Cocos (Keeling) Islands' id='CC'>Cocos (Keeling) Islands</option>  <option value='Colombia' id='CO'>Colombia</option>  <option value='Comoros' id='KM'>Comoros</option>  <option value='Congo' id='CG'>Congo</option>  <option value='Cook Islands' id='CK'>Cook Islands</option>  <option value='Costa Rica' id='CR'>Costa Rica</option>  <option value='Côte d&#39;Ivoire' id='CI'>Côte d&#39;Ivoire</option>  <option value='Croatia (Hrvatska)' id='HR'>Croatia (Hrvatska)</option>  <option value='Cuba' id='CU'>Cuba</option>  <option value='Cyprus' id='CY'>Cyprus</option>  <option value='Czech Republic' id='CZ'>Czech Republic</option>  <option value='Congo (DRC)' id='CD'>Congo (DRC)</option>  <option value='Denmark' id='DK'>Denmark</option>  <option value='Djibouti' id='DJ'>Djibouti</option>  <option value='Dominica' id='DM'>Dominica</option>  <option value='Dominican Republic' id='DO'>Dominican Republic</option>  <option value='East Timor' id='TP'>East Timor</option>  <option value='Ecuador' id='EC'>Ecuador</option>  <option value='Egypt' id='EG'>Egypt</option>  <option value='El Salvador' id='SV'>El Salvador</option>  <option value='Equatorial Guinea' id='GQ'>Equatorial Guinea</option>  <option value='Eritrea' id='ER'>Eritrea</option>  <option value='Estonia' id='EE'>Estonia</option>  <option value='Ethiopia' id='ET'>Ethiopia</option>  <option value='Falkland Islands (Islas Malvinas)' id='FK'>Falkland Islands (Islas Malvinas)</option>  <option value='Faroe Islands' id='FO'>Faroe Islands</option>  <option value='Fiji Islands' id='FJ'>Fiji Islands</option>  <option value='Finland' id='FI'>Finland</option>  <option value='France' id='FR'>France</option>  <option value='French Guiana' id='GF'>French Guiana</option>  <option value='French Polynesia' id='PF'>French Polynesia</option>  <option value='French Southern and Antarctic Lands' id='TF'>French Southern and Antarctic Lands</option>  <option value='Gabon' id='GA'>Gabon</option>  <option value='Gambia' id='GM'>Gambia</option>  <option value='Georgia' id='GE'>Georgia</option>  <option value='Germany' id='DE'>Germany</option>  <option value='Ghana' id='GH'>Ghana</option>  <option value='Gibraltar' id='GI'>Gibraltar</option>  <option value='Greece' id='GR'>Greece</option>  <option value='Greenland' id='GL'>Greenland</option>  <option value='Grenada' id='GD'>Grenada</option>  <option value='Guadeloupe' id='GP'>Guadeloupe</option>  <option value='Guam' id='GU'>Guam</option>  <option value='Guatemala' id='GT'>Guatemala</option>  <option value='Guinea' id='GN'>Guinea</option>  <option value='Guinea-Bissau' id='GW'>Guinea-Bissau</option>  <option value='Guyana' id='GY'>Guyana</option>  <option value='Haiti' id='HT'>Haiti</option>  <option value='Heard Island and McDonald Islands' id='HM'>Heard Island and McDonald Islands</option>  <option value='Honduras' id='HN'>Honduras</option>  <option value='Hong Kong SAR' id='HK'>Hong Kong SAR</option>  <option value='Hungary' id='HU'>Hungary</option>  <option value='Iceland' id='IS'>Iceland</option>  <option value='India' id='IN'>India</option>  <option value='Indonesia' id='ID'>Indonesia</option>  <option value='Iran' id='IR'>Iran</option>  <option value='Iraq' id='IQ'>Iraq</option>  <option value='Ireland' id='IE'>Ireland</option>  <option value='Israel' id='IL'>Israel</option>  <option value='Italy' id='IT'>Italy</option>  <option value='Jamaica' id='JM'>Jamaica</option>  <option value='Japan' id='JP'>Japan</option>  <option value='Jordan' id='JO'>Jordan</option>  <option value='Kazakhstan' id='KZ'>Kazakhstan</option>  <option value='Kenya' id='KE'>Kenya</option>  <option value='Kiribati' id='KI'>Kiribati</option>  <option value='Korea' id='KR'>Korea</option>  <option value='Kuwait' id='KW'>Kuwait</option>  <option value='Kyrgyzstan' id='KG'>Kyrgyzstan</option>  <option value='Laos' id='LA'>Laos</option>  <option value='Latvia' id='LV'>Latvia</option>  <option value='Lebanon' id='LB'>Lebanon</option>  <option value='Lesotho' id='LS'>Lesotho</option>  <option value='Liberia' id='LR'>Liberia</option>  <option value='Libya' id='LY'>Libya</option>  <option value='Liechtenstein' id='LI'>Liechtenstein</option>  <option value='Lithuania' id='LT'>Lithuania</option>  <option value='Luxembourg' id='LU'>Luxembourg</option>  <option value='Macao SAR' id='MO'>Macao SAR</option>  <option value='Macedonia, Former Yugoslav Republic of' id='MK'>Macedonia, Former Yugoslav Republic of</option>  <option value='Madagascar' id='MG'>Madagascar</option>  <option value='Malawi' id='MW'>Malawi</option>  <option value='Malaysia' id='MY'>Malaysia</option>  <option value='Maldives' id='MV'>Maldives</option>  <option value='Mali' id='ML'>Mali</option>  <option value='Malta' id='MT'>Malta</option>  <option value='Marshall Islands' id='MH'>Marshall Islands</option>  <option value='Martinique' id='MQ'>Martinique</option>  <option value='Mauritania' id='MR'>Mauritania</option>  <option value='Mauritius' id='MU'>Mauritius</option>  <option value='Mayotte' id='YT'>Mayotte</option>  <option value='Mexico' id='MX'>Mexico</option>  <option value='Micronesia' id='FM'>Micronesia</option>  <option value='Moldova' id='MD'>Moldova</option>  <option value='Monaco' id='MC'>Monaco</option>  <option value='Mongolia' id='MN'>Mongolia</option>  <option value='Montserrat' id='MS'>Montserrat</option>  <option value='Morocco' id='MA'>Morocco</option>  <option value='Mozambique' id='MZ'>Mozambique</option>  <option value='Myanmar' id='MM'>Myanmar</option>  <option value='Namibia' id='NA'>Namibia</option>  <option value='Nauru' id='NR'>Nauru</option>  <option value='Nepal' id='NP'>Nepal</option>  <option value='Netherlands' id='NL'>Netherlands</option>  <option value='Netherlands Antilles' id='AN'>Netherlands Antilles</option>  <option value='New Caledonia' id='NC'>New Caledonia</option>  <option value='New Zealand' id='NZ'>New Zealand</option>  <option value='Nicaragua' id='NI'>Nicaragua</option>  <option value='Niger' id='NE'>Niger</option>  <option value='Nigeria' id='NG'>Nigeria</option>  <option value='Niue' id='NU'>Niue</option>  <option value='Norfolk Island' id='NF'>Norfolk Island</option>  <option value='North Korea' id='KP'>North Korea</option>  <option value='Northern Mariana Islands' id='MP'>Northern Mariana Islands</option>  <option value='Norway' id='NO'>Norway</option>  <option value='Oman' id='OM'>Oman</option>  <option value='Pakistan' id='PK'>Pakistan</option>  <option value='Palau' id='PW'>Palau</option>  <option value='Panama' id='PA'>Panama</option>  <option value='Papua New Guinea' id='PG'>Papua New Guinea</option>  <option value='Paraguay' id='PY'>Paraguay</option>  <option value='Peru' id='PE'>Peru</option>  <option value='Philippines' id='PH'>Philippines</option>  <option value='Pitcairn Islands' id='PN'>Pitcairn Islands</option>  <option value='Poland' id='PL'>Poland</option>  <option value='Portugal' id='PT'>Portugal</option>  <option value='Puerto Rico' id='PR'>Puerto Rico</option>  <option value='Qatar' id='QA'>Qatar</option>  <option value='Reunion' id='RE'>Reunion</option>  <option value='Romania' id='RO'>Romania</option>  <option value='Russia' id='RU'>Russia</option>  <option value='Rwanda' id='RW'>Rwanda</option>  <option value='Samoa' id='WS'>Samoa</option>  <option value='San Marino' id='SM'>San Marino</option>  <option value='São Tomé and Príncipe' id='ST'>São Tomé and Príncipe</option>  <option value='Saudi Arabia' id='SA'>Saudi Arabia</option>  <option value='Senegal' id='SN'>Senegal</option>  <option value='Serbia and Montenegro' id='YU'>Serbia and Montenegro</option>  <option value='Seychelles' id='SC'>Seychelles</option>  <option value='Sierra Leone' id='SL'>Sierra Leone</option>  <option value='Singapore' id='SG'>Singapore</option>  <option value='Slovakia' id='SK'>Slovakia</option>  <option value='Slovenia' id='SI'>Slovenia</option>  <option value='Solomon Islands' id='SB'>Solomon Islands</option>  <option value='Somalia' id='SO'>Somalia</option>  <option value='South Africa' id='ZA'>South Africa</option>  <option value='South Georgia and the South Sandwich Islands' id='GS'>South Georgia and the South Sandwich Islands</option>  <option value='Spain' id='ES'>Spain</option>  <option value='Sri Lanka' id='LK'>Sri Lanka</option>  <option value='St. Helena' id='SH'>St. Helena</option>  <option value='St. Kitts and Nevis' id='KN'>St. Kitts and Nevis</option>  <option value='St. Lucia' id='LC'>St. Lucia</option>  <option value='St. Pierre and Miquelon' id='PM'>St. Pierre and Miquelon</option>  <option value='St. Vincent and the Grenadines' id='VC'>St. Vincent and the Grenadines</option>  <option value='Sudan' id='SD'>Sudan</option>  <option value='Suriname' id='SR'>Suriname</option>  <option value='Svalbard and Jan Mayen' id='SJ'>Svalbard and Jan Mayen</option>  <option value='Swaziland' id='SZ'>Swaziland</option>  <option value='Sweden' id='SE'>Sweden</option>  <option value='Switzerland' id='CH'>Switzerland</option>  <option value='Syria' id='SY'>Syria</option>  <option value='Taiwan' id='TW'>Taiwan</option>  <option value='Tajikistan' id='TJ'>Tajikistan</option>  <option value='Tanzania' id='TZ'>Tanzania</option>  <option value='Thailand' id='TH'>Thailand</option>  <option value='Togo' id='TG'>Togo</option>  <option value='Tokelau' id='TK'>Tokelau</option>  <option value='Tonga' id='TO'>Tonga</option>  <option value='Trinidad and Tobago' id='TT'>Trinidad and Tobago</option>  <option value='Tunisia' id='TN'>Tunisia</option>  <option value='Turkey' id='TR'>Turkey</option>  <option value='Turkmenistan' id='TM'>Turkmenistan</option>  <option value='Turks and Caicos Islands' id='TC'>Turks and Caicos Islands</option>  <option value='Tuvalu' id='TV'>Tuvalu</option>  <option value='Uganda' id='UG'>Uganda</option>  <option value='Ukraine' id='UA'>Ukraine</option>  <option value='United Arab Emirates' id='AE'>United Arab Emirates</option>  <option value='United Kingdom' id='UK'>United Kingdom</option>  <option value='United States' id='US'>United States</option>  <option value='United States Minor Outlying Islands' id='UM'>United States Minor Outlying Islands</option>  <option value='Uruguay' id='UY'>Uruguay</option>  <option value='Uzbekistan' id='UZ'>Uzbekistan</option>  <option value='Vanuatu' id='VU'>Vanuatu</option>  <option value='Vatican City' id='VA'>Vatican City</option>  <option value='Venezuela' id='VE'>Venezuela</option>  <option value='VietNam' id='VN'>VietNam</option>  <option value='Virgin Islands (British)' id='VG'>Virgin Islands (British)</option>  <option value='Virgin Islands' id='VI'>Virgin Islands</option>  <option value='Wallis and Futuna' id='WF'>Wallis and Futuna</option>  <option value='Yemen' id='YE'>Yemen</option>  <option value='Zambia' id='ZM'>Zambia</option>  <option value='Zimbabwe' id='ZW'>Zimbabwe</option></select><br><font face='Verdana' color='#FF0000' size='1'>* Institute Name</font><br><input type='text' id='txtUniversity"+place+"' name='txtUniversity"+place+"' maxlength='255'  class = 'form-control'   onblur = 'putValueInHiddenFcampus_Edit(this,"+place+");'>";
	}
	else
	{
		document.getElementById("sp_edu"+place).innerHTML="";
	}
	return;
}
 </script>
 
<div class="col-sm-6">
<label for="firstName">
        <h4>University/Board
            <span>*</span>
        </h4>
    </label>
</div>
<div class="col-sm-6">
          <select id="ddlUniversity1" name="ddlUniversity1"  class="form-control" onChange="putValueInHiddenUniversity_Edit(this,1);return createEdu_Edit(this,1);">

<option value="S" selected="selected">Select</option>
<%
IF bytEduLevel < 3 THEN
    For bb = 0 To Ubound(arrBoardNameList, 1) 
%>
	<option value="<%=arrBoardNameList(bb)%>"<%If Cstr(strUniversity) = Cstr(arrBoardNameList(bb)) then %>selected<%end if%>><%=arrBoardNameList(bb)%></option>
            
<% 
     Next 
			
ElseIF bytEduLevel >= 3  THEN 

	for jj = 0 to ubound(arrUni, 2)
%>
	<option value="<%=arrUni(1,jj)%>" <%If Cstr(strUniversity) = Cstr(arrUni(1,jj)) then %>selected<%end if%>><%=arrUni(1,jj)%></option>    
<%
	Next 
END IF
%>
<!--<option value="Foreign">Foreign Institute</option>
<option value="Others">Others</option>
-->
<option value="Foreign"<%If strForeign = "F" Then Response.Write("selected")%>>Foreign Institute</option>
<option value="Others"<%If strForeign = "O" Then Response.Write("selected")%>>Others</option>

</select>

<div id="sp_edu1">
<%
If strForeign = "F" Then
%>
    <font face="Verdana" color="#FF0000" size="1">* Campus location<br />
    <select id="ddlCountry1" name="ddlCountry1"  class="form-control">
        <option value="<%=strCountry%>" selected="selected"><%=strCountry%></option>
        <!--#include file = "OptionForeignCountry.asp"-->
    </select>
    <br />
    * University Name </font> <br />
	<input type="text" id="txtUniversity1" name="txtUniversity1" maxlength="200" class="form-control" value="<%=strUniversityOthers%>" />
   
<%		
ElseIf strForeign = "O" Then
%>
    <font face="Verdana" color="#FF0000" size="1">* University Name</font><br />
    <input type="text" name="txtUniversity1" id="txtUniversity1" maxlength="250"  class="form-control" value="<%=strUniversityOthers%>" />
<%
End If
%>


</div>
</div>


