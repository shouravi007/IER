<section>
    <h4 class="title">Referees</h4>
    <div class="row">
        <div class="col-sm-6">
            <div class="row">
                <div class="col-sm-4">
                    <h5 class="label-title">Name:</h5>
                </div>
                <div class="col-sm-8"><%=strRefName%></div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <h5 class="label-title">Position:</h5>
                </div>
                <div class="col-sm-8"><%=strRefPos%></div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <h5 class="label-title">Address:</h5>
                </div>
                <div class="col-sm-8"><%=strRefAdd%></div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <h5 class="label-title">Contact Phone:</h5>
                </div>
                <div class="col-sm-8"><%=strRefPhone%></div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <h5 class="label-title">Email:</h5>
                </div>
                <div class="col-sm-8"><%=strRefEmail%></div>
            </div>
            
        </div>
        
        <div class="col-sm-6">
          <%If intUBRef >= 1 Then%>
            <div class="row">
                <div class="col-sm-4">
                    <h5 class="label-title">Name:</h5>
                </div>
                <div class="col-sm-8"><%=strRefName2%></div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <h5 class="label-title">Position:</h5>
                </div>
                <div class="col-sm-8"><%=strRefPos2%></div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <h5 class="label-title">Address:</h5>
                </div>
                <div class="col-sm-8"><%=strRefAdd2%></div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <h5 class="label-title">Contact Phone:</h5>
                </div>
                <div class="col-sm-8"><%=strRefPhone2%></div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <h5 class="label-title">Email:</h5>
                </div>
                <div class="col-sm-8"><%=strRefEmail2%></div>
            </div>
			
			<%End If%>
        </div>
    </div>
</section>