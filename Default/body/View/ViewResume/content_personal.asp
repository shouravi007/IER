<div class="row">
    <div class="col-sm-4 col-sm-push-8">
        <div class="photo">
            <img src="<%=imgSrc%>" width="<%=photo_width_show%>" height="<%=photo_height_show%>" class="responsive" >
            <div class="d-flex p-2">
              <label for"">
                  <%if strPhotoFolder = "trustbank" then %>
                  <%Else%>
                   Login ID : <%=intTrakingNo%>
                 <%End if%>
              </label>
            </div>
            <div class="d-flex p-2">
              <label for""><%=rollno%></label>
            </div>
        </div>
    </div>
    <div class="col-sm-8 col-sm-pull-4">
        <div class="candidate-info">
            <h4 class="name"><%=strName%></h4>
            <address><%=strContactAddress%></address>
            <p><%If strContactPhone <> "" Then%><%=strContactPhone%><%End If%><%If strCellPhone <> "" AND strCellPhone <> "0" Then%><%If strContactPhone <> "" Then%>, <%End If%><%=strCellPhone%><%End If%></p>
            <p><a href="mailto:<%=strEmail%>" class="style22"><%=strEmail%></a></p>
        </div>
    </div>
</div>
<section class="job-post">
    <h4 class="title">Job Application</h4>
    <h3 class="name"><%=position%></h3>
</section>