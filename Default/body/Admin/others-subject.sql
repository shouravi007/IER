use ersModhumotiBank 

Select Distinct P.id FROM (( Personal P LEFT OUTER JOIN JobPos j ON P.id=j.personalID ) 
LEFT JOIN ACADEMIC E ON P.id = E.PERSONALID) 
WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=1 AND ED.[RESULT] =0 AND ED.[RESULTPOINT] >=4.63 AND ED.[RESULTPOINT] <=5) 
AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=2 AND ED.[RESULT] =0 AND ED.[RESULTPOINT] >=4.6 AND ED.[RESULTPOINT] <=5) 
AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=3 AND ED.[RESULT] =0 AND ED.[RESULTPOINT] >=3.3 AND ED.[RESULTPOINT] <=4 AND ED.subject_others = 1 

AND ED.SUBJECT IN(
'Management',
'Economics',
'Management',
'Management',
'Economics',
'Marketing',
'Management',
'Economics',
'Economics',
'Economics',
'Economics',
'Economics',
'Economics',
'Banking and Insurance',
'Economic',
'Economics',
'Economics',
'Economics',
'Economics',
'Management Studies',
'Economics',
'Economics',
'Management Studies',
'Management',
'Management',
'Economics',
'Economics',
'Economics',
'Economics',
'Finance & Accounting',
'Finance'


))


AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=4 AND ED.[RESULT] =0 AND ED.[RESULTPOINT] >=3.3 AND ED.[RESULTPOINT] <=4 AND ED.subject_others = 1 
AND ED.SUBJECT IN(
'HUMAN RESOURCE MANAGEMENT',
'Economics',
'Human Resource Management',
'Human Resource Management',
'Economics',
'Supply Chain Management',
'Strategic & International Management',
'Economics',
'Economics',
'Economics',
'Economics',
'Economics',
'Economics',
'Banking',
'Economics',
'Economics',
'Economics',
'Economics',
'Economics',
'Management Studies (Specialization in HRM)',
'economics',
'Economics',
'Human Resource Management',
'Strategic and International Management',
'Strategic and International Management',
'Economics',
'Economics',
'Economics',
'Economics',
'Finance',
'Bank Management'

)) and j.eligible = 1 order by p.id