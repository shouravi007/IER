<FORM  method ="post" name="personal" action="?<%=Encode("Location=Edit&FormAction=personal")%>">
<legend>Personal Information</legend>
    
<!--#include File = 'HiddenValueNew.asp' -->

	    <div class="btn-wrap text-right">
    <button class="btn-style" type="submit" name="psubmit" >
        <i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</button>
    </div>
	
       
       
<div class="row">

    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
            
                <div class="col-sm-4">
                    <div>Full Name:</div>
                </div>
                <div class="col-sm-8">
                    <div><%=strName%></div>
                </div>
                
            </div>
         </div>
    </div>

    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4">
                    <div>Blood Group:</div>
                </div>
                <div class="col-sm-8">
                    <div>
<%
If strBloodGroup <> "" Or IsNull(strBloodGroup) = False Then
	If strBloodGroup = "-1" or strBloodGroup = "S" or strBloodGroup = ""  Then
		Response.Write("Not Mentioned")
	Else
		Response.Write(strBloodGroup)
	End If
End If
%>
                    </div>
													
                </div>
            </div>
        </div>
    </div>
    
</div>

<div class="row">

    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4">
                    <div>Father's Name:</div>
                </div>
                <div class="col-sm-8">
                    <div> <%=strFatherName%></div>
                </div>
            </div>
        </div>
    </div>


    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4">
                    <div>Mother's Name:</div>
                </div>
                <div class="col-sm-8">
                    <div><%=strMotherName%></div>
                </div>
            </div>
        </div>
    </div> 
       
</div>
    
									
<%if system <> "ksb" then%>
 
 <div class="row">
	
	<div class="col-sm-6">
		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<div>Father's Profession :</div>
				</div>
				<div class="col-sm-8">
					<div><%=FathersProfession%></div>
				</div>
			</div>
		</div>
	</div>


	<div class="col-sm-6">
		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<div>Mother's Profession :</div>
				</div>
				<div class="col-sm-8">
					<div><%=MothersProfession%></div>
				</div>
			</div>
		</div>
	</div>
	
</div>

<%end if%>
                                    
<div class="row">
    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4">
                    <div>Marital Status:</div>
                </div>
                <div class="col-sm-8">
                    <div><%=strMeritalStatus%>
                    
<!--             <%'if strMeritalStatus = "Married" then%>
                 <br />Spouse Name: <%'=strSpouseName%> , Spouse Profession: <%'=strSpouseProfession%>
             <%'end if%>   -->                 
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4">
                    <div>Religion:</div>
                </div>
                <div class="col-sm-8">
                    <div><%=strReligion%></div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4">
                    <div>Date of Birth:</div>
                </div>
                <div class="col-sm-8">
                    <div>
<%If dtmDateOfBirth <> "" Then%>
	<%=Mid(FormatDateTime(dtmDateOfBirth,1), inStr(FormatDateTime(dtmDateOfBirth,1), ", ")+1)%>
<%End If%>
</div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4">
                    <div>Gender:</div>
                </div>
                <div class="col-sm-8">
                    <div><%=strGender%></div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4">
                    <div>Nationality:</div>
                </div>
                <div class="col-sm-8">
                    <div><%=strNationality%></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4">
                    <div>Emergency Contact No:</div>
                </div>
                <div class="col-sm-8">
                    <div><%=strCellPhone%></div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4">
                    <div>Contact Mobile:</div>
                </div>
                <div class="col-sm-8">
                    <div><%=strContactPhone%></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4">
                    <div>Present District<!--Cell Phone 2:--></div>
                </div>
                <div class="col-sm-8">
                    <div><%=dist2%></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4">
                    <div>E-Mail:</div>
                </div>
                <div class="col-sm-8">
                    <div><a href="mailto:<%=strEmail%>"><%=strEmail%></a></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4">
                    <div>Home District:</div>
                </div>
                <div class="col-sm-8">
                    <div>      

                    <%=strThanaName%>, <%=dist%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4">
                    <div>Permanent Address:</div>
                </div>
                <div class="col-sm-8">
                    <div><%=strPermanentAddress%></div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-sm-6">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4">
                    <div>Present Address:</div>
                </div>
                <div class="col-sm-8">
                    <div><%=strContactAddress%></div>
            </div>
        </div>
    </div>
</div>
</FORM>
