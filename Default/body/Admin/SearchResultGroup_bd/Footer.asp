

<%
Function ShowPageLink(curPage, total_no_page, tNo_Page_show)
	loopIndex = 0
	addedPage = CInt(tNo_Page_show \ 2)
	If cInt(curPage) <= CInt(addedPage) Then
		sLoop = 1
		eLoop = CInt(tNo_Page_show)
		If cInt(eLoop) > CInt(total_no_page) Then
			eLoop = total_no_page
		End If
	Else
		sLoop = CInt(curPage-addedPage)
		eLoop = CInt(curPage+addedPage)
	End If

	If CInt(eLoop) > CInt(total_no_page) Then
		eLoop = total_no_page
		If CInt(total_no_page - tNo_Page_show) > 0 Then
			sLoop = CInt(total_no_page-tNo_Page_show)
		Else
			sLoop = 1
		End If
	End If

	If CInt(curPage) > 1 Then
%>

		<font size="1" face="Arial" color="#FF9900">
		<a href="#" onClick="PageSubmit(<%=(curPage-1)%>);"><b>Prev</b></a>&nbsp;</font>	
		<img src="images/gl.gif" width="15" height="15" onClick="PageSubmit(<%=(curPage-1)%>);" style="cursor:pointer;">
<%	
	End If
	
	For loopIndex = sLoop To eLoop
		If CInt(loopIndex) <= CInt(total_no_page) Then 
%>
			<font size="1" face="Arial" color="#FF9900">
<%
			If CInt(loopIndex) = CInt(curPage) Then
%>
				<%= loopIndex %>
<%			Else
%>
				<a href="#" onClick="PageSubmit(<%=loopIndex%>);"><%=loopIndex%></a>&nbsp;	
<%
			End if
%>			</font>
<%
		Else
			Exit For
		End If
	Next

	If CInt(curPage) < CInt(total_no_page) Then
%>
		<font size="1" face="Arial" color="#FF9900"><b>
		<img src="images/gr.gif" width="15" height="15" onClick="PageSubmit(<%=(curPage+1)%>);" style="cursor:pointer;">
		<a href="#" onClick="PageSubmit(<%=(curPage+1)%>);">Next</a>		
		&nbsp;</b></font>
<%
	End If
End Function
%>

<div id="Wrapperbox" style="display:none; width:920px; height:774px;" >
       <iframe id="Iframe" name="Iframe"   frameborder="1" width="920px" height="774px"  ></iframe>
  </div>
 


