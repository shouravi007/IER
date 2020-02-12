<%if isnull(strSignatureSrc) or isempty(strSignatureSrc) or strSignatureSrc = "" or strSignatureSrc = "0" or strSignatureSrc = "0" then %>

<%else%>
<section>
    <h4 class="title">Certificate</h4>
    <div class="row">
        <div class="col-sm-12">
           <img src="<%=strSignatureSrc%>?<%=time&rnd%>" width="<%=signature_width_show%>" height="<%=signature_height_show%>"  class="responsive" />
        </div>
    </div>  
</section>
<%end if%>
