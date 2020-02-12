
 <% 
	strSQL = ""
	if diffedulevel > 2 then
	strSQL = "select distinct e.institutename  from [institute] e "
	else
	strSQL = "select distinct e.board  from [board] e "
	end if 
	arrUniversityList3 = objERS.RetrieveData(strSQL, errLog)
	ErrorMessage "165", errLog, 0
 
 %>
       <%For j = 0 To UBound(arrUniversityList3,2)%>
       <div class="checkbox">                            
        <label>
          <input name="<%=strInstituteForId&diffedulevel%>" id="txtUniversity<%=j%>" value="'<%=arrUniversityList3(0,j)%>'" type="checkbox"><%=arrUniversityList3(0,j)%>
         </label>
      </div>
      <%Next%>
       <div class="checkbox">                            
        <label>
          <input name="<%=strInstituteForId&diffedulevel%>" id="txtUniversity<%=j%>" value="F" type="checkbox">Foreign Institutes
         </label>
      </div>
      
    
      <%If diffedulevel > 2 Then %>
      <br /> <br />
      <%If diffedulevel = 4 Then %>
      
        <input name="chkInstitute<%=diffedulevel%>" type="checkbox" value="Bangladesh Institute of Bank Management(BIBM), Afffiliated with Dhaka University" /> Bangladesh Institute of Bank Management(BIBM), Afffiliated with Dhaka University&nbsp; <br />
        
      <%End If%>
    
      <input name="chkInstitute<%=diffedulevel%>" type="checkbox" value="IBA" />IBA-Dhaka University
      <%End If%>