<legend>Academic Qualification</legend>
									<div class="btn-wrap text-right">
											<button class="btn-style">
												<i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</button>
										</div>
									<div class="form-group hidden-xs">
										<div class="row">
											<div class="col-sm-12">
												<div>
<%
If arrAcademic(0,0) = "Nothing" Then %>
   <FORM  method ="post" name="education" action="?<%=Encode("Location=Edit&FormAction=academic")%>">
   No Academic Information Submitted by User.
         <!--#include File = 'HiddenValue.asp' -->   
		<INPUT class="btn btn-danger" type="submit" name="edu" value="Add" >	
		
   </FORM>
                                             </div>
                                          </div>
                                      </div>
                                      
<%Else%> 
    <table class="table-striped" border="0" width="100%" align="center" cellspacing="1" cellpadding="2" bgcolor="#E8EEFA">
    	<FORM  method ="post" name="frmEducation" id="frmEducation" action="?<%=Encode("Location=Edit&FormAction=academic")%>">
		<tr> 
        <td height="20" colspan="6" class="BDJSectionHeadLine" style="padding-left:15px;" > <img src="images/Academic-Qualification.jpg" width="870" height="27"></td>
        <td align="right">		
		<!--#include File = 'HiddenValue.asp' -->   
        
		<INPUT type="hidden" name="txtBlockName" id="txtBlockName" value="Education">
		<%'If ChangePosition = "" Then %><button type="submit" name="cmdEditEducation" id="cmdEditEducation" value="Edit" class="btn btn-primary pull-right" style="cursor:hand; width:50px;">Edit</button>
		<%' End IF%>
        </td>
        </tr>
		
        <tr bgcolor="" class="BDJBlackColorText"> 
        <td align="center"><strong>Education Level</strong></td>
        <td width="9%" align="center"><strong>Name of Degree</strong></td>
        <td width="9%" align="center"><strong>Institute</strong></td>
        <td width="9%" align="center"><strong>Board/University</strong></td>
        <td width="9%" align="center"><strong>Passing Year</strong></td>
        <td width="9%" align="center"><strong>Result Publish Date</strong></td>
        <td width="9%" align="center"><strong>Major/Area</strong></td>
        <td width="15%" align="center"><strong>Class/CGPA/<br>Grade/ Percentage</strong></td>
        </tr>		
        <%For i = 0 To UBound(arrAcademic,2)%> 
              <tr class="BDJBlackColorText"> 
			  <td width="16%" style="height:25px; padding-left:25px;" align="left" bgcolor="" height="2">			 
			  <%
			  Select Case arrAcademic(5,i)
			  		 Case "1"
					 	  Response.Write("Secondary")
				     Case "2"
					 	  Response.Write("Higher Secondary")
					 Case "3"
					 	  Response.Write("Graduation")
					 Case "4"
					 	  Response.Write("Masters")
					 Case "5"
					 	  Response.Write("Doctoral")
					 Case "6"
					 	  Response.Write("Post-Doctoral")	 	  	 		  		  
			  End Select
			  %>			  
			  </td>              
              <td width="20%" align="center" bgcolor="" height="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"><%=arrAcademic(1,i)%></font></td>
              <td width="16%" align="center" bgcolor="" height="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"><%=arrAcademic(2,i)%></font></td>
              <td height="2" align="center" bgcolor=""><font face="Verdana, Arial, Helvetica, sans-serif" size="1"><%=arrAcademic(6,i)%></font></td>
              <td width="11%" align="center" bgcolor="" height="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"><%=arrAcademic(4,i)%></font></td>
             
              <td width="21%" align="center" bgcolor="" height="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"><%=arrAcademic(10,i)%></font></td>
             
              <td width="21%" align="center" bgcolor="" height="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"><%=arrAcademic(3,i)%></font></td>
  
  
                <td width="21%" align="center" bgcolor="" height="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="1">			   
			   <%If arrAcademic(7, i) = 15 Then%>
               <br />
               First division (<%= arrAcademic(8, i) %>%)
               <%End If%>
               
			   <%If arrAcademic(7, i) = 14 Then%>
               <br />
               Second division (<%= arrAcademic(8, i) %>%)
               <%End If%>
               
                <%If arrAcademic(7, i) = 13 Then%>
                <br />
               Third division (<%= arrAcademic(8, i) %>%)
               <%End If%>
               
               <%If arrAcademic(7, i) = 12 Then%>
               <br />
               Appeared
               <%End If%>
               
                <%If arrAcademic(7, i) < 12 Then%>
                <br />
               CGPA: <%=arrAcademic(8, i)%>
               <%End If%></font></td>

  
              </tr>
        <%Next%>
		<tr>
		<td height="46" colspan="7" bgcolor="" align="left" style="padding-left:10px;">
		<font face="Verdana, Arial, Helvetica, sans-serif" size="1" color="#000000">
		
		<SPAN class="BDJStar">*</SPAN>&nbsp;<%'If Request.Form("jobid") = "3" Then %>You cannot delete the  academic record instead you can modify it by clicking the edit button.
        <%'Else%><!-- Edit Academic will be available from 22 th April 2016 --><%'End IF%>
		</font>
		</td>
		</tr>
		</FORM>
	</table>
<%End If%>
<br>

