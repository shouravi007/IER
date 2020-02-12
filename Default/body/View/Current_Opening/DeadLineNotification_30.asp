                <div class="col-sm-12">
<h5 id="d1" class="notice">* Last date of online application submission is close of business&nbsp;(<%=FormatDateTime(arrBLinkJobs22(2,0),3)%>.) <%=FormatDateTime(arrBLinkJobs22(2,0),1)%></h5>

<h5 id="d1" class="notice"><b>* If you encounter any problem in using SureCash for payment Call to 09614016495.</b></h5>
<!--<h5 id="d1" class="notice"><b>* Only first time you will get opportunity to change the applied job if needed.</b></h5>-->
                </div>
				<div class="col-sm-12 text-center">
					<div class="countdown-wrap bg-style">
						<h1 class="title" id="titlenotification">  Registration/Login/Edit<!--/Change Position--> finishes at </h1>
						<h1 id="demo" class=""></h1>
					</div>
				</div>
 
 
 
 
 

<script>
// Set the date we're counting down to
var countDownDate = new Date("<%=arrBLinkJobs22(2,0)%>").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get todays date and time
  var now = new Date().getTime();

  // Find the distance between now an the count down date
  var distance = countDownDate - now;

  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id="demo"
  document.getElementById("demo").innerHTML = days + "d " + hours + "h "
  + minutes + "m " + seconds + "s ";

  // If the count down is finished, write some text 
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "There is no job available right now.";
    document.getElementById("d1").innerHTML = "";
	document.getElementById("titlenotification").style.display = "none";
	document.getElementById("availablejobs").style.display = "none";
  }
  else
  {
	document.getElementById("availablejobs").style.display = "block";
	document.getElementById("titlenotification").style.display = "block";
  }
}, 1000);


</script>



