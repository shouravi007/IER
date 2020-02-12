
<!--#include File = "CheckSession.asp" -->

<%
	strModuleName = "Search Form" 
	strDescription = "Search Filter with  : "&strUserName&"##"&strPassword
	strAction = "Search Option filter for.. "
%>
<!--#include File = "UserLog.asp" -->

<%
   
    jobid = trim(request.Form("ddlJobPosting"))
    sql = "" 
	sql = "exec USP_Daily_Apply "&jobid&", '2018-04-01 18:00:00.000', 2 "
	ValuePrint sql, "sql"
    
	arrTotalApply = objERS.RetrieveData(sql, errMsg) 
	
	if arrTotalApply(0, 0) <> "Nothing" then 
	'Response.Write(ddlJobs) 
	 TotalApply = Ubound(arrTotalApply, 2) + 1 
		 str = ""
		'strIds = ""
			For r = 0 To UBound(arrTotalApply, 2)
				   If r = UBound(arrTotalApply, 2) Then 
					strComma = "" 
				   Else
					strComma = ","
				   End IF 
				str = str & arrTotalApply(0, r) & strComma
			Next
			IsWhere = False
            
			session("str") = str 	 
	else
	 TotalApply = 0 
	end if
	
%>    
  
<script>
$(document).on('click','.view-more',function(){
	$(this).html('Less Filter <i class="glyphicon glyphicon-chevron-up"></i>');
	$(this).addClass('expanded');
});
$(document).on('click','.view-more.expanded',function(){
	$(this).removeClass('expanded');
	$(this).html('View Filter <i class="glyphicon glyphicon-chevron-down"></i>');
});
</script>
  
     
                              
<form action="?<%=Encode("Location=Admin&FormAction=SearchResult")%>" method="post" name="form1" id="form1">
  <input type="hidden" name="hidUserID" id="hidUserID" value="<%=intUserID%>" />
				<div class="col-sm-12">
					<div class="resume-filter bg-style">
						<h1 class="post-name">Total apply:
                        <span>
                           <%=TotalApply%></span>
						</h1>
                  
            
                     						
<!--#include File = 'PositionWiseForm\FilterWithResult.asp' --> 

<div class="row">
    <div class="col-sm-12">
        <div class="btn-wrap text-center">
										
<button type="button" class="btn-style view-more" style="font-size:24px;"  role="button" data-toggle="collapse" href="#collapseResult" aria-expanded="false" aria-controls="collapseResult" >View Filter<i class="fa fa-chevron-down"></i></button>
                                        
                                        
  <button type="submit" class="btn-style" style="font-size:24px;" onclick="return Validate();">Continue</button>
 <input type="hidden" id="ddlJobPosting" name="ddlJobPosting" value="<%=Request.Form("ddlJobPosting")%>"  />




<script>
 function Validate()
{
	//var EduUB = parseInt(document.getElementById("count_edu").value);


	var EduUB = 4;
	var i;


	for(i = 3; i <= EduUB; i++)
	{
		var strEducationLevel = "-1";
		var strDegreeName = "S";
		var strPassingYear = "S";
		var strInstitute = "";
		var strUniversity = "S";
		var strResult = "-1";
		var strSubject = "S";

		objEducationLevel = document.getElementById("txtCGPAFrom"+i);
		objDegreeName = document.getElementById("txtCGPATo"+i);
		objPassingYear = document.getElementById("txtCGPAScale"+i);
		objInstitute = document.getElementById("txtMarksFrom"+i);
		objUniversity = document.getElementById("txtMarksTo"+i);
		objResult = document.getElementById("txtDivision"+i);


		strEducationLevel = objEducationLevel.value;
		strDegreeName = objDegreeName.value;
		strPassingYear = objPassingYear.value;
		strInstitute = objInstitute.value;
		strUniversity = objUniversity.value;
		strResult = objResult.value;

	
			switch(i)
		    { 
			case 1:
			level = "Secondary";
			BoardUni = "Name of Board";
			break;
			
			case 2:
			level = "Higher Secondary";
			BoardUni = "Name of  Board";
			break;
			
			case 3:
			level = "Graduation";
			BoardUni = "Name of  University";			
			break;
			
			case 4:
			level = "Post Graduation";
			BoardUni = "Name of  University";			
			break;
			
			case 5 :
			level = "Post Graduation/Doctorate";
			BoardUni = "Name of  University";
			break;
			
			default:		  
		    }	
	
	
	
	
			if(strEducationLevel != "" || strDegreeName != "" || strPassingYear != "S" || strInstitute != "" || strUniversity != "" || strResult != "S" )
			{				
				Req = "True";
			}
			else 
			{
	          		Req = "False"
			}			
	
							
			
			   if ( CheckValidation(Req,objEducationLevel,"text","Text","4", " CGPA FROM   of  " +level ,1600 ) == false)
				{
					   return false;
					   //break;	   
				}					
			
	
			   if ( CheckValidation(Req,objDegreeName,"text","Text","4", " CGPA To   of  " +level ,1600 ) == false)
				{
					   return false;
					   //break;	   
				}					



			   if ( CheckValidation(Req,objPassingYear,"select","S","4", " CGPA Scale   of  " +level ,1600 ) == false)
				{
					   return false;
					   //break;	   
				}					




			   if ( CheckValidation(Req,objInstitute,"text","Text","4", "MARKS FROM   of  " +level ,1600 ) == false)
				{
					   return false;
					   //break;	   
				}					
	
	

			   if ( CheckValidation(Req,objUniversity,"text","Text","4", "MARKS TO "+i ,1600 ) == false)
				{
					   return false;
					   //break;	   
				}	
				
			   if ( CheckValidation(Req,objResult,"select","S","4", "CLASS/DIV   of  " +level ,1600 ) == false)
				{
					   return false;
					   //break;	   
				}					
				
						
	  }
		

	// For loop ends here.
	//return true;
	// Experience block ends here.
}
</script>


</form>   
           </div>
        
           </div>    
        </div>

   </div>
   </div>
   
   
   
   