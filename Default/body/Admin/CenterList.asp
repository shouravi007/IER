<%

intJobId = Request.Form("jid")

If intJobId <> "" Then
    If IsNumeric(intJobId) Then 
	strSQL = "" 

    strSQL = "SELECT id, centerName  FROM Center  where jobid ="&intJobId&"  order by id   " 
	'Response.Write(strSQL) 
	  
	arrSQL = objERS.RetrieveData(strSQL, errLog)
	  
	ErrorMessage "131", errLog, 0
	
%> 
	
    &nbsp;&nbsp;<select id='txtCenter' name='txtCenter' onchange="ShowRoll(this);" class="form-control">
        <option value='S' selected="selected" >Select</option>
        <%  
			
            For i = 0 to ubound(arrSQL,2) 
			 centerN = arrSQL(1,i)
			 'centerN = Replace(centerN,"'","'") 
        %>
           
        <option value="<%=arrSQL(0,i)%>" ><%=centerN%></option>
    <%	
        next   
    %>
    </select>

<% End IF 
  End IF 
%>