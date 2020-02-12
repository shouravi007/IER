<%
Function ShowPageLinkSelect(curPage, total_no_page, tNo_Page_show)
	loopIndex = 0
	%>
    <select class="form-control input-sm" id="paging" name="paging" onchange="PageSubmit(this.value);">

    <%
	for loopIndex = 1 to total_no_page
	%>
		

<%
			If CInt(loopIndex) = CInt(curPage) Then
%>
				<option selected="selected" value="<%=loopIndex%>"><%=loopIndex%> </option>	
<%			Else
%>
				<option value="<%=loopIndex%>"><%=loopIndex%> </option>	
<%
			End if
%>			
	<%next

%>
</select>
       

<%
End Function
%>






<%
' ShowPageLink totalPage, pg, linkTo
sub ShowPageLink2(page_count, curPage, varLink)
	j = curPage
%>
	<span class="BDJBlueArial10px">
<%
  	for i=1 to CInt(page_count)
  		if cint(i) = cint(j) then%>
			<font color="#FF9900" size="2"><strong><%=i%></strong></font>
			<%j=CInt(page_count)+1
		else
			tmpLink=varLink&"&pg="&i%>
			<a href ="<%=tmpLink%>" class="BDJBlueArial10px"><%=i%></a>&nbsp;
<%
		end if		
	next
%>
	</span>
<%
end sub

'Get total pages
	'modResult=totalJobs mod rpp
'	if(cint(modResult)>0) then
'		totalPage=cint(totalJobs \rpp)+1
'	else
'		totalPage=cint(totalJobs \rpp)
'	end if

'ShowPageLink pg,totalPage,25


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
        
        <li>
            <a href="#" aria-label="Previous" onClick="PageSubmit(<%=(curPage-1)%>);">
                <span aria-hidden="true">&laquo;</span>
            </a>
        </li>        	
		
<%	
	End If
	
	For loopIndex = sLoop To eLoop
		If CInt(loopIndex) <= CInt(total_no_page) Then 
%>
<%
			If CInt(loopIndex) = CInt(curPage) Then
%>
            <li class="active">
                <a href="#"><%= loopIndex %>
                    <span class="sr-only"></span>
                </a>
            </li>

				
<%			Else
%>
            <li>
                <a href="#" onClick="PageSubmit(<%=loopIndex%>);"><%=loopIndex%></a>
            </li>                
<%
			End if
%>			
<%
		Else
			Exit For
		End If
	Next

	If CInt(curPage) < CInt(total_no_page) Then
%>
    
        <li>
            <a href="#" aria-label="Next" onClick="PageSubmit(<%=(curPage+1)%>);" >
                <span aria-hidden="true">&raquo;</span>
            </a>
        </li>

<%
	End If
End Function


function ReturnPageInfo(totalJob, pSize, pNo)	'// total no of job,page size,page no
	dim arrInfo(0,2)	
	pageNo = cInt(pNo)
	modResult=totalJob mod pSize
	if(cint(modResult)>0)then
		tPage=cint(totalJob \pSize)+1
	else
		tPage=cint(totalJob \pSize)
	end if
	
	'Set starting job index
	if cInt(pageNo)=cInt(1) then
		StartingJob=0
	else
		StartingJob=((pageNo-1)*pSize)
	end if
	EndingJob=StartingJob+pSize-1	'Set Ending job index

	if cLng(EndingJob)>=cLng(totalJob) then
			EndingJob=totalJob-1
	end if
	
	arrInfo(0,0)=tPage	'// total number of page
	arrInfo(0,1)=StartingJob	'// loop counter initial value
	arrInfo(0,2)=EndingJob	'// loop counter max value
	ReturnPageInfo=arrInfo
end function

%>

