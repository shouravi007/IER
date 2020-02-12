
	  <table  class="table-striped"   width="100%" border="0" cellpadding="3" cellspacing="0" >
        
		<tr>
		  <td colspan="7" valign="top">Personal Information</td>
		  </tr>
		<tr>
          <td valign="top" class="bodyTextHeader">Name</td>
          <td width="20%" valign="top" class="bodyTextHeader">Age </td>
          <td width="8%" valign="top" class="bodyTextHeader">
		  	<table  class="table-striped"   width="100%" border="0" style="border:none; background-image:none;">
			  <!--<tr>
				<td width="6%" valign="top"><input type="radio" name="rdoName" id="rdoFirstName" style="border:0px;" value="First Name" <%If strNameType = "First Name" Then  %>checked="checked"<%End if%>/></td>
				  <td width="14%" valign="middle">First Name </td>
				  <td width="6%" valign="top"><input type="radio" name="rdoName" id="rdoLastName" style="border:0px;" value="Last Name" <%If strNameType = "Last Name" Then  %>checked="checked"<%End if%>/></td>
				  <td width="14%" valign="middle"> Last Name</td>
				  <td width="6%" valign="middle"><input type="radio" name="rdoName" id="rdoFullName" style="border:0px;" value="Full Name" <%If strNameType = "Full Name" Then  %>checked="checked"<%End if%> /></td>
				  <td width="54%" valign="middle">Full Name</td>
			  </tr>-->
			</table>
		  	Gender </td>
         <!-- <td width="12%" valign="top" class="bodyTextHeader">Present District</td>-->
          <td width="19%" valign="top" class="bodyTextHeader" colspan="2">Home District</td>
          <td width="19%" valign="top" class="bodyTextHeader">Email</td>
          <td width="17%" valign="top" class="bodyTextHeader">Ccontact Phone</td>
          </tr>
        <!--<tr>
          <td class="bodytext">&nbsp;</td>
          <td class="bodytext">&nbsp;</td>
          <td colspan="4" class="bodytext">&nbsp;</td>
        </tr>-->
        <tr>
          <td width="17%" class="bodytext"><input  type="text" name="txtName" id="txtName" value="<%=strName%>" class="form-control"   /></td>
          <td class="bodytext">
            <select name="ddlAgeFrom"  id="ddlAgeFrom" class="form-control" >
                <option value="S" >From</option>
                <%=intAgeFrom&intAgeTo%>
				<%For i = 18 To 35%>
                <option value="<%=i%>" <%If i = Cint(intAgeFrom) Then %>selected="selected" <%End if%>><%=i%></option>
                <%Next%>
              </select>
            -
            <select name="ddlAgeTo"  id="ddlAgeTo" class="form-control"  >
              <option value="S" selected="selected">To</option>
              <%For i = 18 To 35%>
              <option value="<%=i%>" <%If i = Cint(intAgeTo) Then %> selected="selected" <%End if%>><%=i%></option>
              <%Next%>
            </select></td>
          <td class="bodytext">
		  	<select name="txtSex"  id="txtSex" class="form-control">
		  	  <option value="S" selected="selected">Select</option>
		  	  <option value="Male"<%if strSex = "Male" Then %> selected="selected" <%End if%>>Male</option>
		  	  <option value="Female" <%if strSex = "Female" Then %> selected="selected" <%End if%>>Female</option>
		  	  </select></td>
         <!-- <td class="bodytext" ><select name="txtCDistrict" id="txtCDistrict" >
            <option value="S" selected="selected">Select</option>-->
            <%
        ' For d=0 To 63
        %>
<!--            <option value="<%'=arrDist(d)%>" <%'If arrDist(d) = strCorrespondenceDistrict Then%>selected<%'End If%>><%'=arrDist(d)%></option>
-->            <%
        'Next
        %>
        <!--  </select></td>-->
          <td class="bodytext" colspan="2">
          <select name="txtDistrict" id="txtDistrict" class="form-control" >
            <option value="S" selected="selected">Select</option>
            <%
         For d = 1  To 64
        %>
            <option value="<%=d%>" <%If arrDist(d)= varHomeDist Then%>selected<%End If%>><%=arrDist(d)%></option>
            <%
        Next
        %>
          </select>
          </td>
          <td class="bodytext"><input  type="text" name="txtEmail" id="txtEmail" value="<%=strEmail%>" class="form-control" /></td>
          <td class="bodytext"><input  type="text" name="txtPhone" id="txtPhone" value="<%=strPhone%>" class="form-control"/>
            <br /><input type="radio" name="rdoPhone" id="rdoCellPhone" style="border:0px;" value="Cell Phone" <%If strPhoneType = "Cell Phone" Then  %> checked="checked" <%End if%>/>
Mobile
<input type="radio" name="rdoPhone" id="rdoHomePhone" style="border:0px;" value="Home Phone"  <%If strPhoneType = "Home Phone" Then  %> checked="checked" <%End if%> />
Home</td>
          </tr>
		<!--
		
		-->
        <!--<tr>
          <td class="bodytext">&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="4">&nbsp;</td>
        </tr>-->
        <!--<tr>
          <td valign="top">&nbsp;</td>
          <td>&nbsp;</td>
          <td width="18%" valign="top">&nbsp;</td>
          <td width="34%" colspan="3">&nbsp;</td>
        </tr>-->
 
        </table>
	  
	  <br /><br />