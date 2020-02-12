
<div class="loader"></div>
<style>
.loader {
    position: fixed;
    left: 0px;
    top: 0px;
    width: 100%;
    height: 100%;
    z-index: 9999;
    background: url('images/loading.gif') 50% 50% no-repeat rgb(249,249,249);
    opacity: .8;
}

</style>
<script type="text/javascript">

$(document).ready(function() {
    $(".loader").fadeOut("slow");
});

$(window).load(function() {
    $(".loader").fadeOut("slow");
});

</script>
<!--#include File = "CheckSession.asp" -->
<!--#include File = "showPageList.asp" -->
<%on error resume next%>
<!--#include File = 'SearchResult\BL\Variable.asp' -->
<!--#include File = 'SearchResult\BL\Personal.asp' -->
<!--#include File = 'SearchResult\BL\Academic.asp' -->
<!--#include File = 'SearchResult\BL\MainSQL.asp' -->

<!--#include File = 'SearchResult\Content1.asp' -->
<!--#include File = 'SearchResult\Content2.asp' -->
<!--#include File = 'SearchResult\Content3.asp' -->
<!--#include File = 'SearchResult\Content4.asp' -->

