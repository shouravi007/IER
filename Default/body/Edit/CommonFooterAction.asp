


						<div class="row">
								<div class="col-sm-12">
									<div class="btn-wrap">
										<button onclick="<%=jsValidate%>" class="btn-style" type="submit">Save Change</button>
										<button class="btn-style-2" type="button" onclick="PageSubmit_Cancel();">Cancel</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

<!--#include File = 'HiddenValueNew.asp' -->
</form>



               
<form  id="frmCancel" name="frmCancel" method="post" action="?<%=Encode("Location=Edit&FormAction=EditResume")%>">
          
   		          <!--#include File = 'HiddenValueNew.asp' -->     
             
              </form> 


<script>
  function PageSubmit_Cancel()
  {
	  document.getElementById('frmCancel').submit(); 
  }
</script>