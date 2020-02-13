  
<table border="0" cellpadding="0" cellspacing="0" width="870">
  <tbody>
    <tr>
      <td><span class="time"><font color="#666666" face="Verdana, Arial, Helvetica, sans-serif" size="1">
<script language="javascript">
	var today = new Date();
	var year = today.getYear();
	var date = today.getDate();
	var todays_date = new Date;
	if (year < 2000) year = 1900 + year;
	days = new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
	months = new Array("January","February","March","April","May","June","July","August","September","October","November","December");
	document.write(months[todays_date.getMonth()] + " " + date + ", " + year);
</script>
      </font></span></td>
      <td align="right">
      </td>
    </tr>
  </tbody>
</table>

<table class="table" cellpadding="0" cellspacing="0"  style="border:#333333 1px solid;">
<tbody>
<tr> 
<td></td>
</tr>
<tr> 
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr> 
<td bgcolor="#4d4d4d" width="1"></td>
<td>



<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr> 
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
	<tr height="60"> 
		<td height="30" align="center" valign="top" bgcolor="#FF0101">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody>
				<tr> 
				<td align="center"> 
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr>
					
                    	<td colspan="3" bgcolor="#FFFFFF">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<tbody>
								<tr bgcolor="#E8EEFA">
                                <td align="left" valign="middle" bgcolor="#E8EEFA" style="font-family:'MS Serif', 'New York', serif; font-size:11px; color:#036;">
  <div align="center">

    </div>                                
        </td>
            </tr>
                <tr>
                    <td style="padding:5px; border-bottom:#646464 1px solid;">                        
                        	
    <div class="main-content">		
	
		<div class="user-area">
			<div class="left-area">
				<div class="user-details">
					<div class="user-header">
						<ul>
							<li>
                            <%
'							If IsPhoto = True Then
'								imgSrc = "http://ers.bdjobs.com/applications/ImageResize/photos/dhakabank/2016/DB_MTO_"& TrackNo &".JPG?"&now
'							Else
'								imgSrc = "images/noimage.gif"
'							End If
							%>
								<img class="user-photo" src="<%=imgSrc%>" alt="">
							</li>
							<li>
								<h4>
									<%=strName%>
								</h4>
                            </li>
                            
                            <li>
								<h4>
									Tracking Number: <%=TrackNoNew%>
								</h4>
							</li>
						</ul>
					</div>
					<div class="details">
						<ul>
                                <li>
                                    <img src="images/envelope.png" alt="">
                                    <%=strEmail%>
                                </li>
                                <li>
                                    <img src="images/phone.png" alt="">
                                    <%
                                    If strContact <> "" and strCell <> "" Then
                                    
                                    %>
                                        <%=strContact%>, <%=strCell%>
                                    <%
                                    ElseIf strContact <> "" and strCell = "" Then
                                    %>
                                        <%=strContact%>
                                    <%
                                    ElseIf strContact = "" and strCell <> "" Then
                                    %>
                                        <%=strCell%>
                                    <%End If%> 
                                </li>
                                <%If updatedOn <> "1/1/1900" Then%>
                                    <li>
                                        <img src="images/update.png" alt="">
                                        
                                        CV Last Updated on <%=updatedOn%>
                                    </li>
                                <%End If%>
                                <li>
                                    <img src="images/file.png" alt="">
                                    CV Posted on <%=postedOn%>
                                </li>
						</ul>
					</div>
				</div>
			</div>