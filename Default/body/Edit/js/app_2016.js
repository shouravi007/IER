
function LoadDegree3(myobj, place)
{
	objDegree = "spnDegree"+place;
	objResult = "spnResult"+place;
	strValue = myobj.value;
	
	arrSSC = ["SSC","Dakhil","O Level","Vocational","Equivalent"];
	arrHSC = ["HSC","Alim","Business Management","A Level","Diploma","Equivalent"];
	arrBS = ["BA(Hons)","BBA","BBS(Hons)","BCom(Hons)","BSc(Hons)","BSc(Engg)","BSS(Hons)",,"B.Ed(Hons)","L.L.B.(Hons)","BA(Pass)","BSS(Pass)","BSc(Pass)","BBS(Pass)","BCom(Pass)","B.Ed(Pass)","L.L.B.(Pass)"];
	
	/*,"BA(Pass)","BSS(Pass)","BSc(Pass)","BBS(Pass)","BCom(Pass)","B.Ed(Pass)"*/
	
	arrMS = ["MA","MBA","MBS","MBM","MCom","MS","MSc","MSc(Engg)","MSS","L.L.M."];
	//alert(objDegree);
	
	if(strValue == 1)
	{
		optionSSC = "";
		for(i=0; i<arrSSC.length; i++)
		{
			optionSSC = optionSSC + "<option value = '"+arrSSC[i]+"'>"+arrSSC[i]+"</option>";
		}
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionSSC+"</select> ";
	
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
		//document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onChange='return createGrd(this,"+place+");'><option value='-1' selected='selected'>Select</option><option value='15'>First</option><option value='14'>Second</option><option value='0'>Grade</option></select> ";
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
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject3(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionBS+"</select> ";
		
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
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject3(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionMS+"</option></select> ";
		
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
		//document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;'><option value='-1' selected='selected'>Select</option></select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
	}
	
}
	
function LoadJubject3(myobj, place)
{
	objSubject = "spnSubject"+place;
	strValue = myobj.value;
    document.getElementById(objSubject).innerHTML = ""; 

strNewSubjectList =  "<option value='Accountancy'>Accountancy</option><option value='Accounting'>Accounting</option><option value='Accounting &amp; Finance'>Accounting &amp; Finance</option><option value='Accounts &amp; Economics'>Accounts &amp; Economics</option><option value='Actuarial Mathematics'>Actuarial Mathematics</option><option value='Actuarial Science'>Actuarial Science</option><option value='Agricultural Science'>Agricultural Science</option><option value='Additional Mathematics/Further'>Additional Mathematics/Further</option><option value='Advertising'>Advertising</option><option value='Aeronautical Engineering'>Aeronautical Engineering</option><option value='Analysis &amp; Forex Trading'>Analysis &amp; Forex Trading</option><option value='Applied Chemistry'>Applied Chemistry</option><option value='Applied Genetics'>Applied Genetics</option><option value='Applied Mathematics'>Applied Mathematics</option><option value='Applied Physics'>Applied Physics</option><option value='Archaeology'>Archaeology</option><option value='Architectural Studies'>Architectural Studies</option><option value='Architecture'>Architecture</option><option value='Art'>Art</option><option value='Art History'>Art History</option><option value='Artificial Intelligence &amp; Software'>Artificial Intelligence &amp; Software</option><option value='Auditing'>Auditing</option><option value='Anthropology'>Anthropology</option><option value='Bangla'>Bangla</option><option value='Banking'>Banking</option><option value='Banking Law'>Banking Law</option><option value='Bank Management'>Bank Management</option><option value='Banking Practices'>Banking Practices</option><option value='Banking and Finance'>Banking and Finance</option><option value='Biochemistry'>Biochemistry</option><option value='Biology'>Biology</option><option value='Botany'>Botany</option><option value='Zoology'>Zoology</option><option value='Biotechnology'>Biotechnology</option><option value='Bookkeeping'>Bookkeeping</option><option value='Buddhist Studies (Syl 1)'>Buddhist Studies (Syl 1)</option><option value='Building Services Engineering'>Building Services Engineering</option><option value='Business Accounts'>Business Accounts</option><option value='Business Administration'>Business Administration</option><option value='Business Correspondence / Repo'>Business Correspondence / Repo</option><option value='Business Eco &amp; Busi Info Sys'>Business Eco &amp; Busi Info Sys</option><option value='Business Information Systems'>Business Information Systems</option><option value='Business Law'>Business Law</option><option value='Business Management Systems'>Business Management Systems</option><option value='Business Strategy'>Business Strategy</option><option value='Business Studies'>Business Studies</option><option value='Business Studies &amp; Economics'>Business Studies &amp; Economics</option><option value='Chemical Sciences'>Chemical Sciences</option><option value='Chemical Technical/Engineering'>Chemical Technical/Engineering</option><option value='Chemistry'>Chemistry</option><option value='Chinese'>Chinese</option><option value='Chinese History'>Chinese History</option><option value='Chinese Language'>Chinese Language</option><option value='Chinese Language &amp; Culture'>Chinese Language &amp; Culture</option><option value='Chinese Language &amp; Literature'>Chinese Language &amp; Literature</option><option value='Chinese Literature'>Chinese Literature</option><option value='Civil &amp; Structural Engineering'>Civil &amp; Structural Engineering</option><option value='Civil Engineering'>Civil Engineering</option><option value='Classics &amp; German'>Classics &amp; German</option><option value='Classics &amp; Philosophy'>Classics &amp; Philosophy</option><option value='Commerce'>Commerce</option><option value='Commercial Studies and Admin'>Commercial Studies and Admin</option><option value='Commerical Studies'>Commerical Studies</option><option value='Communication'>Communication</option><option value='Communication, Advertising &amp; Media'>Communication, Advertising &amp; Media</option><option value='Company Secretaryship &amp; Admin'>Company Secretaryship &amp; Admin</option><option value='Comparative Law'>Comparative Law</option><option value='Computer Applications'>Computer Applications</option><option value='Computer Engineering'>Computer Engineering</option><option value='Computer Operation'>Computer Operation</option><option value='Computer Programming'>Computer Programming</option><option value='Computer Science'>Computer Science</option><option value='Computer Science & Engineering'>Computer Science & Engineering</option><option value='Computer Simulation Studies'>Computer Simulation Studies</option><option value='Computer Studies'>Computer Studies</option><option value='Computer Systems'>Computer Systems</option><option value='Computers &amp; Statistics'>Computers &amp; Statistics</option><option value='Computing &amp; Information System'>Computing &amp; Information System</option><option value='Corporate Finance'>Corporate Finance</option><option value='Cost Accounting'>Cost Accounting</option><option value='Credit Management / Loan Admin'>Credit Management / Loan Admin</option><option value='Criminology'>Criminology</option><option value='Data Processing'>Data Processing</option><option value='Database'>Database</option><option value='Design'>Design</option><option value='Design &amp; Technology'>Design &amp; Technology</option><option value='Development Studies'>Development Studies</option><option value='Economic History'>Economic History</option><option value='Economics'>Economics</option><option value='Economics &amp; Business Finance'>Economics &amp; Business Finance</option><option value='Economics &amp; Finance'>Economics &amp; Finance</option><option value='Economics &amp; Politics'>Economics &amp; Politics</option><option value='Economics &amp; Public Affairs'>Economics &amp; Public Affairs</option><option value='Economics &amp; Social History'>Economics &amp; Social History</option><option value='Education'>Education</option><option value='Electrical &amp; Electronic Engrg'>Electrical &amp; Electronic Engrg</option><option value='Electrical Engineering'>Electrical Engineering</option><option value='Electronic Engineering'>Electronic Engineering</option><option value='Electronics'>Electronics</option><option value='Electronics &amp; Electricity'>Electronics &amp; Electricity</option><option value='Electronics Telecoms Computing'>Electronics Telecoms Computing</option><option value='Engineering'>Engineering</option><option value='Engineering Science'>Engineering Science</option><option value='English'>English</option><option value='English &amp; American Studies'>English &amp; American Studies</option><option value='English Drama &amp; Med Studs'>English Drama &amp; Med Studs</option><option value='English For Commerce'>English For Commerce</option><option value='English History'>English History</option><option value='English Language (Syl A)'>English Language (Syl A)</option><option value='English Language (Syl B)'>English Language (Syl B)</option><option value='English Literature / Language'>English Literature / Language</option><option value='English Studies &amp; Comparative'>English Studies &amp; Comparative</option><option value='Environmental Design'>Environmental Design</option><option value='Environmental Planning'>Environmental Planning</option><option value='Equality Studies'>Equality Studies</option><option value='Estate Management'>Estate Management</option><option value='European Administration'>European Administration</option><option value='European Business Admin'>European Business Admin</option><option value='European Business Studies'>European Business Studies</option><option value='European Languages &amp; Business'>European Languages &amp; Business</option><option value='European Law'>European Law</option><option value='European Studies'>European Studies</option><option value='Executive Secretarial Studies'>Executive Secretarial Studies</option><option value='Finance'>Finance</option><option value='Finance & Banking'>Finance & Banking</option><option value='Financial Decision Analysis'>Financial Decision Analysis</option><option value='Financial Economics'>Financial Economics</option><option value='Financial Law'>Financial Law</option><option value='Financial Services'>Financial Services</option><option value='Fine Arts'>Fine Arts</option><option value='Food &amp; Beverage Service'>Food &amp; Beverage Service</option><option value='French'>French</option><option value='French &amp; Business Studies'>French &amp; Business Studies</option><option value='French &amp; Spanish'>French &amp; Spanish</option><option value='General Business Management'>General Business Management</option><option value='General Science'>General Science</option><option value='General Studies'>General Studies</option><option value='Genetics'>Genetics</option><option value='Geography'>Geography</option><option value='Geography &amp; Geology'>Geography &amp; Geology</option><option value='Geography &amp; Organisation Studs'>Geography &amp; Organisation Studs</option><option value='Geology'>Geology</option><option value='German'>German</option><option value='Government &amp; Public Affairs'>Government &amp; Public Affairs</option><option value='Graphic Design'>Graphic Design</option><option value='Higher Mathematics'>Higher Mathematics</option><option value='History'>History</option><option value='History &amp; Archaeology'>History &amp; Archaeology</option><option value='Home Economics'>Home Economics</option><option value='Hospitality Management / Hotel'>Hospitality Management / Hotel</option><option value='Human Biology'>Human Biology</option><option value='Human Resources'>Human Resources</option><option value='Humanity'>Humanity</option><option value='Import/Export Studies'>Import/Export Studies</option><option value='Industrial Engineering'>Industrial Engineering</option><option value='Industrial Management'>Industrial Management</option><option value='Industrial Relations'>Industrial Relations</option><option value='Information Engineering'>Information Engineering</option><option value='Information Systems'>Information Systems</option><option value='Information Technology'>Information Technology</option><option value='Insurance'>Insurance</option><option value='Interior Design'>Interior Design</option><option value='International Business'>International Business</option><option value='International Economics'>International Economics</option><option value='International Management'>International Management</option><option value='Islamic History'>Islamic History</option><option value='International Relations'>International Relations</option><option value='International Studies'>International Studies</option><option value='International Trade'>International Trade</option><option value='Investment'>Investment</option><option value='Investment Management'>Investment Management</option><option value='Japanese'>Japanese</option><option value='Journalism'>Journalism</option><option value='Journalism &amp; Communication'>Journalism &amp; Communication</option><option value='Language &amp; Communication'>Language &amp; Communication</option><option value='Latin'>Latin</option><option value='Law'>Law</option><option value='Legal Executive Studies'>Legal Executive Studies</option><option value='Liberal Studies'>Liberal Studies</option><option value='Linguistics/Politics'>Linguistics/Politics</option><option value='Management'>Management</option><option value='Management &amp; Business Admin'>Management &amp; Business Admin</option><option value='Management Accountancy'>Management Accountancy</option><option value='Management Information System'>Management Information System</option><option value='Management Information Systems'>Management Information Systems</option><option value='Management Studies/Science'>Management Studies/Science</option><option value='Mandarin'>Mandarin</option><option value='Marketing'>Marketing</option><option value='Marketing &amp; Finance'>Marketing &amp; Finance</option><option value='Marketing &amp; International Busi'>Marketing &amp; International Busi</option><option value='Marketing Management'>Marketing Management</option><option value='Marketing/Sales'>Marketing/Sales</option><option value='Mathematical Bus Analysis'>Mathematical Bus Analysis</option><option value='Mathematics'>Mathematics</option><option value='Mathematics &amp; Management'>Mathematics &amp; Management</option><option value='Mathematics for Decision Making'>Mathematics for Decision Making</option><option value='Mathematics, Statistics &amp; Compu'>Mathematics, Statistics &amp; Compu</option><option value='Mathematics/Arithmetic'>Mathematics/Arithmetic</option><option value='Maths &amp; Computing'>Maths &amp; Computing</option><option value='Mechanical Engineering'>Mechanical Engineering</option><option value='Metalwork'>Metalwork</option><option value='Modern Langauges'>Modern Langauges</option><option value='Music / Theory Of Music'>Music / Theory Of Music</option><option value='Natural Sciences'>Natural Sciences</option><option value='New Technology'>New Technology</option><option value='Office Studies/Management'>Office Studies/Management</option><option value='Operational Research'>Operational Research</option><option value='Organizational Analysis &amp; Behav'>Organizational Analysis &amp; Behav</option><option value='Personnel Management'>Personnel Management</option><option value='Pharmacology'>Pharmacology</option><option value='Pharmacy'>Pharmacy</option><option value='Philosophy'>Philosophy</option><option value='Philosophy Politics Economics'>Philosophy Politics Economics</option><option value='Phys Recreation &amp; Geography'>Phys Recreation &amp; Geography</option><option value='Physics'>Physics</option><option value='Political Economy'>Political Economy</option><option value='Political Science'>Political Science</option><option value='Politics &amp; History'>Politics &amp; History</option><option value='Principles Of Accounts'>Principles Of Accounts</option><option value='Private Secretaries'>Private Secretaries</option><option value='Production &amp; Industrial Engrg'>Production &amp; Industrial Engrg</option><option value='Project Management'>Project Management</option><option value='Property Management'>Property Management</option><option value='Psychology'>Psychology</option><option value='Public Administration'>Public Administration</option><option value='Public Relations'>Public Relations</option><option value='Pure Mathematics'>Pure Mathematics</option><option value='Quantitative Analysis'>Quantitative Analysis</option><option value='Quantitative Economics'>Quantitative Economics</option><option value='Religion/Religious Studies/B.K'>Religion/Religious Studies/B.K</option><option value='Russian &amp; French'>Russian &amp; French</option><option value='Safety Management'>Safety Management</option><option value='Science'>Science</option><option value='Secretarial Studies'>Secretarial Studies</option><option value='Securities Investment'>Securities Investment</option><option value='Shorthand'>Shorthand</option><option value='Social Anthropology'>Social Anthropology</option><option value='Social Science'>Social Science</option><option value='Social Work'>Social Work</option><option value='Social welfare'>Social welfare</option><option value='Sociology'>Sociology</option><option value='Software Engineering'>Software Engineering</option><option value='Spanish'>Spanish</option><option value='SANSKRIT'>SANSKRIT</option><option value='Statistics'>Statistics</option><option value='Strategic Marketing &amp; Busi Mgmnt'>Strategic Marketing &amp; Busi Mgmnt</option><option value='Structural Engineering'>Structural Engineering</option><option value='Supervisory Management'>Supervisory Management</option><option value='System Analysis'>System Analysis</option><option value='Taxation'>Taxation</option><option value='Teaching'>Teaching</option><option value='Technical Drawing'>Technical Drawing</option><option value='Telecommunication'>Telecommunication</option><option value='Textile Technology'>Textile Technology</option><option value='Training Management'>Training Management</option><option value='Translation'>Translation</option><option value='Transport'>Transport</option><option value='Typewriting'>Typewriting</option><option value ='Urban & Rural Planning'>Urban & Rural Planning</option><option value='Word Processing'>Word Processing</option><option value='Zoology'>Zoology</option>";

    if(strValue == "HSC" || strValue == "Alim" ||  strValue == "A Level" || strValue == "Equivalent" || strValue == "SSC" || strValue == "Dakhil" || strValue == "Dakhil" || strValue == "O Level" || strValue == "Vocational" || strValue == "Business Management" || strValue == "Diploma")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");' ><option value='Science'>Science</option><option value='Humanities'>Humanities</option><option value='Commerce'>Commerce</option><option value='Business Studies'>Business Studies</option></select></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}	
	

	else if(strValue == "MBM")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");' ><option value='S' selected='selected'>Select</option><option value='Bank Management'>Bank Management</option></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "Others")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");' ><option value='S' selected='selected'>Select</option></select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "<input name='txtDoctorate"+place+"' type='text' class='text' id='txtDoctorate"+place+"' style='width:70px;' />";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	else
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");' ><option value='S' selected='selected'>Select</option>"+strNewSubjectList+"</select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
}


function LoadJubject2(myobj, place)
{
	objSubject = "spnSubject"+place;
	strValue = myobj.value;
    document.getElementById(objSubject).innerHTML = ""; 

strNewSubjectList =  "<option value='Accountancy'>Accountancy</option><option value='Accounting'>Accounting</option><option value='Accounting &amp; Finance'>Accounting &amp; Finance</option><option value='Accounts &amp; Economics'>Accounts &amp; Economics</option><option value='Actuarial Mathematics'>Actuarial Mathematics</option><option value='Actuarial Science'>Actuarial Science</option><option value='Agricultural Science'>Agricultural Science</option><option value='Additional Mathematics/Further'>Additional Mathematics/Further</option><option value='Advertising'>Advertising</option><option value='Aeronautical Engineering'>Aeronautical Engineering</option><option value='Analysis &amp; Forex Trading'>Analysis &amp; Forex Trading</option><option value='Applied Chemistry'>Applied Chemistry</option><option value='Applied Genetics'>Applied Genetics</option><option value='Applied Mathematics'>Applied Mathematics</option><option value='Applied Physics'>Applied Physics</option><option value='Archaeology'>Archaeology</option><option value='Architectural Studies'>Architectural Studies</option><option value='Architecture'>Architecture</option><option value='Art'>Art</option><option value='Art History'>Art History</option><option value='Artificial Intelligence &amp; Software'>Artificial Intelligence &amp; Software</option><option value='Auditing'>Auditing</option><option value='Anthropology'>Anthropology</option><option value='Bangla'>Bangla</option><option value='Banking'>Banking</option><option value='Banking Law'>Banking Law</option><option value='Bank Management'>Bank Management</option><option value='Banking Practices'>Banking Practices</option><option value='Banking and Finance'>Banking and Finance</option><option value='Biochemistry'>Biochemistry</option><option value='Biology'>Biology</option><option value='Botany'>Botany</option><option value='Zoology'>Zoology</option><option value='Biotechnology'>Biotechnology</option><option value='Bookkeeping'>Bookkeeping</option><option value='Buddhist Studies (Syl 1)'>Buddhist Studies (Syl 1)</option><option value='Building Services Engineering'>Building Services Engineering</option><option value='Business Accounts'>Business Accounts</option><option value='Business Administration'>Business Administration</option><option value='Business Correspondence / Repo'>Business Correspondence / Repo</option><option value='Business Eco &amp; Busi Info Sys'>Business Eco &amp; Busi Info Sys</option><option value='Business Information Systems'>Business Information Systems</option><option value='Business Law'>Business Law</option><option value='Business Management Systems'>Business Management Systems</option><option value='Business Strategy'>Business Strategy</option><option value='Business Studies'>Business Studies</option><option value='Business Studies &amp; Economics'>Business Studies &amp; Economics</option><option value='Chemical Sciences'>Chemical Sciences</option><option value='Chemical Technical/Engineering'>Chemical Technical/Engineering</option><option value='Chemistry'>Chemistry</option><option value='Chinese'>Chinese</option><option value='Chinese History'>Chinese History</option><option value='Chinese Language'>Chinese Language</option><option value='Chinese Language &amp; Culture'>Chinese Language &amp; Culture</option><option value='Chinese Language &amp; Literature'>Chinese Language &amp; Literature</option><option value='Chinese Literature'>Chinese Literature</option><option value='Civil &amp; Structural Engineering'>Civil &amp; Structural Engineering</option><option value='Civil Engineering'>Civil Engineering</option><option value='Classics &amp; German'>Classics &amp; German</option><option value='Classics &amp; Philosophy'>Classics &amp; Philosophy</option><option value='Commerce'>Commerce</option><option value='Commercial Studies and Admin'>Commercial Studies and Admin</option><option value='Commerical Studies'>Commerical Studies</option><option value='Communication'>Communication</option><option value='Communication, Advertising &amp; Media'>Communication, Advertising &amp; Media</option><option value='Company Secretaryship &amp; Admin'>Company Secretaryship &amp; Admin</option><option value='Comparative Law'>Comparative Law</option><option value='Computer Applications'>Computer Applications</option><option value='Computer Engineering'>Computer Engineering</option><option value='Computer Operation'>Computer Operation</option><option value='Computer Programming'>Computer Programming</option><option value='Computer Science'>Computer Science</option><option value='Computer Science & Engineering'>Computer Science & Engineering</option><option value='Computer Simulation Studies'>Computer Simulation Studies</option><option value='Computer Studies'>Computer Studies</option><option value='Computer Systems'>Computer Systems</option><option value='Computers &amp; Statistics'>Computers &amp; Statistics</option><option value='Computing &amp; Information System'>Computing &amp; Information System</option><option value='Corporate Finance'>Corporate Finance</option><option value='Cost Accounting'>Cost Accounting</option><option value='Credit Management / Loan Admin'>Credit Management / Loan Admin</option><option value='Criminology'>Criminology</option><option value='Data Processing'>Data Processing</option><option value='Database'>Database</option><option value='Design'>Design</option><option value='Design &amp; Technology'>Design &amp; Technology</option><option value='Development Studies'>Development Studies</option><option value='Economic History'>Economic History</option><option value='Economics'>Economics</option><option value='Economics &amp; Business Finance'>Economics &amp; Business Finance</option><option value='Economics &amp; Finance'>Economics &amp; Finance</option><option value='Economics &amp; Politics'>Economics &amp; Politics</option><option value='Economics &amp; Public Affairs'>Economics &amp; Public Affairs</option><option value='Economics &amp; Social History'>Economics &amp; Social History</option><option value='Education'>Education</option><option value='Electrical &amp; Electronic Engrg'>Electrical &amp; Electronic Engrg</option><option value='Electrical Engineering'>Electrical Engineering</option><option value='Electronic Engineering'>Electronic Engineering</option><option value='Electronics'>Electronics</option><option value='Electronics &amp; Electricity'>Electronics &amp; Electricity</option><option value='Electronics Telecoms Computing'>Electronics Telecoms Computing</option><option value='Engineering'>Engineering</option><option value='Engineering Science'>Engineering Science</option><option value='English'>English</option><option value='English &amp; American Studies'>English &amp; American Studies</option><option value='English Drama &amp; Med Studs'>English Drama &amp; Med Studs</option><option value='English For Commerce'>English For Commerce</option><option value='English History'>English History</option><option value='English Language (Syl A)'>English Language (Syl A)</option><option value='English Language (Syl B)'>English Language (Syl B)</option><option value='English Literature / Language'>English Literature / Language</option><option value='English Studies &amp; Comparative'>English Studies &amp; Comparative</option><option value='Environmental Design'>Environmental Design</option><option value='Environmental Planning'>Environmental Planning</option><option value='Equality Studies'>Equality Studies</option><option value='Estate Management'>Estate Management</option><option value='European Administration'>European Administration</option><option value='European Business Admin'>European Business Admin</option><option value='European Business Studies'>European Business Studies</option><option value='European Languages &amp; Business'>European Languages &amp; Business</option><option value='European Law'>European Law</option><option value='European Studies'>European Studies</option><option value='Executive Secretarial Studies'>Executive Secretarial Studies</option><option value='Finance'>Finance</option><option value='Finance & Banking'>Finance & Banking</option><option value='Financial Decision Analysis'>Financial Decision Analysis</option><option value='Financial Economics'>Financial Economics</option><option value='Financial Law'>Financial Law</option><option value='Financial Services'>Financial Services</option><option value='Fine Arts'>Fine Arts</option><option value='Food &amp; Beverage Service'>Food &amp; Beverage Service</option><option value='French'>French</option><option value='French &amp; Business Studies'>French &amp; Business Studies</option><option value='French &amp; Spanish'>French &amp; Spanish</option><option value='General Business Management'>General Business Management</option><option value='General Science'>General Science</option><option value='General Studies'>General Studies</option><option value='Genetics'>Genetics</option><option value='Geography'>Geography</option><option value='Geography &amp; Geology'>Geography &amp; Geology</option><option value='Geography &amp; Organisation Studs'>Geography &amp; Organisation Studs</option><option value='Geology'>Geology</option><option value='German'>German</option><option value='Government &amp; Public Affairs'>Government &amp; Public Affairs</option><option value='Graphic Design'>Graphic Design</option><option value='Higher Mathematics'>Higher Mathematics</option><option value='History'>History</option><option value='History &amp; Archaeology'>History &amp; Archaeology</option><option value='Home Economics'>Home Economics</option><option value='Hospitality Management / Hotel'>Hospitality Management / Hotel</option><option value='Human Biology'>Human Biology</option><option value='Human Resources'>Human Resources</option><option value='Humanity'>Humanity</option><option value='Import/Export Studies'>Import/Export Studies</option><option value='Industrial Engineering'>Industrial Engineering</option><option value='Industrial Management'>Industrial Management</option><option value='Industrial Relations'>Industrial Relations</option><option value='Information Engineering'>Information Engineering</option><option value='Information Systems'>Information Systems</option><option value='Information Technology'>Information Technology</option><option value='Insurance'>Insurance</option><option value='Interior Design'>Interior Design</option><option value='International Business'>International Business</option><option value='International Economics'>International Economics</option><option value='International Management'>International Management</option><option value='Islamic History'>Islamic History</option><option value='International Relations'>International Relations</option><option value='International Studies'>International Studies</option><option value='International Trade'>International Trade</option><option value='Investment'>Investment</option><option value='Investment Management'>Investment Management</option><option value='Japanese'>Japanese</option><option value='Journalism'>Journalism</option><option value='Journalism &amp; Communication'>Journalism &amp; Communication</option><option value='Language &amp; Communication'>Language &amp; Communication</option><option value='Latin'>Latin</option><option value='Law'>Law</option><option value='Legal Executive Studies'>Legal Executive Studies</option><option value='Liberal Studies'>Liberal Studies</option><option value='Linguistics/Politics'>Linguistics/Politics</option><option value='Management'>Management</option><option value='Management &amp; Business Admin'>Management &amp; Business Admin</option><option value='Management Accountancy'>Management Accountancy</option><option value='Management Information System'>Management Information System</option><option value='Management Information Systems'>Management Information Systems</option><option value='Management Studies/Science'>Management Studies/Science</option><option value='Mandarin'>Mandarin</option><option value='Marketing'>Marketing</option><option value='Marketing &amp; Finance'>Marketing &amp; Finance</option><option value='Marketing &amp; International Busi'>Marketing &amp; International Busi</option><option value='Marketing Management'>Marketing Management</option><option value='Marketing/Sales'>Marketing/Sales</option><option value='Mathematical Bus Analysis'>Mathematical Bus Analysis</option><option value='Mathematics'>Mathematics</option><option value='Mathematics &amp; Management'>Mathematics &amp; Management</option><option value='Mathematics for Decision Making'>Mathematics for Decision Making</option><option value='Mathematics, Statistics &amp; Compu'>Mathematics, Statistics &amp; Compu</option><option value='Mathematics/Arithmetic'>Mathematics/Arithmetic</option><option value='Maths &amp; Computing'>Maths &amp; Computing</option><option value='Mechanical Engineering'>Mechanical Engineering</option><option value='Metalwork'>Metalwork</option><option value='Modern Langauges'>Modern Langauges</option><option value='Music / Theory Of Music'>Music / Theory Of Music</option><option value='Natural Sciences'>Natural Sciences</option><option value='New Technology'>New Technology</option><option value='Office Studies/Management'>Office Studies/Management</option><option value='Operational Research'>Operational Research</option><option value='Organizational Analysis &amp; Behav'>Organizational Analysis &amp; Behav</option><option value='Personnel Management'>Personnel Management</option><option value='Pharmacology'>Pharmacology</option><option value='Pharmacy'>Pharmacy</option><option value='Philosophy'>Philosophy</option><option value='Philosophy Politics Economics'>Philosophy Politics Economics</option><option value='Phys Recreation &amp; Geography'>Phys Recreation &amp; Geography</option><option value='Physics'>Physics</option><option value='Political Economy'>Political Economy</option><option value='Political Science'>Political Science</option><option value='Politics &amp; History'>Politics &amp; History</option><option value='Principles Of Accounts'>Principles Of Accounts</option><option value='Private Secretaries'>Private Secretaries</option><option value='Production &amp; Industrial Engrg'>Production &amp; Industrial Engrg</option><option value='Project Management'>Project Management</option><option value='Property Management'>Property Management</option><option value='Psychology'>Psychology</option><option value='Public Administration'>Public Administration</option><option value='Public Relations'>Public Relations</option><option value='Pure Mathematics'>Pure Mathematics</option><option value='Quantitative Analysis'>Quantitative Analysis</option><option value='Quantitative Economics'>Quantitative Economics</option><option value='Religion/Religious Studies/B.K'>Religion/Religious Studies/B.K</option><option value='Russian &amp; French'>Russian &amp; French</option><option value='Safety Management'>Safety Management</option><option value='Science'>Science</option><option value='Secretarial Studies'>Secretarial Studies</option><option value='Securities Investment'>Securities Investment</option><option value='Shorthand'>Shorthand</option><option value='Social Anthropology'>Social Anthropology</option><option value='Social Science'>Social Science</option><option value='Social Work'>Social Work</option><option value='Social welfare'>Social welfare</option><option value='Sociology'>Sociology</option><option value='Software Engineering'>Software Engineering</option><option value='Spanish'>Spanish</option><option value='SANSKRIT'>SANSKRIT</option><option value='Statistics'>Statistics</option><option value='Strategic Marketing &amp; Busi Mgmnt'>Strategic Marketing &amp; Busi Mgmnt</option><option value='Structural Engineering'>Structural Engineering</option><option value='Supervisory Management'>Supervisory Management</option><option value='System Analysis'>System Analysis</option><option value='Taxation'>Taxation</option><option value='Teaching'>Teaching</option><option value='Technical Drawing'>Technical Drawing</option><option value='Telecommunication'>Telecommunication</option><option value='Textile Technology'>Textile Technology</option><option value='Training Management'>Training Management</option><option value='Translation'>Translation</option><option value='Transport'>Transport</option><option value='Typewriting'>Typewriting</option><option value ='Urban & Rural Planning'>Urban & Rural Planning</option><option value='Word Processing'>Word Processing</option><option value='Zoology'>Zoology</option>";

	if(strValue == "MBS" || strValue == "MCom" ) // || strValue == "BBS(Hons)" || strValue == "BCom(Hons)"
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");' ><option value='S' selected ='selected'>Select</option><option value='Economics'>Economics</option> ";//<option value='Finance'>Finance</option><option value='Banking'>Banking</option><option value='Accounting'>Accounting</option><option value='Management'>Management</option><option value='Marketing'>Marketing</option></select>
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "MBA" || strValue == "BBA")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");' ><option value='S'>Select</option><option value='Finance'>Finance</option><option value='Banking'>Banking</option><option value='Finance_Banking'>Finance & Banking</option><option value='Accounting'>Accounting</option><option value='Accounting_Information System'>Accounting & Information System</option><option value='MIS'>MIS</option><option value='International Business'>International Business</option><option value='Marketing'>Marketing</option><option value='Management'>Management</option><option value='Human Resource'>Human Resource</option><option value='Strategic International Management'>Strategic International Management</option></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}

	else if(strValue == "HSC" || strValue == "Alim" ||  strValue == "A Level" || strValue == "Equivalent" || strValue == "SSC" || strValue == "Dakhil" || strValue == "Dakhil" || strValue == "O Level" || strValue == "Vocational" || strValue == "Business Management" || strValue == "Diploma")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");' ><option value='S'>Select</option><option value='Science'>Science</option><option value='Humanities'>Humanities</option><option value='Commerce'>Commerce</option><option value='Business Studies'>Business Studies</option></select></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}	
	

	else if(strValue == "MBM")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='Bank Management'>Bank Management</option></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "BSc(Engg)" || strValue == "MSc(Engg)")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='CSE'>CSE</option><option value='CE'>Civil Engg</option><option value='ME'>Mechanical Engg</option><option value='EEE'>EEE</option></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "MSc" ) // || strValue == "BSc(Hons)" )
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='IT'>IT</option><option value='Computer Science'>Computer Science</option><option value='Economics'>Economics</option><option value='Mathematics'>Mathematics</option><option value='Statistics'>Statistics</option><option value='Physics'>Physics</option><option value='Chemistry'>Chemistry</option></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	else if(strValue == "MSS" || strValue == "MA" || strValue == "MS" ) // || strValue == "BSS(Hons)" || strValue == "BA(Hons)")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='English'>English</option><option value='Economics'>Economics</option><option value='Public Administration'>Public Administration</option><option value='Mass Communication'>Mass Communication</option><option value='History'>History</option><option value='International Relations'>International Relations</option><option value='Sociology'>Sociology</option></select> ";
		//<option value='O'>Others</option>
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "B.Ed(Hons)" || strValue == "M.Ed")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='Economics'>Economics</option><option value='Finance'>Finance</option><option value='Banking'>Banking</option><option value='Accounting'>Accounting</option><option value='Management'>Management</option><option value='Marketing'>Marketing</option><option value='Public Administration'>Public Administration</option><option value='Development Studies'>Development Studies</option><option value='Mathematics'>Mathematics</option></select> ";
		//<option value='O'>Others</option>
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	else if(strValue == "L.L.B.(Pass)" || strValue == "L.L.B.(Hons)" || strValue == "L.L.M.")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='Law'>Law</option></select> ";
		//<option value='O'>Others</option>
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "Others")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");'><option value='S' selected='selected'>Select</option></select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "<input name='txtDoctorate"+place+"' type='text' class='text' id='txtDoctorate"+place+"' style='width:70px;' />";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	else
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");' ><option value='S' selected='selected'>Select</option>"+strNewSubjectList+"</select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
}




