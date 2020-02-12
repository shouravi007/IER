  <fieldset>
     <%if i = 1 then %>
        <legend>SSC <span>(or Equivalent Level)</span></legend>   
     <%elseif i = 2 then %>  
        <legend>HSC <span>(or Equivalent Level)</span></legend>
     <%elseif i = 3 then %>    
        <legend>Graduation <span>(Level)</span></legend>
     <%elseif i = 4 then %>    
        <legend>Masters <span>(Level)</span></legend>
     <%end if%>
    
    <div class="academic">
      <div>
        <div class="row hidden-xs">
         
         <div class="col-sm-3">
            <div class="row">
               <div class="col-sm-4">
                 <label for="example">Degree Level</label>
               </div>
                <div class="col-sm-4">
                  <label for="example">Exam Name</label>
                </div>
        
                <div class="col-sm-4">
                  <label for="example">Passing Year</label>
                </div>
            </div>
         </div>
         
        <div class="col-sm-3">
          <label for="example">Result Publish Date</label>
        </div>
        
        <div class="col-sm-3">
          <div class="row">
          
            <div class="col-sm-6">
                 <label for="example">Institute / Faculty</label>
            </div>
        
            <div class="col-sm-6">
                 <label for="example">University / Board</label>
            </div>
            
          </div>
        </div>
        
        <div class="col-sm-3">
          <div class="row">
            <div class="col-sm-6">
            <label for="example">Result</label>
            </div>

           <div class="col-sm-6">
            <label for="example">Group / Subject</label>
           </div>
          </div>
       </div>
       </div>