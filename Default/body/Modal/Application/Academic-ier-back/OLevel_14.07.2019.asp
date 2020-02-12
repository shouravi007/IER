
  
  <div class="col-sm-12">
      <div class="form-group" data-visual-label="O LEVEL (Mention top 5 grades)">
 
  <div class="row">
	<div class="col-sm-12">
		<div class="aca-sub">
			<fieldset>
				<legend>O LEVEL <span>(Mention top 5 grades)</span></legend>
				<div class="row hidden-xs">
					<div class="col-sm-1">
					</div>
					<div class="col-sm-1">
					  <label>Subject1</label>
					</div>
					<div class="col-sm-1">
					  <label>Grade1</label>
					</div>
					<div class="col-sm-1">
					  <label>Subject2</label>
					</div>
					<div class="col-sm-1">
					  <label>Grade2</label>
					</div>
					<div class="col-sm-1">
					  <label>Subject3</label>
					</div>
					<div class="col-sm-1">
					  <label>Grade3</label>
					</div>
					<div class="col-sm-1">
					  <label>Subject4</label>
					</div>
					<div class="col-sm-1">
					  <label>Grade4</label>
					</div>
					<div class="col-sm-1">
					  <label>Subject5</label>
					</div>
					<div class="col-sm-1">
					  <label>Grade5</label>
					</div>
					<div class="col-sm-1">
					</div>
				</div>
				<div class="row">
					<div class="col-sm-1">
					</div>
					<div class="col-sm-1">
						<div class="form-group" data-visual-label="Subject1">
                        <input type="hidden" name="hidAuto1" id="hidAuto1" value="-1" />  
			<input id="txtSubO1" name="txtSubO1" type="text" class="form-control" maxlength="50" value="<%=strSubject_O1%>">
						</div>
					</div>
					<div class="col-sm-1">
						<div class="form-group" data-visual-label="Grade1">
				<select name="txtLevel_O1" id="txtLevel_O1" class="form-control input-sm">
					<option value=""<%If resultLevel_O1 = "" Then%> selected="selected"<%End If%>>Select</option>
                    <option value="5"<%If resultLevel_O1 = "5" Then%> selected="selected"<%End If%>>A</option>
                    <option value="4"<%If resultLevel_O1 = "4" Then%> selected="selected"<%End If%>>B</option>
                    <option value="3"<%If resultLevel_O1 = "3" Then%> selected="selected"<%End If%>>C</option>
                    <option value="2"<%If resultLevel_O1 = "2" Then%> selected="selected"<%End If%>>D</option>
				</select>
						</div>
					</div>
					<div class="col-sm-1">
						<div class="form-group" data-visual-label="Subject2">
							<input type="hidden" name="hidAuto2" id="hidAuto2" value="-1" />  
            <input id="txtSubO2" name="txtSubO2" type="text" class="form-control" maxlength="50" value="<%=strSubject_O2%>">
						</div>
					</div>
					<div class="col-sm-1">
						<div class="form-group" data-visual-label="Grade2">
			<select name="txtLevel_O2" id="txtLevel_O2" class="form-control input-sm">
					<option value=""<%If resultLevel_O2 = "" Then%> selected="selected"<%End If%>>Select</option>
                    <option value="5"<%If resultLevel_O2 = "5" Then%> selected="selected"<%End If%>>A</option>
                    <option value="4"<%If resultLevel_O2 = "4" Then%> selected="selected"<%End If%>>B</option>
                    <option value="3"<%If resultLevel_O2 = "3" Then%> selected="selected"<%End If%>>C</option>
                    <option value="2"<%If resultLevel_O2 = "2" Then%> selected="selected"<%End If%>>D</option>
			</select>
						</div>
					</div>
					<div class="col-sm-1">
						<div class="form-group" data-visual-label="Subject3">
                        <input type="hidden" name="hidAuto3" id="hidAuto3" value="-1" />  
<input id="txtSubO3" name="txtSubO3" type="text" class="form-control" maxlength="50" value="<%=strSubject_O3%>">
						</div>
					</div>
					<div class="col-sm-1">
						<div class="form-group" data-visual-label="Grade2">
                <select name="txtLevel_O3" id="txtLevel_O3" class="form-control input-sm">
					<option value=""<%If resultLevel_O3 = "" Then%> selected="selected"<%End If%>>Select</option>
                    <option value="5"<%If resultLevel_O3 = "5" Then%> selected="selected"<%End If%>>A</option>
                    <option value="4"<%If resultLevel_O3 = "4" Then%> selected="selected"<%End If%>>B</option>
                    <option value="3"<%If resultLevel_O3 = "3" Then%> selected="selected"<%End If%>>C</option>
                    <option value="2"<%If resultLevel_O3 = "2" Then%> selected="selected"<%End If%>>D</option>
                </select>
						</div>
					</div>
					<div class="col-sm-1">
						<div class="form-group" data-visual-label="Subject4">
                        <input type="hidden" name="hidAuto4" id="hidAuto4" value="-1" />  
	<input id="txtSubO4" name="txtSubO4" type="text" class="form-control" maxlength="50" value="<%=strSubject_O4%>">
						</div>
					</div>
					<div class="col-sm-1">
						<div class="form-group" data-visual-label="Grade4">
                <select name="txtLevel_O4" id="txtLevel_O4" class="form-control input-sm">
					<option value=""<%If resultLevel_O4 = "" Then%> selected="selected"<%End If%>>Select</option>
                    <option value="5"<%If resultLevel_O4 = "5" Then%> selected="selected"<%End If%>>A</option>
                    <option value="4"<%If resultLevel_O4 = "4" Then%> selected="selected"<%End If%>>B</option>
                    <option value="3"<%If resultLevel_O4 = "3" Then%> selected="selected"<%End If%>>C</option>
                    <option value="2"<%If resultLevel_O4 = "2" Then%> selected="selected"<%End If%>>D</option>
                </select>
						</div>
					</div>
					<div class="col-sm-1">
						<div class="form-group" data-visual-label="Subject5">
                        <input type="hidden" name="hidAuto5" id="hidAuto5" value="-1" />  
	<input id="txtSubO5" name="txtSubO5" type="text" class="form-control" maxlength="50" value="<%=strSubject_O5%>">
						</div>
					</div>
					<div class="col-sm-1">
						<div class="form-group" data-visual-label="Grade5">
            <select name="txtLevel_O5" id="txtLevel_O5" class="form-control input-sm">
                <option value=""<%If resultLevel_O5 = "" Then%> selected="selected"<%End If%>>Select</option>
                <option value="5"<%If resultLevel_O5 = "5" Then%> selected="selected"<%End If%>>A</option>
                <option value="4"<%If resultLevel_O5 = "4" Then%> selected="selected"<%End If%>>B</option>
                <option value="3"<%If resultLevel_O5 = "3" Then%> selected="selected"<%End If%>>C</option>
                <option value="2"<%If resultLevel_O5 = "2" Then%> selected="selected"<%End If%>>D</option>
            </select>
						</div>
					</div>
					<div class="col-sm-1">
					</div>
				</div>
			</fieldset>
		</div>
	</div>
  </div>
  
    </div>
   </div>
 

