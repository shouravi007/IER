                        <div class="col-sm-6">
                            <label for="resultPoint" id="lblresultpoint">
                                <h4> <%If bytEduLevel > 2 Then%> CGPA /Marks<%Else%>GPA <%End If%>  
                                    <span>*</span>
                                </h4>
                            </label>
                        </div>
                        <div class="col-sm-6">
  <input type='text' name='txtResultPoint1' id='txtResultPoint1' value='<%=strPercent%>' size='5' maxlength='4'  onKeyPress='return resultPoint(this, event)'class="form-control" >
                 <input type="hidden" id="txtResultPoint1_old" name="txtResultPoint1_old" value="<%=strPercent%>" />     <!--readonly="readonly"-->
                       
                        </div>