function LoadDegree2(myobj, place)
{
	objDegree = "spnDegree"+place;
	objResult = "spnResult"+place;
	strValue = myobj.value;
	
	arrSSC = ["SSC","Dakhil","O Level","Vocational","Equivalent"];
	arrHSC = ["HSC","Alim","Business Management","A Level","Diploma","Equivalent"];
	arrBS = ["BA(Hons)","BBA","BBS(Hons)","BCom(Hons)","BSc(Hons)","BSc(Engg)","BSS(Hons)","B.Ed(Hons)","L.L.B.(Hons)","BA(Pass)","BSS(Pass)","BSc(Pass)","BBS(Pass)","BCom(Pass)","B.Ed(Pass)"];
	
	/*,"BA(Pass)","BSS(Pass)","BSc(Pass)","BBS(Pass)","BCom(Pass)","B.Ed(Pass)"*/
	
	arrMS = ["MA","MBA","MBS","MBM","MCom","MS","MSc","MSS","L.L.M."];
	//alert(objDegree);,"MSc(Engg)"
	
	if(strValue == 1)
	{
		optionSSC = "";
		for(i=0; i<arrSSC.length; i++)
		{
			optionSSC = optionSSC + "<option value = '"+arrSSC[i]+"'>"+arrSSC[i]+"</option>";
		}
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionSSC+"</select> ";
	
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
		//document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onChange='return createGrd(this,"+place+");'><option value='-1' selected='selected'>Select</option><option value='15'>First</option><option value='14'>Second</option><option value='0'>Grade</option></select> ";
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
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject2(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionBS+"</select> ";
		
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
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject2(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionMS+"</option></select> ";
		
		//document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onChange='return createGrd(this,"+place+");'><option value='-1' selected='selected'>Select</option><option value='15'>First</option><option value='14'>Second</option><option value='0'>Grade</option></select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
	}
	else if(strValue == 5 || strValue == 6)
	{
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject2(this,"+place+");'><option value='S' selected='selected'>Select</option></select> ";
		//document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onChange='return createGrd(this,"+place+");'><option value='-1' selected='selected'>Select</option><option value='15'>First</option><option value='14'>Second</option><option value='0'>Grade</option></select> ";
	}
	else
	{
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' ><option value='S' selected='selected'>Select</option></select> ";
		//document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;'><option value='-1' selected='selected'>Select</option></select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
	}
	
}



function LoadJubject1(myobj, place)
{
	objSubject = "spnSubject"+place;
	strValue = myobj.value;
    document.getElementById(objSubject).innerHTML = "";

	if(strValue == "MBS" || strValue == "MCom" || strValue == "BBS(Hons)" || strValue == "BCom(Hons)"  || strValue == "BSS(Hons)" )
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");' ><option value='S' selected ='selected'>Select</option><option value='Economics'>Economics</option></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "MBA" || strValue == "BBA")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");' ><option value='S'>Select</option><option value='Finance'>Finance</option><option value='Banking'>Banking</option><option value='Finance_Banking'>Finance & Banking</option><option value='Accounting'>Accounting</option><option value='Accounting_Information System'>Accounting & Information System</option><option value='MIS'>MIS</option><option value='International Business'>International Business</option><option value='Marketing'>Marketing</option><option value='Management'>Management</option><option value='Human Resource'>Human Resource</option><option value='Strategic International Management'>Strategic International Management</option></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}

	else if(strValue == "HSC" || strValue == "Alim" ||  strValue == "A Level" || strValue == "Equivalent" || strValue == "SSC" || strValue == "Dakhil" || strValue == "Dakhil" || strValue == "O Level" || strValue == "Vocational" || strValue == "Business Management" || strValue == "Diploma")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");'><option value='S'>Select</option><option value='Science'>Science</option><option value='Humanities'>Humanities</option><option value='Commerce'>Commerce</option><option value='Business Studies'>Business Studies</option></select></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}	
	

	else if(strValue == "MBM")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='Bank Management'>Bank Management</option></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "BSc(Engg)" || strValue == "MSc(Engg)")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='CSE'>CSE</option><option value='CE'>Civil Engg</option><option value='ME'>Mechanical Engg</option><option value='EEE'>EEE</option></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "MSc" || strValue == "BSc(Hons)" )
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='IT'>IT</option><option value='Computer Science'>Computer Science</option><option value='Statistics'>Statistics</option><option value='Mathematics'>Mathematics</option></select> ";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	else if(strValue == "MSS" || strValue == "MA" || strValue == "MS" || strValue == "BA(Hons)")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='Economics'>Economics</option></select> ";
		//<option value='O'>Others</option>
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "B.Ed(Hons)" || strValue == "M.Ed")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");'><option value='S' selected='selected'>Select</option><option value='Economics'>Economics</option><option value='Finance'>Finance</option><option value='Banking'>Banking</option><option value='Accounting'>Accounting</option><option value='Management'>Management</option><option value='Marketing'>Marketing</option><option value='Public Administration'>Public Administration</option><option value='Development Studies'>Development Studies</option><option value='Mathematics'>Mathematics</option></select> ";
		//<option value='O'>Others</option>
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	
	else if(strValue == "Others")
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");'><option value='S' selected='selected'>Select</option></select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "<input name='txtDoctorate"+place+"' type='text' class='text' id='txtDoctorate"+place+"' style='width:70px;' />";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
	else
	{
		document.getElementById(objSubject).innerHTML = "<select name='ddlSubject"+place+"' id='ddlSubject"+place+"' style='WIDTH:130px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHidden(this,"+place+");'><option value='S' selected='selected'>Select</option>"+strNewSubjectList+"</select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
		document.getElementById("spnOthers"+place).innerHTML = "";
	}
}



