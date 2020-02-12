
<section>
    <h4 class="title">Personal Details</h4>
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Father's Name:</h5>
        </div>
        <div class="col-sm-9"> <%=strFatherName%> </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Mother's Name:</h5>
        </div>
        <div class="col-sm-9"> <%=strMotherName%></div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Father's Profession:</h5>
        </div>
        <div class="col-sm-9"> <%=FathersProfession%></div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Mother's Profession:</h5>
        </div>
        <div class="col-sm-9"> <%=MothersProfession%></div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Date of Birth:</h5>
        </div>
        <div class="col-sm-9"> <%=FormatDateTime(dtmDateOfBirth, 1)%></div>
    </div>
    <%If strBloodGroup <> "" And  strBloodGroup <> "S" Then%>
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Blood Group:</h5>
        </div>
        <div class="col-sm-9"><%=strBloodGroup%></div>
    </div>
    <%End If%>
    
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Gender:</h5>
        </div>
        <div class="col-sm-9"> <%=strGender%></div>
    </div>
    
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Nationlity:</h5>
        </div>
        <div class="col-sm-9"> <%=strNationality%></div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Present District:</h5>
        </div>
        <div class="col-sm-9"> <%=dist2%></div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Thana, Home District:</h5>
        </div>
        <div class="col-sm-9"> <%=strThanaName%>, <%=dist%> </div>
    </div>
    
	<%If intNationalID <> "" Then%>
    <%If intNationalID > 0 Then%>
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">National ID:</h5>
        </div>
        <div class="col-sm-9"> <%=intNationalID%> </div>
    </div>
	<%End If%>
    <%End If%>
    
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Marital Status:</h5>
        </div>
        <div class="col-sm-9"> <%=strMeritalStatus%> </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Religion:</h5>
        </div>
        <div class="col-sm-9"> <%=strReligion%> </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Permanent Address:</h5>
        </div>
        <div class="col-sm-9"> <%=strPermanentAddress%> </div>
    </div>
    <div class="row">
            <div class="col-sm-3">
                <h5 class="label-title">Contact Numbers:</h5>
            </div>
           <div class="col-sm-9"> <%If strContactPhone <> "" Then%><%=strContactPhone%><%End If%>
			  <%If strCellPhone <> "" AND strCellPhone <> "0" Then%>
			  	<%If strContactPhone <> "" Then%>, <%End If%>
			  		<b><%=strCellPhone%></b>
				<%End If%>
           </div>
    </div>
</section>