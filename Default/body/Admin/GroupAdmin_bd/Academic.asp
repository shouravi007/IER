<!--#include File = 'Academic\BL.asp' -->
	  <div class="smallHeaderName" style="font-weight:bold;">Academic Qualification</div>
     
	<table  class="table-striped"   align="center" width="98%" border="0" cellpadding="3" cellspacing="0"  bgcolor="<%=strColor%>">
    <tr>
      <td colspan="2" valign="top" class="bodyTextHeader">
         <!--#include File = 'Academic\EduLevel.asp' -->
      </td>
      <!-- passing year --!-->
      <td align="left"  valign="top" width="316" class="bodyTextHeader">
         <!--#include File = 'Academic\PassingYear.asp' -->
      </td>
     
     
     
      <!-- Result -->
      <td  width="96"valign="top" class="bodyTextHeader">Result</td>
      <td width="219" valign="top">
         <table  class="table-striped"   width="100%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td>
      <!--#include File = 'Academic\Result1.asp' -->
    </td>
    <td> 
      <!--#include File = 'Academic\Result2.asp' -->
    </td>
  </tr>
  <tr>
    <td><div id="sp_grd<%=diffedulevel%>"> <br/></div></td>
    <td> <div id="sp_grd<%=diffedulevel%>_"> 
          </div>      </td>
  </tr>
</table>
     </td>
    </tr>
    <tr>
      <td width="261" valign="top" class="bodyTextHeader">Degree Name </td>
      <td colspan="2" valign="top" class="bodyTextHeader">Board/University</td>
      <td colspan="2" align="left" valign="top" class="bodyTextHeader">Major Subject</td>
      </tr>

    <tr>
      <td  valign="top">
            
      <div style=" width: 98%; height: 150px;  overflow-x: hidden;  overflow-y: scroll;   border: 1px solid #bdbdbd;    padding: 10px 15px; background-color:#FFF;">
        <!--#include File = 'Academic\DegeeName.asp' -->
        
     </div>
          
        </td>
      <td colspan="2" valign="top">
      
      <div style=" width: 98%; height: 150px;  overflow-x: hidden;  overflow-y: scroll;   border: 1px solid #bdbdbd;    padding: 10px 15px; background-color:#FFF;">
        <!--#include File = 'Academic\Subject.asp' -->
      
      </div>
      
      </td>
      <td colspan="3" valign="top">
      
      <div style=" width: 98%; height: 150px;  overflow-x: hidden;  overflow-y: scroll;   border: 1px solid #bdbdbd;    padding: 10px 15px; background-color:#FFF;">
        <!--#include File = 'Academic\University.asp' -->
        </div>
        
       </td>
      </tr>
      
      
      <tr>
      <td  valign="top">
        </td>
      <td colspan="2" valign="top">
        
       </td>
      <td colspan="3" valign="top">
        <table  class="table-striped"   width="100%">
         
          </table>
       </td>
      </tr>
    <tr>
      <td  valign="top">
       
      </td>
      <td colspan="2" valign="top">
    
        <div id="sp_edu<%=diffedulevel%>"></div></td>
      <td colspan="3" valign="top">
          
        <div id="sp_maj<%=diffedulevel%>"></div></td>
      </tr>
    </table>
  </div> 
 
	<br />  
    <% Next %>
    </td>
    </tr>
    </table>
  </div>  
                                   
                                
      
      