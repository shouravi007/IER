
      <!-- Result -->
      <td  width="96"valign="top" class="bodyTextHeader">Result</td>
      <td width="219" valign="top">
         <table  class="table-striped"   width="100%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td>
      <!--#include File = 'Academic\Result1.asp' -->
    </td>
    <td> 
      <!--#include File = 'Academic\Result2.asp' -->
    </td>
  </tr>
  <tr>
    <td><div id="sp_grd<%=diffedulevel%>"> <br/></div></td>
    <td> <div id="sp_grd<%=diffedulevel%>_"> 
          </div>      </td>
  </tr>
</table>
     </td>
    </tr>
    <tr>
      <td width="261" valign="top" class="bodyTextHeader">Degree Name </td>
      <td colspan="2" valign="top" class="bodyTextHeader">Board/University</td>
      <td colspan="2" align="left" valign="top" class="bodyTextHeader">Major Subject</td>
      </tr>

    <tr>
      <td  valign="top">
            
      <div style=" width: 98%; height: 150px;  overflow-x: hidden;  overflow-y: scroll;   border: 1px solid #bdbdbd;    padding: 10px 15px; background-color:#FFF;">
     
        <%                     
		If diffedulevel = 1 Then 
		%>

            <%For d = 0 To Ubound(arrDegreeNameSec,1) %>
       <div class="checkbox">                            
        <label>
          <input name="<%=strDegreeForId&diffedulevel%>" id="<%=strDegreeForId&diffedulevel%><%=d%>" value="'<%=arrDegreeNameSec(d)%>'" type="checkbox"><%=arrDegreeNameSec(d)%>
         </label>
      </div>
		    <%Next%>
    		
		<%
		ElseIf diffedulevel = 2 Then 
		%>
             <%For d = 0 To Ubound(arrDegreeNameHigh,1) %>
              
		     
                    <div class="checkbox">                            
        <label>
          <input name="<%=strDegreeForId&diffedulevel%>" id="<%=strDegreeForId&diffedulevel%><%=d%>" value="'<%=arrDegreeNameHigh(d)%>'" type="checkbox"><%=arrDegreeNameHigh(d)%>
         </label>
      </div>
             
             
              <%Next%>
		<%
		ElseIf diffedulevel = 3 Then 					
		%>		
			<%For d = 0 To Ubound(arrDegreeNameGrad,1) %>
             
     
                    <div class="checkbox">                            
        <label>
          <input name="<%=strDegreeForId&diffedulevel%>" id="<%=strDegreeForId&diffedulevel%><%=d%>" value="'<%=arrDegreeNameGrad(d)%>'" type="checkbox"><%=arrDegreeNameGrad(d)%>
         </label>
      </div>       
             
            <%Next%>
		<%					
		ElseIf diffedulevel = 4 Then 
		%>
           <%For d = 0 To Ubound(arrDegreeNamePostGrad,1) %>
            
            <div class="checkbox">                            
        <label>
          <input name="<%=strDegreeForId&diffedulevel%>" id="<%=strDegreeForId&diffedulevel%><%=d%>" value="'<%=arrDegreeNamePostGrad(d)%>'" type="checkbox"><%=arrDegreeNamePostGrad(d)%>
         </label>
      </div>        
            
          
		   <%Next%>
           
       <%End if%>
        
</div>
          
          </td>
      <td colspan="2" valign="top">
      
      <div style=" width: 98%; height: 150px;  overflow-x: hidden;  overflow-y: scroll;   border: 1px solid #bdbdbd;    padding: 10px 15px; background-color:#FFF;">
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
      </div>
      
      </td>
      <td colspan="3" valign="top">
      
      <div style=" width: 98%; height: 150px;  overflow-x: hidden;  overflow-y: scroll;   border: 1px solid #bdbdbd;    padding: 10px 15px; background-color:#FFF;">
      
<% 
     strSqlSubject = "select distinct e.subject  from [subject] e order by e.subject "   
	' Response.Write(strSqlSubject) 
	' Response.End()
     arrSubject = objERS.RetrieveData(strSqlSubject,strErr)	
	 strUbonud = Ubound(arrSubject,2)
%>
    
<%	 
	  If  arrSubject(0,0) <> "Nothing" Then 				

		For i = 0  To Ubound(arrSubject,2)

			If arrSubject(0, i)  = "NA" or arrSubject(0, i) = "Not Applicable" or arrSubject(0, i)  = "Others"   Then
				
			Else
				strSubject = arrSubject(0, i)
				strSubjectName = Replace(strSubject,"_"," & ")
				'strSubjectName = Replace(strSubject,"CE","Civil Engg.")
				'strSubjectName = Replace(arrSubject(0, i),"ME","Mechanical Engg")
				'strSubjectName = Replace(arrSubject(0, i),"EEE","Electrical and Electronics Engg")
				'strSubjectName = Replace(arrSubject(0, i),"CSE","Computer Science and Engg")
				
				If strSubject = "CE" Then
					strSubjectName = "Civil Engg"
				elseIf strSubject = "ME" Then
					strSubjectName = "Mechanical Engg"
				elseIf strSubject = "MIS" Then
					strSubjectName = "Management Information System"
				End IF 		

%>          <div class="checkbox">                            
        <label>  <input name="<%=strSubjectForId&diffedulevel%>"   id="<%=strSubjectForId&diffedulevel&i%>" type="checkbox" value="<%=strSubject%>"><%=strSubjectName%> 
            </label>
      </div>   
<%
			End If
		Next 
	End if 
%>
        </div>
        
       </td>
      </tr>