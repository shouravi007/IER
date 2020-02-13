<%if FreedomFighterStatus <> "" or Orphan <> "" or Tribal <> "" or AnsarVdp <> "" or PhysicallyChallenged <> "" then%>
<section>
<h4 class="title">Quota Details</h4>

<%if FreedomFighterStatus <> "" then%>
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Freedom Fighter:</h5>
        </div>
        <div class="col-sm-9"> <%=FreedomFighterStatus%> </div>
    </div> 
<%end if%>
	<%if Orphan <> "" then%>
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Orphan:</h5>
        </div>
        <div class="col-sm-9"> <%=Orphan%> </div>
    </div>
     <%end if%>
    <%if Tribal <> "" then%>
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Tribal:</h5>
        </div>
        <div class="col-sm-9"> <%=Tribal%> </div>
    </div>
     <%end if%>
    <%if AnsarVdp <> "" then%>
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Ansar-VDP:</h5>
        </div>
        <div class="col-sm-9"> <%=AnsarVdp%> </div>
    </div>
    <%end if%>
    <%if PhysicallyChallenged <> "" then%>
    
    <div class="row">
        <div class="col-sm-3">
            <h5 class="label-title">Physically Challenged:</h5>
        </div>
        <div class="col-sm-9"> <%=PhysicallyChallenged%> </div>
    </div> 
    <%end if%>       
</section>
<%end if%>