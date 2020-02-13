  <div class="col-sm-4">
	<label for="BloodGroup">Blood Group
	  <!--<span id="txtFirstNameEsteric" style="color:#FF0000;">*</span>-->
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
	
 <select name="ddlBloodGroup" id="ddlBloodGroup" class="form-control" >
            <option value="S" >Select</option>
            <option value="A+" <%If strBloodGroup = "A+" Then%> selected="selected"<%End If%>>A+</option>
            <option value="A-" <%If strBloodGroup = "A-" Then%> selected="selected"<%End If%>>A-</option>
            <option value="B+" <%If strBloodGroup = "B+" Then%> selected="selected"<%End If%>>B+</option>
            <option value="B-" <%If strBloodGroup = "B-" Then%> selected="selected"<%End If%>>B-</option>
            <option value="AB+" <%If strBloodGroup = "AB+" Then%> selected="selected"<%End If%>>AB+</option>
            <option value="AB-" <%If strBloodGroup = "AB-" Then%> selected="selected"<%End If%>>AB-</option>
            <option value="O+" <%If strBloodGroup = "O+" Then%> selected="selected"<%End If%>>O+</option>
            <option value="O-" <%If strBloodGroup = "O-" Then%> selected="selected"<%End If%>>O-</option>
				</select>	   
    
<span id="ddlBloodGroup_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
     
	</div>
  </div>