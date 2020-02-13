<div class="collapse" id="collapseResult">
<fieldset>
    <legend>Filter with Result:</legend>
    <div class="row job-list-row first-row">
        <div class="col-sm-2">
            <h3 class="title">Level</h3>
        </div>
        <div class="col-sm-1">
            <h3 class="title">CGPA From</h3>
        </div>
        <div class="col-sm-1">
            <h3 class="title">CGPA To</h3>
        </div>
        <div class="col-sm-2">
            <h3 class="title">CGPA Scale</h3>
        </div>
       
        <div class="col-sm-1">
            <h3 class="title">Marks From</h3>
        </div>
        <div class="col-sm-1">
            <h3 class="title">Marks To</h3>
        </div>
        
        <div class="col-sm-2">
            <h3 class="title">Class/Div</h3>
        </div>
        
    </div>
    <hr class="first-hr">
<%
'REsponse.End()
For i = 3 to 4 %>

<div class="row job-list-row">
    <div class="col-sm-12">
        <div class="row">
            <div class="col-sm-2">
                <label for="firstName">
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

<%=Level%> </label>
              </div> 

<div class="col-md-1">
 
 <input type="text" id="txtCGPAFrom<%=i%>" name="txtCGPAFrom<%=i%>" class="form-control input-sm"  /> 

</div>

<div class="col-md-1">
 <input type="text" id="txtCGPATo<%=i%>" name="txtCGPATo<%=i%>" class="form-control input-sm" /> 
</div>

<div class="col-md-2">
 <select id="txtCGPAScale<%=i%>" name="txtCGPAScale<%=i%>" class="form-control input-sm">
   <option value="S" selected="selected">Select</option>
  
   <option value="4">4</option>
   <option value="5">5</option>
   
 </select> 
</div>

<div class="col-md-1">
 <input type="text" id="txtMarksFrom<%=i%>" name="txtMarksFrom<%=i%>" class="form-control input-sm" /> 
</div>

<div class="col-md-1">
 <input type="text" id="txtMarksTo<%=i%>" name="txtMarksTo<%=i%>" class="form-control input-sm" /> 
</div>


<div class="col-md-2">
 <select id="txtDivision<%=i%>" name="txtDivision<%=i%>" class="form-control input-sm">
   <option value="S" selected="selected">Select</option>
   <option value="15">First</option>
   <option value="14">Second</option>
   <option value="13">Third</option>
   <option value="12">Appeared</option>
   
 </select> 
</div>



           </div>
      </div>
  </div>
<hr>


<%next
'REsponse.End()

%>

</fieldset>
<br /><br />
<button  class="btn-style view-more" style="font-size:14px;"  role="button" data-toggle="collapse" href="#collapseNotice" aria-expanded="false" aria-controls="collapseNotice" >Even More..<i class="fa fa-chevron-down"></i></button>
</div>

<div class="collapse" id="collapseNotice">
<p>Coming soon ... or make a suggestion list for search panel </p>
</div>


<%If cstr(developer) = cstr(currentUser) then %>
<input type="checkbox" id="No_Subject" name="No_Subject" value="No_Subject" />No Subject
<%End If%>