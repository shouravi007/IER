use ersmodhumotibank

Select Distinct P.id FROM (( Personal P LEFT OUTER JOIN JobPos j ON P.id=j.personalID ) LEFT JOIN ACADEMIC E ON P.id = E.PERSONALID) 
WHERE E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=1 AND ED.[RESULT] =0 AND ED.[RESULTPOINT] >=4.60 AND ED.[RESULTPOINT] <=5) 
AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=2 AND ED.[RESULT] =0 AND ED.[RESULTPOINT] >=4.60 AND ED.[RESULTPOINT] <=5)
AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=3 AND ED.UNIVERSITYTYPE = 'O' AND ED.[RESULT] =0 AND ED.[RESULTPOINT] >=3.48 AND ED.[RESULTPOINT] <=4) 
AND E.PERSONALID IN (Select ED.PERSONALID from ACADEMIC ED WHERE ED.EDUCATIONID=4 AND ED.UNIVERSITYTYPE = 'O' AND ED.[RESULT] =0 AND ED.[RESULTPOINT] >=3.48 AND ED.[RESULTPOINT] <=4 and E.University in 
(
  'University of Dhaka',
'American International University-Bangladesh (AIUB) , Dhaka',
'Begum Rokeya University, Rangpur',
'American International University Bangladesh',
'American International University-Bangladesh',
'Bangladesh University of Business & Technology',
'Rajshahi University',
'University of Dhaka',
'Rajshahi university',
'Banagabandhu Sheikh Mujibur Rahman Science & Technology University',
'Banagabandhu Sheikh Mujibur Rahman Science & Technology University',
'Begum Rokeya University Rangpur',
'University of Chittagong'

)

)


and j.eligible = 1 order by p.id 