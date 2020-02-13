<?php 
$PDFData = "Your document content goes here শিক্ষা ও গবেষণা ইনস্টিটিউট ঢাকা বিশ্ববিদ্যালয়, ঢাকা- ১০০০সেকেন্ড চান্স এডুকেশন প্রোগ্রাম "; //$_POST["MainCV_"];
$ProfileName = "test"; //$_POST["NAME"];

$PDFData = str_replace("'",'"',$PDFData);
$PDFData = str_replace("&nbsp;",' ',$PDFData);
$PDFData = str_replace(" ",' ',$PDFData);
//$PDFData = str_replace("'",'',$PDFData);
//$PDFData = str_replace("`",'',$PDFData);
//$PDFData = str_replace("’",'',$PDFData);
//$PDFData = str_replace("&#8226;",' ',$PDFData);
$ProfileName = str_replace(" ",'_',$ProfileName);


//$PDFData = "<html><head><style type='text/css'>table{font-family: Arial;}</style></head><body>".$PDFData."</body></html>";
if ($ProfileName == "")
{
	$ProfileName = "view_resume";	
}

//echo $PDFData;
//exit;
require_once __DIR__ . '/vendor/autoload.php';
$mpdf = new mPDF('','A4',9,'');
//$mpdf->SetDisplayMode('fullpage');
$stylesheet = file_get_contents('cv_details_css.css');
$mpdf->WriteHTML($stylesheet,1);	// The parameter 1 tells that this is css/style only and no body/html/text

//$text = preparePreText($PDFData);
// Default spaces/tab in mPDF is 8 as specified by HTML spec.
// Notepad and other text editors use a value of 6
$mpdf->tabSpaces = 6;
// If 'scriptfile.php' is iso-8859-1 or win-1252 encoded, use
$mpdf->allow_charset_conversion=true;
$mpdf->charset_in='iso-8859-1';
//$mpdf->charset_in='utf-8';

$mpdf->SetJS('this.print();');
$mpdf->WriteHTML($PDFData, 2);

//$mpdf->WriteHTML($PDFData);

$mpdf->Output($ProfileName.'.pdf', 'D');
exit;

?>