<%
ValuePrint strResultPoint1 , "strResultPoint1"
ValuePrint strResultPoint2 , "strResultPoint2"
ValuePrint strResultPoint3 , "strResultPoint3"
ValuePrint strResultPoint4 , "strResultPoint4"

ValuePrint strCGPAScale1 , "strCGPAScale1"
ValuePrint strCGPAScale2 , "strCGPAScale2"
ValuePrint strCGPAScale3 , "strCGPAScale3"
ValuePrint strCGPAScale4 , "strCGPAScale4"



If i =1 Then
	 strResultPoint = strResultPoint1
	 strCGPAScale = strCGPAScale1
ElseIf i = 2 Then 
	 strResultPoint = strResultPoint2
	 strCGPAScale = strCGPAScale2
ElseIf i = 3 Then 
	 strResultPoint = strResultPoint3
	 strCGPAScale = strCGPAScale3
ElseIf i = 4 Then 
	 strResultPoint = strResultPoint4
	 strCGPAScale = strCGPAScale4
ElseIf i = 5 Then 
	 strResultPoint = strResultPoint5
	 strCGPAScale = strCGPAScale5

Else
	 strResultPoint = ""
	 'response.Write(intYear)
End If

'response.Write("marks: "&strResultPoint)

'    	 bgColorResultPoint = " background-color: #FF0000;" 
'	     bgColorResultPoint = ""

		If i<3 and InStr(lcase(Request.Form("ddlDegreeName1")),"o level") > 0 Then
			strVisibilityResultPoint = "display:none;"
		ElseIf i<3 and InStr(lcase(Request.Form("ddlDegreeName2")),"a level") > 0 Then
			strVisibilityResultPoint = "display:none;"
		End If
		
		If strDegreeName <> "O Level" and strDegreeName <> "A Level" Then 
			If strResultPoint = "" or strResultPoint = "S" Then 
				strVisibilityResultPoint = "display:none;"
			Else
				strVisibilityResultPoint = "display:block;"
			End If
		End If


    ValuePrint strCGPAScale , "strCGPAScale"
	
	If i<3 and InStr(lcase(Request.Form("ddlDegreeName1")),"o level") > 0 Then
		strVisibilityCgpaScale = "display:none;"
	ElseIf i<3 and InStr(lcase(Request.Form("ddlDegreeName2")),"a level") > 0 Then
		strVisibilityCgpaScale = "display:none;"
	End If
		
	If strDegreeName <> "O Level" and strDegreeName <> "A Level" Then 
		if strCGPAScale <= 5 and strCGPAScale <> "" and strCGPAScale <> "-1" then 
			strVisibilityCgpaScale = "display:block;"
		else
			strVisibilityCgpaScale = "display:none;"
		end if
	End If
	
%>

  <div class="col-sm-4">
    
  </div>
  
<div class="col-sm-8">
  
    <div id="cgpa<%=i%>" class="form-group" style="<%=strVisibilityResultPoint%>"><!-- data-visual-label="CGPA/Marks"-->
    
    <label id="lblcgpa<%=i%>" for="example">CGPA/Marks</label>
    <input class="form-control input-sm" type="text" name="txtResultPoint<%=i%>" id="txtResultPoint<%=i%>" size="3" maxlength="5" style="<%=bgColorResultPoint%>"  value="<%=strResultPoint%>"  onKeyPress='return resultPoint(this, event)' />
 
  <span id="txtResultPoint<%=i%>_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
   
    </div>
    
    <div id="scale<%=i%>" class="form-group"  style="<%=strVisibilityCgpaScale%>"><!--data-visual-label="CGPA Scale"-->  
    <label for="example">CGPA Scale</label>                
    
    <select class="form-control input-sm" id="ddlCGPAScale<%=i%>" name="ddlCGPAScale<%=i%>"  <%If strCGPAScale = "" Or strCGPAScale = "100" Or strCGPAScale = "-1" Then%> <%End If%> >	           
                    
    <option value="-1" selected="selected">Out of</option>
    <%If i=1 or i = 2 then%>
    <option value="5"<%If strCGPAScale = "5" Then%> selected="selected"<%End If%>>5</option>
    <%end if%>
    <%If i=3 or i=4 or i = 5 then%>
    <option value="4"<%If strCGPAScale = "4" Then%> selected="selected"<%End If%>>4</option> 
    <%End If%>
                      
    </select>
   <span id="ddlCGPAScale<%=i%>_message" style="font-weight: bold; color: rgb(255, 102, 102); display: none;" class="msg"></span>
                  
    </div>
                   
</div>  

