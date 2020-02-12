<div class="col-sm-4">
<label for="dateOfBirth">Date of Birth
  <span id="ddlDateOfBirthYearEsteric" style="color:#FF0000;">*</span>
</label>
</div>
<div class="col-sm-8 clearfix">
<div class="row">
  <div class="col-xs-4">
    <div class="required">
                 <select class="form-control input-sm" name="ddlDateOfBirthDay" id="ddlDateOfBirthDay"   <%If strDateOfBirthDay = "S" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> onChange="ChangeEstaricColor(this, 'ddlDateOfBirth');CheckAge('07/01/2019','30');"><!--mm/dd/yyyy-->
                <option value="S" >day</option>
                <%
                For a=1 To 31
                %>
                <option value="<%=a%>" <%If cstr(a)=cstr(strDateOfBirthDay) Then%>selected<%End If%>><%=a%></option>
                <%
                Next
                %>
				</select>
    </div>
  </div>
  <div class="col-xs-4">
    <div class="required">
               
<%
		'Response.Write("Mon: "&varBirthMon)
		ReDim varBMon(13)
		For b=1 To 12
			If cstr(b)=cstr(strDateOfBirthMonth) Then
				varBMon(b)="selected"
				'Exit For
			Else
				varBMon(b)=""
			End If
		Next
%>
				<select class="form-control input-sm" name="ddlDateOfBirthMonth" id="ddlDateOfBirthMonth"  <%If strDateOfBirthMonth = "S" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> onChange="ChangeEstaricColor(this, 'ddlDateOfBirth');CheckAge('07/01/2019','30');"><!--mm/dd/yyyy-->
                <option value="S" >Mon</option>
                <option value="1" <%=varBMon(1)%>>Jan</option>
                <option value="2" <%=varBMon(2)%>>Feb</option>
                <option value="3" <%=varBMon(3)%>>Mar</option>
                <option value="4" <%=varBMon(4)%>>Apr</option>
                <option value="5" <%=varBMon(5)%>>May</option>
                <option value="6" <%=varBMon(6)%>>Jun</option>
                <option value="7" <%=varBMon(7)%>>Jul</option>
                <option value="8" <%=varBMon(8)%>>Aug</option>
                <option value="9" <%=varBMon(9)%>>Sep</option>
                <option value="10" <%=varBMon(10)%>>Oct</option>
                <option value="11" <%=varBMon(11)%>>Nov</option>
                <option value="12" <%=varBMon(12)%>>Dec</option>
				</select>
    </div>
  </div>
  <div class="col-xs-4">
    <div class="required">
 <select  class="form-control input-sm" name="ddlDateOfBirthYear" id="ddlDateOfBirthYear"  <%If strDateOfBirthYear = "S" And IsBlank = "True" Then%> "background-color:#FFCA95;"<%End If%> onChange="changeEstericColor(this.id);CheckAge('07/01/2019','30');"> <!--mm/dd/yyyy-->
                <option value="S" >year</option>
                <%For i=cstr(Year(Date))-21 to (cstr(Year(Date))-30) step -1%>
                <option value="<%=i%>" <%If cstr(i)=cstr(strDateOfBirthYear) Then%>selected<%End If%>><%=i%></option>
                <%Next%>
                </select>
    </div>
  </div>
</div>
</div>












