<?php 
//phpinfo();


$varTN = $_POST['varTN'];
$varJobReffid = $_POST['varJobReffid'];

$strName = $_POST['strName'];
$strGenderName = $_POST['strGenderName'];

$intRoll = $_POST['intRoll'];
$strEmail = $_POST['strEmail'];
$strMobile = $_POST['strMobile'];
$strContactAddress = $_POST['strContactAddress'];
$strFahterName = $_POST['strFahterName'];
$strMotherName = $_POST['strMotherName'];
$varImg = $_POST['varImg'];



$PDFData = <<<EOF
  
    <div class="c-wrapper">
    
    	<table class="logo" style='font-size:12pt;'>
          <tr>            
            <td class="l-l">
            	<img src="http://ers.bdjobs.com/applications/common/logo/applicantscopy/KSB.jpg"/>
            </td>
            <td class="t-m" style='font-size:12pt;'>
            	<div class="title">Karmasangsthan Bank </div>
            	<div class="sub-title">Application Form</div>
            </td>
            <td class='t-a-r t-r' style='font-size:12pt;'>
            	<br>Applicant's Copy<br>
            </td>
          </tr>
        </table>
        
        <table class='ui-rn' style='font-size:12pt;'>
			<tr>
			  <td class="w-fif-p">User ID: </td>
			  <td class="w-thi-f-p"> $varTN  </td>
			  <td class="w-fif-p">Ref No:</td>
			  <td class="w-thi-f-p"> $varJobReffid  </td>
			</tr>
		</table>
        
        <table class="cont">
          <tr>
            <td class="w-twe-p">
            	<div class="img-wrapper"><br><img src='http://ers.bdjobs.com/applications/common/logo/applicantscopy/501231935h4d5g.jpg'/></div>
            </td>
            <td class="w-eig-p">
            	<table class="innertbl" style='font-size:12pt;'>				  
					<thead>
						<tr>
						  <th class="w-tweeig-p">Post Name</th>
						  <th class="w-six-p">:</th>
						  <th class="w-ssix-p">Assistant Officer (General)</th>
						</tr>
					</thead>
				  	<tbody>
				  		<tr>
						  <td class="w-tweeig-p">Applicant's Name</td>
						  <td class="w-six-p">:</td>
						  <td class="w-ssix-p">----------</td>
						</tr>
						<tr>
						  <td class="w-tweeig-p">Father's Name</td>
						  <td class="w-six-p">:</td>
						  <td class="w-ssix-p">----------</td>
						</tr>
						<tr>
						  <td class="w-tweeig-p">Mother's Name</td>
						  <td class="w-six-p">:</td>
						  <td class="w-ssix-p">----------</td>
						</tr>
						<tr>
						  <td class="w-tweeig-p">Date of Birth</td>
						  <td class="w-six-p">:</td>
						  <td class="w-ssix-p">----------</td>
						</tr>
						<tr>
						  <td class="w-tweeig-p">Marital Status</td>
						  <td class="w-six-p">:</td>
						  <td class="w-ssix-p">----------</td>
						</tr>
						<tr>
						  <td class="w-tweeig-p">Contact Mobile</td>
						  <td class="w-six-p">:</td>
						  <td class="w-ssix-p">----------</td>
						</tr>
						<tr>
						  <td class="w-tweeig-p">E-Mail</td>
						  <td class="w-six-p">:</td>
						  <td class="w-ssix-p">----------</td>
						</tr>
						<tr>
						  <td class="w-tweeig-p">Gender</td>
						  <td class="w-six-p">:</td>
						  <td class="w-ssix-p">----------</td>
						</tr>
						<tr>
						  <td class="w-tweeig-p">Religion</td>
						  <td class="w-six-p">:</td>
						  <td class="w-ssix-p">----------</td>
						</tr>
						
				  	</tbody>										
				</table>

            </td>
          </tr>
        </table>
        
        
        
      
        
        
        <table class="bottom-b">          
          <tr>
            <td>
            	<table class="exinf">
					<tr>
					  <td class="w-fiff-p">Freedom Fighter Status</td>
					  <td class="w-fiv-p">:</td>
					  <td class="w-for-p"> ---------- </td>
					</tr>
					<tr>
					  <td class="w-fiff-p">Orphan</td>
					  <td class="w-fiv-p">:</td>
					  <td class="w-for-p"> ---------- </td>
					</tr>
					<tr>
					  <td class="w-fiff-p">Tribal</td>
					  <td class="w-fiv-p">:</td>
					  <td class="w-for-p"> ---------- </td>
					</tr>
					<tr>
					  <td class="w-fiff-p">National ID</td>
					  <td class="w-fiv-p">:</td>
					  <td class="w-for-p"> ---------- </td>
					</tr>
					<tr>
					  <td class="w-fiff-p">Present Address</td>
					  <td class="w-fiv-p">:</td>
					  <td class="w-for-p"> ---------- </td>
					</tr>
				</table>
            </td>
            <td>
            	<table class="exinf">
					<tr>
					  <td class="w-fiff-p">Marital Status</td>
					  <td class="w-fiv-p">:</td>
					  <td class="w-for-p"> ---------- </td>
					</tr>
					<tr>
					  <td class="w-fiff-p">Physically Challenged</td>
					  <td class="w-fiv-p">:</td>
					  <td class="w-for-p"> ---------- </td>
					</tr>
					<tr>
					  <td class="w-fiff-p">Ansar-VDP</td>
					  <td class="w-fiv-p">:</td>
					  <td class="w-for-p"> ---------- </td>
					</tr>
					<tr>
					  <td class="w-fiff-p">Home District</td>
					  <td class="w-fiv-p">:</td>
					  <td class="w-for-p"> ---------- </td>
					</tr>
					<tr>
					  <td class="w-fiff-p">Permanent Address</td>
					  <td class="w-fiv-p">:</td>
					  <td class="w-for-p"> ---------- </td>
					</tr>
				</table>
            </td>
          </tr>
        </table>
        
        <table class="headtbl">
			<tr>
			  <td><h4>Academic Qualification :</h4></td>
			</tr>
		</table> 
		
      <table class="acaquali">
		  <tbody>
			<tr>
			  <td rowspan="3">Level</td>
			  <td rowspan="3">Examination</td>
			  <td rowspan="3">Board/<br>University</td>
			  <td rowspan="3">Group/Subject</td>
			  <td colspan="3">Result</td>
			  <td rowspan="3">Year of passing</td>
			</tr>
			<tr>
			  <td rowspan="2">Division/ Class</td>
			  <td colspan="2">Grade</td>
			</tr>
			<tr>
			  <td>GPA/CGPA</td>
			  <td>Out of</td>
			</tr>
			<tr>
			  <td>S.S.C/ Equivalent</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			</tr>
			<tr>
			  <td>H.S.C/ Equivalent </td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			</tr>
			<tr>
			  <td>Graduation</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			</tr>
			<tr>
			  <td>Post-Graduation</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			</tr>
			<tr>
			  <td>Others (If any)</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			  <td>-------</td>
			</tr>
		  </tbody>
		</table>
       
              
        <table class="expetbl">
			<tr>
			  <td class="w-twi-p"><h4>Experience (If any):</h4></td>
			  <td class="w-eighty-p"> ---------- </td>
			</tr>
		</table>     
                                    
        
        <table class="aggapli">
          <tr>
            <td>
            	<em>I declare that the information provided in this form are correct, true and complete to the best of my knowledge and belief. If any information is found false, incorrect and incomplete or any ineligibility is detected before or after the examination, any legal action can be taken against me by the authority including cancellation of my candidature.</em>
            </td>
          </tr>
          <tr>
          	<td>
            	<div class="i-wrapper">
                	<img src='http://ers.bdjobs.com/applications//common/logo/applicantscopy/signature.png'>
                    
					<div>-----------Applicant's Signature--------------</div>
                
				</div>
            </td>
          </tr>
          <tr>
            <td>
            	<div class="e-bor">&nbsp;</div>
            </td>
          </tr>
          <tr>
            <td>
            	<div class="cong-txt">Congratulations!! Application Submitted Successfully</div>
            	<p>WHMDSO is your ID, please keep this number to pay the application fee within 2019------------[YYYY-MM-DD hrs min sec] from your prepaid mobile phone by SureCash.</p>
            </td>
          </tr>
        </table>
        

	</div>


  
EOF;



if ($ProfileName == "")
{
	$ProfileName = $_GET["system"]."_admit_";	
}



require_once __DIR__ . '/vendor/autoload.php';


$mpdf = new mPDF('','A4',9,'');

//$mpdf->WriteHTML($stylesheet,1);
$stylesheet = file_get_contents('css_applicants_copy_ksb.css');
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