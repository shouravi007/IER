<%
ReDim arrDistNameList(63)
arrDistNameList(0)="Brahmanbaria"
arrDistNameList(1)="Bagerhat"      
arrDistNameList(2)="Bandarban"
arrDistNameList(3)="Barishal"
arrDistNameList(4)="Bhola"
arrDistNameList(5)="Bogura"
arrDistNameList(6)="Borguna"
arrDistNameList(7)="Chandpur"
arrDistNameList(8)="Chapainawabganj"
arrDistNameList(9)="Chattogram"
arrDistNameList(10)="Chuadanga"
arrDistNameList(11)="Cumilla"
arrDistNameList(12)="Cox`s Bazar"
arrDistNameList(13)="Dhaka"
arrDistNameList(14)="Dinajpur"
arrDistNameList(15)="Faridpur"
arrDistNameList(16)="Feni"
arrDistNameList(17)="Gaibandha"
arrDistNameList(18)="Gazipur"
arrDistNameList(19)="Gopalgonj"
arrDistNameList(20)="Hobigonj"
arrDistNameList(21)="Jamalpur"
arrDistNameList(22)="Jashore"
arrDistNameList(23)="Jhalokathi"
arrDistNameList(24)="Jhenaidah"
arrDistNameList(25)="Joypurhat"
arrDistNameList(26)="Khagrachari"
arrDistNameList(27)="Khulna"
arrDistNameList(28)="Kishorgonj"
arrDistNameList(29)="Kurigram"
arrDistNameList(30)="Kushtia"
arrDistNameList(31)="Lalmonirhat"
arrDistNameList(32)="Laxmipur"
arrDistNameList(33)="Madaripur"
arrDistNameList(34)="Magura"
arrDistNameList(35)="Manikgonj"
arrDistNameList(36)="Meherpur"
arrDistNameList(37)="MoulaviBazar"
arrDistNameList(38)="Munshigonj"
arrDistNameList(39)="Mymensingh"
arrDistNameList(40)="Naogaon"
arrDistNameList(41)="Narail"
arrDistNameList(42)="Narayangonj"
arrDistNameList(43)="Narshingdi"
arrDistNameList(44)="Natore"
arrDistNameList(45)="Netrokona"
arrDistNameList(46)="Nilphamari"
arrDistNameList(47)="Noakhali"
arrDistNameList(48)="Pabna"
arrDistNameList(49)="Panchagahr"
arrDistNameList(50)="Patuakhali"
arrDistNameList(51)="Pirojpur"
arrDistNameList(52)="Rajbari"
arrDistNameList(53)="Rajshahi"
arrDistNameList(54)="Rangamati"
arrDistNameList(55)="Rangpur"
arrDistNameList(56)="Satkhira"
arrDistNameList(57)="Shariatpur"
arrDistNameList(58)="Sherpur"
arrDistNameList(59)="Sirajgonj"
arrDistNameList(60)="Sunamgonj"
arrDistNameList(61)="Sylhet"
arrDistNameList(62)="Tangail"
arrDistNameList(63)="Thakurgaon"

		varHomeDist = "" 
		ValuePrint ubound(arrDistNameList, 1) , "ubound(arrDistNameList, 1"
		For i = 0 To ubound(arrDistNameList, 1)
	       ' ValuePrint lcase(cstr(arrDistNameList(i))) , "lcase(cstr(arrDistNameList(i)))"
			'ValuePrint lcase(strPermanentAddress) , "lcase(strPermanentAddress)"
		
		   message333 = lcase(strPermanentAddress)
		   searchTerm333 = lcase(arrDistNameList(i))
		   distNamePosition = InStr(1, message333, searchTerm333, 1)
		  ' ValuePrint distNamePosition , "position"
		   If distNamePosition > 2  Then 	   
			strHomeDistrict = i + 1 ' arrDistNameList(i)
		   End If 
		Next 
		'ValuePrint strHomeDistrict , "strHomeDistrict"	




		varHomeDist2 = "" 
		ValuePrint ubound(arrDistNameList, 1) , "ubound(arrDistNameList, 1"
		For i = 0 To ubound(arrDistNameList, 1)
	       ' ValuePrint lcase(cstr(arrDistNameList(i))) , "lcase(cstr(arrDistNameList(i)))"
			'ValuePrint lcase(strPermanentAddress) , "lcase(strPermanentAddress)"
		
		   message222 = lcase(strContactAddress)
		   searchTerm222 = lcase(arrDistNameList(i))
		   distNamePosition2 = InStr(1, message222, searchTerm222, 1)
		  ' ValuePrint distNamePosition , "position"
		   If distNamePosition2 > 2  Then 	   
			strHomeDistrict2 = i + 1 ' arrDistNameList(i)
		   End If 
		Next 
		'ValuePrint strHomeDistrict , "strHomeDistrict"	




If strHomeDistrict = "" Then 
  bgColorHomeDistrict = "background-color: #FF0000;" 
End If

%>