                        <div class="col-sm-6">
                            <label for="cgpascla" id="lblcgpascale">
                                <h4>CGPA Scale
                                    <span>*</span>
                                </h4>
                            </label>
                        </div>
                        <div class="col-sm-6">
             <select  name="ddlCGPAScale1" id="ddlCGPAScale1"  class="form-control">
                <option value="-1" <%If strCGPAScale = "-1" Then%> selected="selected" <%End If%> >Select</option>
                <%If bytEduLevel < 3 Then%>
                    <option value="5" <%If strCGPAScale = "5" Then%> selected="selected" <%End If%>>5</option>   
                <%end if%>
                <%If bytEduLevel >2 Then%>
                
                    <option value="4" <%If strCGPAScale = "4" Then%> selected="selected" <%End If%>>4</option>
                <%end if%>
			</select>

                        </div>
