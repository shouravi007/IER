<?php 
//phpinfo();

$PDFData = $_POST["MainCV_"];
$ProfileName = $_POST["NAME"];
$PDFData  = str_replace("\'","'",$PDFData);
//$PDFData = str_replace("'",'"',$PDFData);
$PDFData = str_replace("&nbsp;",' ',$PDFData);
$PDFData = str_replace(" ",' ',$PDFData);
$ProfileName = str_replace(" ",'_',$ProfileName);

$PDFAction = $_POST["ActionType"];


//$PDFData = "<html><head><style type='text/css'>table{font-family: Arial;}</style></head><body>".$PDFData."</body></html>";
if ($ProfileName == "")
{
	$ProfileName = "Shahjalalbank_admit_";	
}
//echo $PDFData;

//echo $PDFData;
//exit;


require_once __DIR__ . '/vendor/autoload.php';


$mpdf = new mPDF('','A4',9,'');

//$mpdf->WriteHTML($stylesheet,1);
$stylesheet = file_get_contents('css_sjibl.css');
//$stylesheet = file_get_contents('ers.css');
$mpdf->WriteHTML($stylesheet,1);	// The parameter 1 tells that this is css/style only and no body/html/text

//$text = preparePreText($PDFData);
// Default spaces/tab in mPDF is 8 as specified by HTML spec.
// Notepad and other text editors use a value of 6
$mpdf->tabSpaces = 6;
// If 'scriptfile.php' is iso-8859-1 or win-1252 encoded, use
$mpdf->allow_charset_conversion=true;
$mpdf->charset_in='iso-8859-1';
//$mpdf->charset_in='utf-8';
if($PDFAction == "print")
{
	$mpdf->SetJS('this.print();');	
}
//$mpdf->WriteHTML($PDFData, 2);
$mpdf->WriteHTML($PDFData);
if($PDFAction == "print")
{
	$mpdf->Output($ProfileName.'.pdf', 'I');
}
else
{
	$mpdf->Output($ProfileName.'.pdf', 'I');
	//$mpdf->Output($ProfileName.'.pdf', 'D');
}

exit;

?>