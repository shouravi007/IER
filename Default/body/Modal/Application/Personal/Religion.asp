  <div class="col-sm-4">
	<label for="Religion">Religion
	  <span id="spnReligion" style="color:#FF0000;">*</span>
	</label>
  </div>
  <div class="col-sm-8">
	<div class="required">
    
    <select name="ddlReligion" id="ddlReligion" class="form-control" <%If strReligion = "S" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> onChange="ChangeEstaricColor(this, 'spnReligion');">
        <option value="S" >Select</option>
        <option value="Islam" <%If strReligion = "Islam" Then%> selected="selected"<%End If%>>Islam</option>
        <option value="Hinduism" <%If strReligion = "Hinduism" Then%> selected="selected"<%End If%>>Hinduism</option>
        <option value="Christianity" <%If strReligion = "Christianity" Then%> selected="selected"<%End If%>>Christianity</option>
        <option value="Buddhism" <%If strReligion = "Buddhism" Then%> selected="selected"<%End If%>>Buddhism</option>
        <option value="Atheism" <%If strReligion = "Atheism" Then%> selected="selected"<%End If%>>Atheism</option>
        <option value="Bahaism" <%If strReligion = "Bahaism" Then%> selected="selected"<%End If%>>Bahaism</option>
        <option value="Chinese Universist" <%If strReligion = "Chinese Universist" Then%> selected="selected"<%End If%>>Chinese Universist</option>
        <option value="Confucianism" <%If strReligion = "Confucianism" Then%> selected="selected"<%End If%>>Confucianism</option>
        <option value="Ethno-religionist" <%If strReligion = "Ethno-religionist" Then%> selected="selected"<%End If%>>Ethno-religionist</option>
        <option value="Jainism" <%If strReligion = "Jainism" Then%> selected="selected"<%End If%>>Jainism</option>
        <option value="Jewish" <%If strReligion = "Jewish" Then%> selected="selected"<%End If%>>Jewish</option>
        <option value="Neo-religionist" <%If strReligion = "Neo-religionist" Then%> selected="selected"<%End If%>>Neo-religionist</option>
        <option value="Secular/Nonreligious" <%If strReligion = "Secular/Nonreligious" Then%> selected="selected"<%End If%>>Secular/Nonreligious</option>
        <option value="Shinto" <%If strReligion = "Shinto" Then%> selected="selected"<%End If%>>Shinto</option>
        <option value="Sikhism" <%If strReligion = "Sikhism" Then%> selected="selected"<%End If%>>Sikhism</option>
        <option value="Spiritism" <%If strReligion = "Spiritism" Then%> selected="selected"<%End If%>>Spiritism</option>
        <option value="Taoism" <%If strReligion = "Taoism" Then%> selected="selected"<%End If%>>Taoism</option>
        <option value="Zoroastrianism" <%If strReligion = "Zoroastrianism" Then%> selected="selected"<%End If%>>Zoroastrianism</option>
        <option value="Other" <%If strReligion = "Other" Then%> selected="selected"<%End If%>>Other</option>
    </select>
     
<span id="ddlReligion_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
     
	</div>
  </div>
  
  