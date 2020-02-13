<style type="text/css">
<!--
.style22 {
	font-family: Verdana;
	font-size: 11px;
	color: #000000;
}
.style23 {font-family: Verdana; font-size: 10px; color: #000000; font-weight: bold;}
.style24 {
	color: #000066;
	font-weight: bold;
	font-style: italic;
}
.style25 {
	color: #FF0000;
	font-weight: bold;
	font-family: Verdana;
}
-->
td
{
	vertical-align:top;
}
</style>
<script type="text/javascript">
	function printIT()
	{
		var strPara = document.getElementById("paraPrint").innerHTML;
		var strParaTop = document.getElementById("paraPrintTop").innerHTML;
		document.getElementById("paraPrint").innerHTML="";
		document.getElementById("paraPrintTop").innerHTML="";
		window.print();
		document.getElementById("paraPrint").innerHTML=strPara;
		document.getElementById("paraPrintTop").innerHTML=strParaTop;
	}
	
	function closeIT()
	{
		window.close();
	}
	
	
</script>
