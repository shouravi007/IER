
<%'End If%>



     <script type="text/javascript">

			var strInstituteName1 = "<%=strInstituteName1%>";
			var strInstituteName2 = "<%=strInstituteName2%>";
			var strInstituteName3 = "<%=strInstituteName3%>";
			var strInstituteName4 = "<%=strInstituteName4%>";
			//var strInstituteName5 = "<%'=strInstituteName5%>";
			
			var strDegreeName1  = "<%=strDegreeName1%>";
			var strDegreeName2  = "<%=strDegreeName2%>";
			var strDegreeName3  = "<%=strDegreeName3%>";
			var strDegreeName4  = "<%=strDegreeName4%>";
			//var strDegreeName5  = "<%'=strDegreeName5%>";
			
				
			var strMajorSubject1 =  "<%=strMajorSubject1%>";
			var strMajorSubject2 =  "<%=strMajorSubject2%>";
			var strMajorSubject3 =  "<%=strMajorSubject3%>";
			var strMajorSubject4 =  "<%=strMajorSubject4%>";
			//var strMajorSubject5 =  "<%'=strMajorSubject5%>";				
			
			
		     var strInstitute = new Array("",strInstituteName1,strInstituteName2,strInstituteName3,strInstituteName4);
			 var strDegreeName = new Array("",strDegreeName1,strDegreeName2,strDegreeName3,strDegreeName4);
			 var strMajor = new Array("",strMajorSubject1,strMajorSubject2,strMajorSubject3,strMajorSubject4);
			 var intMarks =   new Array("","<%=intMarksRange1%>","<%=intMarksRange2%>","<%=intMarksRange3%>","<%=intMarksRange4%>");
          
		    for (i =1 ; i <=4; i ++)
			{
				if(intMarks[i] != "")
				{
					var splitOfMarks = intMarks[i].split("-");
					var strPercentFrom =  splitOfMarks[0];
					var strPercentTo =  splitOfMarks[1];
					if(strPercentFrom !="N"  ||  strPercentTo !="N" )
					{
					var result =  document.getElementById("RESULT"+i);
					 createGrd_GroupSearch(result,i);	
					}
				}
			}

	     
			for (i = 3 ; i <=4 ; i ++)
			{
				//alert(123);
			   loadUniversity('sINSTITUTE'+i,'hidINSTITUTE'+i,'INSTITUTE'+i, strInstitute[i]);
			   loadUniversity('stxtDegreeName'+i,'hidDegreeName'+i,'txtDegreeName'+i,strDegreeName[i]);
			   loadUniversity('sSUBJECT'+i,'hidSUBJECT'+i,'SUBJECT'+i, strMajor[i]);
			 
			} 
			
/*			function loadFirstAndSecondRow()
			{
				document.getElementById(SUBJECT1).innerHTML = "<option value = '"+strMajorSubject1+"' selected = 'selected'>"+strMajorSubject1+"</option>";
			    alert(document.getElementById(SUBJECT1).innerHTML);
			}
			loadFirstAndSecondRow();*/
				function  loadUniversity(fromSel,theSel,hID,strListOfValues)
				{	
					//alert(fromSel + "\n" + theSel + "\n" + hID + "\n" +strListOfValues);				
					if (strListOfValues!= "" &&  strListOfValues != null)						
					{ 						
						var arrayUniversity = strListOfValues.split("$");
						var length  =   arrayUniversity.length;
						//alert(strListOfValues+arrayUniversity[0]+length); 						
						var selIndexes = ""; 
						var selIndex;
						var IDCollection;
						var TempID;
						FSel=document.getElementById(fromSel);
						TSel=document.getElementById(theSel);
						selIndex = FSel.selectedIndex;	
							
						var splitOfIndex = strListOfValues.split("$")
						for (k = 0; k <splitOfIndex.length ; k ++)
						{
							var splitOfIndex = strListOfValues.split("$")
							if(splitOfIndex[k] !="")
							{
								var newOpt1 = new Option(splitOfIndex[k], k);				
								TSel.options[TSel.length] = newOpt1;			
								TSel.selectedIndex =TSel.length-1;
							}
						}
						// IDCollection=ListBox_IDCollection(theSel);
					     document.getElementById(hID).value=strListOfValues;	
						 //alert("Value of Hidden Fiedl:"+document.getElementById(hID).value);
					}
				}
				

</script>
                              
