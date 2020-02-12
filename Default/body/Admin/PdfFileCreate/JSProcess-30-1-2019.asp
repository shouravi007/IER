
<script>

function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

function checkCookie_session() {
	
    var hPage = getCookie("hPage");
	if ( hPage == "")
	{
		hPage = 2 ; 
	}
	return hPage ; 
}

function checkCookie() {
	
    var hPage = getCookie("hPage");
	if ( hPage == "")
	{
		hPage = 2 ; 
	}
       setCookie("hPage", parseInt(hPage)+1, 365);
	return hPage ; 
}

function deleteAllCookies() {
    var cookies = document.cookie.split(";");

    for (var i = 0; i < cookies.length; i++) {
    	var cookie = cookies[i];
    	var eqPos = cookie.indexOf("=");
    	var name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
    	document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
    }
}

	
var track_load = 0;
var loading  = false;
//var total_groups = <%'=intTotalCount%>;	

 $(document).ready(function() {
  deleteAllCookies();
			hPage = checkCookie();
		    var txtRecords = 200; 
			var ddlJobPosting = "<%=strJobTitle%>";
	        var strLastID = "<%=strLastID%>";
	        var strLastIDpass = "<%=strLastIDpass%>";
			var strCvType = "<%=strCvType%>"; 
			var commonFolder = "<%=commonFolder%>"; 
			
			//alert(strLastID);
            var arr = strLastID.split(',');
            var arrPass = strLastIDpass.split(',');
            var dataForZip = "";
			dataForZip +="&jobid="+ddlJobPosting;			
			dataForZip +="&folderName_file_create=<%=folderName_file_create%>";
			dataForZip +="&commonFolder="+commonFolder;	
			
			var dataForPhp = "";			
			dataForPhp +="folderName_file_create=<%=folderName_file_create%>";
			dataForPhp +="&jobid="+ddlJobPosting;
			dataForPhp +="&commonFolder="+commonFolder;
		
  

    $.ajax({url: "http://ers.bdjobs.com/applications/common/resumeMaker/create_folder.php?jobid=<%=strJobTitle%>&ID=<%=arr_ShortListed(0, j)%>&folderName_file_create=<%=folderName_file_create%>&commonFolder=<%=commonFolder%>&Name=<%=arr_ShortListed(2, j)%>", success: function(result){
        $("#results").append(result);
    }});

		   <%for j = 0 to  UBShortListed
		   
		   
        IsPhoto = arr_ShortListed(3, i)
		BdjPhoto = arr_ShortListed(5, i)
		Personalid = arr_ShortListed(0, i)
		BdjobsID = arr_ShortListed(6, i)
		
		if BdjPhoto = True then 

sql = " Select PhotoName=SUBSTRING(LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4), CHARINDEX('/', LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4))+1, LEN(LEFT(replace(p.photourl,'http://my.bdjobs.com/photos/',''), LEN(replace(p.photourl,'http://my.bdjobs.com/photos/',''))-4))) From Personal p Where p.bdjobsphoto = 1 and id = "& Personalid
		
		  Response.Write("<br>"&sql)
          arrBdjPhoto = objERS.RetrieveData(sql, errMsg) 
		  imgSrc = arrBdjPhoto(0, 0)
       elseif IsPhoto = True then 
		  imgSrc = Personalid
	   end if 
		   
    %>
			 

			 
    $.ajax({
		url: "http://ers.bdjobs.com/applications/common/resumeMaker/viewResume-Working.asp?jobid=<%=strJobTitle%>&ID=<%=arr_ShortListed(0, j)%>&folderName_file_create=<%=folderName_file_create%>&commonFolder=<%=commonFolder%>&Name=<%=arr_ShortListed(2, j)%>", 
		
		 beforeSend: function() {   
			$('#results').append('<br><img src="http://ers.bdjobs.com/applications/images/ajax-loader2.gif" width="40" height="40" /><strong>Processing for generating a folder.</strong>');				                 
			 },

			success: function (msg) {												                $('#results').append('<br><img src="http://ers.bdjobs.com/applications/images/file.jpg" width="40" height="40"><strong>Generated a folder for Resume File</strong>');
			$('#queInProcessing').html('');
			$('#queInProcessing').html('1');
	
				$.ajax({
					url: "http://ers.bdjobs.com/applications/common/resumeMaker/copyphotoforcv.php?jobid=<%=strJobTitle%>&folderName_file_create=<%=folderName_file_create%>&commonFolder=<%=commonFolder%>&id=<%=arr_ShortListed(0, j)%>&bdjobsid=<%=arr_ShortListed(6, j)%>&photo=<%=arr_ShortListed(3, j)%>&photourl=<%=arr_ShortListed(7, j)%>&bdjobsphoto=<%=arr_ShortListed(5, j)%>",
				
                   beforeSend: function() {   
                   $('#results').append('<br><img src="http://ers.bdjobs.com/applications/images/ajax-loader2.gif" width="40" height="40" /><strong>Processing for generating Excel File <%=j+1%></strong>');				                 
				   },
			     success: function (msg) {		
                  $('#results').append('<br><img src="http://ers.bdjobs.com/applications/ImageResize/photos/<%=commonFolder%>/resumes/<%=folderName_file_create%>/photos/<%=arr_ShortListed(7, j)%>.jpg" ><strong><br>Copy photo for resumes<%=j+1%> is successful <br> </strong>');
				$('#queInProcessing').html('');
				$('#queInProcessing').html('<%=j+2%>');				 
				$('#results').append(msg);
				 
					 
			  <%next%>
	 
    $.ajax({url: "http://ers.bdjobs.com/applications/common/resumeMaker/zip.php?jobid=<%=strJobTitle%>&ID=<%=arr_ShortListed(0, j)%>&folderName_file_create=<%=folderName_file_create%>&commonFolder=<%=commonFolder%>&Name=<%=arr_ShortListed(2, j)%>", success: function(result){
        $("#results").append(result);
    }});
	
    
 $('input[type="button"]').prop('disabled', false);

});




            }  
			
		  });	

        }

	});			 
			 


