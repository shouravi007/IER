		  
<%
Server_FOR_PDF_DOC_IS_NOW = "ers.bdjobs.com/applications/pdfbuilder" 

'response.write(strBody1)

'Response.End() 

    sql = ""
    sql = " select trycount from roll where jobid = "&jobid&"   and rollno = "&intRoll&" and   personalid = "& arrSelect(14,0)
    'Response.Write("<br>"& sql)
	arr = objERS.RetrieveData(sql, errMsg)
	
	if isnull(arr(0,0)) or arr(0,0) = 0 then
		sql = ""
		sql = " update roll set trycount = 1 , Postedon = '"&now&"' , ip = '"&Request.ServerVariables("REMOTE_ADDR")&"'  where jobid = "&jobid&"   and rollno = "&intRoll&" and  personalid = "& arrSelect(14,0)
	
	else 
	
		sql = ""
		sql = " update roll set trycount = trycount+ 1 , updatedon = '"&now&"' , ip = '"&Request.ServerVariables("REMOTE_ADDR")&"'  where jobid = "&jobid&"   and rollno = "&intRoll&" and  personalid = "& arrSelect(14,0)
		
	end if   
'Response.Write("<br>"& sql)
	  objERS.ExecuteQuery sql, errMsg 
      ErrorMessage "184", errMsg, 0

%>

<form id="form2" name="form2" method="post" action="http://ers.bdjobs.com/applications/pdfbuilder/CV_PDF_ers_db.php?RollNo=<%=intRoll%>&track_no=<%=varTN%>&JobPosition=<%=position%>&system=DhakaBank"> ;
<input type="hidden" name="rankForJS_" id="rankForJS_" value="">  
<input type="hidden" name="MainCV_" id="MainCV_" value="<%=strBody1%>"> 
<input type="hidden" name="imgSrc_" id="imgSrc_" value=""> 
<input type="hidden" name="NAME" id="NAME" value="DhakaBank_Admit_RollNo_<%=intRoll%>_JobReffNo_<%=varTN%>"> 
</form>



 <script>
 document.getElementById("form2").submit() ; 
 </script>
