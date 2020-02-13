  <%
  
 If IsBlank = "" or isempty(IsBlank) or isnull(IsBlank) Then  
  If i = 1 THEN 
    strUniversity = strInstitute1
  ElseIf i = 2 THEN
    strUniversity = strInstitute2
  ElseIf i = 3 Then
    strUniversity = strInstitute3
  ElseIf i = 4 then 
    strUniversity = strInstitute4
  ElseIf i = 5 then 
    strUniversity = strInstitute5
  
  End If 
 Else
  If i = 1 THEN 
    strUniversity = strUniversity1
	strUniversityOthers = strUniversityOthers1
	strCountry = strCountry1
	strForeign = strForeign1
	lblBoard = "Board"
  ElseIf i = 2 THEN
    strUniversity = strUniversity2
	strUniversityOthers = strUniversityOthers2
	strCountry = strCountry2
	strForeign = strForeign2
	lblBoard = "Board"
  ElseIf i = 3 Then
    strUniversity = strUniversity3
	strUniversityOthers = strUniversityOthers3
	strCountry = strCountry3
	strForeign = strForeign3
	lblBoard = "University"
  ElseIf i = 4 then 
    strUniversity = strUniversity4
	strUniversityOthers = strUniversityOthers4
	strCountry = strCountry4
	strForeign = strForeign4
	lblBoard = "University"
  ElseIf i = 5 then 
    strUniversity = strUniversity5
	strUniversityOthers = strUniversityOthers5
	strCountry = strCountry5
	strForeign = strForeign5
	lblBoard = "University"
  End If 
 
 
 End If
  
 
 	If strUniversity = "" or strUniversity = "-1" Or strUniversity = "S" Then 
    	 'bgColorUniversity = " background-color: #FF0000;" 
	Else 
	     bgColorUniversity = ""
	End If
 
 
 
  %>
 
    <div class="col-sm-4">
      <label for="lastName"><%If i =1 or i = 2 Then%>Board<%Else%>University<%End If%></label>
    </div>
    <div class="col-sm-8">
        <div class="form-group">
       <select class="form-control input-sm" id="ddlUniversity<%=i%>" name="ddlUniversity<%=i%>" style="<%=bgColorUniversity%>" onChange="putValueInHiddenUniversity(this,<%=i%>);return createEdu(this,<%=i%>);" > 
       
              	 <option value="S" selected="selected">Select</option>
                      <%IF i<3 THEN
					       For bb = 0 To Ubound(arrBoardName, 1) 
					   %>
             	 <option value="<%=arrBoardName(bb)%>"<%If Cstr(strUniversity) = Cstr(arrBoardName(bb)) then %>selected<%end if%>><%=arrBoardName(bb)%></option>
                      <% 
					       Next 
					   END IF %>
                                   
 
                    <% IF i >= 3  THEN %>
					<%
					 for jj = 0 to ubound(arrUni, 2)
					%>
					<option value="<%=arrUni(1,jj)%>" <%If Cstr(strUniversity) = Cstr(arrUni(1,jj)) then %>selected<%end if%>><%=arrUni(1,jj)%></option>    
					<%
					   Next 
                    %>              
                      <% END IF%>

	                <option value="Foreign"<% If strForeign = "F" Then Response.Write("selected")%>>Foreign Institute</option>
                   <!-- <option value="Others"<%' If strForeign = "O" Then Response.Write("selected")%>>Others</option>-->
				
                    </select>
	              
                    <div id="sp_edu<%=i%>">
<%
		If strForeign = "F" Then
%>
              <font face="Verdana" color="#FF0000" size="1">* Campus location<br />
                <select id="ddlCountry<%=i%>" name="ddlCountry<%=i%>" class="form-control input-sm">
                  <option value="<%=strCountry%>" selected="selected"><%=strCountry%></option>
                  
 <!--#include file = "OptionForeignCountry.asp"-->
 
              </select>
                <br />
            * University Name<br />
 <input  type="text" id="txtUniversity<%=i%>" name="txtUniversity<%=i%>" maxlength="200" class="form-control" value="<%=strUniversityOthers%>" />
<%		
		ElseIf strForeign = "O" Then
%>
            <font face="Verdana" color="#FF0000" size="1">* University Name</font><br />
<input  type="text" name="txtUniversity<%=i%>" id="txtUniversity<%=i%>" maxlength="250" class="form-control"  value="<%=strUniversityOthers%>" />
<%
		End If
%>
			</font> 
<%
		'End If
%>             
                 </div>       
             </div>
       </div>
       
     
   