<div class="col-sm-4">
   <div class="form-group">
     <label>Major Subject</label>
      <select name="<%=strSubjectForId&diffedulevel%>" multiple="multiple" class="text form-control" id="<%=strSubjectForId&diffedulevel%>" style="height:124px; overflow-x: hidden;overflow-y:hidden" onChange="return createEdu(this,<%=diffedulevel%>);FillListValues(this);" onmousedown="GetCurrentListValues(this);" disabled="disabled"> <!--return createMaj(this,<%'=diffedulevel%>);-->
            <option value='S' selected='selected'>Select</option>  
		   <%If diffedulevel < 3 Then%>
             <%For s = 0 To Ubound(arrSubjectNameSec,1) %>
              <option value="<%=arrSubjectNameSec(s)%>"><%=arrSubjectNameSec(s)%>
              </option>
		    <%Next%>
            
            <%ElseIf diffedulevel = 3 then %>
             <%For s = 0 To Ubound(arrSubjectGrad,1) %>
              <option value="<%=arrSubjectGrad(s)%>"><%=arrSubjectGrad(s)%>
              </option>
		    <%Next%>
            
            <%ElseIf diffedulevel >= 4 Then %>
             <%For s = 0 To Ubound(arrSubjectPostGrad,1) %>
              <option value="<%=arrSubjectPostGrad(s)%>"><%=arrSubjectPostGrad(s)%>
              </option>
		    <%Next%>
            
            <%End if%>
        <!-- <option value='Others'>Others</option> -->
      </select>
      </div>
  </div>  
