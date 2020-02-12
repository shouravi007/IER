<%
ValuePrint strResult1, "strResult1"
ValuePrint strResult2, "strResult2"
ValuePrint strResult3, "strResult3"
ValuePrint strResult4, "strResult4"


	If i =1 Then
		 strResult = strResult1
	ElseIf i = 2 Then 
		 strResult = strResult2
	ElseIf i = 3 Then 
		 strResult = strResult3
	ElseIf i = 4 Then 
		 strResult = strResult4
	ElseIf i = 5 Then 
		 strResult = strResult5

	Else
		 strResult = "S"
	End If


 	If strResult = "" or strResult = "S" or strResult = "-1" Then 
    	' bgColorResult = " background-color: #FF0000;" 
	Else 
	     bgColorResult = ""
	End If


    if strResult = 11 then 
	  strResult = 0 	 
	end if 
'	
'	If InStr(lcase(strDegreeName1),"o level") > 0 or InStr(lcase(strDegreeName2),"a level") > 0 Then
'		strVisibility = "display:none;"
'	Else
'		strVisibility = "display:block;"
'	End If

 If Request.Form("txtBlank") = "True" Then 
	If i<3 and InStr(lcase(Request.Form("ddlDegreeName1")),"o level") > 0 Then
		strVisibility = "display:none;"
	ElseIf i<3 and InStr(lcase(Request.Form("ddlDegreeName2")),"a level") > 0 Then
		strVisibility = "display:none;"
	End If
	
	If strDegreeName <> "O Level" and strDegreeName <> "A Level" Then 
		If strResult = "" or strResult = "S" Then 
			strVisibility = "display:none;"
		Else
			strVisibility = "display:block;"
		End If
	End If	
 End If 	
	
	ValuePrint strResult , "strResult"

'response.Write(strResult)
%>

  <div class="col-sm-4">
    <label for="degreelvl">Result</label>
  </div>
  <div class="col-sm-8">
      <div class="form-group">
<div id="spn_result<%=i%>">   
<select class="form-control input-sm" id="ddlResult<%=i%>" onChange="return createGrd(this,<%=i%>);" name="ddlResult<%=i%>" style="<%=bgColorResult%><%=strVisibility%>">
               
    <option  value="-1" selected >Select</option> 
     <%if i > 2 then %>                     
    <option value="15" <%If strResult ="15" Then%>selected='seleceted'<%End If%>>First Class/Div</option>
    <!--<option value="14"<%'If strResult ="14" Then%>selected='seleceted'<%'End If%>>Second Class/Div</option>-->
  <%end if%>  

    <option value="0"<%If strResult ="0" Then%>selected='seleceted'<%End If%>>Grade</option>
    
    <%if i > 3 then %>
    
   <!-- <option value="12"<%'If strResult ="12" Then%>selected='seleceted'<%'End If%>>Appeared</option>-->
    <%end if%>                    

</select>

</div>
                  
<div id="sp_grd<%=i%>"></div>

  </div>

</div>        