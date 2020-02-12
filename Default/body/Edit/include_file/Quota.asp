 
 <fieldset>
 
  <legend>Quota information:</legend>
    
    <FORM method ="post" name="quota" action="?<%=Encode("Location=Edit&FormAction=quota")%>">
        
    <!--#include File = 'HiddenValueNew.asp' -->
    
    <div class="btn-wrap text-right">
        <button class="btn-style" type="submit" name="psubmit" >
        <i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</button>
    </div>
 
    
<!--  <input type="hidden" name="work_box" value="1">-->
   <!--#include File = 'Quota\Freedom_Fighter_Status.asp' -->
   <!--#include File = 'Quota\Orphan.asp' -->
   <!--#include File = 'Quota\Tribal.asp' -->
   <!--#include File = 'Quota\Physically_Challenged.asp' -->
   <!--#include File = 'Quota\Ansar_VDP.asp' -->
 
 </fieldset>
 
</FORM> 
<%'end if%>
