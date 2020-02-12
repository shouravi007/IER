<%

	ID = arr_ShortListed(0, j)
	SQL1 = "SELECT [ID], [NAME], FNAME, BIRTH, SEX, CADD, E_MAIL, HOME_PH, WORK_PH, MOBILE, MAR_STAT, NATIONALITY, HOME_DIST, E_CUR, OBJ, PSALARY, ESALARY, PAPPLY, DJOIN, SOURCE, PDATE, JOBN, JOBP, UDATE, ILL, PREF, BloodGroup, Religion, RelativeExist, RelativeName, Relationship, InterviewedBefore, JobPosition, AppliedDate, Fresher, AcademicDistinction, LANGUAGE1, LANGUAGE2, LANGUAGE3, PhotoUploaded, ImageName, MothersName, AlternateAddress,photoname,DefaultPhoto,RelativeDesigNation  FROM PERSONAL WHERE ID = " & ID
'	
	SQL2 = "SELECT [ID], [AUTO], [COMPANY], [EPOSITION], [BUSINESS], [DUTY], [CLOCATION], [EFROM], [ETO], [EXPAR], [NOW], [JOBTYPE], [EXPTYPE], [PositionHierarchy] FROM EXP WHERE ID = " & ID &" order by [EFROM] DESC, [ETO] DESC"				
	'SQL2 = "SELECT * FROM EXP WHERE ID = " & ID
				'	0	  1		  2			3			4		 5		6			7
	SQL3 = "SELECT EID,[AUTO], EDULEVEL, EDUCATION, INSTITUTE, GRADE, SUBJECT, PassingYear,STATUS,DISTINCTION,[FOREIGN],FOREIGN_INSTITUTE,FOREIGN_COUNTRY FROM EDU WHERE EID = " & ID
	SQL4 = "SELECT * FROM PEDU WHERE ID =" & ID & " Order by CompletionYear Desc"
	SQL5 = "SELECT * FROM TRAINING WHERE ID = " & ID & " Order by TYear Desc"
	SQL6 = "SELECT C_Skill FROM C_Literacy WHERE ID=" & ID
	
	'Response.Write(SQL1)
   
	arrPersonal = objLookUp.RetrieveData(SQL1, errLog)
	ErrorMessage "62", errLog
		
	arrEducation = objLookUp.RetrieveData(SQL3, errLog)
	ErrorMessage "64", errLog	
	
	arrProEducation = objLookUp.RetrieveData(SQL4, errLog)
	ErrorMessage "67", errLog
	
	arrTraining = objLookUp.RetrieveData(SQL5, errLog)
	ErrorMessage "70", errLog
	
	arrExperience = objLookUp.RetrieveData(SQL2, errLog)
	ErrorMessage "70", errLog
	
	arrComputerSkill = objLookUp.RetrieveData(SQL6, errLog)
	ErrorMessage "97", errLog
	
	
		
	SQLAP = "select top 10 jj.Position,j.ApplyDate,jj.valid from JOB_POSTING jj   left join job_pos j on jj.job_id = j.job_id  where j.id = " & ID & " order by j.ApplyDate desc "
				arr_AP = objLookUp.RetrieveData(SQLAP, errLog)
				intUBAP = UBound(arr_AP, 2) 	
			'	Response.Write("<br/>"&SQLAP)
			'	Response.Write ("ubonud "&intUBAP) 
				ErrorMessage "225", errLog 		
		

   strSQL = "SELECT [ReferenceID], [Name], [Address], [Designation], [Organization], [Phone], [Email], [Relationship], [ReferenceType] FROM Reference WHERE ID=" & ID
arrReference = objLookUp.RetrieveData(strSQL, errLog)
ErrorMessage "1251", errLog		  	
	
%>
