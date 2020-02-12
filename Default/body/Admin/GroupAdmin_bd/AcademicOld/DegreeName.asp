
    <div class="col-sm-4">
       <div class="form-group">
       
        <label>Name of Degree</label>  
            
<select name="<%=strDegreeForId &diffedulevel%>" class="text form-control" id="<%=strDegreeForId &diffedulevel%>"  multiple="multiple" disabled="disabled" style="height:124px; overflow-x: hidden;overflow-y:hidden" >

		    <option value='S' selected='selected'>Select</option>      
        <% If  diffedulevel = 1  Then %>
             
            <% For dname = 0 To Ubound(arrDegreeNameSec, 1) %>
             
             <option value="<%=arrDegreeNameSec(dname)%>"><%=arrDegreeNameSec(dname)%></option>
              
			 <% Next %>
		 
		 
		 <%ElseIf diffedulevel = 2 Then %>
            <% For dname = 0 To Ubound(arrDegreeNameHigh, 1) %>
             
             <option value="<%=arrDegreeNameHigh(dname)%>"><%=arrDegreeNameHigh(dname)%></option>
              
			 <% Next %>
         
		 <%Elseif diffedulevel = 3 Then %>
            <% For dname = 0 To Ubound(arrDegreeNameGrad, 1) %>
             
             <option value="<%=arrDegreeNameGrad(dname)%>"><%=arrDegreeNameGrad(dname)%></option>
              
			 <% Next %>
        
         <%ElseIf diffedulevel = 4 Then %> 
            <% For dname = 0 To Ubound(arrDegreeNamePostGrad, 1) %>
             
             <option value="<%=arrDegreeNamePostGrad(dname)%>"><%=arrDegreeNamePostGrad(dname)%></option>
              
			 <% Next %>
         <%ElseIf diffedulevel = 5 Then %>
            <% For dname = 0 To Ubound(arrDegreeNamePostGrad, 1) %>
             
             <option value="<%=arrDegreeNamePostGrad(dname)%>"><%=arrDegreeNamePostGrad(dname)%></option>
              
			 <% Next %>
         <%End if %>
        
        </select>
        </div>
     </div>