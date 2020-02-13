<div class="col-sm-6">
    <label for="firstName">
        <h4>Result Publish Date <span>*</span></h4>   
    </label>
</div>     
 
<div class="col-sm-6">

        <div class="form-group result publish day"> 
        <select name="ddlResultDay1" id="ddlResultDay1" class="form-control input-sm">
            <option value="S">day</option>
        <%
            For a=1 To 31
        %>
            <option value="<%=a%>"<%If cstr(strResultPublishDay) = cstr(a) then%> selected="selected"<%end if%>><%=a%></option>
        <%
            Next
        %>
        </select>
        </div>
    
        <div class="form-group result publish month">                                   
        <%
        'Response.Write("Mon: "&varBirthMon)
        ReDim varBMon(13)
            
            For b=1 To 12
            
                If cstr(b)=cstr(strResultPublishMonth) Then
                    varBMon(b)="selected"
                    'Exit For
                Else
                    varBMon(b)=""
                End If
            Next
        %>
        <select name="ddlResultMonth1" id="ddlResultMonth1" class="form-control input-sm">
            <option value="S">Month</option>
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
    
        <div class="form-group result publish year"> 
        
        <select name="ddlResultYear1" id="ddlResultYear1" class="form-control input-sm">
            <option value="S" >year</option>
        <%	For j=CInt(Year(Date))  to (CInt(Year(Date))-18) Step -1%>
            <option value="<%=j%>" <%If cstr(strResultPublishYear) = cstr(j) Then%> selected='selected'<%End If%>><%=j%></option>
        <%
            Next
        %>
        </select>
         
        </div>  

</div>



