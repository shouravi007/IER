
<script type="text/javascript">
function PageSubmit(pNo)
{
	//alert(pNo);
	document.getElementById('hPage').value=pNo;
	document.getElementById('frmResume').submit();
}

function Email()
{	
	document.getElementById('frmShortList').action='email2applicants.asp';
	document.getElementById('frmShortList').target='_blank'
	document.getElementById('frmShortList').submit();
}
</script>
<style>
        #marker-end {
            height: 32px;
            /*background: url(css/loading.gif) no-repeat 50% 50%;*/
        }
    </style>
    <script>
        $(document).ready(function () {
            $('#marker-end')
                .on('lazyshow', function () {
                    $.ajax({
                            url: 'SearchResultGroup.asp',
                            dataType: "asp"
                        })
                        .done(function (responseText) {
                            // add new elements
                            $('#infinite').append(
                                $('<div>')
                                    .append($.parseHTML(responseText))
                                    .find('#infinite')
                                    .children()
                            );
                            // process added elements
                            $(window).lazyLoadXT();
                            $('#marker-end').lazyLoadXT({visibleOnly: false, checkDuplicates: false});
                        });
               })
               //.lazyLoadXT({visibleOnly: false});
        });
    </script>