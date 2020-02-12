
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
     