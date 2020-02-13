  <tr>
    		<td style="padding:5px; color:#339; font-weight:bold; font-size:14px;">Want to Create&nbsp;Roll For All Shortlisted Candidates</td>
  		</tr>
       		 <tr>
    		<td style="padding:5px; color:#339; font-weight:bold; font-size:14px;">Order by&nbsp;</td>
  		</tr>
        <tr>
    		<td> 
                <input type="radio" name="orderby" id="id" value="Id" checked="checked" onclick="ShowApplicants(this.id,document.getElementsByName('jobid'));"/>Id &nbsp;
    			<input type="radio" name="orderby" id="name" value="Name"<%If request.Form("orderby") = "Name" then%> checked="checked"<%End If%> onclick="ShowApplicants(this.id,document.getElementsByName('jobid'));"/>Name &nbsp;
    			<input type="radio" name="orderby" id="roll" value="Roll" <%If request.Form("orderby") = "Roll" then%> checked="checked"<%End If%>onclick="ShowApplicants(this.id,document.getElementsByName('jobid'));"/>Roll No
               <input type="radio" name="orderby" id="random" value="Random" <%If request.Form("orderby") = "Random" then%> checked="checked"<%End If%>onclick="ShowApplicants(this.id,document.getElementsByName('jobid'));"/>Random
            </td>
  		</tr>
        
    
     <tr>
         <td>       
             <input type="radio" name="orderby" id="reid1" value="reset" checked="checked" onclick="javascript:location.reload(true);"/>Reset  &nbsp;
    			
            </td>
  		</tr>
        <tr>
          <td style="padding:5px; color:#339; font-weight:bold; font-size:14px;">&nbsp;</td>
        </tr>
        
        
        
        
        