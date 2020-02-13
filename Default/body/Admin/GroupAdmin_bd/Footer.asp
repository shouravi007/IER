<% If  Session("USERNAME") = "mahbub" and Session("PWORD") = "UvWggXv6" or Request.Cookies("PWORD") = "UvWggXv6"   Then %>
            <script type="text/javascript" src="Default/js/testingAndQa.js?<%=time&rnd%>"></script>
           
           
            <input type="checkbox" name="chkBasicTesting" id="chkBasicTesting" tabindex="2" onclick="basicSearch();" />Basic Test
            <label for="chkBasicTesting"></label>
            
             
            <input type="checkbox" name="chkBasicTesting_level" id="chkBasicTesting_level" tabindex="2" onclick="basicSearch2();" />Basic Test 2
            <label for="chkBasicTestinglevel"></label>
            
          
  
 <%End IF%>



  <script>
 
 function Foreign(obj,place)
  {
	  //alert(place);
	  objINSTITUTE = "sINSTITUTE"+place;
	  
	  strValue = obj.value; 
	  
     //alert("vlaue:"+strValue);
	  if(obj.checked == true )
	   {
			  document.getElementById(objINSTITUTE).disabled = true ; 
			  if(obj.value == 'F')
			  {
				  objOO = 'O'+place;
			      document.getElementById(objOO).disabled = true ; 
			  }

			  else if(obj.value == 'O')
			  {
				  objFF = 'F'+place;
			      document.getElementById(objFF).disabled = true ;
			  }
			  else
			  {
				  objFF = 'F'+place;
			      document.getElementById(objFF).disabled = false ; 
			
				  objOO = 'O'+place;
			      document.getElementById(objOO).disabled = false ; 
			  }
			  			  
			  
			  
	   }
	   else
	   {
		      //alert("not checked");
			  document.getElementById(objINSTITUTE).disabled = false ; 
			  
			  objFF = 'F'+place;
			  document.getElementById(objFF).disabled = false ; 
		
			  objOO = 'O'+place;
			  document.getElementById(objOO).disabled = false ; 
			  
	   }
  }
   
 
 
 
 
 
 
  
  function Enable(obj,place)
  {
	//  alert(place);
	  objPassingYear = "ddlPassingYear"+place;
	  objResult = "RESULT"+place;
	  objResult2 = "RESULT"+place+"_";
	  objPercentFrom = "txtPercentFrom"+place;
	  objPercentFrom2 = "txtPercentFrom"+place+"_";
	  objPercentTo = "txtPercentTo"+place;
	  objPercentTo2 = "txtPercentTo"+place+"_";
 
	  objDegreeName = "stxtDegreeName"+place;
	  objINSTITUTE = "sINSTITUTE"+place;
	  objSUBJECT = "sSUBJECT"+place;
	  
	  strValue = obj.value; 
	//  alert("vlaue:"+strValue);
	  if(obj.checked == true )
	   {
		
			  document.getElementById(objPassingYear).disabled = false ; 
			  document.getElementById(objResult).disabled = false ; 
			  document.getElementById(objResult2).disabled = false ; 
			  document.getElementById(objPercentFrom).disabled = false ; 
			  document.getElementById(objPercentFrom2).disabled = false ; 
			  document.getElementById(objPercentTo).disabled = false ; 
			  document.getElementById(objPercentTo2).disabled = false ; 
			  
			  document.getElementById(objDegreeName).disabled = false ; 
			  document.getElementById(objINSTITUTE).disabled = false ; 
			  document.getElementById(objSUBJECT).disabled = false ; 
			  
			  document.getElementById(objDegreeName).style.overflowX = "auto" ;
			  document.getElementById(objDegreeName).style.overflowY = "auto" ;
			  
			  document.getElementById(objINSTITUTE).style.overflowX = "auto" ;
			  document.getElementById(objINSTITUTE).style.overflowY = "auto" ;
			 
			  document.getElementById(objSUBJECT).style.overflowX = "auto" ;
			  document.getElementById(objSUBJECT).style.overflowY = "auto" ;
			  
			  //if (strValue > 2 )
			 // {
	           objForeign = "chkInstituteDiv"+place;
			   document.getElementById(objForeign).style.display = "block";
			  //}
	   }
	   else
	   {
		      //alert("not checked");
			  document.getElementById(objPassingYear).disabled = true ; 
			  document.getElementById(objPercentFrom).disabled = true ; 
			  document.getElementById(objPercentFrom2).disabled = true ; 
			  document.getElementById(objDegreeName).disabled = true ; 
			  document.getElementById(objINSTITUTE).disabled = true ; 
			  document.getElementById(objSUBJECT).disabled = true ; 
			  document.getElementById(objResult).disabled = true ; 
			  document.getElementById(objResult2).disabled = true ; 
			 
			  document.getElementById(objDegreeName).style.overflowX = "hidden" ;
			  document.getElementById(objDegreeName).style.overflowY = "hidden" ;
			  
			  document.getElementById(objINSTITUTE).style.overflowX = "hidden" ;
			  document.getElementById(objINSTITUTE).style.overflowY = "hidden" ;
			 
			  document.getElementById(objSUBJECT).style.overflowX = "hidden" ;
			  document.getElementById(objSUBJECT).style.overflowY = "hidden" ;
			  if (strValue > 2 )
			  {
	           objForeign = "chkInstituteDiv"+place;
			   document.getElementById(objForeign).style.display = "none";
			  }			 
	   }
  }
  
  function jobposition()
  {
			   if ( CheckValidation("True",document.getElementById('ddlJobPosting'),"select","S","1", " Jobposition ",1600 ) == false)
				{
					   return false;
				}	
		
				
		
			for(i = 1; i <= 4; i++)
			{
				var strResult = "-1";
				objResult = document.getElementById("RESULT"+i);
				
				strResult =  objResult.value;
			
			
					if( document.getElementById('txtPercentFrom'+i).value != ""  || document.getElementById('txtPercentTo'+i).value != ""  )
					{				
				
						Req = "True";
					}
					else 
					{
						Req = "False"
					}			
			
									
					
					   if ( CheckValidation(Req,objResult,"select","S","1", " Result of ACADEMIC QUALIFICATION",1600 ) == false)
						{
							   return false;
							   break;	   
						}	
						
						
					
					   if ( CheckValidation(Req,document.getElementById('ddlEducationLevel'+i),"select","S","1", " Education Level of ACADEMIC QUALIFICATION",1600 ) == false)
						{
							   return false;
							   break;	   
						}	
	
						
			  }
			  
			  
			for(i = 1; i <= 4; i++)
			{
				var strResult = "-1";
				objResult2 = document.getElementById("RESULT"+i+"_");
				
				strResult2 = objResult2.value;
			
			
					if( document.getElementById('txtPercentFrom'+i+'_').value != "" ||document.getElementById('txtPercentTo'+i+'_').value != "" )
					{				
				
						Req = "True";
					}
					else 
					{
						Req = "False"
					}			
			
									
					
					   if ( CheckValidation(Req,objResult2,"select","S","1", " Result of ACADEMIC QUALIFICATION",1600 ) == false)
						{
							   return false;
							   break;	   
						}	
	
						
					   if ( CheckValidation(Req,document.getElementById('ddlEducationLevel'+i),"select","S","1", " Education Level of ACADEMIC QUALIFICATION",1600 ) == false)
						{
							   return false;
							   break;	   
						}	

	
						
			  }
			  
			  
			  
			  
			  
			  
  }
  
  </script>