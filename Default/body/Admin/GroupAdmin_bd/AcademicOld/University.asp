
<div class="col-sm-4">
  <div class="form-group">
	 <label>Name of <%if diffedulevel > 2 then%>University<%Else%>Board<%End If%></label>

  <select name="<%=strInstituteForId&diffedulevel%>" multiple="multiple" class="text form-control" id="<%=strInstituteForId&diffedulevel%>" style="height:124px; overflow-x: hidden;overflow-y:hidden" onChange="return createEdu(this,<%=diffedulevel%>);FillListValues(this);" onmousedown="GetCurrentListValues(this);" disabled="disabled">
        <option value="S" selected="selected">Select</option>
      
        <%
		 
	if diffedulevel < 3 then
		 
		   arrBoardName = array("Dhaka Board","Jessore Board","Chittagong Board","Rajshahi Board","Dinajpur Board","Sylhet Board","Commilla Board","Barishal Board","Technical Board","Madrashah Board")
		 

					   For bb = 0 To Ubound(arrBoardName, 1) 
					   %>
             	 <option value="<%=arrBoardName(bb)%>"<%If Cstr(strUniversity) = Cstr(arrBoardName(bb)) then %>selected<%end if%>><%=arrBoardName(bb)%></option>
                      <% 
					       Next 
					 %>
     
     <%else%>
     <%
               If arrUni(0,0) <> "Nothing" Then 
                    For f = 0 To Ubound(arrUni,2)
					strUni = ""
					strUni = Replace(arrUni(1,f),"'","~")
					strUni = Replace(strUni,",","#")
					%>
                    <option value="<%=strUni%>"><%=arrUni(1,f)%></option> 
                    <%
                    Next 
               End If 						
      %>
     
     <%end if%>     
 <!--       <option value="O" <%'If strForeign = "O" Then%> <%'End If%>>Others</option>
        <option value="F"<%'If strForeign = "F" Then%> <%'End If%>>Foreign Institute</option>  -->
      </select>
      <%'If diffedulevel > 2 Then %>
      <br /> 
      <%'If diffedulevel = 4 Then %>
      
<!--       <input name="chkInstitute<%'=diffedulevel%>" type="checkbox" value="BIBM-Dhaka University" /> Bangladesh Institute of Bank Management(BIBM), Afffiliated with Dhaka University&nbsp; <br />-->
      <%'End If%>
      <!--<input name="chkInstitute<%'=diffedulevel%>" type="checkbox" value="IBA-Dhaka University" />IBA-Dhaka University-->
      <div id="chkInstituteDiv<%=diffedulevel%>" style="display:none;">
      <input id="F<%=diffedulevel%>" name="chkInstitute<%=diffedulevel%>" type="checkbox" value="F" onclick="Foreign(this,<%=diffedulevel%>);"  /> Foreign University
      
  <input id="O<%=diffedulevel%>" name="chkInstitute<%=diffedulevel%>" type="checkbox" value="O" onclick="Foreign(this,<%=diffedulevel%>);"  /> Others
        
      </div>
     
     
     
       
      <%'End If%>
	  </div>  
   </div>
      
      