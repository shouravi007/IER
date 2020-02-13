


</td>
</tr>
</table></td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>

<tr style="visibility:hidden;">
<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr style="visibility:hidden;">
<td width="27%">&nbsp;Preference for work location<br>
&nbsp;(at least 2 must be mentioned)</td>
<td width="20%">
                       <%
						ReDim arrDist(65)
                        arrDist(0)="Brahmanbaria"
                        arrDist(1)="Bagerhat"      
                        arrDist(2)="Bandarban"
                        arrDist(3)="Barisal"
                        arrDist(4)="Bhola"
                        arrDist(5)="Bogra"
                        arrDist(6)="Borguna"
                        arrDist(7)="Chandpur"
                        arrDist(8)="Chapainawabganj"
                        arrDist(9)="Chittagong"
                        arrDist(10)="Chuadanga"
                        arrDist(11)="Comilla"
                        arrDist(12)="Cox`s Bazar"
                        arrDist(13)="Dhaka"
                        arrDist(14)="Dinajpur"
                        arrDist(15)="Faridpur"
                        arrDist(16)="Feni"
                        arrDist(17)="Gaibandha"
                        arrDist(18)="Gazipur"
                        arrDist(19)="Gopalgonj"
                        arrDist(20)="Hobigonj"
                        arrDist(21)="Jamalpur"
                        arrDist(22)="Jessore"
                        arrDist(23)="Jhalokathi"
                        arrDist(24)="Jhenaidah"
                        arrDist(25)="Joypurhat"
                        arrDist(26)="Khagrachari"
                        arrDist(27)="Khulna"
                        arrDist(28)="Kishorgonj"
                        arrDist(29)="Kurigram"
                        arrDist(30)="Kushtia"
                        arrDist(31)="Lalmonirhat"
                        arrDist(32)="Laxmipur"
                        arrDist(33)="Madaripur"
                        arrDist(34)="Magura"
                        arrDist(35)="Manikgonj"
                        arrDist(36)="Meherpur"
                        arrDist(37)="MoulaviBazar"
                        arrDist(38)="Munshigonj"
                        arrDist(39)="Mymensingh"
                        arrDist(40)="Naogaon"
                        arrDist(41)="Narail"
                        arrDist(42)="Narayangonj"
                        arrDist(43)="Narshingdi"
                        arrDist(44)="Natore"
                        arrDist(45)="Netrokona"
                        arrDist(46)="Nilphamari"
                        arrDist(47)="Noakhali"
                        arrDist(48)="Pabna"
                        arrDist(49)="Panchagahr"
                        arrDist(50)="Patuakhali"
                        arrDist(51)="Pirojpur"
                        arrDist(52)="Rajbari"
                        arrDist(53)="Rajshahi"
                        arrDist(54)="Rangamati"
                        arrDist(55)="Rangpur"
                        arrDist(56)="Satkhira"
                        arrDist(57)="Shariatpur"
                        arrDist(58)="Sherpur"
                        arrDist(59)="Sirajgonj"
                        arrDist(60)="Sunamgonj"
                        arrDist(61)="Sylhet"
                        arrDist(62)="Tangail"
                        arrDist(63)="Thakurgaon"
                        arrDist(64)="Anywhere"						
					%>
<select name="ddlPreferedLocation1" id="ddlPreferedLocation1" class="newSelect" style="width:120px;" onChange="EnableDisable(this, 2, 3); ChangeEstaricColor(this, 'lblPreferedLocation1');">
    <option value="S" selected="selected">Select</option>
    <%
     For d=0 To 64
    %>
    <option value="<%=arrDist(d)%>" <%If arrDist(d)=strPreferedLocation1 Then%>selected<%End If%>><%=arrDist(d)%></option>
    <%
    Next
    %>
</select>
<label style="color:#FF0000;" id="lblPreferedLocation1">*</label></td>
<td width="19%">
<select name="ddlPreferedLocation2" id="ddlPreferedLocation2" class="newSelect" style="width:120px;" onChange="EnableDisable(this, 2, 3); ChangeEstaricColor(this, 'lblPreferedLocation1');">
    <option value="S" selected="selected">Select</option>
    <%
     For d=0 To 64
    %>
    <option value="<%=arrDist(d)%>" <%If arrDist(d)=strPreferedLocation2 Then%>selected<%End If%>><%=arrDist(d)%></option>
    <%
    Next
    %>
</select>
<label style="color:#FF0000;" id="lblPreferedLocation2">*</label></td>
<td width="34%">
<select name="ddlPreferedLocation3" id="ddlPreferedLocation3" class="newSelect" style="width:120px;" onChange="EnableDisable(this, 2, 3); ChangeEstaricColor(this, 'lblPreferedLocation1');">
    <option value="S" selected="selected">Select</option>
    <%
     For d=0 To 64
    %>
    <option value="<%=arrDist(d)%>" <%If arrDist(d)=strPreferedLocation3 Then%>selected<%End If%>><%=arrDist(d)%></option>
    <%
    Next
    %>
</select></td>
</tr>
</table></td>
</tr>
<tr>
  <td>&nbsp;</td>
</tr>
<tr>
<td>
 <br/>