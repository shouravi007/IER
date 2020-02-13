    <fieldset>
        <legend>General Information</legend>
        <div class="row vertical-align-items">
            <div class="col-sm-8 item-1">
                <div class="form-group">
                    <h3><%=strName%></h3>
                </div>
                <div class="form-group">
                    <h4>Login ID : <%=intTrackingNo%></h4>
                </div>
                
            <div class="form-group">
                Applied Position <hr />
                <br />												
                
                <h4><%=position%></h4>
            </div>           

                
                <div class="form-group">
                    <h5>Resume Posted on : <%If postedOn <> "" Then%>
                             <%=Mid(FormatDateTime(postedOn,1), inStr(FormatDateTime(postedOn,1), ", ")+1)%>
                        <%End If%>	</h5>
                </div>
                <div class="form-group">
                    <h5>Resume Updated on : <%If IsDate(updatedOn) = True Then%>
                  <%=Mid(FormatDateTime(updatedOn,1), inStr(FormatDateTime(updatedOn,1), ", ")+1)%>
                <%End If%></h5>
                </div>
            </div>
            <div class="col-sm-4 item-2">
                <img src="<%=imgSrc%>?<%=rnd&time%>" class="img-responsive">

                 <!--include Virtual = '/applications/shahjalalbank/default/showsignature.asp' -->
            </div>
        </div>
    </fieldset>                                    
        