function LoadDegree1(myobj, place)
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
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionSSC+"</select> ";
	
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
		//document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onChange='return createGrd(this,"+place+");'><option value='-1' selected='selected'>Select</option><option value='15'>First</option><option value='14'>Second</option><option value='0'>Grade</option></select> ";
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
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject1(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionBS+"</select> ";
		
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
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject1(this,"+place+");'><option value='S' selected='selected'>Select</option>"+optionMS+"</option></select> ";
		
		//document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onChange='return createGrd(this,"+place+");'><option value='-1' selected='selected'>Select</option><option value='15'>First</option><option value='14'>Second</option><option value='0'>Grade</option></select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
	}
	else if(strValue == 5 || strValue == 6)
	{
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onchange='putValueInHiddenDegreeName(this,"+place+");return LoadJubject1(this,"+place+");'><option value='S' selected='selected'>Select</option></select> ";
		//document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' onChange='return createGrd(this,"+place+");'><option value='-1' selected='selected'>Select</option><option value='15'>First</option><option value='14'>Second</option><option value='0'>Grade</option></select> ";
	}
	else
	{
		document.getElementById(objDegree).innerHTML = "<select name='ddlDegreeName"+place+"' id='ddlDegreeName"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;' ><option value='S' selected='selected'>Select</option></select> ";
		//document.getElementById(objResult).innerHTML = "<select name='ddlResult"+place+"' id='ddlResult"+place+"' style='WIDTH:70px;font-family:Arial;font-size: 12px;height: 24px;border: 1px solid #bdbdbd;border-radius: 4px;'><option value='-1' selected='selected'>Select</option></select> ";
		document.getElementById("spnDoctorate"+place).innerHTML = "";
	}
	
}