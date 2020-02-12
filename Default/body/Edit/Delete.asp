                        <form action="?<%=Encode("Location=Edit&FormAction=Education_Delete")%>" method="post" id="deleteEducation<%=intEduIndex+1%>" name="deleteEducation<%=intEduIndex+1%>" >
                            <!--#include File = 'HiddenValueNew.asp' --> 
						  
						  <input type="hidden" id="hidID" name="hidID" value="<%=intEduID%>"  />   
                          <input type="hidden" id="TableName" name="TableName" value="Academic"  />
                      <button type="button" class="btn-style-3" onclick="return IsDelete<%=intEduIndex+1%>();">
                         
                           
				<i class="fa fa-trash-o" aria-hidden="true"></i>Delete</button>
                                     
                           </form>
                     
<script type="text/javascript">
function IsDelete<%=intEduIndex+1%>()
{
var isDelete = false;
		
		isDelete = confirm("You realy want to delete?")
		
		if(isDelete)
		{
			document.getElementById('deleteEducation<%=intEduIndex+1%>').submit();
			return true;
		}
		else
		{
			return false;
		}	
}
</script>
