<%
    sql = "" 
	sql = "select top 1 deadline from jobposting order by jobid desc  "
    
	arrTop1DeadLine = objERS.RetrieveData(sql, errMsg) 
	
	if arrTop1DeadLine(0, 0) <> "Nothing" then 
	  if isdate(arrTop1DeadLine(0, 0)) then 
	   yy = year(arrTop1DeadLine(0, 0))
	   mm = month(arrTop1DeadLine(0, 0))
	   dd = day(arrTop1DeadLine(0, 0)) 
	   strDeadLine = dd &"-" & mm &"-" & yy
	   if dd = 1 then
	    dd2 = dd 
	   else
	    dd2 = dd - 1 
	   end if
	   
	   deadline2 = yy & "-" & mm & "-" & dd2 & " 17:59:00.000"
	  
	   sql = "select jobid,JobTitle,deadline from JobPosting where Deadline >= '"&deadline2&"'"
	  
	  else
	   sql = "select top 1 jobid,JobTitle,deadline from JobPosting order by jobid desc "
	  end if 
	else 
	   sql = "select top 1 jobid,JobTitle,deadline from JobPosting order by jobid desc "
	end if 
	
    ' response.Write(sql) 

	arrJobPosting = objERS.RetrieveData(sql, errMsg) 
	
	ddlJobs = Request.Form("ddlJobPosting")
	'Response.Write(ddlJobs) 
	
%>    

<%
	reDim arrDist(64)
	arrDist(1)="Brahmanbaria"
	arrDist(2)="Bagerhat"      
	arrDist(3)="Bandarban"
	arrDist(4)="Barisal"
	arrDist(5)="Bhola"
	arrDist(6)="Bogra"
	arrDist(7)="Borguna"
	arrDist(8)="Chandpur"
	arrDist(9)="Chapainawabganj"
	arrDist(10)="Chittagong"
	arrDist(11)="Chuadanga"
	arrDist(12)="Comilla"
	arrDist(13)="Cox`s Bazar"
	arrDist(14)="Dhaka"
	arrDist(15)="Dinajpur"
	arrDist(16)="Faridpur"
	arrDist(17)="Feni"
	arrDist(18)="Gaibandha"
	arrDist(19)="Gazipur"
	arrDist(20)="Gopalgonj"
	arrDist(21)="Hobigonj"
	arrDist(22)="Jamalpur"
	arrDist(23)="Jessore"
	arrDist(24)="Jhalokathi"
	arrDist(25)="Jhenaidah"
	arrDist(26)="Joypurhat"
	arrDist(27)="Khagrachari"
	arrDist(28)="Khulna"
	arrDist(29)="Kishorgonj"
	arrDist(30)="Kurigram"
	arrDist(31)="Kushtia"
	arrDist(32)="Lalmonirhat"
	arrDist(33)="Laxmipur"
	arrDist(34)="Madaripur"
	arrDist(35)="Magura"
	arrDist(36)="Manikgonj"
	arrDist(37)="Meherpur"
	arrDist(38)="MoulaviBazar"
	arrDist(39)="Munshigonj"
	arrDist(40)="Mymensingh"
	arrDist(41)="Naogaon"
	arrDist(42)="Narail"
	arrDist(43)="Narayangonj"
	arrDist(44)="Narshingdi"
	arrDist(45)="Natore"
	arrDist(46)="Netrokona"
	arrDist(47)="Nilphamari"
	arrDist(48)="Noakhali"
	arrDist(49)="Pabna"
	arrDist(50)="Panchagahr"
	arrDist(51)="Patuakhali"
	arrDist(52)="Pirojpur"
	arrDist(53)="Rajbari"
	arrDist(54)="Rajshahi"
	arrDist(55)="Rangamati"
	arrDist(56)="Rangpur"
	arrDist(57)="Satkhira"
	arrDist(58)="Shariatpur"
	arrDist(59)="Sherpur"
	arrDist(60)="Sirajgonj"
	arrDist(61)="Sunamgonj"
	arrDist(62)="Sylhet"
	arrDist(63)="Tangail"
	arrDist(64)="Thakurgaon"
%>