$(document).ready(function() {

    (function($){
    
        $.extend({
            
            APP : {                
                
                formatTimer : function(a) {
                    if (a < 10) {
                        a = '0' + a;
                    }                              
                    return a;
                },    
                
                startTimer : function(dir) {
                    
                    var a;
                    
                    // save type
                    $.APP.dir = dir;
                    
                    // get current date
                    $.APP.d1 = new Date();
                    
                    switch($.APP.state) {
                            
                        case 'pause' :
                            
                            // resume timer
                            // get current timestamp (for calculations) and
                            // substract time difference between pause and now
                            $.APP.t1 = $.APP.d1.getTime() - $.APP.td;                            
                            
                        break;
                            
                        default :
                            
                            // get current timestamp (for calculations)
                            $.APP.t1 = $.APP.d1.getTime(); 
                            
                            // if countdown add ms based on seconds in textfield
                            if ($.APP.dir === 'cd') {
                                $.APP.t1 += parseInt($('#cd_seconds').val())*1000;
                            }    
                        
                        break;
                            
                    }                                   
                    
                    // reset state
                    $.APP.state = 'alive';   
                    $('#' + $.APP.dir + '_status').html('Running');
                    
                    // start loop
                    $.APP.loopTimer();
                    
                },
                
                pauseTimer : function() {
                    
                    // save timestamp of pause
                    $.APP.dp = new Date();
                    $.APP.tp = $.APP.dp.getTime();
                    
                    // save elapsed time (until pause)
                    $.APP.td = $.APP.tp - $.APP.t1;
                    
                    // change button value
                    $('#' + $.APP.dir + '_start').val('Resume');
                    
                    // set state
                    $.APP.state = 'pause';
                    $('#' + $.APP.dir + '_status').html('Paused');
                    
                },
                
                stopTimer : function() {
                    
                    // change button value
                    $('#' + $.APP.dir + '_start').val('Restart');                    
                    
                    // set state
                    $.APP.state = 'stop';
                    $('#' + $.APP.dir + '_status').html('Stopped');
                    
                },
                
                resetTimer : function() {

                    // reset display
                    $('#' + $.APP.dir + '_ms,#' + $.APP.dir + '_s,#' + $.APP.dir + '_m,#' + $.APP.dir + '_h').html('00');                 
                    
                    // change button value
                    $('#' + $.APP.dir + '_start').val('Start');                    
                    
                    // set state
                    $.APP.state = 'reset';  
                    $('#' + $.APP.dir + '_status').html('Reset & Idle again');
                    
                },
                
                endTimer : function(callback) {
                   
                    // change button value
                    $('#' + $.APP.dir + '_start').val('Restart');
                    
                    // set state
                    $.APP.state = 'end';
                    
                    // invoke callback
                    if (typeof callback === 'function') {
                        callback();
                    }    
                    
                },    
                
                loopTimer : function() {
                    
                    var td;
                    var d2,t2;
                    
                    var ms = 0;
                    var s  = 0;
                    var m  = 0;
                    var h  = 0;
                    
                    if ($.APP.state === 'alive') {
                                
                        // get current date and convert it into 
                        // timestamp for calculations
                        d2 = new Date();
                        t2 = d2.getTime();   
                        
                        // calculate time difference between
                        // initial and current timestamp
                        if ($.APP.dir === 'sw') {
                            td = t2 - $.APP.t1;
                        // reversed if countdown
                        } else {
                            td = $.APP.t1 - t2;
                            if (td <= 0) {
                                // if time difference is 0 end countdown
                                $.APP.endTimer(function(){
                                    $.APP.resetTimer();
                                    $('#' + $.APP.dir + '_status').html('Ended & Reset');
                                });
                            }    
                        }    
                        
                        // calculate milliseconds
                        ms = td%1000;
                        if (ms < 1) {
                            ms = 0;
                        } else {    
                            // calculate seconds
                            s = (td-ms)/1000;
                            if (s < 1) {
                                s = 0;
                            } else {
                                // calculate minutes   
                                var m = (s-(s%60))/60;
                                if (m < 1) {
                                    m = 0;
                                } else {
                                    // calculate hours
                                    var h = (m-(m%60))/60;
                                    if (h < 1) {
                                        h = 0;
                                    }                             
                                }    
                            }
                        }
                      
                        // substract elapsed minutes & hours
                        ms = Math.round(ms/100);
                        s  = s-(m*60);
                        m  = m-(h*60);                                
                        
                        // update display
                        $('#' + $.APP.dir + '_ms').html($.APP.formatTimer(ms));
                        $('#' + $.APP.dir + '_s').html($.APP.formatTimer(s));
                        $('#' + $.APP.dir + '_m').html($.APP.formatTimer(m));
                        $('#' + $.APP.dir + '_h').html($.APP.formatTimer(h));
                        
                        // loop
                        $.APP.t = setTimeout($.APP.loopTimer,1);
                    
                    } else {
                    
                        // kill loop
                        clearTimeout($.APP.t);
                        return true;
                    
                    }  
                    
                }
                    
            }    
        
        });
          
            $.APP.startTimer('sw');

                
    })(jQuery);
        
});


function downloadit()
{
  location.href = "http://ers.bdjobs.com/applications/ImageResize/photos/<%=commonFolder%>/resumes/<%=folderName_file_create%>.zip";
  
}
</script>
<ol id="results">
</ol>
<div class="animation_image" style="display:none" align="center">
<br /><br />
<img src="images/ajax-loader.gif">
<br /><br />
</div>

<%
Else

%>

<div class="col-md-12 alert alert-danger">No Records Found! </div>

<%End If

%>
    
       </div>
 
