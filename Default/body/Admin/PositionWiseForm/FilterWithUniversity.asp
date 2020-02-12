 <% 
	strSQL = ""
	strSQL = "select distinct e.institutename  from [institute] e "
	''Response.Write("<br>"&strSQL)
	arrUniversityList3 = objERS.RetrieveData(strSQL, errLog)
	ErrorMessage "165", errLog, 0
 
 %>
 <fieldset>
<legend>Filter with University:</legend>
<div class="row job-list-row first-row">
    <div class="col-sm-4">
        <h3 class="title">Level</h3>
    </div>
    <div class="col-sm-8">
        <h3 class="title">University List</h3>
    </div>
</div>
<hr class="first-hr">
<%For i = 3 to 4 %>
<div class="row job-list-row">
    <div class="col-sm-4">
        <h3 class="title">    
        
<% if i = 1 then 
     Level = "Secondary"
   elseif i = 2 then 
     Level = "Higher Secondary"
   elseif i = 3 then 
     Level = "Graduation"
   else
     Level = "Post Graduation"
   end if 
%>

  <%=Level%>
  
  </h3>
  
    </div>
    
    
    <div class="col-sm-8">
        <div class="checkbox-container">
            
            
                          <%For j = 0 To UBound(arrUniversityList3,2)%>
                           <div class="checkbox">                            
                            <label>
                              <input name="txtUniversity<%=i%>" id="txtUniversity<%=j%>" value="'<%=arrUniversityList3(0,j)%>'" type="checkbox"><%=arrUniversityList3(0,j)%>
                             </label>
                          </div>
                          <%Next%>
                          
            </div>

   </div>
 
 </div>
 
 <hr>

<%next%>

</fieldset> 