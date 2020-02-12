<%
	For i = 1 To 4
%>
 <tr>
      <td valign="top">

  
          <input type="hidden" id="ddlDegreeName<%=i%>hidden" name="ddlDegreeName<%=i%>hidden" value=""  />
      
        <input type="hidden" id="ddlSubject<%=i%>hidden" name="ddlSubject<%=i%>hidden" value=""  />
  
          <input type="hidden" id="txtUniversity<%=i%>hidden" name="txtUniversity<%=i%>hidden" value=""  />


        <input type="hidden" id="ddlCountry<%=i%>hidden" name="ddlCountry<%=i%>hidden" value=""  />
        

        <!--#include File = 'bdjEduLevel.asp'-->
       </td>
          
       <td valign="top">
        <!--#include File = 'bdjDegreeName.asp'-->
       </td>
	             
	   <td valign="top">
        <!--#include File = 'bdjYear.asp'-->
       </td>
	  
      	<td valign="top">
         <%'if i > 2 then%>
          <!--#include File = 'bdjResultYear.asp'-->
         <%'end if%>
       </td>

       <td valign="top">
         <!--#include File = 'bdjInstitute.asp'-->
       </td>
	   
       <td valign="top">
        <!--#include File = 'bdjBoardUniversity.asp'-->
       </td>
	   
       <td valign="top">
         <table width="100%">
          <tbody>
            <tr>
             <td width="100%" valign="top">
             <!--#include File = 'bdjResult.asp'-->     
             </td>
            </tr>
          </tbody>
         </table>
        </td>
        
             
       <td valign="top">
         <table width="100%">
          <tbody>
            <tr>
             <td width="100%" valign="top">
                   <!--#include File = 'bdjResultPoint.asp'-->
              </td>
          </tr>
            </tbody>
         </table>
       </td>      
        <td valign="top">
         <!--#include File = 'bdjSubject.asp'-->
        </td>
	    </tr>
                 
	    <tr>
		  <td colspan="8" valign="top"> 
          <div id="sp_OL<%=i%>">      
           </div>
	     </td>
      </tr>

<tr>
<%
		AcademicUB = i
		'response.Write("academic id:::::"&AcademicUB)
	Next
	varEduRows = 0
%> 